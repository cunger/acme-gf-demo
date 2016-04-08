incomplete concrete CoreI of Core = open Syntax, Prelude in {

  lincat

     Adverb   = Adv;
     [Adverb] = ListAdv;

     Adjective = AP;

     Noun = CN;
     NounPhrase = NP;

     Verb1 = V;
     Verb2 = V2;
     VerbPhrase = VP;

     DialogAct = { s : Str };

  lin

     compl0 v1    = mkVP v1;
     compl1 v2 np = mkVP v2 np;

     modVPAdv vp adv = mkVP vp adv;
     modAdjCN ap cn  = mkCN ap cn;
     modCNAdv cn adv = mkCN cn adv;

     collapse advs = mkAdv and_Conj advs;

     some cn = mkNP a_Det cn | mkNP someSg_Det cn | mkNP somePl_Det cn;
     all  cn = mkNP all_Predet (mkNP aPl_Det cn)  | mkNP every_Det  cn;

     promptNounPhrase np   = ss (mkUtt np).s;
     promptAdverb     adv  = ss (mkUtt adv).s;
     promptAdjective  ap   = ss (mkUtt ap).s;
     promptVerbPhrase vp   = ss (mkUtt vp).s;

}
