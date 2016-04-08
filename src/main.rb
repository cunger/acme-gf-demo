require 'sinatra'
require_relative 'gf_server'
require_relative 'pipeline'
require_relative 'datetime/resolver'


puts "Starting GF server..."
gf = GFServer.new


puts "Starting REST service..."

set :bind => "0.0.0.0", :port => 80

get "/" do
  "<b>Example requests:</b> <p><ul><li><pre>/parse/moinsen</pre></li> <li><pre>/parse/Ich%20will%20heute%20nach%20Rom%20fliegen</pre></li></ul></p>"
end

get "/parse/:input" do |input|
  process(gf,input).to_s
end

get "/resolve/:date" do |date|
  resolve_date(date).to_s
end

get "/test/:language" do |language|
  File.open("../test/benchmarks/flights_"+language+".html","r").read
end

get "/random/:language" do |language|
  say = gf.generate_random(language)

  if say.nil?
     case language
     when "en" ; say = "i don't know what to say..."
     when "de" ; say = "ich weiß nicht, was ich sagen soll..."
     else say = "hello world!"
     end
  end

  say
end
