%Author: Vikas Srivastava and Sumit Kumar Debnath
\NeedsTeXFormat{LaTeX2e}
 % improves justification quality
\LoadClass[11pt,a4paper]{article}

% ---------- Packages (kept minimal & stable) ----------
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{etoolbox}
\RequirePackage[english]{babel}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{xcolor} 
% ---------- Page geometry ----------
\geometry{left=1.05in,right=1.05in,top=1.0in,bottom=1.0in}

% defaults (avoid "undefined control sequence")
\def\@vol{TBD}\def\@issue{TBD}\def\@yearofpub{TBD}\def\@pagerange{TBD}
\def\@advanceaccess{}\def\@doi{}\def\@permissions{}\def\@copyrightline{}
\def\@received{}\def\@revised{}\def\@accepted{}\def\@handlingeditor{}
\def\@keywords{}

% ---------- Simple author/affiliation handling (no authblk) ----------
\newcommand{\authors}[1]{\def\@tmsceauthors{#1}}
\newcommand{\affiliation}[1]{\def\@tmsceaffil{#1}}
\def\@tmsceauthors{}\def\@tmsceaffil{}

% ---------- Header/footer ----------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot[C]{Breast Cancer Detection using Machine Learning}
\fancyfoot[R]{\small \thepage}

% ---------- Section style ----------
\titleformat{\section}{\normalfont\bfseries\large}{\thesection.}{0.6em}{}
\titleformat{\subsection}{\normalfont\bfseries\normalsize}{\thesubsection.}{0.6em}{}

% ---------- Abstract ----------
\renewenvironment{abstract}{%
  \par\noindent\small\textbf{Abstract.}\ }{%
  \par\normalsize\vspace{0.6em}%
}


% ---------- Front-matter helpers ----------
\newcommand{\printkeywords}{%
  \ifstrempty{\@keywords}{}{%
    \noindent\small\textbf{Key words:} \@keywords\par\normalsize
  }%
}

\newcommand{\printdates}{%
  \noindent\small
  \ifstrempty{\@received}{}{\textbf{Received:} \@received\hspace{1em}}
  \ifstrempty{\@revised}{}{\textbf{Revised:} \@revised\hspace{1em}}
  \ifstrempty{\@accepted}{}{\textbf{Accepted:} \@accepted}
  \par
%  \ifstrempty{\@handlingeditor}{}{\noindent\textbf{Handling editor:} \@handlingeditor\par}
  \normalsize\vspace{0.6em}
}


% Title block
\renewcommand{\maketitle}{%
  \thispagestyle{fancy}
  \tmsce@topstrip
  \begin{center}
    {\Large\bfseries \@title\par}
    \vspace{0.8em}
    {\normalsize \@tmsceauthors\par}
    \vspace{0.4em}
    {\small \@tmsceaffil\par}
  \end{center}
  \vspace{0.4em}
  \noindent\rule{\textwidth}{0.4pt}\par
  \vspace{0.6em}
}

% Switch to 2-column after front matter (use a journal-unique name)
\newcommand{\tmsceendfrontmatter}{%
  \vspace{0.4em}
  \noindent\rule{\textwidth}{0.4pt}\par
  \vspace{0.6em}
}


% Slightly compact look
\setstretch{1.05}
