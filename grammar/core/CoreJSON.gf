concrete CoreJSON of Core = open Prelude in {

  lincat

     Adverb   = JSON;
     [Adverb] = JSON;

     Adjective = JSON;

     Noun = JSON;
     NounPhrase = JSON;

     Verb1 = JSON;
     Verb2 = JSON;
     VerbPhrase = JSON;

     DialogAct = Str;

  lin

     compl0 v = v;
     compl1 v2 np = merge v2 np;

     BaseAdverb adv1 adv2 = merge adv1 adv2;
     ConsAdverb adv  advs = merge adv  advs;

     modVPAdv vp adv = merge vp adv;
     modAdjCN adj cn = merge adj cn;
     modCNAdv cn adv = merge cn adv;

     some cn = cn;
     all  cn = cn;

     promptNounPhrase np  = top np;
     promptAdverb     adv = top adv;
     promptAdjective  ap  = top ap;
     promptVerbPhrase vp  = top vp;

     please d = d;
     iwant_NP np = top np;
     iwant_VP vp = top vp;

     Greeting = top (set "dialogact" (quotes "greet"));
     Ack      = top (set "dialogact" (quotes "ack"));
     NotAck   = top (set "dialogact" (quotes "notack"));
     Thanks   = top (set "dialogact" (quotes "thanks"));
     Farewell = top (set "dialogact" (quotes "farewell"));



  param JSONType = Null | Value | Object | Array; -- TODO ObjectSlash

  oper

         JSON = { json : Str; type : JSONType };

         top : JSON -> Str = \ json -> case json.type of {
                                            Object => "{" ++ json.json ++ "}";
                                            Array  => "[" ++ json.json ++ "]";
                                            _      => "{ \"value\":" ++ json.json ++ "}" };

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
