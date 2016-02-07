require_relative 'datetime/resolver'



def process(gf, string)

    interpretations = []

    # Preprocessing

    normalized_string = normalize(string)

    # Translation to JSON

    parses = gf.parse(normalized_string)

    parses.each do |parse|

      linearizations = gf.linearize(parse[:ast],'JSON')
      linearizations.each { |lin| interpretations << JSON.parse(lin) }
    end

    # Postprocessing

    interpretations.map! { |i| postprocess(i) }
    interpretations.sort_by! { |i| i.length }

    return interpretations.uniq

    rescue JSON::ParserError => e
      return []
end


private

def normalize(string)

    return string.downcase.gsub(/-/,' ').gsub(/[[:punct:]]/,'')
end


def postprocess(json)

    if json.has_key? "date"
       json["date"] = resolve_date(json["date"])
    end

    return json
end
