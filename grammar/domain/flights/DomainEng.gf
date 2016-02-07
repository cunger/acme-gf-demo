concrete DomainEng of Domain = CoreEng ** open SyntaxEng, ParadigmsEng, IrregEng in {

    lin

        flight  = mkCN (mkN "flight");
        airport = mkCN (mkN "airport");

        cheap   = mkAP ((mkA "cheap") | (mkA "affordable"));
        early   = mkAP (mkA "early");
        late    = mkAP (mkA "late");
        direct  = mkAP (mkA "direct");

        book    = mkV2 (mkV "book");

        travel  = mkV "travel";
        fly     = mkV "fly";
        shop    = (mkV "shop") | (partV go_V "shopping");

        visit       np = mkVP (mkV2 (mkV "visit")) np;

        source      np = SyntaxEng.mkAdv from_Prep np;
        destination np = SyntaxEng.mkAdv to_Prep np;
        location    np = SyntaxEng.mkAdv in_Prep np;

        near        np = SyntaxEng.mkAdv (mkPrep "near") np;

}
