concrete DialogEng of Dialog = CoreEng ** open ResEng, SyntaxEng in {

  lin

     iwant_NP np = { s = ("i want" | "i'd like" | "i need" | "i need to" | "may i have" | "give me" | "show me" | "are there" | "do you have" ) ++ np.s ! NPAcc };
     iwant_VP vp = { s = ("i want" | "i'd like" | "i need" | "i have") ++ (mkUtt vp).s };
}
