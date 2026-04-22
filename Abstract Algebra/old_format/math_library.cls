\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math_library}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
%\ProcessOptions
\LoadClass[a4paper, 10pt]{article}
\PassOptionsToPackage{utf8}{inputenc}
\PassOptionsToPackage{english,main=ukrainian}{babel}
%\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage[margin=1in]{geometry}
%\usepackage[none]{hyphenat}
\RequirePackage{fancyhdr} %create a custom header and footer
\RequirePackage{inputenc}
\RequirePackage{enumitem}
\RequirePackage{babel}
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{physics}
\RequirePackage[unicode]{hyperref}
\RequirePackage{tikz-cd}
\RequirePackage{ifthen}
\RequirePackage{bbm}
\RequirePackage{centernot}
\RequirePackage{xcolor}
\RequirePackage{scalerel}
\RequirePackage{stackengine}
\RequirePackage{multicol}
\RequirePackage{pdfpages}
\RequirePackage{bm}



%\usepackage[none]{hyphenat}

%\usepackage{pgfplots}

%\usepackage[unicode]{hyperref}


\usepgfplotslibrary{fillbetween}
\usepgfplotslibrary{polar}
\usetikzlibrary{arrows}
\usetikzlibrary{babel}
\usetikzlibrary{spy}
\usetikzlibrary{fit,matrix}

\parindent 0ex % left-align starting new paragraph

\newtheoremstyle{theoremdd}% name of the style to be used
  {\topsep}% measure of space to leave above the theorem. E.g.: 3pt
  {\topsep}% measure of space to leave below the theorem. E.g.: 3pt
  {\normalfont}% name of font to use in the body of the theorem
  {0pt}% measure of space to indent
  {\bfseries}% name of head font
  {}% punctuation between head and body
  { }% space after theorem head; " " = normal interword space
  {\thmname{#1}\thmnumber{ #2}\textnormal{\thmnote{ \textbf{#3}\\}}}

\theoremstyle{theoremdd}
\newtheorem{theorem}{Theorem}[subsection]
  
\theoremstyle{theoremdd}
\newtheorem{definition}[theorem]{Definition}

\theoremstyle{theoremdd}
\newtheorem*{definition*}{Definition.}

\theoremstyle{theoremdd}
\newtheorem{samedef}[theorem]{Definition}

\theoremstyle{theoremdd}
\newtheorem{example}[theorem]{Example}

\theoremstyle{theoremdd}
\newtheorem*{example*}{Example.}

\theoremstyle{theoremdd}
\newtheorem*{lemma*}{Lemma.}

\theoremstyle{theoremdd}
\newtheorem*{theorem*}{Theorem.}

\theoremstyle{theoremdd}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{theoremdd}
\newtheorem*{proposition*}{Proposition.}

\theoremstyle{theoremdd}
\newtheorem{remark}[theorem]{Remark}

\theoremstyle{theoremdd}
\newtheorem*{remark*}{Remark.}

\theoremstyle{theoremdd}
\newtheorem{lemma}[theorem]{Lemma}

\theoremstyle{theoremdd}
\newtheorem{corollary}[theorem]{Corollary}

\theoremstyle{theoremdd}
\newtheorem*{corollary*}{Corollary.}

\renewcommand{\qedsymbol}{$\blacksquare$}

\makeatletter
\renewenvironment{proof}[1][Proof.]{%
  \par\pushQED{\qed}%
  \normalfont
  \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1\@addpunct{.}}]%
  \mbox{}\par\nobreak\noindent
  \@ifnextchar\begin{%
    \@ifnextchar e{\ignorespaces}{}%
  }{}%
}{%
  \popQED\endtrivlist\@endpefalse
}

\DeclareRobustCommand{\sqcdot}{\mathbin{\mathpalette\morphic@sqcdot\relax}}
\newcommand{\morphic@sqcdot}[2]{%
  \sbox\z@{$\m@th#1\centerdot$}%
  \ht\z@=.33333\ht\z@
  \vcenter{\box\z@}%
}
\makeatother

\newcommand{\notiff}{%
  \mathrel{{\ooalign{\hidewidth$\not\phantom{"}$\hidewidth\cr$\iff$}}}}

% LIST OF NEW COMMANDS

\newcommand\thref[1]{\textbf{Th.~\ref{#1}}}
\newcommand\defref[1]{\textbf{Def.~\ref{#1}}}
\newcommand\exref[1]{\textbf{Ex.~\ref{#1}}}
\newcommand\prpref[1]{\textbf{Prp.~\ref{#1}}}
\newcommand\rmref[1]{\textbf{Rm.~\ref{#1}}}
\newcommand\lmref[1]{\textbf{Lm.~\ref{#1}}}
\newcommand\crlref[1]{\textbf{Crl.~\ref{#1}}}

\newcommand{\eqbydef}{\overset{\text{def.}}{=}}
\newcommand{\rightproof}{$\boxed{\Rightarrow}$ }
\newcommand{\leftproof}{$\boxed{\Leftarrow}$ }
\newcommand{\symdif}{\,\triangle\,} % symmetric difference
\newcommand\homom[2]{\text{Hom}({#1},{#2})}
\newcommand{\Cunif}{C_{\text{unif}}}
\def\departial#1#2{\dfrac{\partial {#1}}{\partial {#2}}}
\def\seconddepartial#1#2#3{\ifthenelse{\equal{#2}{#3}}{\dfrac{\partial^2 {#1}}{\partial {#2}^2}}{\dfrac{\partial^2 {#1}}{\partial {#2} \partial {#3}}}}
\newcommand{\tounif}{^\rightarrow_\rightarrow}

\def\stackbelow#1#2{\underset{\displaystyle\overset{\displaystyle\shortparallel}{#2}}{#1}} %remove later
%\newcommand\homom[2]{\text{Hom}({#1},{#2})}
%\newcommand\Orb{\text{Orb}}
%\newcommand\Stab{\text{Stab}}
%\newcommand\ncl{\text{ncl}}



% LIST OF DECLARED MATH OPERATORS

\DeclareMathOperator{\card}{card}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\Obj}{Obj}

% LINEAR ALGEBRA
\DeclareMathOperator{\linspan}{span}
\DeclareMathOperator{\Mat}{Mat}
\DeclareMathOperator{\ort}{ort}
\DeclareMathOperator{\defect}{def}
\DeclareMathOperator{\pr}{pr}
\DeclareMathOperator{\evaluation}{ev}

% ABSTRACT ALGEBRA
% group theory
\DeclareMathOperator{\ord}{ord}
\DeclareMathOperator{\Orb}{Orb}
\DeclareMathOperator{\Stab}{Stab}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\ncl}{ncl}
\DeclareMathOperator{\coker}{coker}
\DeclareMathOperator{\Fix}{Fix}

% field theory
\DeclareMathOperator{\charac}{char}
\DeclareMathOperator{\Frac}{Frac}
\DeclareMathOperator{\Gal}{Gal}
\DeclareMathOperator{\Fr}{Fr}


% TOPOLOGY
\DeclareMathOperator{\Cl}{Cl}
\DeclareMathOperator{\Int}{Int}
\DeclareMathOperator{\Homeo}{Homeo}


% COMPLEX ANALYSIS
\DeclareMathOperator{\Ln}{Ln}
\DeclareMathOperator{\Arg}{Arg}
\DeclareMathOperator*{\res}{res}


