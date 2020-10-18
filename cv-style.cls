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


\newcommand{\header}[2]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=black, anchor=north, minimum width =\paperwidth, minimum height=9cm] (box) at (current page.north){};
    \node [anchor=east] (name) at (box) {%
      \fontsize{40pt}{145pt}\color{white}%
      {\bodyfont #1}
      {}
      {\bodyfont #2}
    };
  \end{tikzpicture}
  \vspace{1cm}
  \vspace{1\parskip}
}

\newcommand{\footer}[1]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=black, anchor=south, minimum width =\paperwidth, minimum height=1cm] (box) at (current page.south){};
        \node [anchor=center] (name) at (box) {
            {\color{white} \Large {#1}}
        };
  \end{tikzpicture}
}

\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{polyglossia}

\newcommand{\sethyphenation}[3][]{%
  \sbox0{\begin{otherlanguage}[#1]{#2}
    \hyphenation{#3}\end{otherlanguage}}}

\setlength{\TPHorizModule}{0.01\paperwidth}
\setlength{\TPVertModule}{0.01\paperwidth}


\pagestyle{empty}

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{4cm}
\newenvironment{aside}{%
  \let\oldsection\section
  \begin{textblock}{1.6}(1, 1.87)
  \begin{flushleft}
  \obeycr
}{%
  \restorecr
  \end{flushleft}
  \end{textblock}
  \let\section\oldsection
}

\newcommand{\cvsection}[2][]{%
  {\color{black}\Large\bfseries{\MakeUppercase{#2}}}\\[-1ex]%
  {\color{black}\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\cvsadditional}[2][]{%
  {\color{black}\Large\bfseries{#2}}\\[-1ex]%
  {\color{black}\rule{\linewidth}{2pt}\par}\medskip
}

\newcommand{\cvevent}[4]{%
  {\large\color{black}#1\par}
  \smallskip\normalsize
  \ifstrequal{#2}{}{}{
  \textbf{\large{\color{black}#2}}\par
  \smallskip}
  {\small\makebox[0.2\linewidth][l]{\faCalendar\hspace{0.5em}#3}}
  {\small\makebox[0.2\linewidth][l]{\faMapMarker\hspace{0.5em}#4}}
  \medskip\normalsize
}

\newcommand{\cvskill}[1]{
     \textcolor{black}{\textbf{\large{#1}}}\space\space\space\space\space
}

\setlength{\parindent}{0pt}
\newcommand{\divider}{\hdashrule{\linewidth}{0.1pt}}

\RequirePackage[left=2cm,top=1cm,right=0cm,bottom=1cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
