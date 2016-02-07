require 'mustache'


airports = []


File.foreach("airportlist") do |line|

   line.strip!

   if not line.empty? and not line.start_with? "#"
   if match = line.match(/(.+)([A-Z][A-Z][A-Z][A-Z])?.+([A-Z][A-Z][A-Z])(.+)/)
      city, _, iata, airport = match.captures
      airport = { :iata    => iata.strip,
                  :airport => airport.downcase.strip,
                  :city    => city.downcase.strip }
      airports << airport
   end
   end
end

abstract     = Mustache.render(File.open('Names.mustache','r').read,    { :airports => airports })
concreteGer  = Mustache.render(File.open('NamesGer.mustache','r').read, { :airports => airports })
concreteJSON = Mustache.render(File.open('NamesJSON.mustache','r').read,{ :airports => airports })

File.open('Names.gf','w').write(abstract)
File.open('NamesGer.gf','w').write(concreteGer)
File.open('NamesJSON.gf','w').write(concreteJSON)
