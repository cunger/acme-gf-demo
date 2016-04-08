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

     some : Noun -> NounPhrase;
     all  : Noun -> NounPhrase;

     -- lift to DialogAct

     promptNounPhrase : NounPhrase -> DialogAct;
     promptAdverb     : Adverb     -> DialogAct;
     promptAdjective  : Adjective  -> DialogAct;
     promptVerbPhrase : VerbPhrase -> DialogAct;

     -- prompts etc.

     please : DialogAct -> DialogAct;

     iwant_NP : NounPhrase -> DialogAct;
     iwant_VP : VerbPhrase -> DialogAct;


     -- fixed dialog acts

     Greeting, Farewell, Thanks, Ack, NotAck : DialogAct;

}
