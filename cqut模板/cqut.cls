% Times : 2019 - 01 - 31
% Author: 54fire
% 版本: v0.1.0

\LoadClass[UTF8,zihao=-4]{ctexart}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Package                %%%%%%%%%%%%%%%%%
\RequirePackage{graphicx} %插入图形
\RequirePackage{ctex} %使用中文
\RequirePackage{ulem} %使用下划线等，汉字的下标
\RequirePackage{booktabs} %三线表
\RequirePackage{pdflscape} %
\RequirePackage[vmargin=1in,hmargin=1.25in]{geometry} %页面设置
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}		%页眉页脚设置
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage[colorlinks=true,linkcolor=black]{hyperref}
\RequirePackage[T1]{fontenc}  % 修改默认文本和数学字形为Times New Roman字体
\RequirePackage{varwidth}    %使用varwidth环境
\RequirePackage{tikz}

\graphicspath{graphics/}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             字体设置               %%%%%%%%%%%%%%
% 	自定义的字体如果是中文就以zh开头，如果是英文就以en开头。
\setCJKmainfont[AutoFakeSlant=0.3, AutoFakeBold=3]{SimSun}
\setmainfont{Times New Roman}
\setCJKsansfont[AutoFakeSlant=0.3, AutoFakeBold=3]{SimHei}
\setsansfont{DejaVu Sans}
\setmonofont{Consolas}

\newCJKfontfamily[zhhwxk] \zhhwxk {STXingkai}[AutoFakeSlant=0.3, AutoFakeBold=3]%中文华文行楷	\zhhwxk
\newfontfamily{\enhwxk}{STXingkai}			 % 英文华文行楷	\enhwxk
\newCJKfontfamily[zhkaiti] \zhkaiti {KaiTi}[AutoFakeSlant=0.3, AutoFakeBold=3]       % 中文楷体  \zhkaiti
\newCJKfontfamily[zhyahei] \zhyahei {YaHei Consolas Hybrid}[AutoFakeSlant=0.3, AutoFakeBold=3]  % 中文雅黑 \zhyahei

\newfontfamily{\ensong}{Adobe Song Std}     % 英文的宋体    \ensong
\newfontfamily{\enkai}{Adobe Kaiti Std}          % 英文的楷体    \enkai
\newfontfamily{\enhei}{Arial}		                     % 英文的黑体    \enhei
\newCJKfontfamily[heiti]\zhheiti{SimHei}[AutoFakeSlant=0.3, AutoFakeBold=3]% 中文黑体	\zhheiti
\newfontfamily{\enheiti}{SimHei}		                 % 英文黑体	  \enheiti
%\xeCJKsetup{xCJKecglue=}    %设置中文与英文的间隔
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             COVER               %%%%%%%%%%%%%%
\newcommand{\cvteacher}[1]{\renewcommand{\givencvteacher}{#1}}
\newcommand{\cvnumber}[1]{\renewcommand{\givencvnumber}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvzhicheng}[1]{\renewcommand{\givencvzhicheng}{#1}}
\newcommand{\cvxueyuan}[1]{\renewcommand{\givencvxueyuan}{#1}}
\newcommand{\cvtitle}[1]{\renewcommand{\givencvtitle}{#1}}
\newcommand{\cvdate}[1]{\renewcommand{\givencvdate}{#1}}
\newcommand{\cvzhuanye}[1]{\renewcommand{\givencvzhuanye}{#1}}
\newcommand{\cvclass}[1]{\renewcommand{\givencvclass}{#1}}

\newcommand{\givencvteacher}{}
\newcommand{\givencvnumber}{}
\newcommand{\givencvname}{}
\newcommand{\givencvzhicheng}{}
\newcommand{\givencvxueyuan}{}
\newcommand{\givencvtitle}{}
\newcommand{\givencvdate}{}
\newcommand{\givencvzhuanye}{}
\newcommand{\givencvclass}{}

\newcommand{\makecover}{
\thispagestyle{empty}
\rightline{\zihao{5} {\songti 编号：}\uline{\makebox[4em]{}}}
\begin{center}
	\includegraphics[origin=c,width=1\linewidth]{graphics/logo.png} 	
	\vspace{1cm}
	\zihao{-0}\zhheiti 毕业设计（论文） \\
	\vspace{1em}
	\zihao{2} 题目: 
	{\begin{varwidth}[t]{.7\linewidth}\uline{\givencvtitle}\uline{\hfill} \end{varwidth}} \\% 题目
	\vfill
	{\fontsize{16}{30} \selectfont \fangsong	
	二级学院:\uline{\makebox[16em][c]{\givencvxueyuan}} \\    	  % 学院名称
	专\qquad 业:\uline{\makebox[16em][c]{\givencvzhuanye}} 	\\ %专业
	班\qquad 级:\uline{\makebox[16em][c]{\givencvclass}} \\           %班级
	学生姓名:\uline{\makebox[6em][c]{\givencvname}}  ~ 
	学号:\uline{\makebox[7em][c]{\givencvnumber}} \\		  % 学号
	指导教师:\uline{\makebox[6em]{\givencvteacher}}  ~		% 教师名字
	职称:\uline{\makebox[7em][c]{\givencvzhicheng}} \\			% 组别
	时\qquad 间:\uline{\makebox[16em][c]{\givencvdate}}	 \par}% 
	\vfill
\end{center}
\clearpage
} %end makecover

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             ABSTRACT          %%%%%%%%%%%%%%
% 获取中文摘要
\newcommand{\zhkeyword}[1]{\renewcommand{\givenzhkeyword}{#1}}
\newcommand{\givenzhkeyword}{}
% 获取中文关键词
\newcommand{\zhword}[1]{\renewcommand{\givenzhword}{#1}}
\newcommand{\givenzhword}{}
% 获取英文摘要
\newcommand{\enkeyword}[1]{\renewcommand{\givenenkeyword}{#1}}
\newcommand{\givenenkeyword}{}
% 获取英文关键词
\newcommand{\enword}[1]{\renewcommand{\givenenword}{#1}}
\newcommand{\givenenword}{}

\newcommand{\makeabstract}{   % 自动生成摘要
\clearpage
\section*{ 摘\qquad 要}
\addcontentsline{toc}{section}{摘\qquad 要}
\givenzhword \par \medskip
{\heiti\zihao{-4}关键词：} \givenzhkeyword \par
\clearpage
\section*{Abstract}
\addcontentsline{toc}{section}{Abstract}
\givenenword \par   \medskip
\textbf{Key Words:} \givenenkeyword \par
\clearpage
}%end makeabstract

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             目 录 设 置         %%%%%%%%%%%%%%%
\renewcommand{\contentsname}[0]{\heiti \zihao{3} 目\qquad 录}
\titlecontents{section}[2em]{\vspace{1em}\zihao{-4}\enhei\heiti}   % 一级标题
{\contentslabel{1em}}{\hspace*{-1em}\zihao{-4}\enhei\heiti}
{\titlerule*[4pt]{$\cdot$}\rmfamily\contentspage }
\titlecontents{subsection}[4em]{\zihao{-4}\songti}          % 二级标题
{\contentslabel{2em}}{\hspace*{-1em}}
{\titlerule*[4pt]{$\cdot$} \contentspage }
\titlecontents{subsubsection}[7em]{\zihao{-4}\songti}       % 三级标题
{\contentslabel{3em}}{\hspace*{-2em}}
{\titlerule*[4pt]{$\cdot$} \contentspage }
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}		% 目录层次3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             HEADING         %%%%%%%%%%%%%%%
\ctexset{
 section = {%
    name = {},
    format = \enhei\heiti\centering\zihao{3},
    numberformat=\zihao{3},
    beforeskip = 24bp plus 1ex minus .2ex,
    afterskip = 6bp plus .2ex,
},
 subsection = {%
	name = {},
	format = \heiti\enhei\zihao{-4},
	numberformat=\zihao{-4},
	beforeskip = 12bp plus 1ex,
	afterskip = 10bp,
	fixskip = true,
},
 subsubsection = {%
	name = {},
	format = \enhei\heiti\zihao{-4},
	numberformat=\zihao{-4},
	beforeskip = 12pt plus 1ex,
	afterskip = 12pt,
	fixskip = true,
},
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%             页眉页脚设置         %%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}  
\fancyhead[L]{\zihao{-5}  \songti 重庆理工大学毕业论文}
\fancyhead[R]{\zihao{-5}  \songti \givencvtitle}
\fancyfoot[C]{~\zihao{5} \thepage~}
\renewcommand{\headrulewidth}{0.4pt} 
% 目录的页眉，无页脚
 \fancypagestyle{myheadings}{
	\fancyhf{} % 清空页眉页脚
	\fancyhead[L]{\zihao{-5}  \songti 重庆理工大学毕业论文}
	\fancyhead[R]{\zihao{-5}  \songti \givencvtitle}
	\fancyfoot{}}



