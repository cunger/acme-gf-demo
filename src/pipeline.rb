require_relative 'datetime/resolver'



def process(gf, string)

    interpretations = []

    # Preprocessing

    normalized_string = normalize(string)

    # Translation to JSON

    parses = gf.parse(normalized_string)

    parses.each do |parse|

      linearizations = gf.linearize(parse[:ast],'JSON')
      linearizations.each do |lin|
        json = JSON.parse(lin)
        json["language"] = parse[:language]
        interpretations << json
      end
    end

    # Postprocessing

    interpretations.map! { |i| postprocess(i) }
    interpretations.sort_by! { |i| i.length }
    interpretations.uniq!

    # Inferences

    # TODO interpretations.map! { |i| drawInferences(i) }

    return interpretations

    rescue JSON::ParserError => e
      return []
end


private

def normalize(string)

    return string.downcase.gsub(/-/,' ').gsub(/[[:punct:]]/,'')
end


def postprocess(json)
# Note: Resolving dates, times and prices should be user-dependent.
# The following time and price settings are merely stubs.

    # resolve date expression

    if json.has_key? "date"
       json["date"] = resolve_date(json["date"])
    end

    # resolve time

    if json.has_key? "permittedDepartureTime"
       time = { "kind" => "qpxexpress#timeOfDayRange" }
       case json["permittedDepartureTime"]
       when "early"
            time["earliestTime"] = "06:00"
            time["latestTime"]   = "10:00"
       when "late"
            time["earliestTime"] = "17:00"
            time["latestTime"]   = "23:00"
       end
       json["permittedDepartureTime"] = time
    end

    # resolve price

    if json.has_key? "maxPrice"
       case json["maxPrice"]
       when "cheap"
            json["maxPrice"] = "EUR100"
       end

    return json
end
