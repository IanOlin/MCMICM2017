(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
SetDirectory[NotebookDirectory[]]
ClearAll[t]


(* ::Input::Initialization:: *)
initialConds={lake1Vol[0]==1000000000000(*,lake1inflow[t_/;t\[LessEqual]0]\[Equal]10*)};
behaviors={lake1Vol'[t]==lake1inflow[t]-lake1outflow[t]};


(* ::Input::Initialization:: *)
With[{surfacearea =N@QuantityMagnitude[UnitConvert[ \!\(\*
NamespaceBox["LinguisticAssistant",
DynamicModuleBox[{Typeset`query$$ = "2085 mi^2", Typeset`boxes$$ = TemplateBox[{"2085", RowBox[{SuperscriptBox["\"mi\"", "2"]}], "miles squared", SuperscriptBox["\"Miles\"", "2"]}, "Quantity", SyntaxForm -> Mod], Typeset`allassumptions$$ = {}, Typeset`assumptions$$ = {}, Typeset`open$$ = {1, 2}, Typeset`querystate$$ = {"Online" -> True, "Allowed" -> True, "mparse.jsp" -> 0.788038`6.348092153615485, "Messages" -> {}}}, 
DynamicBox[ToBoxes[AlphaIntegration`LinguisticAssistantBoxes["", 4, Automatic, Dynamic[Typeset`query$$], Dynamic[Typeset`boxes$$], Dynamic[Typeset`allassumptions$$], Dynamic[Typeset`assumptions$$], Dynamic[Typeset`open$$], Dynamic[Typeset`querystate$$]], StandardForm],
ImageSizeCache->{113., {9., 21.}},
TrackedSymbols:>{Typeset`query$$, Typeset`boxes$$, Typeset`allassumptions$$, Typeset`assumptions$$, Typeset`open$$, Typeset`querystate$$}],
DynamicModuleValues:>{},
UndoTrackedVariables:>{Typeset`open$$}],
BaseStyle->{"Deploy"},
DeleteWithContents->True,
Editable->False,
SelectWithContents->True]\),"m^2"]]},
lakeEqns={lake1Height[t]==3*lake1Vol[t]/surfacearea}];


(* ::Input::Initialization:: *)
inflows={lake1inflow[t]==flow20112012[startDate+Quantity[t,"Days"]]};


(* ::Input::Initialization:: *)
damPolicy={lake1outflow[t]==Cos[t/365]300000000};


b`raw=Import["../Data/Bathymetry.asc","Data"];
b`d=ToExpression/@StringSplit[b`raw[[8;;]]];
b`h=AssociationThread@@MapAt[ToExpression,Transpose@StringSplit@b`raw[[;;7]],2];
ArrayPlot[b`d, ImageSize->Full]
GeoGraphics[GeoBoundsRegion[{
{b`h[["yllcorner"]],b`h[["yllcorner"]]+(b`h[["dy"]]*b`h[["nrows"]])},
{b`h[["xllcorner"]],b`h[["xllcorner"]]+(b`h[["dx"]]*b`h[["ncols"]])}
}]]



