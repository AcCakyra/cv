\ProvidesClass{cv-style}[]
\NeedsTeXFormat{LaTeX2e}

\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{xcolor}
\RequirePackage{fontawesome}
\RequirePackage[math-style=TeX]{unicode-math}
\RequirePackage{tikz}

\newfontfamily\bodyfont{Roboto-Regular}[Path=fonts/]
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Path=fonts/, Extension=.ttf, UprightFont=*-Regular, Color=black]{Roboto}

\newcommand{\header}{%
\begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=black, anchor=north, minimum width =\paperwidth, minimum height=5cm] (box) at (current page.north){};
\end{tikzpicture}
}

\newcommand{\footer}{%
\begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=black, minimum width =\paperwidth, minimum height=2cm] (box) at (current page.south){};
\end{tikzpicture}
}

\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{polyglossia}

\newcommand{\sethyphenation}[3][]{%
\sbox0{\begin{otherlanguage}[#1]{#2}
           \hyphenation{#3}
\end{otherlanguage}}}

\setlength{\TPHorizModule}{0.01\paperwidth}
\setlength{\TPVertModule}{0.01\paperwidth}

\pagestyle{empty}

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{4cm}

\newcommand{\cvsection}[2][]{%
{\color{black}\Large\bfseries{\MakeUppercase{#2}}}\\[-1ex]%
{\color{black}\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\cvsadditional}[2][]{%
{\color{black}\Large\bfseries{#2}}\\[-1ex]%
{\color{black}\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\cvevent}[2]{
\large{#1}{\par}
\smallskip\normalsize
\textbf{\large{#2}}\par
}

\newcommand{\details}[2]{
{\small\makebox[0.2\linewidth][l]{\faCalendar\hspace{0.5em}#1}}
{\small\makebox[0.2\linewidth][l]{\faMapMarker\hspace{0.5em}#2}}
}

\newcommand{\dateDiapason}[1]{
{\small\makebox[0.2\linewidth][l]{\faCalendar\hspace{0.5em}#1}}
}


\newcommand{\cvskill}[1]{
\textcolor{black}{\textbf{\large{#1}}}\space\space\space\space\space
}

\setlength{\parindent}{0pt}
\newcommand{\divider}{\hdashrule{\linewidth}{0.1pt}}

\RequirePackage[left=2cm,top=1cm,right=0cm,bottom=1cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
