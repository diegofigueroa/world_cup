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

Team.create name: 'Australia', coach: 'Ange Postecoglou', flag_url: 'http://www.fifa.com/imgml/logos/xs/AUS.gif', photo_url: 
'http://www.fifa.com/mm//Photo/world-match-centre/NationalTeams/02/22/59/09/2225909_FULL-LND.jpg', group: group_b, description: <<DESCRIPTION
Having cruised to the 2010 FIFA World Cup South Africa™ with two games to spare, Australia entered their second qualifying campaign for the global showpiece since joining AFC targeting a second consecutive and smooth qualification. Instead, the road to Brazil 2014 proved to be a bumpy one for the Socceroos, who had to overcome some erratic form to secure their progression.

A narrow comeback win over Thailand and a loss to Oman in the opening stage served as a warning shot, although they ultimately progressed to the next phase as group winners. Then the Australians opened the next round in miserable fashion, drawing against Oman and Japan before losing to Jordan 2-1.

Though stunned, they rallied to claw back into contention with a victory over Iraq before two draws and a 4-0 defeat of Jordan put them on the cusp of qualification. They kept their cool in the final match of the round against Iraq as substitute Josh Kennedy scored late to seal their passage through. Coach Holger Osieck was dismissed in October 2013 after successive 6-0 defeats against Brazil and France, with former Brisbane Roar, Melbourne Victory and National Youth Teams coach Ange Postecoglou appointed.

FIFA World Cup finals history 
Though a team made up entirely of amateurs secured a scoreless draw against Chile, Australia departed from the 1974 FIFA World Cup without a goal to show from their inaugural appearance. The Socceroos made up for lost time at Germany 2006 and qualified for the Round of 16 before narrowly falling to eventual champions Italy. The German theme continued at South Africa 2010 although this time Australia suffered a 4-0 loss against the European giants in a scoreline which ultimately scuppered their progress. A ten-man 1-1 draw against Ghana and a 2-1 win against Serbia saw the Aussies eliminated on goal difference, three goals off the Africans. 
DESCRIPTION

Team.create name: 'Belgium', coach: 'Marc Wilmots', flag_url: 'http://www.fifa.com/imgml/logos/xs/BEL.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/15/92/30/2159230_FULL-LND.jpg', group: group_h, description: <<DESCRIPTION
Having looked to be building towards something special for a number of years, Belgium finally made the breakthrough many expected, with a golden generation seemingly capable of challenging the best. Les Diables Rouges (Red Devils) proved that on the road to Brazil 2014, topping Group A ahead of the likes of Croatia, Serbia and Scotland after an almost faultless campaign. The Belgians only dropped points in an early draw against Croatia and a second stalemate in their final outing, when their finals place was already assured. They sealed their progress in their penultimate encounter, an excellent 2-1 victory in Zagreb that owed much to a double from Romelu Lukaku, one of several talents who have added a new dimension to their game since moving to the English Premier League.

FIFA World Cup finals history 
Founding members of FIFA, Belgium have taken part in 11 FIFA World Cup™ final tournaments and were an ever-present force between 1982 and 2002. In 1998, the side coached by Georges Leekens in his first spell at the helm came third in their group and made an early exit, while in 2002 Robert Waseige’s men fell in the last 16 to eventual winners Brazil. Neither of those teams came anywhere close to matching the generation that sparkled during Mexico 1986, when they reached the semi-finals before succumbing to Argentina.
DESCRIPTION

Team.create name: 'Bosnia-Herzegovina', coach: 'Safet Susic', flag_url: 'http://www.fifa.com/imgml/logos/xs/BIH.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/01/69/68/90/1696890_FULL-LND.jpg', group: group_f, description: <<DESCRIPTION
Bosnia-Herzegovina had an outstanding campaign, winning eight of their ten matches, drawing and losing just once. A ruthless attack and resilient rearguard were the cornerstones of the side’s success, with the 30 goals scored representing the fourth-highest tally in European zone qualifying. Equally impressive was a defence that was breached just six times. Bosnia-Herzegovina’s notable goal difference proved crucial too, edging them past a Greece side that finished level on points, to secure direct passage to Brazil 2014 and a first appearance at a FIFA World Cup™.

After starting with a string of victories combined with a goalless draw in Greece, coach Safet Susic’s team’s campaign initially went according to plan. However, a 1-0 defeat at home to Slovakia in September 2013 set up a nail-biting finale for Bosnia-Herzegovina, before they pipped Greece to the post on the final matchday.
DESCRIPTION

Team.create name: 'Brazil', coach: 'Luiz Felipe Scolari', flag_url: 'http://www.fifa.com/imgml/logos/xs/BRA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/12/43/70/2124370_FULL-LND.jpg', group: group_a, description: <<DESCRIPTION
So demanding are the Brazilian faithful, even a Seleção squad that finishes runners-up at a FIFA World Cup finals cannot be sure what kind of reception they will get on their return home. The only nation to have taken part in every edition of the elite competition, Brazil have lifted the coveted Trophy on a record five occasions (1958, 1962, 1970, 1994 and 2002), finished in second place twice (1950 and 1998) and taken the last spot on the podium at another two editions (1938 and 1978).

The current crop
Given they are set to host the next FIFA World Cup, Brazil have been spared the rigours of South American Zone qualifying. With that in mind, and fully aware of the enormous burden of expectation sure to surround A Verde e Amarelo in 2014, the national set-up have put in place an intense preparatory process featuring friendly clashes against fellow members of the global elite. This approach has been underlined by meetings with opponents of the calibre of Argentina, France, USA and the Netherlands since South Africa 2010. However, in their first major test on the road to 2014, the Brazil crashed out of the 2011 Copa America at the quarter-final stage, eliminated by Paraguay.
DESCRIPTION

Team.create name: 'Cameroon', coach: 'Volker Finke', flag_url: 'http://www.fifa.com/imgml/logos/xs/CMR.gif', photo_url: 
'http://www.fifa.com/mm//Photo/WorldFootball/NationalTeams/01/38/05/63/1380563_FULL-LND.jpg', group: group_a, description: <<DESCRIPTION
Drawn in perhaps the most open group in Africa, alongside Libya, Congo DR and Togo, Cameroon survived the challenge with the help of an overturned loss because of Togo's fielding of an ineligible player. Ultimately the Lions did enough anyway with a 1-0 defeat of the pace-setting Libyans in their final match that saw them finish with 13 points from six matches. Once in the final play-off round, they handled a tough task against Tunisia with aplomb. A scoreless draw on the road gave way to a 4-1 home win that has Volker Finke's side feeling confident about their trip to Brazil.

FIFA World Cup finals history 
Perhaps no team has done more to shake up perceptions of African football. The Indomitable Lions exited Spain 1982 at the group stage, but they ended their maiden excursion undefeated, having drawn 0-0 with both Peru and Poland and 1-1 with eventual winners Italy. Eight years later, they wrote themselves into the annals of the game by beating holders Argentina in the Opening Match and becoming the first African side to reach the quarter-finals, powered by the goals of evergreen striker Roger Milla. That breakthrough performance remains their finest showing, group-stage exits having followed in 1994, 1998, 2002 and 2010.
DESCRIPTION

Team.create name: 'Chile', coach: 'Jorge Sampaoli', flag_url: 'http://www.fifa.com/imgml/logos/xs/CHI.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/86/72/2198672_FULL-LND.jpg', group: group_b, description: <<DESCRIPTION
After Chile started their qualifying campaign by winning 12 of the first 18 points on offer, including away victories in Bolivia and Venezuela, three consecutive defeats (among them two home fixtures against Colombia and Argentina) spelled the end of Argentinian coach Claudio Borghi’s tenure. His compatriot Jorge Sampaoli was brought in as a replacement, although his reign got off to a poor start with a reverse in Peru. Yet the loss marked a turning point in Chile’s campaign, as they subsequently embarked on their best ever run of results in FIFA World Cup™ qualifying, chalking up five victories and a draw in their next six encounters to qualify for a second successive World Cup for the first time.

Under Sampaoli La Roja developed into an extremely attack-minded team, so much so that their 29-goal haul during qualification was bettered by only one nation. However, they also conceded more often (25 times) than any of the continent’s other automatic qualifiers and drew only once in their 16 qualifying fixtures.

FIFA World Cup finals history

With eight FIFA World Cups™ under their belts, Chile are level with Paraguay in fourth place on the list of South American nations that have appeared at most editions of the showpiece event. Their best performance to date came when finishing third as host nation in 1962. On five other occasions they have failed to progress from the group phase, while at France 1998 and South Africa 2010 they reached the Round of 16, only to exit at the hands of Brazil on both occasions.
DESCRIPTION

Team.create name: 'Colombia', coach: 'Jose Pekerman', flag_url: 'http://www.fifa.com/imgml/logos/xs/COL.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/10/43/74/2104374_FULL-LND.jpg', group: group_c, description: <<DESCRIPTION
Colombia began the South American qualifiers well enough, collecting four points from their first two games before defeat at home to Argentina in their third outing spelled the end of Leonel Alvarez’s reign as coach. The arrival of Jose Nestor Pekerman as his replacement represented a turning point for Los Cafeteros in their journey to Brazil 2014, with the Argentinian coach overseeing a run of five wins in their next six games, a sequence that put them firmly on course for the finals.

Colombia’s convincing home form at their Barranquilla citadel was central to their successful campaign, as was the balance between attack and defence and their cutting edge up front. No side in the group let in fewer goals than their 13 and only two of their continental rivals scored more than their 27. After clinching a trip to their first world finals since France 1998 on the penultimate matchday, the Colombians eventually took second place, their highest ever finish since the introduction of the current qualifying system.

FIFA World Cup finals history
With the exception of Italy 1990, when the golden generation that included Rene Higuita and Carlos Valderrama slipped up against unfancied Cameroon in the Round of 16, Colombia have never made it past the group stage at the FIFA World Cup. In fact, an analysis of the other three campaigns reveals a disappointing combined record of six defeats, one draw and just two wins at the tournament.
DESCRIPTION

Team.create name: 'Costa Rica', coach: 'Jorge Luis Pinto', flag_url: 'http://www.fifa.com/imgml/logos/xs/CRC.gif', photo_url: 
'http://www.fifa.com/mm//Photo/WorldFootball/NationalTeams/01/45/14/79/1451479_FULL-LND.jpg', group: group_d, description: <<DESCRIPTION
The arrival of the Colombian Jorge Luis Pinto as national team coach has ushered in a new era for Costa Rica. Joining the CONCACAF preliminaries in Round 3, Los Ticos finished second behind Mexico in their group to advance to the final six-team phase, where they sealed their ticket to Brazil 2014 with two games to spare, eventually finishing second behind USA. Their successful campaign was based on two key factors. The first was their solidity at the back, with Pinto’s side conceding only seven goals in the final round, fewer than any other team. The second was their formidable home record of five wins in five games in the final phase.

FIFA World Cup finals history
Costa Rica played their first game as a national team in 1921, a 7-0 win over Central American neighbours El Salvador. As they developed as a side, things weren’t always quite so easy, but after many years of manful efforts they finally managed to reach the world’s biggest football tournament in 1990, taking full advantage of Mexico’s suspension to reach the finals in Italy. Once there, they beat Sweden and Scotland to reach the knockout rounds in an impressive debut under the care of wily boss Bora Milutinovic, where they lost to Czechoslovakia.

They returned to the world stage in 2002 after narrowly failing to reach USA 1994 and France 1998. Drawn into a tricky group alongside eventual champions Brazil and semi-finalists Turkey, the valiant Ticos went out at the first hurdle, the same stage where they would make their exit in a significantly poorer showing four years later in Germany. 
DESCRIPTION

Team.create name: "Côte d'Ivoire", coach: 'Sabri Lamouchi', flag_url: 'http://www.fifa.com/imgml/logos/xs/CIV.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/48/34/2014834_FULL-LND.jpg', group: group_c, description: <<DESCRIPTION
Côte d’Ivoire breezed through their opening qualifying group with four wins from their six matches. They scored 15 goals to five conceded, and their only dropped points came from two draws against their biggest rivals Morocco. Their home-and-away play-off was much trickier however as a resurgent Senegal stood in their way. For the final quarter of an hour of the second leg, the Senegalese were one goal away from knocking out the Elephants on away goals at 3-2 aggregate, but Salomon Kalou's late goal settled the tie and sent the Ivorians into their third consecutive World Cup finals. 

FIFA World Cup finals history
Côte d’Ivoire have never made it past the group stage of a FIFA World Cup finals, but it is perhaps worth pointing out that the draw has never been particularly kind to them. For their debut appearance in 2006, the Elephants shared Group C with Argentina, Netherlands and Serbia and Montenegro. They finished third in the pool, just as they did in South Africa four years later, when they were drawn alongside Brazil, Portugal and Korea DPR.
DESCRIPTION

Team.create name: 'Croatia', coach: 'Niko Kovac', flag_url: 'http://www.fifa.com/imgml/logos/xs/CRO.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/64/69/2226469_FULL-LND.jpg', group: group_a, description: <<DESCRIPTION
Croatia put their fans through the emotional mill in their qualification campaign. The Balkan team looked to be cruising after winning five and drawing one of their first six games, but they then took just one point from the next 12 available, losing at home to Scotland (1-0) and Belgium (2-1). Their good start eventually laid the foundation for a second-place finish, two points ahead of Serbia but nine adrift of runaway leaders Belgium.

A day after the final group game, Igor Stimac resigned from his post as head coach, with former Bundesliga player and Croatian international Niko Kovac – up until then in charge of the U-21 team – replacing him. Assisted by his brother Robert, Niko successfully led Croatia through their play-off against Iceland, but they were pushed all the way. Despite having a man advantage for long spells, the first leg ended goalless, before Croatia prevailed 2-0 in the return fixture. Mario Mandzukic grabbed the opener with Darijo Srna’s decisive effort giving supporters the cue to celebrate, although a red card shown to Mandzukic – one that means he will likely miss Croatia’s tournament opener – may dampen the mood somewhat by the time the tournament rolls around. 

FIFA World Cup history
The Croats arrived for their maiden shot at the FIFA World Cup™ in 1998 as virtual unknowns, but were to prove one of the surprises of the tournament. They finished second in their group behind Argentina after losing 1-0 to the South Americans, but beating Jamaica 3-1 and Japan 1-0. A 1-0 win over Romania saw them through to the last eight and a meeting with Germany, where they stunningly won 3-0 to send the three-time world champions packing. Hosts and eventual winners France proved too strong in a 2-1 semi-final defeat, but the new boys crowned a dream debut by beating the Netherlands 2-1 in the third place play-off. The next two tournaments proved thoroughly disappointing by comparison, as Croatia failed to survive the group stage at both Korea/Japan 2002 and Germany 2006.
DESCRIPTION

Team.create name: 'Ecuador', coach: 'Reinaldo Rueda', flag_url: 'http://www.fifa.com/imgml/logos/xs/ECU.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/86/71/2198671_FULL-LND.jpg', group: group_e, description: <<DESCRIPTION
Ecuador were plagued by inconsistency during their qualifying campaign. While La Tricolor went undefeated at home, beating every opponent in Quito except Argentina, with whom they drew, the side was unable to reproduce that form on the road, failing to win at all and drawing just three times. Nevertheless, one such stalemate – against Uruguay in Montevideo – proved decisive as Ecuador finished level on points with La Celeste but grabbed the last automatic qualifying spot thanks to their superior goal difference (four compared to Uruguay’s zero).

With a team that was among the top four in the standings on 14 of the 16 matchdays and that had to overcome the tragic death of Cristian Benitez, coach Reinaldo Rueda became the third Colombian to guide Ecuador to FIFA World Cup™ qualification.

FIFA World Cup finals history
While Ecuador failed to extricate themselves from a tough group at Korea/Japan 2002, their first-ever appearance at the final stages of a FIFA World Cup, the story was quite different at Germany 2006, where the South Americans got as far as the last 16, having surprisingly finished second in their pool behind the host nation. Unfortunately for the CONMEBOL representatives, England would prove a hurdle too far; the Three Lions triumphed 1-0 to move on to the quarter-finals.
DESCRIPTION

Team.create name: 'England', coach: 'Roy Hodgson', flag_url: 'http://www.fifa.com/imgml/logos/xs/ENG.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/68/61/2196861_FULL-LND.jpg', group: group_d, description: <<DESCRIPTION
England finished top of European Group H to reach the 2014 FIFA World Cup™ after securing victory on the final matchday against Poland, banishing the demons of four decades earlier when a draw against the same opponents saw the Three Lions miss out on the 1974 tournament. 

The road to Brazil 2014 was not as smooth as their campaign to reach South Africa, where they won nine of their ten matches on the way to the 2010 finals. Even though Roy Hodgson guided his side to an undefeated campaign, automatic qualification evaded England until the final match at Wembley. Two draws against closest rivals Ukraine, as well as stalemates in Warsaw and Podogorica, left England fans nervous until captain Steven Gerrard put the home match against Poland beyond doubt with a late goal to double his side's advantage and seal qualification.

FIFA World Cup finals history 
England have appeared at 13 editions of the FIFA World Cup, including seven of the last eight. They were below-par at South Africa in 2010, narrowly qualifying from their group with a victory in the final match against Slovenia, before being outclassed 4-1 by Joachim Low’s Germany at the Round of 16 stage. The Three Lions have been FIFA World Cup winners once, in 1966 when they were hosts, but have since suffered a succession of early exits. Sir Bobby Robson came closest to matching the achievements of Sir Alf Ramsey’s ‘Wingless Wonders’, guiding England to the semi-finals at Italy 1990 only to be knocked out on penalties by Germany. 
DESCRIPTION

Team.create name: 'France', coach: 'Didier Deschamps', flag_url: 'http://www.fifa.com/imgml/logos/xs/FRA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/76/40/2197640_FULL-LND.jpg', group: group_e, description: <<DESCRIPTION
Drawn into a group that contained not only world and European champions Spain but just five teams overall, France had precious little margin for error when their campaign kicked off. In the end, they made just one slip, losing at home to La Roja¬, but it was a defeat that cost them first place in the section. Didier Deschamps' side rarely sparkled during the group phase except for a fine performance on Spanish soil, where their efforts were finally rewarded with a last-gasp equaliser in a 1-1 draw. Ultimately they were destined for the play-offs, as they had been ahead of South Africa 2010, and their chances of reaching Brazil took a battering in Kiev, where Ukraine's superior desire and team spirit earned them a 2-0 advantage at the halfway stage in the tie. That left Les Bleus requiring a display of perfection in the second leg, but, with the Stade de France crowd in feverish mood, the 1998 FIFA World Cup™ winners turned things around with a 3-0 win that could prove a turning point for a side containing a number of exciting fresh talents. Mamadou Sakho, Raphael Varane and Paul Pogba are the standard-bearers of the new generation, while the gifted youngsters who led France to FIFA U-20 World Cup glory in 2013 stand waiting in the wings.

FIFA World Cup history 
France have always commanded respect on the global stage thanks to various legendary players and impressive performances dating back to 1930, but they made the leap to a whole new level in 1998. Whereas Platini, Alain Giresse, Jean Tigana and Co experienced agony at the semi-final stage in 1982 and 1986, the likes of Zinedine Zidane, Laurent Blanc and Didier Deschamps finally took Les Bleus all the way, lifting the Trophy on home soil. That was followed by a surprise group-stage exit four years later, but they came close to adding a second star to their shirts in 2006, only losing out on penalties to Italy in the Final. Without 'Zizou' in their ranks, France then made a forgettable tilt at South Africa 2010, disappointing their supporters both on and off the pitch.
DESCRIPTION

Team.create name: 'Germany', coach: 'Joachim Low', flag_url: 'http://www.fifa.com/imgml/logos/xs/GER.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/76/39/2197639_FULL-LND.jpg', group: group_g, description: <<DESCRIPTION
Germany topped Group C with an unbeaten record, sealing automatic qualification for the 2014 FIFA World Cup™ with nine victories from ten fixtures. Furthermore, coach Joachim Low’s charges hit 36 goals along the way, the most of any side in European zone qualifying. The three-time world champions’ eye-catching attacking displays have thrilled their fans and demonstrated why they are among the favourites to take the title in Brazil. 
However, there is still plenty of room for improvement. The 4-4 draw with Sweden in Berlin is a painful memory, especially after Germany had led 4-0 lead. “We still have work to do before the World Cup,” commented Low. “I see two main areas to focus on: we need to stabilise both our defence and our play in the final third.”

FIFA World Cup finals history
Germany lie third in the all-time world football ranking with three FIFA World Cup triumphs, behind only Brazil on five and Italy on four. The 1954 team won the tournament in Switzerland as rank outsiders, in what became known as the Miracle of Berne. Franz Beckenbauer lifted the trophy on home soil in 1974, and Lothar Matthaus followed suit at Italy 1990.

The Germans have also finished runners-up four times, in 1966, 1982, 1986 and 2002, and came third on four occasions, in 1934 and 1970, and at the last two finals in 2006 and 2010. No other team has played more matches (99) or scored more goals (222) at the FIFA World Cup finals.
DESCRIPTION

Team.create name: 'Ghana', coach: 'Kwesi Appiah', flag_url: 'http://www.fifa.com/imgml/logos/xs/GHA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/48/36/2014836_FULL-LND.jpg', group: group_g, description: <<DESCRIPTION
Ghana survived one of the continent's toughest qualifying groups by winning five of their six matches against 2012 African champions Zambia, Lesotho and Sudan. A 1-0 defeat in Zambia was their only set-back in a campaign that saw them outscore their opponents by 15 goals to three. That sent them into the final play-off round, where again the Black Stars were done no favours by the draw, which set them up against seven-time African champions Egypt. However, a resounding 6-1 win the home first leg basically settled the tie and sent them into their third FIFA World Cup in succession even before a meaningless 2-1 defeat in Cairo.

FIFA World Cup finals history 
An impressive FIFA World Cup finals in 2006 saw the Black Stars beat the Czech Republic and the USA before being eliminated by Brazil in the second round, but they were the only African team to escape their group. In 2010, they were again the only side from the continent in the knockout rounds, and they equalled Africa’s best-ever performance by beating the USA to reach the quarter-finals. Ghana’s loss in a penalty kick shoot-out to Uruguay in the last eight was perhaps the most dramatic of the tournament, and they may well consider themselves as having unfinished business after Asamoah Gyan’s missed penalty kick denied them from becoming the first African side to reach the semi-finals of a FIFA World Cup.
DESCRIPTION

Team.create name: 'Greece', coach: 'Fernando Santos', flag_url: 'http://www.fifa.com/imgml/logos/xs/GRE.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/46/03/2224603_FULL-LND.jpg', group: group_c, description: <<DESCRIPTION
Greece enjoyed an excellent qualification campaign. Their points total of 25 from their ten games would have been enough to see them through as winners in five of the other eight groups; instead, they had to endure a play-off after losing out on goal difference to Bosnia-Herzegovina. Five of their eight victories were secured with 1-0 scorelines, and it was only against Group G’s eventual winners that the Greeks dropped points after a 0-0 draw at home and a 3-1 defeat in Zenica. 

In the play-offs, Fernando Santos’ men were pitted against a Romanian outfit that boasted its fair share of FIFA World Cup™ experience, but the UEFA EURO 2004 winners carried their good form into the two-legged tie and advanced comfortably. After a storming 3-1 win at home, a 1-1 draw in Bucharest was enough for Greece to seal their place in Brazil next summer. Three of their four goals came from in-form striker Konstantinos Mitroglou, whose five strikes during qualifying make him Greece’s most potent attacking option.

FIFA World Cup finals history
The undoubted high point in Greek footballing history was their stunning triumph at EURO 2004 in Portugal, but their record at the FIFA World Cup finals is distinctly modest. At USA 1994, they departed for home with no points and no goals following group stage defeats to Argentina (4-0), Bulgaria (4-0) and Nigeria (2-0). Some 16 years later, the trip to South Africa did produce a 2-1 win over Nigeria, but 2-0 defeats to Korea Republic and Argentina meant another group stage exit.
DESCRIPTION

Team.create name: 'Honduras', coach: 'Luis Fernando Suarez', flag_url: 'http://www.fifa.com/imgml/logos/xs/HON.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/49/40/2194940_FULL-LND.jpg', group: group_e, description: <<DESCRIPTION
Following their group-phase exit at South Africa 2010 and the departure of coach Reinaldo Rueda, La H went through a rocky period. The appointment of Luis Fernando Suarez in March 2011 brought stability to the national set-up, however, with the new coach also working hard with Honduras’ youth sides, steering the U-23s to the quarter-finals of the Men’s Olympic Football Tournament London 2012.

Having gauged the quality of the country’s new generation, Suarez set about rejuvenating the full national team, giving it fresh impetus by drafting in a clutch of promising youngsters. The result was a convincing performance in Round 3 of the CONCACAF preliminaries, with Los Catrachos topping their group on goal difference from Panama to knock out Canada and Cuba.

They went on to take the third and last direct qualifying slot in the final six-team phase, an achievement made possible by their form at home, where they dropped just four points, and an era-defining defeat of Mexico at their Azteca fortress in September 2013.

FIFA World Cup finals history
Upon making their first FIFA World Cup return in nearly three decades, Honduras were faced with tough group adversaries in South Africa, including eventual World Champions Spain. The Hondurans opened the tournament with a 1-0 loss to Chile, and soon became the ill-fated team to first encounter the wrath of tournament top-scorer David Villa, who grabbed both goals in Spain’s 2-0 win. In their only other FIFA World Cup appearance, Jose de La Paz held the coaching reins and steered Honduras to a surprising opening 1-1 draw with Spain, the 1982 tournament’s hosts, and followed up that account with the same scoreline against Northern Ireland. Their campaign was cut short, however, at the group stage after Yugoslavia beat Los Catrachos 1-0 thanks to a late goal.
DESCRIPTION

Team.create name: 'Iran', coach: 'Carlos Queiroz', flag_url: 'http://www.fifa.com/imgml/logos/xs/IRN.gif', photo_url: 
'http://www.fifa.com/mm//Photo/WorldFootball/NationalTeams/01/36/53/47/1365347_FULL-LND.jpg', group: group_f, description: <<DESCRIPTION
Under former Portugal coach Carlos Queiroz’s watch, Iran opened the preliminary competition brightly, scoring five unanswered goals past Maldives to progress. And Team Melli were met with little challenge in the next phase, maintaining their undefeated run as they finished section winners with three wins and three draws.

However, despite logging an average of nearly three goals per match in the previous round,the fourth round proved to be more difficult for the strongly favoured Iranians. They found the net just twice in the opening five matches during which they lost twice and drew once to see their campaign in jeopardy. With so much at stake, Queiroz’s side rose to the occasion to see off both Qatar and Lebanon, before overcoming hosts Korea Republic 1-0 in the round’s final match to seal their return to the FIFA World Cup.

FIFA World Cup finals history
Despite their presence within Asia, Iran have so far been unable to progress beyond the group phase at the FIFA World Cup. They finished their debut campaign with a point, courtesy of a 1-1 draw against Scotland. But their first win came in the second appearance when a golden generation, boasting the likes of Ali Daei, Karim Bagheri and Mehdi Mahdavikia, came up with a memorable 2-1 defeat of USA. Their last participation at Germany 2006 saw them head home with a point after a 1-1 draw against debutants Angola. 
DESCRIPTION

Team.create name: 'Italy', coach: 'Cesare Prandelli', flag_url: 'http://www.fifa.com/imgml/logos/xs/ITA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/76/35/2197635_FULL-LND.jpg', group: group_d, description: <<DESCRIPTION
Often below par during qualifying before raising their game at final tournaments, Italy went about things differently for once by taking imperious control of Group B in the European Zone. Their task appeared potentially tricky when they were drawn alongside Denmark, the Czech Republic and Bulgaria, but La Nazionale surged through unbeaten and booked their ticket to Brazil with time to spare, meaning they will head to the finals confident that their internal revolution has been a success. After all, Cesare Prandelli seems to have consigned catenaccio to the past. "It's now obvious that you can't get results without playing attractive football," explained the coach when he first took over. Since then he has led the side to the UEFA EURO 2012 showpiece and a 14th consecutive FIFA World Cup™ finals berth – all while remaining faithful to an attacking style of play.

FIFA World Cup finals history
With four world titles to their name (1934, 1938, 1982 and 2006) and two runners-up slots (1970 and 1994), Italy lie second only to Brazil on the all-time FIFA World Cup honours board. La Squadra Azzurra are also the only team along with the Brazilians to have won the competition twice in a row. Their 4-3 semi-final defeat of West Germany at Mexico 1970 is widely regarded as one of the most spectacular matches in the history of the tournament.
DESCRIPTION

Team.create name: 'Japan', coach: 'Alberto Zaccheroni', flag_url: 'http://www.fifa.com/imgml/logos/xs/JPN.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/51/09/2015109_FULL-LND.jpg', group: group_c, description: <<DESCRIPTION
The mammoth, two-year qualifying campaign saw Japan progress game-by-game under Alberto Zaccheroni, who took over in the wake of the team’s impressive run at the 2010 FIFA World Cup South Africa™. The new-look Japan were struggling to fit into the Italian’s strategy as they began their qualifying bid in lacklustre style, losing to Uzbekistan and Korea DPR before seeing their progression into the fourth round secured.

Their transition proved successful, inspired by talisman Keisuke Honda and spearheaded by the likes of Shinji Kagawa and Shinji Okazaki, the Japanese began to gel in the fourth round. Two emphatic opening victories over Oman (3-0) and Jordan (6-0) saw the Samurai Blue as the group’s runaway leaders and although they were held by Australia to a 1-1 draw, Oman and Iraq’s losses put Zaccheroni’s side on the cusp of qualification.

An unexpected 2-1 loss in Jordan may have briefly delayed their celebration party, but they battled back to draw Australia 1-1, providing Japan with the requisite point to seal their fifth successive FIFA World Cup appearance.

FIFA World Cup finals history 
They failed to live up to the expectations in their debut FIFA World Cup, losing three straight games to bow out. However, 2002 Korea/Japan saw them make history on home soil in Asia's first FIFA World Cup, winning a group that also featured Russia, Belgium and Tunisia to storm into the second round, only to lose out to eventual third-place finishers Turkey by a solitary goal. They were brought back down to earth at Germany 2006, salvaging merely a point from three group games to dump out.

They more than redeemed themselves at South Africa 2010 though, progressing to the second stage at the expense of the likes of Denmark and Cameroon. They came close to stunning Paraguay in the consequent round-of-16 clash, with the South Americans only advancing through a penalty shootout victory after regular and extra time finished goalless.
DESCRIPTION

Team.create name: 'Korea Republic', coach: 'Hong Myungbo', flag_url: 'http://www.fifa.com/imgml/logos/xs/KOR.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/75/52/2227552_FULL-LND.jpg', group: group_h, description: <<DESCRIPTION
Before finally securing their eighth consecutive FIFA World Cup™ qualification, Korea Republic had twice seen their campaign in significant peril. Unlike Japan, who counted on the same starting XI and Australia, who used their core of experienced players throughout qualification, a proven and reliable starting line-up was elusive for Korea Republic throughout the qualifying competition.

With the squad changing constantly, an unprepared Taeguk Warrior side were stunned 2-1 by Lebanon in the third round’s penultimate match, which left their hopes hanging by a thread. The defeat cost Cho Kwangrae his job but under new boss Choi Kanghee, Korea Republic dispatched Kuwait 2-0 to progress at the West Asian’s expense.

The next round continued nearly in the same vein, with Choi’s side floundering with draws against Uzbekistan and Lebanon and a defeat to Iran. A 1-0 home win against Uzbekistan in the penultimate game saw their fortunes revived, but after losing the closing game to Iran by the identical scoreline, they had to wait until Uzbekistan’s 5-1 defeat of Qatar to confirm their direct qualification by edging the central Asians on goal difference.  

FIFA World Cup history
Despite being Asia’s most frequent visitors to world football’s showpiece event, Korea Republic had never won a match at the finals until they co-hosted Korea/Japan 2002. They got off to a winning start with victory over Poland before defeating Portugal to reach the second round for the first time. The Taeguk Warriors went on to reach the semi-finals at the expense of Italy and Spain, only to lose to Germany in the last four. In 2010, they made history again by reaching the knockout stage for the first time on foreign soil, before going down at the hands of Uruguay in the Round of 16.
DESCRIPTION

Team.create name: 'Mexico', coach: 'Miguel Herrera', flag_url: 'http://www.fifa.com/imgml/logos/xs/MEX.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/35/72/2223572_FULL-LND.jpg', group: group_a, description: <<DESCRIPTION
In the wake of El Tri’s historic Olympic triumph at London 2012, few Mexico fans would have expected their side to struggle en route to Brazil. Yet struggle they did, to such an extent that they came within a whisker of missing out on qualification altogether. Despite their status as regional powerhouses, the Mexicans won just two of their ten matches in the final six-team group phase, with the defeat to Honduras at their Estadio Azteca fortress in September 2013 costing Jose Manuel de la Torre his job as national team coach with three games remaining. With his success at Monterrey still fresh in the memory, the experienced Victor Manuel Vucetich came on board for the final two matches. And though he oversaw a crucial home win over Panama, it was only thanks to the USA’s last-gasp defeat of the Panamanians on the final matchday that the Mexicans were able to scrape into the intercontinental play-off.

Fresh from guiding America to the Mexican league title, Miguel Herrera then came in for the two-legged tie against New Zealand and took the radical decision of selecting only home-based players. His strategy paid off as El Tri finally put their shaky form behind them to sweep to a 9-3 aggregate win and qualify for the world finals for the 15th time in all.

FIFA World Cup finals history
Mexico have fallen in the Round of 16 on their last five appearances in the finals, with Argentina halting their progress at both Germany 2006 and South Africa 2010. Those defeats proved painful for El Tri’s legion of fans, who have been waiting a long time to see their side return to last eight. Only twice have the Mexicans made it to the quarters, both time on home soil, in 1970 and 1986.
DESCRIPTION

Team.create name: 'Netherlands', coach: 'Louis Van Gaal', flag_url: 'http://www.fifa.com/imgml/logos/xs/NED.gif', photo_url: 
'http://www.fifa.com/mm//Photo/WorldFootball/NationalTeams/01/40/87/87/1408787_FULL-LND.jpg', group: group_b, description: <<DESCRIPTION
The Netherlands positively cruised into the finals of Brazil 2014, coming through as Europe's the joint-top point scorers - alongside Germany - on 28, with their 2-2 draw against Estonia the only minor blemish on a near-faultless campaign. At times they were absolutely purring, in no game more so than their 8-1 defeat of Hungary, while Germany were the only side on the continent to score more goals than their 34.

They registered comfortable wins over their three main Group D rivals - Turkey, Hungary and Romania - in their opening four games to see them shoot clear of the competition, with only a spectacular collapse looking able to deny them an automatic spot. That never came and a, somewhat nervy, 2-0 win over Andorra saw them, alongside Italy, become the first Europeans to seal their place in Brazil. They finished nine points ahead of Romania, a gap only matched by neighbours Belgium.

FIFA World Cup finals history 
With legendary coach Rinus Michels pulling the strings from the bench, Johan Cruyff, Johan Neeskens and Co won their way through to the Final in 1974, only to lose out to the hosts. Four years on, their revolutionary Total Football again took them to the showpiece, but history repeated itself as they suffered another defeat to the host nation, succumbing 3-1 in Buenos Aires. The Oranje then experienced Final heartbreak for a third time in Johannesburg, coming within four minutes of taking Spain to penalties before Andres Iniesta crushed their dreams.
DESCRIPTION

Team.create name: 'Nigeria', coach: 'Stephen Keshi', flag_url: 'http://www.fifa.com/imgml/logos/xs/NGA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/02/30/2010230_FULL-LND.jpg', group: group_f, description: <<DESCRIPTION
Drawn in Group F with Malawi, Kenya and Namibia, the Nigerians were always massive favourites to reach the final play-off round of qualifying, and they did not lose any matches in the group stage. They did draw three times, once against each opponent, with the most worrying result a 1-1 at home to Kenya when only a second half injury time goal by Nnamdi Oduamadi won the point. Once in the two-legged play-off, the Eagles drew the lowest-ranked team in Ethiopia and despite the improvement of the east Africans, Nigeria were seldom threatened in winning away 2-1 and at home 2-0.
FIFA World Cup finals history
After impressing on their way to the second round in each of their first two FIFA World Cup appearances, 1994 and 1998, Nigeria have struggled since: going out at the group stage three times while taking just two points from their last eight matches in the finals. A muddled South Africa 2010 campaign under Lars Lagerback did little to bolster Nigeria’s reputation, but Brazil 2014 offers another chance for the reigning African champions to soar.
DESCRIPTION

Team.create name: 'Portugal', coach: 'Paulo Bento', flag_url: 'http://www.fifa.com/imgml/logos/xs/POR.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/22/75/59/2227559_FULL-LND.jpg', group: group_g, description: <<DESCRIPTION
For the second time in succession Portugal had to go through the play-offs in order to advance to the world finals. Reprising their aggregate defeat of Bosnia and Herzegovina on the road to South Africa 2010, the Portuguese saw off Sweden 4-2 over two legs to book their place at Brazil 2014. Their hero of the hour was none other than Cristiano Ronaldo, who scored all four of their goals against the Swedes to round off a qualifying tournament full of ups and downs for Paulo Bento’s side.

They began their bid to reach their sixth FIFA World Cup as the favourites to win Group F, having made the semi-finals of UEFA EURO 2012, where they lost on penalties to Spain. And though they held their own against Russia, losing in Moscow but winning the return fixture in Lisbon, the Portuguese had to settle for second place in the section after surprise draws at home to Northern Ireland and home and away to Israel. That left them with no option but to take the play-off route again, but in a duel that pitted together two of the world’s best players, Ronaldo got the better of Zlatan Ibrahimovic, the scorer of his side’s two goals, to guide the Portuguese safely to Brazil. 

FIFA World Cup finals history 
It was not until England 1966 that the Portuguese made their world finals debut, yet as entrances go it could hardly have been more impressive. Spearheaded by the irrepressible Eusebio, Portugal’s golden generation knocked out Brazil en route to the semi-finals, where they came up just short against the host nation. Consolation came in the shape of victory over the Soviet Union in the match for third place. The Portuguese do not have happy memories of their next appearance on the big stage, however, which came at Mexico 1986. Despite opening up with a win over England, they went out in the group phase after defeats to Poland and Morocco.
DESCRIPTION

Team.create name: 'Russia', coach: 'Fabio Capello', flag_url: 'http://www.fifa.com/imgml/logos/xs/RUS.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/63/98/2196398_FULL-LND.jpg', group: group_h, description: <<DESCRIPTION
Drawn alongside Portugal, Russia were not favourites to win Group F and earn direct passage to Brazil 2014. Expectations soon shifted after a perfect start to their campaign, as the Russians kicked off with wins over Northern Ireland and Israel. Having set the tone, Fabio Capello’s side then revealed their ambitions by beating the Portuguese in Moscow courtesy of a solitary Alexander Kerzhakov goal.

A narrow 1-0 defeat of Azerbaijan made it four wins out of four, at which point the Russians stumbled, losing to Portugal away and then going down unexpectedly to the Northern Irish in a fixture that had to be rescheduled due to bad weather. With the Portuguese breathing down their necks, Capello’s charges had no option but to react, which they did, sandwiching a home win over Israel with two defeats of Luxembourg. That run that left them needing only a draw away to the Azeris to book their return to the world finals, a result they duly secured.

FIFA World Cup finals history
Russia reached the quarter-finals at Sweden 1958, Chile 1962 and Mexico 1970. In the former two tournaments, they were eliminated by the hosts, while Uruguay were accountable for their exit after extra time in Mexico City. The Eastern Europeans went one better at England 1966, when, inspired by goalkeeper Lev Yashin and forward Igor Chislenko, they topped their group and edged a formidable Hungary, before losing 2-1 to both West Germany in the semis and Portugal in the play-off for third place.

First-phase elimination befell the Russians in the last two appearances at the FIFA World Cup, at USA 1994 and Korea/Japan 2002, though they made their mark in the States with a crushing 6-1 defeat of Cameroon, a match in which Oleg Salenko scored five goals en route to ending the tournament as joint leading marksman. Russia then failed to reach Germany 2006 and South Africa 2010, the second of those campaigns ending in frustration in the play-offs, where they were beaten by Slovenia.
DESCRIPTION

Team.create name: 'Spain', coach: 'Vicente del Bosque', flag_url: 'http://www.fifa.com/imgml/logos/xs/ESP.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/51/06/2015106_FULL-LND.jpg', group: group_b, description: <<DESCRIPTION
Spain will head to Brazil as defending champions. Remaining loyal to the style and players that have allowed them to dominate the global and European scenes over the last five years, La Roja won the only qualification pool (aside from the South American group) to contain two world champions. In what was the smallest section in Europe with only five teams, the Spanish led the way from France thanks to a record of six wins and two draws, conceded to the French and Finland. In topping the group they let in a mere three goals, fewer than any other side in the European preliminaries. At the other end of the pitch, however, Spain enjoyed one of their less prolific campaigns, scoring only 14 times.

FIFA World Cup finals history
Prior to lifting the coveted Trophy in South Africa, so frequent were their exits at the last eight of the finals that Spain were said to be suffering from a ‘quarter-final jinx’. Brazil 2014 will be La Selección's tenth consecutive world finals appearance, and 14th in all, with their best performance before last year’s success coming at Brazil 1950. Having topped their first-round section, Spain went straight into the decisive four-team final group stage – where they finished fourth behind Uruguay, Brazil and Sweden.
DESCRIPTION

Team.create name: 'Switzerland', coach: 'Ottmar Hitzfeld', flag_url: 'http://www.fifa.com/imgml/logos/xs/SUI.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/19/46/60/2194660_FULL-LND.jpg', group: group_e, description: <<DESCRIPTION
Switzerland secured their place at the 2014 FIFA World Cup Brazil™ on the penultimate qualifying matchday. However, it was far from plain sailing for Die Eidgenossen, who faced several setbacks along the way.

Coach Ottmar Hitzfeld’s ensemble raced to the group summit following opening victories over Slovenia and Albania, but dropped points for the first time in their next qualifying games. Hitzfeld's charges recorded a 1-1 draw with Norway and a 2-0 victory over Iceland before chalking up a draw and a win against Cyprus.

Nerves got the better of Switzerland in their next game against Iceland, when they ended up drawing 4-4 after leading 4-1. There were no further slip-ups in their final outings though, with a 2-0 triumph over Norway all but ensuring their qualification for a third consecutive World Cup, before a 2-1 win over Albania sealed Switzerland’s Brazil 2014 ticket with a game to spare.

FIFA World Cup finals history
Switzerland have contested the FIFA World Cup finals nine times to date (1934, 1938, 1950, 1954, 1962, 1966, 1994, 2006 and 2010), reaching the last eight on three occasions. However, their most recent appearance at the quarter-final stage came almost 50 years ago, at the 1954 finals on home soil.

Since then, the Swiss have twice made the last sixteen (1994 and 2006), but failed to survive the group stage three times. Their group campaign in 2010 was a bittersweet affair: they handed eventual world champions Spain a 1-0 defeat in their opening fixture, but ultimately packed for home after just three games.
DESCRIPTION

Team.create name: 'Uruguay', coach: 'Oscar Tabarez', flag_url: 'http://www.fifa.com/imgml/logos/xs/URU.gif', photo_url: 
'http://www.fifa.com/mm//Photo/Tournament/Competition/02/01/51/12/2015112_FULL-LND.jpg', group: group_d, description: <<DESCRIPTION
Buoyed by their fourth place finish at South Africa 2010 and their Copa America triumph a year later, La Celeste went into the South American qualifying competition for Brazil 2014 as firm favourites to progress. Their plans went awry in 2012, however, when they collected just two points out of a possible 18. The Uruguayans recovered their poise just in time, eventually edging into fifth and booking a place in the intercontinental play-offs for the fourth time in a row. Waiting for them there were Jordan, who were no match for Uruguay in the first leg in Amman, which ended in a 5-0 win for the visitors. Defending that lead comfortably in a goalless draw back in Montevideo, the Uruguayans made sure of their berth in Brazil.

FIFA World Cup finals history
Prior to the 1970s, when they began a lengthy period in the doldrums, Uruguay were widely regarded as one of the giants of world football. That status was founded on their two FIFA World Cup™ wins, the first of them coming at home in 1930 and the second in Brazil 20 years later, when they stunned the host nation with a shock 2-1 win at the Maracana, an epoch-defining game that will forever be known as El Maracanazo. Their run to the semi-finals at Mexico 1970 would be their last flourish for some considerable time, however.

In the years that followed the Uruguayans appeared only infrequently in the global showpiece. After failing to qualify for USA 1994 and France 1998, La Celeste made their return at Korea/Japan 2002 only to go out in the group phase and then lose out to Australia in the play-off for a place at Germany 2006.

Another play-off followed in the qualifiers for South Africa 2010, this time against Costa Rica and this time safely negotiated. In what was their 11th world finals, the Uruguayans brought back memories of yesteryear by surging to fourth place, with the inspirational Diego Forlan making off with the adidas Golden Ball as the tournament’s outstanding player.
DESCRIPTION

Team.create name: 'USA', coach: 'Jurgen Klinsmann', flag_url: 'http://www.fifa.com/imgml/logos/xs/USA.gif', photo_url: 
'http://www.fifa.com/mm//Photo/world-match-centre/Friendlies/02/22/46/98/2224698_FULL-LND.jpg', group: group_g, description: <<DESCRIPTION
The Americans had an ominous start to their final round of qualifying in the CONCACAF zone, losing out 2-1 on the road in Honduras. The result had many in the US media questioning Jurgen Klinsmann’s approach and tactics. All that suspicion quickly melted away, however, as the German proved totally up to the task, guiding the Stars and Stripes deftly to a first-place finish in the six-team Hexagonal. He experimented with old players in new positions, new players throughout the squad, changed formations freely and generally created a new atmosphere of confidence and competition in the team. They won an astounding seven of their ten games, scoring a Hexagonal-high 15 goals, conceding only eight, losing only once, and finishing four full points above runners-up Costa Rica in the final standings. If the trajectory continues for Klinsmann’s rampaging side, the sky might just be the limit in Brazil. 

FIFA World Cup finals history
The first US team to turn up at a FIFA world finals earned the dubious nickname of the ‘shot-putters’ for their muscular and burly nature, but 3-0 wins over Paraguay and Belgium in 1930 was enough for a third-place finish, to this day the best placing for any team outside of Europe or South America. Four years later the Americans went out in the first round, but they caused a grand sensation in Brazil in 1950 when, led by outstanding goalkeeper Frank Borghi, they managed to beat mighty England in Belo Horizante in an upsets for the ages. Another first-round exit came in 1990, but as hosts in 1994 they managed to reach the knockout rounds, a result that paved the way to more consistency. And after a last-place finish at France 1998, they beat Portugal and Mexico in Korea/Japan 2002 and only just missed out on a semi-final place after losing to Germany. In 2006 they went out in the first round again, this time in Germany before reaching the Round of 16 in South Africa in 2010. 
DESCRIPTION

