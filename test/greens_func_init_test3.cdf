(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     43589,       1334]
NotebookOptionsPosition[     40608,       1210]
NotebookOutlinePosition[     40951,       1225]
CellTagsIndexPosition[     40908,       1222]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["General parameters", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"inverse", " ", "temperature"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Beta]", "val"], "=", "2"}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"time", " ", "step"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Tau]", "val"], "=", 
    FractionBox["1", "8"]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"number", " ", "of", " ", "time", " ", "steps"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["L", "val"], "=", 
   FractionBox[
    SubscriptBox["\[Beta]", "val"], 
    SubscriptBox["\[Tau]", "val"]]}]}]], "Input"],

Cell[BoxData["16"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[Lambda]", "val"], "=", 
   RowBox[{"3", "/", "4"}]}], ";"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"electron", "-", 
    RowBox[{"phonon", " ", "interaction", " ", "strength"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["g", "val"], "=", 
    RowBox[{"7", "/", "10"}]}], ";"}]}]], "Input"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Rectangular lattice", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"lattice", " ", "dimensions"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["n", "x"], "=", "4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     SubscriptBox["n", "y"], "=", "6"}], ";"}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"lattice", " ", "sites"}], ",", " ", 
    RowBox[{
     RowBox[{"in", " ", "column"}], "-", 
     RowBox[{"major", " ", 
      RowBox[{"(", "Fortran", ")"}], " ", "order"}]}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "sites"], "=", 
    RowBox[{"Flatten", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"Outer", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"{", "##", "}"}], "&"}], ",", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", 
           RowBox[{
            SubscriptBox["n", "x"], "-", "1"}]}], "]"}], ",", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", 
           RowBox[{
            SubscriptBox["n", "y"], "-", "1"}]}], "]"}]}], "]"}], "]"}], ",", 
      "1"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"Dimensions", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "5"}], "}"}]}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "2"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"total", " ", "number", " ", "of", " ", "lattice", " ", "sites"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["n", "sites"], "=", 
   RowBox[{"Length", "[", 
    SubscriptBox["latt", "sites"], "]"}]}]}]], "Input"],

Cell[BoxData["24"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"direct", " ", "neighbors"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "neigh"], "=", 
    RowBox[{"Outer", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Norm", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"First", "[", 
                RowBox[{"#1", "-", "#2"}], "]"}], ",", 
               SubscriptBox["n", "x"], ",", 
               RowBox[{"-", "1"}]}], "]"}], ",", 
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"Last", "[", 
                RowBox[{"#1", "-", "#2"}], "]"}], ",", 
               SubscriptBox["n", "y"], ",", 
               RowBox[{"-", "1"}]}], "]"}]}], "}"}], "]"}], "\[Equal]", "1"}],
          ",", "1", ",", "0"}], "]"}], "&"}], ",", 
      SubscriptBox["latt", "sites"], ",", 
      SubscriptBox["latt", "sites"], ",", "1"}], "]"}]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"check", ":", " ", "symmetric"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "neigh"], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Norm", "[", 
    RowBox[{"%", "-", 
     RowBox[{"Transpose", "[", "%", "]"}]}], "]"}]}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"check", ":", " ", 
    RowBox[{"every", " ", "site", " ", "has", " ", "4", " ", "neighbors"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"Total", "/@", 
      SubscriptBox["latt", "neigh"]}], ")"}], "-", "4"}], "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kinetic energy operator", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"chemical", " ", "potential"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Mu]", "val"], "=", 
    RowBox[{"-", 
     FractionBox["2", "13"]}]}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["k", "val"], "=", 
   RowBox[{
    RowBox[{"-", 
     SubscriptBox["latt", "neigh"]}], "-", 
    RowBox[{
     SubscriptBox["\[Mu]", "val"], 
     RowBox[{"IdentityMatrix", "[", 
      SubscriptBox["n", "sites"], "]"}]}]}]}], ";"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"symbolic", " ", 
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{
      RowBox[{"-", "\[Tau]"}], " ", "k"}]]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Tau]", "val"]}], " ", 
       SubscriptBox["k", "val"]}], "]"}], "]"}]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "\[LeftDoubleBracket]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
   "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        RowBox[{"-", "1"}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"1", "/", "8"}]]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"3", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"5", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"7", "/", "8"}]]}], "+", "\[ExponentialE]"}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]]},
     {
      FractionBox[
       RowBox[{
        RowBox[{"-", "1"}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"1", "/", "8"}]]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"3", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"5", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"7", "/", "8"}]]}], "+", "\[ExponentialE]"}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "3"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]]},
     {
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "3"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"27", "/", "52"}]]}]]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"numerical", " ", "values"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{
     SubscriptBox["exp", "\[Tau]k"], "\[LeftDoubleBracket]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "]"}], "//",
    "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1.0119894087783328`", "0.1258439207426486`", "0.015608893624979582`"},
     {"0.1258439207426486`", "1.0119894087783328`", "0.0019410127765997422`"},
     {"0.015608893624979582`", "0.0019410127765997422`", "1.0119894087783328`"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"compare", " ", "with", " ", "numerical", " ", "evaluation"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "-", 
    RowBox[{"MatrixExp", "[", 
     RowBox[{"N", "[", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Tau]", "val"]}], 
       SubscriptBox["k", "val"]}], "]"}], "]"}]}], "]"}]}]], "Input"],

Cell[BoxData["9.628910710970601`*^-16"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Hubbard-Stratonovich field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["s", "val"], "=", 
   RowBox[{
    RowBox[{"2", 
     RowBox[{"RandomInteger", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         SubscriptBox["n", "sites"], ",", 
         SubscriptBox["L", "val"]}], "}"}]}], "]"}]}], "-", "1"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", 
  SubscriptBox["s", "val"], "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "16"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "examples", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", "1"}], "\[RightDoubleBracket]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", "2"}], "\[RightDoubleBracket]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", 
     RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Flatten", "[", 
    RowBox[{"Transpose", "[", 
     SubscriptBox["s", "val"], "]"}], "]"}], "/.", 
   RowBox[{"{", 
    RowBox[{"1", "\[Rule]", "0"}], "}"}]}], "/.", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"-", "1"}], "\[Rule]", "1"}], "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", 
   "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", 
   "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "1"}], "}"}]], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Phonon field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["X", "val"], "=", 
   RowBox[{
    FractionBox["1", "32"], 
    RowBox[{"RandomInteger", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "32"}], ",", "32"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["n", "sites"], ",", 
        SubscriptBox["L", "val"]}], "}"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "16"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["X", "val"], "\[LeftDoubleBracket]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     FractionBox["11", "16"], ",", 
     RowBox[{"-", 
      FractionBox["7", "8"]}], ",", 
     FractionBox["1", "8"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["5", "16"]}], ",", 
     RowBox[{"-", 
      FractionBox["1", "8"]}], ",", 
     RowBox[{"-", 
      FractionBox["7", "32"]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["5", "32"], ",", 
     RowBox[{"-", 
      FractionBox["1", "16"]}], ",", 
     FractionBox["23", "32"]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"save", " ", "phonon", " ", "field", " ", "to", " ", "disk"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
      RowBox[{"FileBaseName", "[", 
       RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", 
      "\"\<_X.dat\>\""}], ",", 
     RowBox[{"Flatten", "[", 
      RowBox[{"Transpose", "[", 
       RowBox[{"N", "[", 
        SubscriptBox["X", "val"], "]"}], "]"}], "]"}], ",", 
     "\"\<Real64\>\""}], "]"}], ";"}]}]], "Input"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculate time flow map", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "time", " ", "flow", " ", "map", " ", "generated", " ", "by", " ", "the", 
     " ", "Hubbard"}], "-", 
    RowBox[{"Holstein", " ", "Hamiltonian"}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"HubbardTimeFlowMap", "[", 
    RowBox[{"expK_", ",", "expV_"}], "]"}], ":=", 
   RowBox[{"Fold", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiagonalMatrix", "[", "#2", "]"}], ".", "expK", ".", "#1"}], 
      "&"}], ",", 
     RowBox[{"IdentityMatrix", "[", 
      RowBox[{"Length", "[", "expK", "]"}], "]"}], ",", 
     RowBox[{"Transpose", "[", "expV", "]"}]}], "]"}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["A", "val"], "=", 
   RowBox[{"HubbardTimeFlowMap", "[", 
    RowBox[{
     RowBox[{"N", "[", 
      RowBox[{
       SubscriptBox["exp", "\[Tau]k"], ",", 
       RowBox[{"6", "MachinePrecision"}]}], "]"}], ",", 
     RowBox[{"Exp", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Lambda]", "val"]}], 
        SubscriptBox["s", "val"]}], "-", 
       RowBox[{
        SubscriptBox["\[Tau]", "val"], 
        SubscriptBox["g", "val"], 
        SubscriptBox["X", "val"]}]}], "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["A", "val"], "\[LeftDoubleBracket]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
   "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"41779.\
883997212312556222558714085305406017658848604031744977033416605900142674490296\
5743686819287399268385496941910951389`94.52341863849009", 
      "113331.7081216914650133587888589597152761928513193382588098955019040838\
698574733779634500884384414060326823041615882719537`94.52341863849", 
      "58793.41737995353533358590076579221778188242263594776568787797516151500\
05613632425750020147626612518291291227569114970932`94.52341863849007"},
     {"26916.\
681652500884925205262552238538191783275781770344447448408867754502141922388499\
3786409450734098579109078834329200983`94.52341863849017", 
      "74860.31650469677663875646449851319537870125588564174236659897013543922\
261085334369346116589584777904215425832801085531`94.52341863849001", 
      "40422.78809554069129227311272111193406417605272116922250388666777339594\
1961929753299526341000594418532848612959424753752`94.52341863849007"},
     {"11860.\
627127489175432004497558071723671593231829301173531009339476864345400003304626\
6689758789213884702561223744562560157`94.52341863849013", 
      "33388.77850635617191565196440732055886801000779250284160267357382593757\
20638809161499642762573031775777148213252845615903`94.52341863849007", 
      "20549.46402577059661917413612643712272209465546311379599268862763160392\
93506143804028186240910495148296670246041159920713`94.52341863849007"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"N", "[", 
   RowBox[{"SingularValueList", "[", 
    SubscriptBox["A", "val"], "]"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"condition", " ", "number", " ", "is", " ", "very", " ", "large"}],
    " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Max", "[", "%", "]"}], "/", 
  RowBox[{"Min", "[", "%", "]"}]}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "656963.6355511543`", ",", "50069.32914665318`", ",", "38571.00389722575`", 
   ",", "5089.395135066741`", ",", "1043.6049114493928`", ",", 
   "618.2091727380817`", ",", "245.5904305954602`", ",", "123.7516731791104`",
    ",", "63.374515459095896`", ",", "24.626563466221935`", ",", 
   "8.126428548604421`", ",", "5.048113049736599`", ",", "2.690254047170046`",
    ",", "0.6608554461082808`", ",", "0.3723340593103188`", ",", 
   "0.07331831237209477`", ",", "0.06060541154340291`", ",", 
   "0.03910260702935277`", ",", "0.019389817279510453`", ",", 
   "0.0024517647186472593`", ",", "0.0007952457834835431`", ",", 
   "0.00015369195268276895`", ",", "0.00006326239632336596`", ",", 
   "6.64477926089324`*^-6"}], "}"}]], "Output"],

Cell[BoxData["9.886914369264395`*^10"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"after", " ", "adding", " ", "identity"}], ",", " ", 
    RowBox[{
    "smallest", " ", "singular", " ", "value", " ", "now", " ", "of", " ", 
     "order", " ", "1"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{"SingularValueList", "[", 
     RowBox[{
      RowBox[{"IdentityMatrix", "[", 
       SubscriptBox["n", "sites"], "]"}], "+", 
      SubscriptBox["A", "val"]}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"condition", " ", "number"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Max", "[", "%", "]"}], "/", 
    RowBox[{"Min", "[", "%", "]"}]}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "656964.1350820163`", ",", "50069.83957677725`", ",", "38571.48325545663`", 
   ",", "5089.807588557077`", ",", "1044.1326694645588`", ",", 
   "618.5325922600239`", ",", "246.26455299571762`", ",", 
   "124.34860071111711`", ",", "63.95119028632497`", ",", 
   "25.105487342195364`", ",", "8.846478442236256`", ",", 
   "5.8014537170037475`", ",", "3.2632085548690064`", ",", 
   "1.4231345825144046`", ",", "1.1696600886053743`", ",", 
   "0.9994563698239668`", ",", "0.9609998132952408`", ",", 
   "0.9393752953825519`", ",", "0.8825450191800082`", ",", 
   "0.8334496877494763`", ",", "0.6875152929104861`", ",", 
   "0.6676063606620305`", ",", "0.556420753887418`", ",", 
   "0.5138320650713719`"}], "}"}]], "Output"],

Cell[BoxData["1.2785580732311115`*^6"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculate Green\[CloseCurlyQuote]s function matrix", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["G", "val"], "=", 
   RowBox[{"Inverse", "[", 
    RowBox[{
     RowBox[{"IdentityMatrix", "[", 
      SubscriptBox["n", "sites"], "]"}], "+", 
     SubscriptBox["A", "val"]}], "]"}]}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["G", "val"], "\[LeftDoubleBracket]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
   "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0.250062806876169538393470880684058692473051743976401627782418945416684\
5233701710385825518323486002292407091257629451`94.52341863848996", 
      RowBox[{
      "-", "0.2242914694898913477289052799884196502111602669513039510569024724\
497182347681812094576851276749481922160647174782339`94.52341863848996"}], 
      RowBox[{
      "-", "0.0955506494319165628386177288562999706855450022613324376266625082\
451648860002600999083503185111538103422846684864064`94.52341863848996"}]},
     {
      RowBox[{
      "-", "0.0678189892125806798253251553414711506136267673259649395664713283\
733689622709733021510656934465479150139642740300871`94.52341863848996"}], 
      "0.090721117367598658947689206185809693289259758842005192738742361534004\
4450817281094939491095773992825051840706436087`94.52341863848996", 
      "0.076595698021792479691246938535273919063780462468364535013590429800022\
6126021179448485022206111757134244750941114855`94.52341863848996"},
     {
      RowBox[{
      "-", "0.0033508989541837915466836496295115718261294043551680537301869021\
67295561203733550781374966012475749543602226558304862819092563561647773`94.\
52341863848996"}], 
      "0.032656718999985820399462955711606508437377650232150023102447694411778\
1488128863489888569147402138494359931425472541`94.52341863848996", 
      "0.261524078066113989130810413290642626949845456517709256677446524926092\
525796116284264539664330761857091404731919796`94.52341863848996"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"N", "[", 
  RowBox[{"SingularValueList", "[", 
   SubscriptBox["G", "val"], "]"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.9461611448111917`", ",", "1.7972011162659338`", ",", 
   "1.4978886645243346`", ",", "1.4545131000165246`", ",", 
   "1.1998324730317573`", ",", "1.1330866735037741`", ",", 
   "1.0645372567443976`", ",", "1.0405829284930126`", ",", 
   "1.00054392587055`", ",", "0.8549492367413631`", ",", 
   "0.7026742321398675`", ",", "0.30644685535281163`", ",", 
   "0.17237058999006646`", ",", "0.11303933045556772`", ",", 
   "0.03983192942521682`", ",", "0.015636925529028588`", ",", 
   "0.008041907944932727`", ",", "0.0040606737260209325`", ",", 
   "0.0016167296800741772`", ",", "0.0009577326993444325`", ",", 
   "0.00019647108119532917`", ",", "0.000025925889169909793`", ",", 
   "0.00001997210313539345`", ",", "1.5221531079092448`*^-6"}], 
  "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"largest", " ", "and", " ", "smallest", " ", "entry"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{"Max", "[", 
     RowBox[{"Flatten", "[", 
      SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"N", "[", 
    RowBox[{"Min", "[", 
     RowBox[{"Flatten", "[", 
      SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"N", "[", 
    RowBox[{"Min", "[", 
     RowBox[{"Abs", "[", 
      RowBox[{"Flatten", "[", 
       SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "]"}]}]}]], "Input"],

Cell[BoxData["0.8904898664051253`"], "Output"],

Cell[BoxData[
 RowBox[{"-", "1.079600428918307`"}]], "Output"],

Cell[BoxData["7.1552491109725185`*^-6"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "determinant", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["detG", "val"], "=", 
   RowBox[{"Det", "[", 
    SubscriptBox["G", "val"], "]"}]}]}]], "Input"],

Cell[BoxData["2.\
008669336454127850102722037815605018625563997619242359377250771895215252387407\
18981540126691115933928923470138265206786`94.52341863848996*^-34"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"save", " ", "as", " ", "reference", " ", "to", " ", "disk"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
       RowBox[{"FileBaseName", "[", 
        RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", 
       "\"\<_G.dat\>\""}], ",", 
      RowBox[{"Flatten", "[", 
       RowBox[{"Transpose", "[", 
        RowBox[{"N", "[", 
         SubscriptBox["G", "val"], "]"}], "]"}], "]"}], ",", 
      "\"\<Real64\>\""}], "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
       RowBox[{"FileBaseName", "[", 
        RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", 
       "\"\<_detG.dat\>\""}], ",", 
      RowBox[{"N", "[", 
       SubscriptBox["detG", "val"], "]"}], ",", "\"\<Real64\>\""}], "]"}], 
    ";"}]}]}]], "Input"]
}, Open  ]]
},
WindowSize->{1424, 876},
WindowMargins->{{290, Automatic}, {63, Automatic}},
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (July 1, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 40, 0, 43, "Subsection"],
Cell[1529, 37, 219, 7, 52, "Input"],
Cell[1751, 46, 228, 7, 67, "Input"],
Cell[CellGroupData[{
Cell[2004, 57, 295, 9, 69, "Input"],
Cell[2302, 68, 29, 0, 31, "Output"]
}, Open  ]],
Cell[2346, 71, 124, 4, 31, "Input"],
Cell[2473, 77, 287, 9, 52, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2797, 91, 41, 0, 43, "Subsection"],
Cell[2841, 93, 320, 10, 72, "Input"],
Cell[CellGroupData[{
Cell[3186, 107, 947, 29, 72, "Input"],
Cell[4136, 138, 1469, 50, 52, "Output"],
Cell[5608, 190, 74, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5719, 197, 295, 8, 52, "Input"],
Cell[6017, 207, 29, 0, 31, "Output"]
}, Open  ]],
Cell[6061, 210, 1075, 30, 52, "Input"],
Cell[CellGroupData[{
Cell[7161, 244, 333, 10, 72, "Input"],
Cell[7497, 256, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7562, 261, 355, 10, 52, "Input"],
Cell[7920, 273, 28, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[7997, 279, 45, 0, 43, "Subsection"],
Cell[8045, 281, 258, 8, 67, "Input"],
Cell[8306, 291, 293, 10, 31, "Input"],
Cell[8602, 303, 497, 16, 52, "Input"],
Cell[CellGroupData[{
Cell[9124, 323, 442, 13, 52, "Input"],
Cell[9569, 338, 6539, 187, 140, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16145, 530, 511, 15, 52, "Input"],
Cell[16659, 547, 789, 18, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17485, 570, 441, 13, 52, "Input"],
Cell[17929, 585, 50, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[18028, 591, 48, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[18101, 595, 560, 18, 72, "Input"],
Cell[18664, 615, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18776, 622, 567, 15, 92, "Input"],
Cell[19346, 639, 483, 12, 31, "Output"],
Cell[19832, 653, 506, 14, 31, "Output"],
Cell[20341, 669, 502, 13, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20880, 687, 302, 10, 31, "Input"],
Cell[21185, 699, 4100, 54, 152, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[25334, 759, 34, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[25393, 763, 553, 18, 88, "Input"],
Cell[25949, 783, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26061, 790, 390, 11, 52, "Input"],
Cell[26454, 803, 594, 22, 46, "Output"]
}, Open  ]],
Cell[27063, 828, 609, 17, 52, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27709, 850, 45, 0, 43, "Subsection"],
Cell[27757, 852, 674, 19, 52, "Input"],
Cell[CellGroupData[{
Cell[28456, 875, 662, 21, 52, "Input"],
Cell[29121, 898, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29233, 905, 436, 13, 52, "Input"],
Cell[29672, 920, 1920, 36, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31629, 961, 392, 10, 72, "Input"],
Cell[32024, 973, 779, 13, 55, "Output"],
Cell[32806, 988, 49, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32892, 993, 729, 19, 92, "Input"],
Cell[33624, 1014, 764, 14, 52, "Output"],
Cell[34391, 1030, 49, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34489, 1036, 72, 0, 43, "Subsection"],
Cell[34564, 1038, 253, 8, 31, "Input"],
Cell[CellGroupData[{
Cell[34842, 1050, 436, 13, 52, "Input"],
Cell[35281, 1065, 2006, 40, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[37324, 1110, 123, 3, 31, "Input"],
Cell[37450, 1115, 807, 15, 55, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38294, 1135, 651, 18, 92, "Input"],
Cell[38948, 1155, 46, 0, 31, "Output"],
Cell[38997, 1157, 62, 1, 31, "Output"],
Cell[39062, 1160, 50, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[39149, 1165, 220, 6, 52, "Input"],
Cell[39372, 1173, 175, 2, 31, "Output"]
}, Open  ]],
Cell[39562, 1178, 1030, 29, 72, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0vDb8kSnhc0PzBKypYGBkwmb *)