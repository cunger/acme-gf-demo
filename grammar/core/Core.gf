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

     some    : Noun -> NounPhrase;
     all     : Noun -> NounPhrase;
     generic : Noun -> NounPhrase;

     -- prompts

     promptNounPhrase : NounPhrase -> DialogAct;
     promptAdverb     : Adverb     -> DialogAct;
     promptAdjective  : Adjective  -> DialogAct;
     promptVerbPhrase : VerbPhrase -> DialogAct;

     please : DialogAct -> DialogAct;

     -- general dialog acts

     Greeting, Farewell, Thanks, Ack, NotAck : DialogAct;

}
