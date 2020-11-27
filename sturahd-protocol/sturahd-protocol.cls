\NeedsTeXFormat{LaTeX2e}[2007/07/20]
\ProvidesClass{sturahd-protocol}[2020/11/27 v1]
\LoadClass[fontsize=11pt]{scrartcl}[2011/04/02]
\RequirePackage{
    geometry,
    graphicx,
    ifthen,
    kvoptions,
    lastpage,
    marvosym,
    scrlayer-scrpage,
    tikz,
    xcolor,
    hyperref,
}
\RequirePackage[mono=false]{libertine}    
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
\def\SetLogo{
\tikz [remember picture,overlay]
\node [shift={(-46.15mm,-19.12mm)}]
      at (current page.north east)
         {\includegraphics%[width=92.29mm, height=38.24mm]
         {logo.png}};
}
\def\SetFooter{
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
