concrete CoreGer of Core = CoreI with (Syntax = SyntaxGer) ** open ParadigmsGer, ConjunctionGer in {

   lin

       BaseAdverb adv1 adv2 = BaseAdv adv1 adv2;
       ConsAdverb adv  advs = ConsAdv adv  advs;

       -- language-specific dialog stuff

       promptNounPhrase np = variants { ss np.s; 
                                        ss (SyntaxGer.mkAdv accPrep np).s };

       please = { s = "bitte" };
       gerne  = { s = "gerne" | "gern" };
       askFor = { s = "ich will" | "ich möchte" | "ich hätte gerne" | "ich hätte gern" | "ich brauche" | "ich muss" | "hast du" | "gibt es" };

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

        Farewell = variants { ss "lg" };

}
