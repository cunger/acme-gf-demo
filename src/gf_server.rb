require 'net/http'
require 'uri'
require 'json'


class GFServer

  attr_accessor :pid, :http, :uri, :grammar


  def initialize(address="http://localhost:41296/grammars/", grammar="Application")

      `pgrep -f "gf -server" | xargs kill` # Do better!
      @pid = Process.spawn("~/.cabal/bin/gf -server", [:out,:err] => [".gf.log","w"])
      sleep 4 # Do better!

      @grammar = grammar
      @uri     = URI(address+grammar+".pgf")
      @http    = Net::HTTP.new(uri.host,uri.port)
  end

  def stop

      Process.kill("HUP",@pid)
  end


  def parse(string)

      params = { :command => "parse",
                 :input   => string }

      @uri.query = URI.encode_www_form(params)
      response   = Net::HTTP.get_response(uri)

      parses = []

      if response.is_a?(Net::HTTPSuccess)

         results = JSON.parse(response.body)

         results.each do |result|
           if result.has_key? "trees"
              result["trees"].each do |ast|
                parses << { :language => result["from"],
                            :ast => ast }
              end
           end
         end
      end

      return parses
  end

  def linearize(string, language)

      params = { :command => "linearizeAll",
                 :tree    => string,
                 :to      => @grammar + language }

      @uri.query = URI.encode_www_form(params)
      response   = Net::HTTP.get_response(uri)

      linearizations = []

      if response.is_a?(Net::HTTPSuccess)

         results = JSON.parse(response.body)

         results.each do |result|
           if result.has_key? "texts"
              result["texts"].each { |lin| linearizations << lin }
           end
         end
      end

      return linearizations
  end

  def generate_random(language)

      params = { :command => "random" }

      @uri.query = URI.encode_www_form(params)
      response   = Net::HTTP.get_response(uri)

      randoms = []

      if response.is_a?(Net::HTTPSuccess)

         results = JSON.parse(response.body)

         results.each do |result|
           if result.has_key? "tree"
              randoms << linearize(result["tree"],language)
           end
         end
       end

       return randoms.max_by(&:length)
    end

end
