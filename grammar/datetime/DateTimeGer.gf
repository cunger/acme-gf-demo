concrete DateTimeGer of DateTime = CoreGer ** open SyntaxGer, ParadigmsGer, SymbolGer in {

  lincat

     TemporalUnit = CN;

     Weekday      = CN;

     Day          = { s : Str };
     Month        = { s : Str };
     Year         = { s : Str };
     DateTime     = NP;

  lin

     Monday    = mkCN (mkN "montag" "montag" "montag" "montag" "montag" "montag" masculine);
     Tuesday   = mkCN (mkN "dienstag" "dienstag" "dienstag" "dienstag" "dienstag" "dienstag" masculine);
     Wednesday = mkCN (mkN "mittwoch" "mittwoch" "mittwoch" "mittwoch" "mittwoch" "mittwoch" masculine);
     Thursday  = mkCN (mkN "donnerstag" "donnerstag" "donnerstag" "donnerstag" "donnerstag" "donnerstag" masculine);
     Friday    = mkCN (mkN "freitag" "freitag" "freitag" "freitag" "freitag" "freitag" masculine);
     Saturday  = mkCN (mkN "samstag" "samstag" "samstag" "samstag" "samstag" "samstag" masculine)
               | mkCN (mkN "sonnabend" "sonnabend" "sonnabend" "sonnabend" "sonnabend" "sonnabend" masculine);
     Sunday    = mkCN (mkN "sonntag" "sonntag" "sonntag" "sonntag" "sonntag" "sonntag" masculine);
     Weekend   = mkCN (mkN "wochenende" "wochenenden" neuter);

     Christmas = mkNP (mkPN "weihnachten");
     Easter    = mkNP (mkPN "ostern");

     Hours     = mkCN (mkN "stunde" "stunden" feminine);
     Days      = mkCN (mkN "tag" "tage" masculine);
     Weeks     = mkCN (mkN "woche" "wochen" feminine);
     Months    = mkCN (mkN "monat" "monate" masculine);
     Years     = mkCN (mkN "jahr" "jahre" neuter);

     --plus  num unit = SyntaxGer.mkAdv in_Prep (mkNP (mkDet num) unit);
     --minus num unit = SyntaxGer.mkAdv in_Prep (mkNP (mkDet num) unit);

     next_unit unit = SyntaxGer.mkAdv accPrep (mkNP (mkCN (mkAP (mkA "nächste")) unit));
     this      day  = SyntaxGer.mkAdv accPrep (mkNP this_Det day);
     next      day  = SyntaxGer.mkAdv accPrep (mkNP (mkCN (mkAP (mkA "nächste")) day));

     on_day      d = SyntaxGer.mkAdv anDat_Prep (mkNP theSg_Det d);
     on_date     d = SyntaxGer.mkAdv anDat_Prep d;
     around_date d = SyntaxGer.mkAdv (mkPrep "um" accusative) d;
     around_day  d = SyntaxGer.mkAdv (mkPrep "um" accusative) (mkNP d);
     at_date     d = SyntaxGer.mkAdv (mkPrep "zu" dative) d | SyntaxGer.mkAdv (mkPrep "an" dative) d;
     before_date d = SyntaxGer.mkAdv (mkPrep "vor" accusative) d;
     after_date  d = SyntaxGer.mkAdv (mkPrep "nach" accusative) d;

     yesterday = ParadigmsGer.mkAdv "gestern";
     today     = ParadigmsGer.mkAdv "heute";
     tomorrow  = ParadigmsGer.mkAdv "morgen";
     dayaftertomorrow = ParadigmsGer.mkAdv "übermorgen";

     date       y m d = mkNP (SymbPN (MkSymb { s = d.s ++ m.s ++ y.s }));
     relativedate m d = mkNP (SymbPN (MkSymb { s = d.s ++ m.s }));

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

     M1  = ss "1" | ss "01" | ss "januar" | ss "jan";
     M2  = ss "2" | ss "02" | ss "februar" | ss "feb";
     M3  = ss "3" | ss "03" | ss "märz" | ss "mar";
     M4  = ss "4" | ss "04" | ss "april" | ss "apr";
     M5  = ss "5" | ss "05" | ss "mai";
     M6  = ss "6" | ss "06" | ss "juni" | ss "jun";
     M7  = ss "7" | ss "07" | ss "juli" | ss "jul";
     M8  = ss "8" | ss "08" | ss "august" | ss "aug";
     M9  = ss "9" | ss "09" | ss "september" | ss "sept" | ss "sep";
     M10 = ss "10" | ss "oktober" | ss "okt";
     M11 = ss "11" | ss "november" | ss "nov";
     M12 = ss "12" | ss "dezember" | ss "dez";

     Y2015 = ss "2015" | ss "15";
     Y2016 = ss "2016" | ss "16";
     Y2017 = ss "2017" | ss "17";

     oper ss : Str -> { s : Str } = \ s -> { s = s };

}
