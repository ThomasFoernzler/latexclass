\NeedsTeXFormat{LaTeX2e}[2007/07/20]
\ProvidesClass{mathphys-protocol}[2020/04/20]
\LoadClass[fontsize=11pt,a4paper]{scrartcl}[2011/04/02]
\RequirePackage{
     geometry,           % sets headersize
     graphicx,           % use graphic-files
     ifthen,             % logic determining the logo
     kvoptions,          % key=value-stuff
     lastpage,           % page n of m
     marvosym,           % for the little phone and fax symbols
     scrlayer-scrpage,   % header & footer
     tikz,               % used for absolute placing of logo and stuff
     xcolor,             % colored text
     hyperref,           % use cool pdf-features
}
\RequirePackage[mono=false]{libertine}    % use linux-libertine font family
\geometry{
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
\ProcessKeyvalOptions{MathPhys}
\ifthenelse{\equal{\MathPhys@fachschaft}{mathe}\or\equal{\MathPhys@fachschaft}{mathematik}}{\def\MathPhysLogo{mathphys/MathPhysLogoMathe}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{physik}}{\def\MathPhysLogo{mathphys/MathPhysLogoPhysik}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{info}\or\equal{\MathPhys@fachschaft}{informatik}}{\def\MathPhysLogo{mathphys/MathPhysLogoInfo}}{
\ifthenelse{\equal{\MathPhys@fachschaft}{mathinf}}{\def\MathPhysLogo{mathphys/MathPhysLogoMathInf}}{\def\MathPhysLogo{mathphys/MathPhysLogo}}}}}
\definecolor{unihd}{RGB}{153,0,0}

\def\MathPhysSetLogo{
     \tikz [remember picture,overlay]
     \node [shift={(-46.15mm,-19.12mm)}]
          at (current page.north east)
               {\includegraphics{\MathPhysLogo.pdf}};
     \tikz [remember picture,overlay]
     \node [shift={(-46.15mm,-19.12mm)}]
          at (current page.north east)
          [circle,fill,inner sep=1.5pt]{};
     \tikz [remember picture,overlay]
     \node [shift={(-59.71mm,19.12mm)}]
          at (current page.south east)
               {\textcolor{unihd}{\rule{0.859mm}{26.241mm}}};
     \tikz [remember picture,overlay]
     \node [shift={(-59.01mm,19.12mm)}]
          at (current page.south east)
          [circle,fill,inner sep=1.5pt]{};
}
\def\MathPhysSetFooter{
     \tikz [remember picture,overlay]
     \node [shift={(-85.21mm,19.12mm)}]
          at (current page.south east)
               {\parbox{4.4cm}{
                    \color{gray}
                    \sffamily
                    \scriptsize
                    \begin{flushright}
                    \Telefon\quad 06221\,54-14999\\
                    \FAX\quad 06221\,54-16114999\\
                    \Letter\quad \href{mailto:fachschaft@mathphys.info}{\color{gray}fachschaft@mathphys.info}\\
                    \href{http://mathphys.info}{\color{gray}http://mathphys.info}
                    \end{flushright}
               }};
     \tikz [remember picture,overlay]
     \node [shift={(-34.01mm,19.12mm)}]
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
     \tikz [remember picture,overlay]
     \node [shift={(-34.01mm,19.12mm)}]
          at (current page.south east)
          [circle,fill,inner sep=1.5pt]{};
}
\def\MathPhysSetTitleRight{
     \tikz [remember picture,overlay]
     \node [shift={(53.5mm,-42.98mm)}]
          at (current page.north west)
               {\parbox{4.4cm}{\raggedright Fachschaftssitzung MathPhysInfo}};
}
\def\MathPhysSetPageNumberRight{
     \tikz [remember picture,overlay]
     \node [shift={(-29.4mm,-42.98mm)}]
          at (current page.north east)
               {\parbox{4.4cm}{\textcolor{gray}{\raggedleft\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\def\MathPhysSetPageNumberLeft{
     \tikz [remember picture,overlay]
     \node [shift={(53.5mm,-42.98mm)}]
          at (current page.north west)
               {\parbox{4.4cm}{\textcolor{gray}{\raggedright\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\rohead[\MathPhysSetLogo]{\MathPhysSetLogo \MathPhysSetPageNumberRight \MathPhysSetTitleRight}
\ofoot[\MathPhysSetFooter]{}
\lehead{\MathPhysSetPageNumberLeft}
\cfoot*{}

%enables headings on title page by redefining the maketitle with thispagestyle
%\let\oldmaketitle\maketitle
%\def\maketitle{\oldmaketitle\thispagestyle{scrheadings}}