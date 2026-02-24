% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.1cm, vmargin=0.7cm]{geometry} % Balanced margins
\usepackage[hidelinks]{hyperref}
\usepackage{fontawesome5}
\usepackage[absolute,overlay]{textpos}
\usepackage{cite}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{fontspec}
\usepackage{titlesec}
\usepackage{enumitem}

% Color Definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Fonts
\setmainfont[Color=primary, Path = fonts/lato/, BoldItalicFont=Lato-RegIta, BoldFont=Lato-Reg, ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}


% Name Section
\newcommand{\namesection}[3]{
\centering{
\fontsize{38pt}{52pt} % Slightly larger than last time, smaller than original
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[9pt]
\centering{
\color{headings}
\fontspec[Path = fonts/lato/]{lato-Reg}\fontsize{11pt}{13pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-14pt}
}

% Section and Subsection Spacing
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{5pt}}
 
% Section Header
\titleformat{\section}{
\color{headings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{17pt}{22pt}\selectfont \raggedright
}{}{0em}{}

% Subsection Header
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{13pt}{12pt}\selectfont\bfseries
}{}{0em}{}

\newcommand{\runsubsection}[1]{
\vspace{0.2mm}
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries{#1} \normalfont
}

\newcommand{\descript}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10.5pt}{12pt}\selectfont {#1} \normalfont
}

% Date Range Command
\newcommand{\daterange}[1]{
\color{headings}\raggedleft\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{12pt}\selectfont #1 \normalfont
}

\newcommand{\sectionline}{
    \noindent\color{headings}\rule{\linewidth}{0.4pt}\vspace{1pt}
}

% Location / Right-aligned Text
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{12pt}\selectfont {#1} \normalfont
}

% Bullet List with Medium Spacing
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep2pt \parskip3pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
