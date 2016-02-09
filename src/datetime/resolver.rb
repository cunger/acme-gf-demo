require 'date'
require 'citrus'

Citrus.load "#{File.dirname(__FILE__)}/dategrammar"


def resolve_date(string)

  begin

    parse = DateGrammar.parse(string, :root => :date)
    date  = parse.value

    # TODO the following is too coarse

    return string unless date.is_a? Hash
    if date.has_key? :date
       if date.has_key? :until
          return [date[:date].to_s,date[:until].to_s]
       else
          return [date[:date].to_s,date[:date].to_s]
       end
    end
    # date = date.map { |k,v| v.to_s }

    return string

  rescue Citrus::Error => e
      return string
  end
end
