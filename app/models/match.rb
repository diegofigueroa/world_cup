class Match < ActiveRecord::Base
  STAGES = %i(group round_of_16 quarter_finals semi_finals final third_place)
  STATES = %i(scheduled in_progress finished)
  
  belongs_to :local, class_name: 'Team'
  belongs_to :visitor, class_name: 'Team'
  
  belongs_to :winner, class_name: 'Team'
  belongs_to :loser, class_name: 'Team'
  
  belongs_to :group
  belongs_to :stadium
  
  validates :date, presence: true
  validates :stadium, presence: true
  validates :stage, presence: true
  
  bitmask :stage, as: STAGES
  bitmask :state, as: STATES
  
  validate :mutually_excluding_state, :mutually_excluding_stage, :not_finished, :startable?, :finishable?
  
  def in_progress?
    state? :in_progress
  end
  
  def scheduled?
    state? :scheduled
  end
  
  def finished?
    state? :finished
  end
  
  def start!
    self.state = :in_progress
    self.save!
  end
  
  def finish!
    self.state = :finished
    self.save!
  end
  
  protected
  
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
    unless scheduled?
      self.errors[:state] << "should be 'scheduled' in order to change to 'in_progress'"
    end
  end
  
  def finishable?
    unless in_progress?
      self.errors[:state] << "should be 'in_progress' in order to change to 'finished'"
    end
  end
end
