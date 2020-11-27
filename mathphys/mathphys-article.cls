%%
%% This is file `mathphys-article.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mathphys-article.dtx  (with options: `class')
%% 
%% Copyright (C) 2014–2016 by Moritz Brinkmann <mo@uni-hd.de>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% This work has the LPPL maintenance status `maintained'.
%% The Current Maintainer of this work is Moritz Brinkmann.
%% 
%% Do not distribute a modified version of this file under the same name.
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[2007/07/20]
\ProvidesClass{mathphys-article}
      [2016/02/21 v1.2 customized article class]
\LoadClass[
      fontsize=11pt,
]{scrartcl}[2011/04/02]
\RequirePackage{
 geometry,
      graphicx,     % use graphic-files
      ifthen,
      kvoptions,    % key=value-stuff
      lastpage,     % page n of m
      marvosym,     % for the little phone and fax symbols
      scrlayer-scrpage,
      tikz,         % used for absolute placing of logo and stuff
      xcolor,       % colored text
      hyperref,     % use cool pdf-features
}
\RequirePackage[mono=false]{libertine}    % use linux-libertine font family
\geometry{
a4paper,
top=5cm,
bottom=4cm,
}
\pagestyle{scrheadings}
\hypersetup{
pdfborder={0 0 0},
}
\SetupKeyvalOptions{
  family=MathPhys,
  prefix=MathPhys@
}
\DeclareStringOption[default]{fachschaft}
\ProcessKeyvalOptions {MathPhys}
\ifthenelse{\equal{\MathPhys@fachschaft}{mathe}\or\equal{\MathPhys@fachschaft}{mathematik}}{\def\MathPhysLogo8{mathphys/MathPhysLogoMathe}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{physik}}{\def\MathPhysLogo{mathphys/MathPhysLogoPhysik}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{info}\or\equal{\MathPhys@fachschaft}{informatik}}{\def\MathPhysLogo{mathphys/MathPhysLogoInfo}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{mathinf}}{\def\MathPhysLogo{mathphys/MathPhysLogoMathInf}}{
\def\MathPhysLogo{mathphys/MathPhysLogo}}}}}
\iftrue
\def\MathPhysSetLogo{
\tikz [remember picture,overlay]
\node [shift={(-46.15mm,-19.12mm)}]
      at (current page.north east)
         {\includegraphics%[width=92.29mm, height=38.24mm]
         {\MathPhysLogo.pdf}};
\tikz [remember picture,overlay]
    \node [shift={(-59.71mm,19.12mm)}]
     at (current page.south east)
     {\textcolor{unihd}{\rule{0.859mm}{26.241mm}}};
}
\def\MathPhysSetFooter{
\tikz [remember picture,overlay]
\node [
shift={(-85.21mm,19.12mm)}
]
     at (current page.south east)
     {\parbox{4.4cm}{
     \color{gray}
     \sffamily
     \scriptsize
     \begin{flushright}
     \Telefon\quad 06221\,54-14999\\
     \FAX\quad 06221\,54-16114999\\
     \Letter\quad \href{mailto:mathphys@uni-hd.de}{\color{gray}mathphys@uni-hd.de}\\
     \href{http://mathphys.uni-hd.de}{\color{gray}http://mathphys.uni-hd.de}
     \end{flushright}
}};
\tikz [remember picture,overlay]
\node [
shift={(-34.01mm,19.12mm)}
]
     at (current page.south east)
     {\parbox{4.4cm}{
     \color{gray}
     \sffamily
     \scriptsize
     \begin{flushleft}
     Fachschaft MathPhysInfo\\
     Im Neuenheimer Feld 205\\
     Raum 01.301\\
69120 Heidelberg
     \end{flushleft}
}};
}
\def\MathPhysSetPageNumber{
\tikz [remember picture,overlay]
\node [shift={(-29.4mm,-42.98mm)}]
      at (current page.north east)
     {\parbox{4.4cm}{\textcolor{gray}{\raggedleft\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\def\MathPhysSetPageNumberEven{
\tikz [remember picture,overlay]
\node [shift={(53.5mm,-42.98mm)}]
      at (current page.north west)
     {\parbox{4.4cm}{\textcolor{gray}{\raggedright\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\rohead{\MathPhysSetLogo \ifthenelse{\equal{\thepage}{1}}{}{\MathPhysSetPageNumber}}
\rofoot{\ifthenelse{\equal{\thepage}{1}}{\MathPhysSetFooter}{}}
\lehead{\MathPhysSetPageNumberEven}
\lefoot{}

\let\oldmaketitle\maketitle
\def\maketitle{\oldmaketitle\thispagestyle{scrheadings}}
\iftrue
\definecolor{unihd}{RGB}{153,0,0}
\else
\definecolor{unihd}{cmyk}{0,1,1,.4}
\fi
%% 
%% This work consists of the files  mathphys-article.dtx
%%                               a  README
%%               the derived files  mathphys-article.cls
%%                                  mathphys-article.pdf
%%                                  MathPhysLogo.pdf
%%                                  MathPhysLogoInfo.pdf
%%                                  MathPhysLogoMathe.pdf
%%                                  MathPhysLogoMathInf.pdf
%%                             and  MathPhysLogoPhysik.pdf
%% 
%%
%% End of file `mathphys-article.cls'.
