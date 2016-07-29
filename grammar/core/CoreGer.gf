concrete CoreGer of Core = CoreI with (Syntax = SyntaxGer) ** open ParadigmsGer, ConjunctionGer in {

   lin

       BaseAdverb adv1 adv2 = BaseAdv adv1 adv2;
       ConsAdverb adv  advs = ConsAdv adv  advs;

       -- language-specific dialog stuff

       promptNoun       cn = ss (SyntaxGer.mkAdv accPrep (mkNP cn)).s ;

       promptNounPhrase np = variants { ss np.s;
                                        ss (SyntaxGer.mkAdv accPrep np).s };

       promptVerbPhrase vp = (mkUtt vp).s; 


       please d = ss ("bitte" ++ d.s) | ss (d.s ++ "bitte");

       Greeting = variants { ss "hi";
                             ss "hallo";
                             ss "hey";
                             ss "hej";
                             ss "moin";
                             ss "moinsen"
                            } ;

        Ack = variants { ss yes_Utt.s;
                         ss "ok";
                         ss "super";
                         ss "geil"
                       } ;

        NotAck = variants { ss no_Utt.s;
                            ss "nee";
                            ss "nö"
                           } ;

        Farewell = variants { ss "tschüss";
                              ss "lg" };

}
