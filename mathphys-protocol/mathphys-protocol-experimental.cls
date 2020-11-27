\NeedsTeXFormat{LaTeX2e}[2007/07/20]
\ProvidesClass{mathphys-protocol-experimanetal}[2020/04/20]
\LoadClass[a4paper]{scrartcl}[2011/04/02]
\RequirePackage{
     geometry,           % sets a4paper
     graphicx,           % use graphic-files
     ifthen,             % logic determining the logo
     kvoptions,          % key=value-stuff
     lastpage,           % page n of m 2
     marvosym,           % for the little phone and fax symbols
     scrlayer-scrpage,   % header & footer
     tikz,               % used for absolute placing of logo and stuff
     xcolor,             % colored text
     hyperref,           % use cool pdf-features
     libertine,          % use linux-libertine font family
     fontenc,
}
\RequirePackage[greek,main=ngerman]{babel}
\RequirePackage[utf8]{inputenc}  
\pagestyle{scrheadings}
\geometry{
     top=5cm,
     bottom=4cm
}
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
         {\includegraphics
         {\MathPhysLogo.pdf}};
\tikz [remember picture,overlay]
    \node [shift={(-59.71mm,19.12mm)}]
     at (current page.south east)
     {\textcolor{unihd}{\rule{0.859mm}{26.241mm}}};
}

%\ohead[\MathPhysSetLogo]{\MathPhysSetLogo\textcolor{gray}{\raggedright\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}
\ohead*{\makebox{\raisebox{-1mm}{{\noindent\fontsize{55}{48}\selectfont\begin{otherlanguage}{greek}μφι\end{otherlanguage}}}\hspace*{1.6mm}{\color{unihd}{\rule[-11.2mm]{.76mm}{22.33mm}}}\hspace{2.5mm}\parbox{5cm}{\fontsize{23}{10}\selectfont\textsc{Fachschaft\\[2.1mm]MathPhysInfo}}}     }
\ihead[]{\Large Fachschaftssitzung MathPhysInfo}
\ofoot[]{}
\cfoot*{}

%enables headings on title page by redefining the maketitle with thispagestyle
%\let\oldmaketitle\maketitle
%\def\maketitle{\oldmaketitle\thispagestyle{scrheadings}}
