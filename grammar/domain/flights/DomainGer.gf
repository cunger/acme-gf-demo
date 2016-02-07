concrete DomainGer of Domain = CoreGer ** open SyntaxGer, ParadigmsGer in {

    lin

        flight  = mkCN (mkN "flug" "flüge" masculine);
        airport = mkCN (mkN "flughafen" "flughäfen" masculine);

        cheap   = mkAP ((mkA "günstig") | (mkA "billig"));
        early   = mkAP ((mkA "zeitig")  | (mkA "früh"));
        late    = mkAP (mkA "spät");
        direct  = mkAP (mkA "direkt");

        book    = mkV2 (mkV "buchen");

        travel  = mkV "reisen";
        fly     = mkV "fliegen";
        shop    = (mkV "shoppen") | (mkV "einkaufen");

        visit       np = mkVP (mkV2 (mkV "besuchen")) np;

        source      np = SyntaxGer.mkAdv (mkPrep "von"  dative) np;
        destination np = SyntaxGer.mkAdv (mkPrep "nach" dative) np;
        location    np = SyntaxGer.mkAdv in_Prep np;

        near        np = variants { SyntaxGer.mkAdv (mkPrep "in der nähe von" dative) np;
                                    SyntaxGer.mkAdv in_Prep (mkNP the_Det (mkCN (mkN2 (mkN "nähe" feminine) possess_Prep) np)) };

}
