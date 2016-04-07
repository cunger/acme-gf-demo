require 'mustache'


airports = []


# File.foreach("airportlist") do |line|
#
#    line.strip!
#
#    if not line.empty? and not line.start_with? "#"
#    if match = line.match(/(.+)([A-Z][A-Z][A-Z][A-Z])?.+([A-Z][A-Z][A-Z])(.+)/)
#       city, _, iata, airport = match.captures
#       airport = { :iata    => iata.strip,
#                   :airport => airport.downcase.strip,
#                   :city    => city.downcase.strip }
#       airports << airport
#    end
#    end
# end


File.foreach("lufthansa_airports.csv") do |line|

   line.strip!

   if not line.empty? and not line.start_with? "#"
      match = line.split(",")
      city = match[0]
      iata = match[2]
      port = match[4]
      if (city.nil? or iata.nil? or port.nil?)
          puts line
          next
      end
      airport = { :iata    => iata,
                  :airport => port.downcase,
                  :city    => city.downcase }
      airports << airport
   end
end


abstract     = Mustache.render(File.open('Names.mustache','r').read,    { :airports => airports })
concreteEng  = Mustache.render(File.open('NamesGer.mustache','r').read, { :airports => airports })
concreteJSON = Mustache.render(File.open('NamesJSON.mustache','r').read,{ :airports => airports })

File.open('Names.gf','w').write(abstract)
File.open('NamesEng.gf','w').write(concreteEng)
File.open('NamesJSON.gf','w').write(concreteJSON)
