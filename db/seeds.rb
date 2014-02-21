# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Stadium.create name: 'Estadio Mineirao', city: 'Belo Horizonte', construction_year: '1965',
    capacity: 62547, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/71/12/64/1711264_full-lnd.jpg'
Stadium.create name: 'Estadio Nacional', city: 'Brasilia', construction_year: '2012',
    capacity: 68009, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/96/60/27/1966027_full-lnd.jpg'
Stadium.create name: 'Arena Pantanal', city: 'Cuiaba', construction_year: '2014',
    capacity: 42968, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/66/95/1566695_full-lnd.jpg'
Stadium.create name: 'Arena da Baixada', city: 'Curitiba', construction_year: '1914',
    capacity: 41456, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/66/97/1566697_full-lnd.jpg'
Stadium.create name: 'Estadio Castelao', city: 'Fortaleza', construction_year: '1973',
    capacity: 64846, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/12/1566712_full-lnd.jpg'
Stadium.create name: 'Arena Amazonia', city: 'Manaus', construction_year: '2013',
    capacity: 42374, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/21/1566721_full-lnd.jpg'
Stadium.create name: 'Estadio das Dunas', city: 'Natal', construction_year: '2013',
    capacity: 42086, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/42/1566742_full-lnd.jpg'
Stadium.create name: 'Estadio Beira-Rio', city: 'Porto Alegre', construction_year: '1969',
    capacity: 48849, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/57/1566757_full-lnd.jpg'
Stadium.create name: 'Arena Pernambuco', city: 'Recife', construction_year: '2014',
    capacity: 44248, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/60/1566760_full-lnd.jpg'
Stadium.create name: 'Estadio do Maracana', city: 'Rio de Janeiro', construction_year: '1950',
    capacity: 76804, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/63/1566763_full-lnd.jpg'
Stadium.create name: 'Arena Fonte Nova', city: 'Salvador', construction_year: '1951',
    capacity: 48747, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/01/56/67/46/1566746_full-lnd.jpg'
Stadium.create name: 'Arena de Sao Paulo', city: 'Sao Paulo', construction_year: '2014',
    capacity: 65807, image_url: 'http://www.fifa.com/mm/photo/tournament/destination/02/06/37/36/2063736_full-lnd.jpg'

group_a = Group.create name: 'A'
group_b = Group.create name: 'B'
group_c = Group.create name: 'C'
group_d = Group.create name: 'D'
group_e = Group.create name: 'E'
group_f = Group.create name: 'F'
group_g = Group.create name: 'G'
group_h = Group.create name: 'H'

Team.create name: 'Algeria', coach: 'Vahid Halilhodzic', flag_url: 'http://www.fifa.com/imgml/logos/xs/ALG.gif', photo_url: 'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/68/35/2226835_FULL-LND.jpg', group: group_h, description: <<DESCRIPTION
After a so-so South Africa 2010 and a poor 2013 CAF Africa Cup of Nations, Algeria missed very few beats on their way to Brazil 2014. They won five of their six group matches to easily top what might have been a tricky section over Mali, Benin and Rwanda. Once in the final play-off round, they were unlucky to draw one of the continents form teams in Burkina Faso, who shocked Africa by finishing second at the 2013 AFCON. In that tie, they lost the first leg 3-2 to a late penalty, but just claimed the place in Brazil with a professional 1-0 win at home that gave them the advantage on away goals.

FIFA World Cup finals history
Algeria have played in a total of three FIFA World Cup finals. They got off to the best possible start at the 1982 edition in Spain, beating West Germany 2-1 in their opening game. Despite a 3-2 victory over Chile in their final group game, an earlier 2-0 loss to Austria meant that while level on points with the latter, they were eliminated on goal difference. Mexico 1986 was less memorable for the north African side. Drawn in Group D with Brazil, Spain and Northern Ireland, two defeats and a draw left them bottom of the table and on the first flight home. Nor were things much better at South Africa 2010. Pitted against England, USA and Slovenia, they lost twice and drew their other fixture, departing the competition without a goal to their name.
DESCRIPTION

Team.create name: 'Argentina', coach: 'Alejandro Sabella', flag_url: 'http://www.fifa.com/imgml/logos/xs/ARG.gif', photo_url: 'http://www.fifa.com/mm//Photo/Tournament/Competition/02/10/43/75/2104375_FULL-LND.jpg', group: group_f, description: <<DESCRIPTION
After a 4-1 win against Chile to begin their FIFA World Cup™ qualifying campaign, Argentina then stumbled against Venezuela and drew 1-1 at home to Bolivia, which raised doubts as to whether coach Alejandro Sabella, who took over after Copa America 2011, was up to the task. La Albiceleste, however, got back on track with 2-1 win over Colombia in Barranquilla, which began Argentina's 14-match unbeaten run through the remainder of qualifying, where they finished atop the South American table. Argentina tallied 35 goals while only surrendering 15 on the way to winning the preliminary competition for the third time. The rest of South America could only chase Argentina throughout the final qualifying fixtures.

FIFA World Cup finals history
Argentina have contested four FIFA World Cup Finals in all, the first of them at the inaugural tournament, Uruguay 1930, when they went down 4-2 to the host nation. Respective contributions from Mario Kempes and Diego Maradona inspired them to the biggest prize in football on home soil in 1978 and again at Mexico 1986, while their last showpiece appearance came at Italy 1990, when they were denied by an Andreas Brehme penalty. Since then they have been unable to progress beyond the quarter-finals.
DESCRIPTION
