require 'sinatra'
require_relative 'gf_server'
require_relative 'pipeline'


puts "Starting GF server..."
gf = GFServer.new


puts "Starting REST service..."

get "/" do
  "<b>Example requests:</b> <p><ul><li><pre>/parse/moinsen</pre></li> <li><pre>/parse/Ich%20will%20heute%20nach%20Rom%20fliegen</pre></li></ul></p>"
end

get "/parse/:input" do |input|
  process(gf,input).to_s
end
