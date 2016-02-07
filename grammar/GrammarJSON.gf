concrete GrammarJSON of Grammar = open Prelude in {


    lincat

        Phr = Str;

        Utt, Text, Interj = JSON;
        S, SC, QS, RS, Cl, RCl, QCl, Imp = JSON;
        ClSlash, SSlash, VPSlash = JSON;

        RP, IP, IComp, IDet, IQuant, IAdv, QVP = JSON;

        VP, Comp = JSON;

        AP,  Adv, CAdv = JSON;
        DAP, AdA, AdN, AdV = JSON;

        CN, NP, Pron, Det, Predet, Quant, Num, Card, Ord = JSON;

        Numeral, Digits, Digit, Dig, Sub10, Sub100, Sub1000, Sub1000000 = JSON;

        Conj, PConj, Subj, Voc, Temp, Tense, Pol, Ant = JSON;

        Prep = JSON;
        V, V2, V3, VV, VS, VQ, VA, V2V, V2S, V2Q, V2A = JSON;
        A, A2 = JSON;
        N, N2, N3, PN = JSON;

        AdN = JSON;

        ListS, ListRS, ListNP, ListIAdv, ListCN, ListAdv, ListAdV, ListAP = JSON;


    lin

        ------ Phrase.gf -------

        PhrUtt _ utt _ = top utt;

        UttS s = s;
        UttQS qs = qs;
        UttImpSg _ i = i;
        UttImpPl _ i = i;
        UttImpPol _ i = i;

        UttIP ip = ip;
        UttIAdv iadv = iadv;
        UttNP np = np;
        UttAdv adv = adv;
        UttVP vp = vp;
        UttCN cn = cn;
        UttCard card = card;
        UttAP ap = ap;
        UttInterj interj = interj;

        NoPConj = null;
        PConjConj _ = null;

        NoVoc = null;
        VocNP np = np;


        ------ Noun.gf -------

        DetCN det cn = cn;
        UsePN pn = pn;
        UsePron pron = pron;

        PredetNP _ np = np;

        PPartNP np v2 = np;
        AdvNP np adv = merge np adv;
        ExtAdvNP np adv = merge np adv;
        RelNP np rs = merge np rs;

        DetNP det = det;

        DetQuant _ _ = null;
        DetQuantOrd _ _ _ = null;

        NumSg = null;
        NumPl = null;
        NumCard _ = null;

        AdNum _ _ = null;

        IndefArt = null;
        DefArt = null;

        MassNP cn = cn;

        PossPron pron = pron;

        UseN   n = n;
        UseN2  n = n;
        Use2N3 n = n;
        Use3N3 n = n;

        ComplN2 n2 np = merge n2 np; -- TODO
        ComplN3 n3 np = merge n3 np; -- TODO

        AdjCN ap cn  = merge ap cn;
        RelCN cn rs  = merge cn rs;
        AdvCN cn adv = merge cn adv;

        SentCN cn sc = merge cn sc;

        ApposCN cn np = merge cn np;

        PossNP cn np = merge cn np;
        PartNP cn np = merge cn np;

        CountNP det np = merge det np;

        AdjDAP dap ap = merge dap ap;
        DetDAP det = det;


        ------ Adjective.gf -------

        PositA a = a;
        ComparA a np = a;
        ComplA2 a2 np = np;
        ReflA2 a2 = a2;
        UseA2  a2 = a2;
        UseComparA a = a;
        CAdvAP cadv ap np = merge (merge cadv ap) np;
        AdjOrd _ = null;

        SentAP ap sc = merge ap sc;
        AdAP ada ap  = merge ada ap;
        AdvAP ap adv = merge ap adv;


        ------ Adverb.gf -------

        PositAdvAdj a = a;
        PrepNP prep np = merge prep np;
        -- ComparAdvAdj
        -- ComparAdvAdjS

        AdAdv ada adv = adv;
        PositAdAAdj a = a;
        SubjS _ s = s;
        AdnCAdv cadv = cadv;


        ------ Verb.gf -------

        UseV v = v;

        ComplVV  vv vp = vp;
        ComplVS  vs s = s;
        ComplVQ  vq qs = qs;
        ComplVA  va ap = ap;

        SlashV2a v2 = v2;
        Slash2V3 v3 np = merge v3 np;
        Slash3V3 v3 np = merge v3 np;

        SlashV2V _ vp = vp;
        SlashV2S _ s = s;
        SlashV2Q _ qs = qs;
        SlashV2A _ ap = ap;

        ComplSlash vps np = merge vps np;

        SlashVV    _ vps = vps;
        SlashV2VNP _ np vps = merge np vps;

        ReflVP  vps = vps;
        UseComp comp = comp;

        PassV2 v2 = v2;

        AdvVP    vp adv = merge vp adv;
        ExtAdvVP vp adv = merge vp adv;
        AdVVP    adv vp = merge adv vp;

        AdvVPSlash vps adv = merge vps adv;
        AdVVPSlash adv vps = merge adv vps;

        VPSlashPrep vp prep = vp;

        CompAP  ap  = ap;
        CompNP  np  = np;
        CompAdv adv = adv;
        CompCN  cn  = cn;

        UseCopula = null;


        ------ Tense.gf -------

        TTAnt t a = merge t a;

        PPos = null;
        PNeg = set "polarity" "neg";

        TPres  = null;
        ASimul = null;
        TPast  = set "tense" "past";
        TFut   = set "tense" "future";
        TCond  = set "tense" "conditional";
        AAnter = null;


        ------ Sentence.gf -------

        PredVP   np vp = merge np vp;
        PredSCVP sc vp = merge sc vp;

        SlashVP   np vps = merge np vps;
        AdvSlash  cls adv = merge cls adv;
        SlashPrep cl prep = merge cl prep;
        SlashVS   np vs s = merge np s;

        ImpVP vp = vp;

        EmbedS  s  = s;
        EmbedQS qs = qs;
        EmbedVP vp = vp;

        UseCl    _ _ cl  = cl;
        UseQCl   _ _ qcl = qcl;
        UseRCl   _ _ rcl = rcl;
        UseSlash _ _ cls = cls;

        AdvS    adv s = merge adv s;
        ExtAdvS adv s = merge adv s;

        SSubjS s1 _ s2 = merge s1 s2;

        RelS s rs = merge s rs;


        ------ Question.gf -------

        QuestCl cl = cl;
        QuestVP ip vp = vp;
        QuestSlash ip cl = cl;
        QuestIAdv iadv cl = cl;
        QuestIComp icomp np = merge icomp np;

        IdetCN idet cn = cn;
        IdetIP idet = idet;
        IdetQuant iquant num = null;

        AdvIP ip adv = adv;
        PrepIP p ip = null;

        AdvIAdv iadv adv = merge iadv adv;

        CompIAdv iadv = iadv;
        CompIP ip = ip;

        ComplSlashIP vps ip = vps;
        AdvQVP vp iadv = merge vp iadv;
        AddAdvQVP qvp iadv = merge qvp iadv;

        QuestQVP ip qvp = qvp;


        ------ Relative.gf -------

        RelCl cl = cl;

        RelVP    rp vp  = vp;
        RelSlash rp cls = cls;

        IdRP = null;
        FunRP p np rp = np;


        ------ Conjunction.gf -------

        -- TODO = c ls; with c : JSON -> JSON;

        ConjS    c ls    = ls;
        ConjRS   c lrs   = lrs;
        ConjAP   c lap   = lap;
        ConjNP   c lnp   = lnp;
        ConjAdv  c ladv  = ladv;
        ConjAdV  c ladv  = ladv;
        ConjIAdv c liadv = liadv;
        ConjCN   c lcn   = lcn;

        BaseAP c1 c2 = merge c1 c2;
        ConsAP c  cs = merge c cs;

        BaseAdV c1 c2 = merge c1 c2;
        ConsAdV c  cs = merge c cs;

        BaseAdv c1 c2 = merge c1 c2;
        ConsAdv c  cs = merge c cs;

        BaseCN c1 c2 = merge c1 c2;
        ConsCN c  cs = merge c cs;

        BaseIAdv c1 c2 = merge c1 c2;
        ConsIAdv c  cs = merge c cs;

        BaseNP c1 c2 = merge c1 c2;
        ConsNP c  cs = merge c cs;

        BaseRS c1 c2 = merge c1 c2;
        ConsRS c  cs = merge c cs;

        BaseS c1 c2 = merge c1 c2;
        ConsS c  cs = merge c cs;


        ------ Conjunction.gf -------

        SymbPN   s = { json = s.s; type = Value };
        IntPN    i = { json = i.s; type = Value };
        FloatPN  f = { json = f.s; type = Value };
        NumPN    c = { json = c.s; type = Value };
        CNNumNP  cn c = cn;
        CNSymbNP det cn symbs = merge cn symbs;

        SymbS s = { json = quotes s.s; type = Value };

        SymbNum s = { json = quotes s.s; type = Value };
        SymbOrd _ = null;

        MkSymb s = { json = quotes s.s; type = Value };


        --------- Numeral.gf -------------

        D_0 = number "0";
        D_1 = number "1";
        D_2 = number "2";
        D_3 = number "3";
        D_4 = number "4";
        D_5 = number "5";
        D_6 = number "6";
        D_7 = number "7";
        D_8 = number "8";
        D_9 = number "9";
        n2  = number "2";
        n3  = number "3";
        n4  = number "4";
        n5  = number "5";
        n6  = number "6";
        n7  = number "7";
        n8  = number "8";
        n9  = number "9";

        num s = s;

        IDig  d = d;
        IIDig d ds = number (d.json ++ "BIND" ++ ds.json);

        pot0 d = d;
  --      pot1to19 : Digit -> Sub100 ;                  -- 10 + d
        pot0as1 s = s;
  --      pot1 : Digit -> Sub100 ;                      -- d * 10
  --      pot1plus : Digit -> Sub10 -> Sub100 ;         -- d * 10 + n
        pot1as2 s = s;
  --      pot2 : Sub10 -> Sub1000 ;                     -- m * 100
  --      pot2plus : Sub10 -> Sub100 -> Sub1000 ;       -- m * 100 + n
        pot2as3 s = s;
  --      pot3 : Sub1000 -> Sub1000000 ;                -- m * 1000
  --      pot3plus : Sub1000 -> Sub1000 -> Sub1000000 ; -- m * 1000 + n


        --------- Structural.gf ----------

        above_Prep = null;
        after_Prep = null;
        all_Predet = null;
        almost_AdA = null;
        almost_AdN = null;
        although_Subj = null;
        always_AdV = null;
        and_Conj = null;
        because_Subj = null;
        before_Prep = null;
        behind_Prep = null;
        between_Prep = null;
        both7and_DConj = null;
        but_PConj = null;
        by8agent_Prep = null;
        by8means_Prep = null;
        can8know_VV = null;
        can_VV = null;
        during_Prep = null;
        either7or_DConj = null;
        every_Det = null;
        everybody_NP = null;
        everything_NP = null;
        everywhere_Adv = null;
        few_Det = null;
        for_Prep = null;
        from_Prep = null;
        he_Pron = null;
        here_Adv = null;
        here7to_Adv = null;
        here7from_Adv = null;
        how_IAdv = null;
        how8many_IDet = null;
        how8much_IAdv = null;
        i_Pron = null;
        if_Subj = null;
        in8front_Prep = null;
        in_Prep = null;
        it_Pron = null;
        less_CAdv = null;
        many_Det = null;
        more_CAdv = null;
        most_Predet = null;
        much_Det = null;
        must_VV = null;
        no_Utt = null;
        on_Prep = null;
        only_Predet = null;
        or_Conj = null;
        otherwise_PConj = null;
        part_Prep = null;
        please_Voc = null;
        possess_Prep = null;
        quite_Adv = null;
        she_Pron = null;
        so_AdA = null;
        someSg_Det = null;
        somePl_Det = null;
        somebody_NP = null;
        something_NP = null;
        somewhere_Adv = null;
        that_Quant = null;
        that_Subj = null;
        there_Adv = null;
        there7to_Adv = null;
        there7from_Adv = null;
        therefore_PConj = null;
        they_Pron = null;
        this_Quant = null;
        through_Prep = null;
        to_Prep = null;
        too_AdA = null;
        under_Prep = null;
        very_AdA = null;
        want_VV = null;
        we_Pron = null;
        whatPl_IP = null;
        whatSg_IP = null;
        when_IAdv = null;
        when_Subj = null;
        where_IAdv = null;
        which_IQuant = null;
        whoPl_IP = null;
        whoSg_IP = null;
        why_IAdv = null;
        with_Prep = null;
        without_Prep = null;
        yes_Utt = null;
        youSg_Pron = null;
        youPl_Pron = null;
        youPol_Pron = null;

        no_Quant = null;
        not_Predet = null;
        if_then_Conj = null;
        at_least_AdN = null;
        at_most_AdN = null;
        nobody_NP = null;
        nothing_NP = null;
        except_Prep = null;

        as_CAdv = null;

        have_V2 = null;

        language_title_Utt = null;


   ----------------------------------


    param JSONType = Null | Value | Object | Array; -- TODO ObjectSlash

    oper

        JSON = { json : Str; type : JSONType };

        top : JSON -> Str = \ json -> case json.type of {
                                           Object => "{" ++ json.json ++ "}";
                                           Array  => "[" ++ json.json ++ "]";
                                           _      => json.json };

        null : JSON = { json = "null"; type = Null };

        set : Str -> Str -> JSON = \ key, value -> { json = quotes key ++ ":" ++ value; type = Object };

        number : Str -> JSON = \ s -> { json = s; type = Value };
        string : Str -> JSON = \ s -> { json = quotes s; type = Value };

        quotes : Str -> Str = \ s -> "\"" ++ BIND ++ s ++ BIND ++ "\"";

        merge : JSON -> JSON -> JSON = \ j1, j2 -> case <j1.type,j2.type> of {
                                                        <Array,Array>   => { json = j1.json ++ "," ++ j2.json; type = Array };
                                                        <Object,Object> => { json = j1.json ++ "," ++ j2.json; type = Object };
                                                        <_,Null>        => j1;
                                                        <Null,_>        => j2;
                                                        _               => null };

                                                        -- TODO <ObjectSlash,Value> => ...

}
