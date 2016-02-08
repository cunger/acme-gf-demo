Available via GET request to `http://52.29.222.38/resolve/<date>`.

*Examples:*

* today: [http://52.29.222.38/resolve/today](http://52.29.222.38/resolve/today)
* next week: [http://52.29.222.38/resolve/next(Week)](http://52.29.222.38/resolve/next(Week)
* around Easter: [http://52.29.222.38/resolve/~Easter](http://52.29.222.38/resolve/~Easter)
* before next Friday: [http://52.29.222.38/resolve/%3Cnext(Friday)](http://52.29.222.38/resolve/%3Cnext(Friday))

*Valid date expressions:*

    Date = today
         | Weekday
         | Christmas | Easter | Pentecost
         | Int Int Int Int - Int Int - Int Int   # 2016-02-02
         | year - Int Int - Int Int              # year-02-02
         | < Date                                # < Weekend
         | > Date                                # > Friday
         | ~ Date                                # ~ Easter
         | shift Date + Int Unit                 # shift today + 1 Day
         | shift Date - Int Unit                 # shift Easter - 2 Week
         | this(Unit)                            # this(Week)
         | next(Unit)                            # next(Month)
         | this(Weekday)                         # this(Tuesday)
         | next(Weekday)                         # next(Weekend)

    Unit = Day | Week | Month | Year

    Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
            | Weekend
