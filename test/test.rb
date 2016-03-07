require 'mustache'
require 'date'

require_relative '../src/gf_server'
require_relative '../src/pipeline'



gfserver = GFServer.new
template = File.open('TestTemplate.mustache','r').read

testsuites = [ 'benchmarks/flights_de.txt',
               'benchmarks/flights_en.txt',
               'benchmarks/flights_whatsapp.txt' ]

testsuites.each do |testsuite|

  results = { :file  => testsuite,
              :date  => Date.today,
              :tests => [] }

  doc = File.open(testsuite).read
  doc.gsub!(/\r\n?/,"\n")

  doc.each_line do |line|

    line.strip!

    unless line.empty?

      interpretations = process(gfserver,line)
      interpretations.map! { |i| i.to_s }
      results[:tests] << { :input => line, :interpretations => interpretations }

    end
  end

  out_put  = Mustache.render(template,results)
  out_file = testsuite.gsub('.txt','.html')

  File.open(out_file,'w').write(out_put)
end

gfserver.stop
