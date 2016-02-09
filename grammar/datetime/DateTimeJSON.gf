concrete DateTimeJSON of DateTime = CoreJSON ** open Prelude, Numeral in {

lincat

     TemporalUnit = Str;
     Number       = Str;

     Weekday      = Str;

     Day          = Str;
     Month        = Str;
     Year         = Str;
     DateTime     = Str;

  lin

     Monday    = "Monday";
     Tuesday   = "Tuesday";
     Wednesday = "Wednesday";
     Thursday  = "Thursday";
     Friday    = "Friday";
     Saturday  = "Saturday";
     Sunday    = "Sunday";
     Weekend   = "Weekend";

     weekday w = w;

     Christmas = "year-12-24";
     Easter    = "Easter";

     Hours     = "Hour";
     Days      = "Day";
     Weeks     = "Week";
     Months    = "Month";
     Years     = "Year";

     plus  num unit = set "date" (quotes ("shift today +" ++ num ++ unit));
     minus num unit = set "date" (quotes ("shift today -" ++ num ++ unit));

     next_unit unit = set "date" (quotes ("next(" ++ unit ++ ")"));
     next      day  = set "date" (quotes ("next(" ++ day  ++ ")"));
     this      day  = set "date" (quotes ("this(" ++ day  ++ ")"));

     on_day      d = set "date" (quotes d);
     on_date     d = set "date" (quotes d);
     at_date     d = set "date" (quotes d);
     around_date d = set "date" (quotes ("~" ++ d));
     around_day  d = set "date" (quotes ("~" ++ d));
     before_date d = set "date" (quotes ("<" ++ d));
     after_date  d = set "date" (quotes (">" ++ d));

     yesterday = set "date" (quotes "shift today - 1 Day");
     today     = set "date" (quotes "today");
     tomorrow  = set "date" (quotes "shift today + 1 Day");
     dayaftertomorrow = set "date" (quotes "shift today + 2 Day");

     date y       m d = y ++ BIND ++ "-" ++ BIND ++ m ++ BIND ++ "-" ++ BIND ++ d;
     relativedate m d = "year" ++ BIND ++ "-" ++ BIND ++ m ++ BIND ++ "-" ++ BIND ++ d;

     D1  = "01";
     D2  = "02";
     D3  = "03";
     D4  = "04";
     D5  = "05";
     D6  = "06";
     D7  = "07";
     D8  = "08";
     D9  = "09";
     D10 = "10";
     D11 = "11";
     D12 = "12";
     D13 = "13";
     D14 = "14";
     D15 = "15";
     D16 = "16";
     D17 = "17";
     D18 = "18";
     D19 = "19";
     D20 = "20";
     D21 = "21";
     D22 = "22";
     D23 = "23";
     D24 = "24";
     D25 = "25";
     D26 = "26";
     D27 = "27";
     D28 = "28";
     D29 = "29";
     D30 = "30";
     D31 = "31";

     M1  = "01";
     M2  = "02";
     M3  = "03";
     M4  = "04";
     M5  = "05";
     M6  = "06";
     M7  = "07";
     M8  = "08";
     M9  = "09";
     M10 = "10";
     M11 = "11";
     M12 = "12";

     Y2015 = "2015";
     Y2016 = "2016";
     Y2017 = "2017";

     N1  = "1";
     N2  = "2";
     N3  = "3";
     N4  = "4";
     N5  = "5";
     N6  = "6";
     N7  = "7";
     N8  = "8";
     N9  = "9";
     N10 = "10";
}
