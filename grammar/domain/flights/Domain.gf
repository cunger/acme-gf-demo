abstract Domain = Core ** {

    fun

        flight    : Noun;
        airport   : Noun;
        departure : Noun;
        arrival   : Noun;

        cheap   : Adjective;
        early   : Adjective;
        late    : Adjective;
        direct  : Adjective;

        book   : Verb2;

        travel : Verb1;
        fly    : Verb1;
        shop   : Verb1;

        visit       : NounPhrase -> VerbPhrase;

        source      : NounPhrase -> Adverb;
        destination : NounPhrase -> Adverb;
        location    : NounPhrase -> Adverb;

        near        : NounPhrase -> Adverb;

}
