\LoadClass{ctexart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Package                %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx} %插入图形
\RequirePackage{ctex} %使用中文
\RequirePackage{ulem} %使用下划线等，汉字的下标
\RequirePackage{booktabs} %三线表
\RequirePackage{pdflscape} %
\RequirePackage{rotfloat}
%\usepackage{fancyhdr}
\RequirePackage[vmargin=1in,hmargin=1.25in]{geometry} %页面设置
\RequirePackage{xcolor}


\newcommand{\cvteacher}[1]{\renewcommand{\givencvteacher}{#1}}
\newcommand{\cvnumber}[1]{\renewcommand{\givencvnumber}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvgroup}[1]{\renewcommand{\givencvgroup}{#1}}
\newcommand{\cvxueyuan}[1]{\renewcommand{\givencvxueyuan}{#1}}
\newcommand{\cvtitle}[1]{\renewcommand{\givencvtitle}{#1}}
\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}

\newcommand{\givencvteacher}{}
\newcommand{\givencvnumber}{}
\newcommand{\givencvname}{}
\newcommand{\givencvgroup}{}
\newcommand{\givencvxueyuan}{}
\newcommand{\givencvtitle}{}
\newcommand{\givencvdate}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             COVER               %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makecover}{
\thispagestyle{empty}
\begin{center}
	\includegraphics[origin=c,width=1\linewidth]{graphics/cqut.png} 
	
	\vspace{1cm}
	\zihao{-0}\heiti
	\givencvtitle \\     % 题目
	%\vspace{2.5cm}
	\vfill
	\fontsize{22}{30}\selectfont \kaishu
	
	学\quad 院：\uline{\makebox[5cm][s]{\givencvxueyuan}} \\	   	  % 学院名称
	姓\quad 名：\uline{\makebox[5cm][s]{\givencvname}} \\		    % 姓名
	学\quad 号：\uline{\makebox[5cm][c]{\givencvnumber}} \\		  % 学号
	教\quad 师：\uline{\makebox[5cm]{\givencvteacher}} \\ 			% 教师名字
	组\quad 别：\uline{\makebox[5cm][s]{\givencvgroup}} \\			% 组别
	%\vspace{3em}
	\vfill
	日期：\givencvdate													        % 日期
	\vfill
\end{center}
\clearpage
} %end makecover