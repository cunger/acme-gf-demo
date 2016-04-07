Available via GET request to `http://52.29.222.38/resolve/<date>`.

*Examples:*

* today: [http://52.29.222.38/resolve/today](http://52.29.222.38/resolve/today)
* around Easter: [http://52.29.222.38/resolve/~easter](http://52.29.222.38/resolve/~easter)
* before next Friday: [http://52.29.222.38/resolve/%3Cnext(friday)](http://52.29.222.38/resolve/%3Cnext(friday))

*Valid date expressions:*

    DATE    ::= today
              | WEEKDAY
              | HOLIDAY
              | NUM-NUM-NUM             # 2016-02-02
              | year-NUM-NUM            # year-02-02
              | < DATE                  # < weekend
              | > DATE                  # > monday
              | ~ DATE                  # ~ easter
              | shift DATE + NUM UNIT   # shift today + 1 day
              | shift DATE - NUM UNIT   # shift easter - 2 week  
              | this(UNIT)              # this(week)
              | this(WEEKDAY)           # this(friday)
              | next(UNIT)              # next(year)
              | next(WEEKDAY)           # next(weekend)

    WEEKDAY ::= monday | tuesday | wednesday | thursday | friday | saturday | sunday
              | weekend

    HOLIDAY ::= christmas | easter | pentecost

    UNIT    ::= day | week | month | year
