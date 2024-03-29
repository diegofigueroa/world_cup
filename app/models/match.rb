class Match < ActiveRecord::Base
  STAGES = %i(group round_of_16 quarter_finals semi_finals final third_place)
  STATES = %i(scheduled in_progress finished)
  
  belongs_to :local, class_name: 'Team'
  belongs_to :visitor, class_name: 'Team'
  
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'
  
  belongs_to :group
  belongs_to :stadium
  
  has_many :goals
  
  validates :date, presence: true
  validates :stadium, presence: true
  validates :stage, presence: true
  
  bitmask :stage, as: STAGES
  bitmask :state, as: STATES
  
  validate :mutually_excluding_state, :mutually_excluding_stage, :not_finished, :startable?, :finishable?
  
  after_save :update_group_standings
  
  def in_progress?
    if state_changed? 
      state_was == 2
    else
      state? :in_progress
    end
  end
  
  def scheduled?
    if state_changed?
      state_was == 1
    else
      state? :scheduled
    end
  end
  
  def finished?
    if state_changed?
      state_was == 4
    else
      state?(:finished)
    end
  end
  
  def start!
    @action = :start
    self.state = :in_progress
    self.save!
  end
  
  def finish!
    @action = :finish
    self.state = :finished
    
    if local_score > visitor_score
      self.winner = local
      self.loser = visitor
    elsif local_score < visitor_score
      self.winner = visitor
      self.loser = local
    else
      self.draw = true
    end
    
    self.save!
  end
  
  #private
  
  def mutually_excluding_state
    if state.size > 1
      self.errors[:state] << "should be one of #{STATES.join ', '}"
    end
  end
  
  def mutually_excluding_stage
    if stage.size > 1
      self.errors[:stage] << "should be one of #{STAGES.join ', '}"
    end
  end
  
  def not_finished
    if changed? && finished?
      self.changed_attributes.each do |name, value|
        self.errors[name] << 'cannot be changed once the match has finished'
      end
    end
  end
  
  def startable?
    if @action == :start
      if scheduled? || new_record?
          true
      else
        self.errors[:state] << "should be 'scheduled' in order to change to 'in_progress'"
      end
    end
  end
  
  def finishable?
    if @action == :finish
      if in_progress? || new_record?
          true
      else
        self.errors[:state] << "should be 'in_progress' in order to change to 'finished'"
      end
    end
  end
  
  def update_group_standings
    if state?(:finished) && stage?(:group)
      if self.draw?
        [self.local, self.visitor].each do |team|
          team.group_standing.increment! :points
          team.group_standing.increment! :draws
        end
      else
        winner.group_standing.increment! :wins
        winner.group_standing.points += 3
        winner.group_standing.save!
        
        loser.group_standing.increment! :loses
      end
      
      local.group_standing.goals_scored += local_score
      local.group_standing.goals_against += visitor_score
      local.group_standing.save!
      
      visitor.group_standing.goals_scored += visitor_score
      visitor.group_standing.goals_against += local_score
      visitor.group_standing.save!
      
      [self.local, self.visitor].each do |team|
        team.group_standing.increment! :played
      end
    end
  end
  
end
