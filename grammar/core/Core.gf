abstract Core = {

  cat

     Adverb;
     [Adverb] {2};

     Adjective;

     Noun;
     NounPhrase;

     Verb1;
     Verb2;
     VerbPhrase;

     Prefix;
     PreSuffix;
     DialogAct;

  fun

     -- verb phrases

     compl0 : Verb1 -> VerbPhrase;
     compl1 : Verb2 -> NounPhrase -> VerbPhrase;

     -- modifications

     modVPAdv : VerbPhrase -> Adverb -> VerbPhrase;
     modAdjCN : Adjective -> Noun -> Noun;
     modCNAdv : Noun -> Adverb -> Noun;

     collapse : [Adverb] -> Adverb;

     -- determiners

     some : Noun -> NounPhrase;
     all  : Noun -> NounPhrase;

     -- lift to DialogAct

     promptNounPhrase : NounPhrase -> DialogAct;
     promptAdverb     : Adverb     -> DialogAct;
     promptAdjective  : Adjective  -> DialogAct;
     promptVerbPhrase : VerbPhrase -> DialogAct;

     -- prefixes etc.

     prefix    : Prefix    -> DialogAct -> DialogAct;
     presuffix : PreSuffix -> DialogAct -> DialogAct;

     askFor : Prefix;

     please : PreSuffix;
     gerne  : PreSuffix;

     -- fixed dialog acts

     Greeting, Farewell, Thanks, Ack, NotAck : DialogAct;

}
