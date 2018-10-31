\ProvidesClass{twentysecondcv}[2015/02/28 CV class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%PACKAGES%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[sfdefault]{ClearSans}
\RequirePackage[T1]{fontenc}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage{ifmtarg}
\RequirePackage{ifthen}
\RequirePackage{pgffor}
\RequirePackage{marvosym}
\RequirePackage{parskip}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB0B00}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{mainblue}{HTML}{0E5484}
\definecolor{maingray}{HTML}{B9B9B9}
\definecolor{maindarkgray}{HTML}{B3B3B3}
\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{asidecolor}{sidecolor}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
  \colorlet{asidecolor}{sidecolor}
\fi


\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%%%%%%%%%%%%%%%%
% Profile left SideBar %
%%%%%%%%%%%%%%%%

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}

\newcommand{\imsize}{\linewidth}
\newlength\imagewidth
\newlength\imagescale
\renewcommand{\imsize}{0.618\linewidth}
\pgfmathsetlength{\imagewidth}{5cm}%
\pgfmathsetlength{\imagescale}{\imagewidth/600}%


\newcommand{\profilesection}[2]{{\noindent\color{black!80} \huge #1 \rule[0.15\baselineskip]{#2}{1pt} \vspace{1pt}}}


\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\givencvmail}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\givennumberphone}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\givencvaddress}{#1}}
\newcommand{\cvsite}[1]{\renewcommand{\givencvsite}{#1}}
\newcommand{\aboutme}[1]{\renewcommand{\givenaboutme}{  \justifying#1}}
\newcommand{\profilepic}[1]{\renewcommand{\givenprofilepic}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvjobtitle}[1]{\renewcommand{\givencvjobtitle}{#1}}

\newcommand{\givencvname}{REQUIRED!}
\newcommand{\givencvdate}{}
\newcommand{\givencvmail}{}
\newcommand{\givennumberphone}{}
\newcommand{\givencvaddress}{} 
\newcommand{\givenaboutme}{}
\newcommand{\givenprofilepic}{}
\newcommand{\givencvsite}{}
\newcommand{\givencvjobtitle}{}



\newcommand*\icon[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=1pt, fill=mainblue,mainblue,text=white] (char) {#1};}}
\newcommand*\round[2]{%
  \tikz[baseline=(char.base)]\node[anchor=north west, draw,rectangle, rounded corners, inner sep=1.6pt, minimum size=5.5mm,
    text height=3.6mm,  fill=#2,#2,text=white](char){#1} ;}

\newcommand\skills[1]{ 

\renewcommand{\givenskill}{
\noindent
\begin{tikzpicture}
\foreach [count=\i] \x/\y in {#1}
{

\draw[fill=maingray,maingray] (0,\i) rectangle (6,\i+0.4);
\draw[fill=white,mainblue](0,\i) rectangle (\y,\i+0.4);
\node [above right ] at (0,\i+0.4) {\x};
}
\end{tikzpicture}
}
}
\newcommand{\givenskill}{}

\newcommand\skillstext[1]{ 

\renewcommand{\giventextskill}{
\begin{flushleft}
\noindent
\foreach [count=\i] \x/\y in {#1}
{ 
\x$ \star $\y
}
\end{flushleft}
}
}


\newcommand{\giventextskill}{}


  
\newcommand{\makeprofile}
{

	
\begin{tikzpicture}[remember picture,overlay]
   	 \node [rectangle, fill=asidecolor, anchor=north, minimum width=9.90cm, minimum height=\paperheight+1cm] (box) at (-5cm,0.5cm){};
\end{tikzpicture}


\begin{textblock}{6}(0.5, 0.2)	
\profilesection{\zihao{-1} \textcolor{gray}{\textbf{\textsf{PERSONAL}}}
		
\textcolor{cyan}{\textbf{\textsf{RESUME}}}}{0cm}
	
\begin{flushleft}
\vspace{13pt}

\begin{center}
	\includegraphics[width=0.7\imagewidth]{\givenprofilepic}
\end{center}


{\Huge\color{mainblue}\givencvname}

\begin{flushright}
{\Large\color{black!80}\givencvjobtitle}
\end{flushright}
\renewcommand{\arraystretch}{1.6}
\begin{tabular}{p{0.5cm} @{\hskip 0.5cm}p{5cm}}
\ifthenelse{\equal{\givencvdate}{}}{}{\textsc{\Large\icon{\Info}} & \givencvdate\\}
\ifthenelse{\equal{\givencvaddress}{}}{}{\textsc{\Large\icon{\Letter}} & \givencvaddress\\}
\ifthenelse{\equal{\givennumberphone}{}}{}{\textsc{\Large\icon{\Telefon}} & \givennumberphone\\}
\ifthenelse{\equal{\givencvsite}{}}{}{\textsc{\Large\icon{\Mundus}} & \givencvsite}\\
\ifthenelse{\equal{\givencvmail}{}}{}{\textsc{\large\icon{@}} & \href{mailto:\givencvmail}{\givencvmail}}
\end{tabular}

\profilesection{About me}{3.2cm}
\givenaboutme

\profilesection{Skill}{5cm}\\
\givenskill
\giventextskill
\noindent
\scriptsize
% \noindent
% (*)[The skill scale is from 0 (Fundamental Awareness) to 6 (Expert).]

\end{flushleft}
\end{textblock}
\vspace{-10pt}
 }




%%%%%%%%%%%%%%%%
% Section Color box %
%%%%%%%%%%%%%%%%

\renewcommand{\section}[1]{
  \par%\vspace{\parskip}
  {%
  	\colorbox{gray}{\makebox[12.5cm][l]{\textcolor{white}{\LARGE #1}}}
    % \Large
    % \color{headercolor}%
    % \@sectioncolor #1%
  }
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
  \par\vspace{.5\parskip}%
  {%
  \large\color{headercolor} #1%
  }
  \par\vspace{.25\parskip}%
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List twenty environment %
%%%%%%%%%%%%%%%%%%%%

\newcommand{\twotable}[2]{
	\makebox[3.5cm]{\textcolor{cyan}{\large \textbf{#1}}} \quad \parbox[t]{8.7cm}{#2}\\
}

\newcommand{\threetable}[3]{
	\makebox[3.5cm]{\textcolor{cyan}{\large \textbf{#1}}} \quad \parbox[c]{8.7cm}{#2}\\
 \begin{flushright}	
		\colorbox{gray}{\makebox[3cm][l]{\textcolor{white}{#3}}}
	\end{flushright}
}

%%%%%%%%%%%%
% Page Setting %
%%%%%%%%%%%%

\RequirePackage[left=7.3cm,top=0.1cm,right=1cm,bottom=0.2cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}