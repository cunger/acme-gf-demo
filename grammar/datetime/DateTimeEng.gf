concrete DateTimeEng of DateTime = CoreEng ** open SyntaxEng, ParadigmsEng, SymbolEng in {

  lincat

     TemporalUnit = CN;
     Number       = Card;

     Weekday      = CN;

     Day          = { s : Str };
     Month        = { s : Str };
     Year         = { s : Str };
     DateTime     = NP;

  lin

     Monday    = mkCN (mkN "monday") | mkCN (mkN "mon");
     Tuesday   = mkCN (mkN "tuesday") | mkCN (mkN "tue");
     Wednesday = mkCN (mkN "wednesday") | mkCN (mkN "wed");
     Thursday  = mkCN (mkN "thursday") | mkCN (mkN "thu");
     Friday    = mkCN (mkN "friday") | mkCN (mkN "fri");
     Saturday  = mkCN (mkN "saturday") | mkCN (mkN "sat");
     Sunday    = mkCN (mkN "sunday") | mkCN (mkN "sun");
     Weekend   = mkCN (mkN "weekend");

     weekday w = mkNP w;

     Christmas = mkNP (mkPN "christmas") | mkNP (mkPN "xmas");
     Easter    = mkNP (mkPN "easter");

     Hours     = mkCN (mkN "hour");
     Days      = mkCN (mkN "day");
     Weeks     = mkCN (mkN "week");
     Months    = mkCN (mkN "month");
     Years     = mkCN (mkN "year");

     --plus  num unit = SyntaxEng.mkAdv in_Prep (mkNP (mkDet num) unit);
     --minus num unit = SyntaxEng.mkAdv (mkPost "ago") (mkNP (mkDet num) unit);

     next_unit unit = SyntaxEng.mkAdv (mkPrep "next") (mkNP unit);
     next      day  = SyntaxEng.mkAdv (mkPrep "next") (mkNP day);
     this      day  = SyntaxEng.mkAdv noPrep (mkNP this_Det day);

     on_day      d = SyntaxEng.mkAdv on_Prep (mkNP d);
     on_date     d = SyntaxEng.mkAdv on_Prep d;
     around_date d = SyntaxEng.mkAdv (mkPrep "around") d;
     around_day  d = SyntaxEng.mkAdv (mkPrep "around") (mkNP d);
     at_date     d = SyntaxEng.mkAdv (mkPrep "at") d | SyntaxEng.mkAdv (mkPrep "with") d;
     before_date d = SyntaxEng.mkAdv (mkPrep "before") d;
     after_date  d = SyntaxEng.mkAdv (mkPrep "after") d;

     yesterday = ParadigmsEng.mkAdv "yesterday";
     today     = ParadigmsEng.mkAdv "today";
     tomorrow  = ParadigmsEng.mkAdv "tomorrow";
     dayaftertomorrow = ParadigmsEng.mkAdv "the day after tomorrow";

     date       y m d = mkNP (SymbPN (MkSymb { s = y.s ++ m.s ++ d.s }));
     relativedate m d = mkNP (SymbPN (MkSymb { s = m.s ++ d.s }))
                      | mkNP (SymbPN (MkSymb { s = d.s ++ m.s }));

     D1  = ss "1" | ss "01";
     D2  = ss "2" | ss "02";
     D3  = ss "3" | ss "03";
     D4  = ss "4" | ss "04";
     D5  = ss "5" | ss "05";
     D6  = ss "6" | ss "06";
     D7  = ss "7" | ss "07";
     D8  = ss "8" | ss "08";
     D9  = ss "9" | ss "09";
     D10 = ss "10";
     D11 = ss "11";
     D12 = ss "12";
     D13 = ss "13";
     D14 = ss "14";
     D15 = ss "15";
     D16 = ss "16";
     D17 = ss "17";
     D18 = ss "18";
     D19 = ss "19";
     D20 = ss "20";
     D21 = ss "21";
     D22 = ss "22";
     D23 = ss "23";
     D24 = ss "24";
     D25 = ss "25";
     D26 = ss "26";
     D27 = ss "27";
     D28 = ss "28";
     D29 = ss "29";
     D30 = ss "30";
     D31 = ss "31";

     M1  = ss "1" | ss "01" | ss "january" | ss "jan";
     M2  = ss "2" | ss "02" | ss "february" | ss "feb";
     M3  = ss "3" | ss "03" | ss "march" | ss "mar";
     M4  = ss "4" | ss "04" | ss "april" | ss "apr";
     M5  = ss "5" | ss "05" | ss "may";
     M6  = ss "6" | ss "06" | ss "june" | ss "jun";
     M7  = ss "7" | ss "07" | ss "july" | ss "jul";
     M8  = ss "8" | ss "08" | ss "august" | ss "aug";
     M9  = ss "9" | ss "09" | ss "september" | ss "sept" | ss "sep";
     M10 = ss "10" | ss "october" | ss "oct";
     M11 = ss "11" | ss "november" | ss "nov";
     M12 = ss "12" | ss "december" | ss "dec";

     Y2015 = ss "2015" | ss "15";
     Y2016 = ss "2016" | ss "16";
     Y2017 = ss "2017" | ss "17";

     N1  = mkCard "1";
     N2  = mkCard "2";
     N3  = mkCard "3";
     N4  = mkCard "4";
     N5  = mkCard "5";
     N6  = mkCard "6";
     N7  = mkCard "7";
     N8  = mkCard "8";
     N9  = mkCard "9";


     oper ss : Str -> { s : Str } = \ s -> { s = s };

}
