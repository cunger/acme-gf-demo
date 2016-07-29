concrete DialogGer of Dialog = CoreGer ** open ParadigmsGer, SyntaxGer in {

  lin

    iwant_NP np = { s = (("ich will" | "ich möchte" | "ich hätte gerne" | "ich hätte gern" | "ich brauche" | "ich muss" | "hast du" | "gibt es") ++ (SyntaxGer.mkAdv accPrep np).s) };

    iwant_VP vp = { s = (("ich will" | "ich möchte" | "ich muss" | "kann ich" | "kannst du") ++ (mkUtt vp).s) };
}
