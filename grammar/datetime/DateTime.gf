abstract DateTime = Core ** {

  cat

     TemporalUnit;
     Number;

     Weekday;

     Day;
     Month;
     Year;
     DateTime;

  fun

     Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Weekend : Weekday;
     weekday : Weekday -> DateTime;

     Christmas, Easter, Pentecost : DateTime;

     Hours, Days, Weeks, Months, Years : TemporalUnit;

     plus  : Number -> TemporalUnit -> Adverb;  -- in 3 hours/days/weeks/...
     minus : Number -> TemporalUnit -> Adverb;  -- 3 hours/weeks/... ago

     next_unit  : TemporalUnit -> Adverb;        -- next week
     this, next : Weekday      -> Adverb;        -- this/next wednesday

     on_day      : Weekday  -> Adverb;
     on_date     : DateTime -> Adverb;
     around_date : DateTime -> Adverb;
     around_day  : Weekday  -> Adverb;
     at_date     : DateTime -> Adverb;
     before_date : DateTime -> Adverb;
     after_date  : DateTime -> Adverb;

     yesterday, today, tomorrow, dayaftertomorrow : Adverb;

     date : Year -> Month -> Day -> DateTime;
     relativedate : Month -> Day -> DateTime;

     D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17,
     D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31 : Day;

     M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12 : Month;

     Y2015, Y2016, Y2017 : Year;

     N1, N2, N3, N4, N5, N6, N7, N8, N9, N10 : Number;
}
