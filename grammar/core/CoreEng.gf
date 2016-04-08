concrete CoreEng of Core = CoreI with (Syntax = SyntaxEng) ** open ConjunctionEng in {

   lin

       BaseAdverb adv1 adv2 = BaseAdv adv1 adv2;
       ConsAdverb adv  advs = ConsAdv adv  advs;

       -- language-specific dialog stuff

       -- promptNounPhrase np = ss (np.s ! NPC Acc);

       please d = ss ("please" ++ d.s) | ss (d.s ++ "please");

       -- iwant_NP np = ss (("i want" | "i'd like" | "i need" | "i need to" | "may i have" | "give me" | "show me" | "are there" | "do you have" ) ++ (np.s ! NPC Acc));
       iwant_VP vp = ss (("i want to" | "i'd like to" | "i need to" | "may i" | "can you" ) ++ (mkUtt vp).s) ;

       Greeting = variants { ss "hi";
                             ss "hello";
                             ss "hey";
                             ss "hej";
                             ss "howdy";
                             ss "morning";
                             ss "good morning";
                             ss "good afternoon";
                            } ;

        Ack = variants { ss yes_Utt.s;
                         ss "cool";
                         ss "yay";
                         ss "ok"
                       } ;

        NotAck = variants { ss no_Utt.s;
                            ss "nay";
                            ss "nope"
                           } ;

        Farewell = variants { ss "bye" };

}
