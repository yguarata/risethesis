%% RiSE Latex Template - version 0.5
%%
%% RiSE's latex template for thesis and dissertations
%% http://risetemplate.sourceforge.net
%%
%% (c) 2010 Yguaratã Cerqueira Cavalcanti (yguarata@gmail.com)
%%          Vinicius Cardoso Garcia (vinicius.garcia@gmail.com)
%%
%% This document was initially based on UFPEThesis template, from Paulo Gustavo
%% S. Fonseca.
%%
%% ACKNOWLEDGEMENTS
%%
%% We would like to thanks the RiSE's reasearchers community and the 
%% other students from Federal University of Pernambuco who contributed
%% to the RiSE template development.

\ProvidesClass{risethesis}[2008/05/06]
%\input{aboutufpethesis.txt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% OPTIONS 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{pt}{%
  \let\@language=0%
  \PassOptionsToPackage{brazil}{babel}}

\DeclareOption{en}{%
  \let\@language=1%
  \PassOptionsToPackage{brazil,english}{babel}}

\DeclareOption{oneside}{%
  \PassOptionsToClass{oneside}{book}}

\DeclareOption{twoside}{%
  \PassOptionsToClass{twoside}{book}}
 
\DeclareOption{print}{%
  \let\@scr=0}

\DeclareOption{scr}{%
  \let\@scr=1%
  \PassOptionsToClass{dvipdfm}{book}}
  
\DeclareOption{bsc}{%
  \let\@degreetype=0}

\DeclareOption{msc}{%
  \let\@degreetype=1}

\DeclareOption{qual}{%
  \let\@degreetype=2}

\DeclareOption{prop}{%
  \let\@degreetype=3}

\DeclareOption{phd}{%
  \let\@degreetype=4}
  
\DeclareOption{singlespacing}{%
  \let\@linespacing=0}
  
\DeclareOption{onehalfspacing}{%
  \let\@linespacing=1}
  
\DeclareOption{doublespacing}{%
  \let\@linespacing=2}

% Default options
\ExecuteOptions{pt,msc,print}
\ProcessOptions

\LoadClass[12pt,a4paper]{book}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage[utf8]{inputenc}
\RequirePackage{textcase}
\RequirePackage{textcomp}
\RequirePackage{url}
\RequirePackage{colortbl}
\RequirePackage{xspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{courier}
\RequirePackage{appendix}
\RequirePackage[printonlyused,withpage]{acronym}
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage[top=3.00cm,left=3.00cm,bottom=2.00cm,right=2.00cm]{geometry}
\RequirePackage[calcwidth]{titlesec}
\RequirePackage{psboxit}
\RequirePackage[avantgarde]{quotchap}
\RequirePackage[nottoc, notlof, notlot]{tocbibind}
\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\RequirePackage{natbib}
\RequirePackage{lastpage}

\if\@scr0
  \RequirePackage{graphicx}
\fi

\if\@scr1
  \RequirePackage[dvips]{graphicx}
  \RequirePackage[dvips,usenames]{color}
  \RequirePackage[dvipdfm,colorlinks,backref]{hyperref}
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% GENERAL PURPOSE MACROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\origcleardoublepage=\cleardoublepage
\def\cleardoublepage{%
  \newpage{\pagestyle{empty}\origcleardoublepage}
}

%%
% For use with the pseudocode package
\def\@lopcchapterspace{\relax}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LABELS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Language Independent
% \gdef\@bachelordissertation{Trabalho de Graduação}
% \gdef\@mastersdissertation{Dissertação de Mestrado}
% \gdef\@phdqualifying{Monografia de Qualificação}
% \gdef\@phdproposal{Proposta de Tese de Doutorado}
% \gdef\@phdthesis{Tese de Doutorado}
% \gdef\@bachelordegree{Bacharel}
% \gdef\@mastersdegree{Mestre}
% \gdef\@phddegree{Doutor}
\gdef\resumoname{Resumo} \gdef\abstrname{Abstract}
\gdef\acronimoname{Lista de Acrônimos} \gdef\acronymname{List of Acronyms}
\gdef\keywordsnamePT{Palavras-chave}
\gdef\keywordsnameEN{Keywords}

%% Language Dependent

% Portuguese
\if\@language0
  \RequirePackage[portuguese]{babel}
  \gdef\@bachelordissertation{Trabalho de Graduação}
  \gdef\@mastersdissertation{Dissertação de Mestrado}
  \gdef\@phdqualifying{Monografia de Qualificação}
  \gdef\@phdproposal{Proposta de Tese de Doutorado}
  \gdef\@phdthesis{Tese de Doutorado}
  \gdef\@bachelordegree{Bacharel}
  \gdef\@mastersdegree{Mestre}
  \gdef\@phddegree{Doutor}
  \gdef\@maleadvisertitle{Orientador}
  \gdef\@femaleadvisertitle{Orientadora}
  \gdef\@malecoadvisertitle{Co-Orientador}
  \gdef\@femalecoadvisertitle{Co-Orientadora}
  \gdef\@notdefined{NÃO DEFINIDO}
  \gdef\acknowledgementsname{Agradecimentos}
  \gdef\@axiomname{Axioma}
  \gdef\@conjecturename{Conjectura}
  \gdef\@defname{Definição}
  \gdef\@lemmaname{Lema}
  \gdef\@theoname{Teorema}
  \gdef\@propname{Proposição}
  \gdef\@corname{Corolário}
  \gdef\@proofname{Prova}
  \gdef\@figurename{Figura}
  \gdef\@tablename{Tabela}
  \gdef\@equationame{equação}
  \gdef\@chaptername{Capítulo}
  \gdef\@textby{Por}
  \gdef\@sectionname{Seção}
  \gdef\@appendixname{Apêndice}
  \gdef\@tocname{Sumário}
  \newcommand\bibliographytocname{Referências}
  \renewcommand{\bibname}{\bibliographytocname}
  \renewcommand{\appendixtocname}{Apêndice}
  \renewcommand{\appendixpagename}{Apêndice}
  \gdef\@listoftablesname{Lista de Tabelas}
  \gdef\@listoffiguresname{Lista de Figuras}
  \gdef\@pagename{página}
  \gdef\@listacronymname{Acrônimos}
  \gdef\@colophontext{%
  \urlstyle{rm}%
  Este volume foi tipografado em \LaTeX\ na classe \textsf{RiSEThesis}
  (\url{http://risetemplate.sourceforge.net}).
  \if\@scr1
  Para detalhes sobre este documento, clique \Acrobatmenu{GeneralInfo}{aqui}.
  \fi}
% English
  \else\if\@language1
  \RequirePackage[english]{babel}
  \gdef\@bachelordissertation{B.Sc. Dissertation}
  \gdef\@mastersdissertation{M.Sc. Dissertation}
  \gdef\@phdqualifying{Ph.D. Thesis Qualification}
  \gdef\@phdproposal{Ph.D. Proposal}
  \gdef\@phdthesis{Ph.D. Thesis}
  \gdef\@bachelordegree{Bachelor}
  \gdef\@mastersdegree{Master of Science}
  \gdef\@phddegree{Philosophy Doctor}
  \gdef\@maleadvisertitle{Advisor}
  \gdef\@femaleadvisertitle{Advisor}
  \gdef\@malecoadvisertitle{Co-Advisor}
  \gdef\@femalecoadvisertitle{Co-Advisor}
  \gdef\@notdefined{UNDEFINED}
  \gdef\acknowledgementsname{Acknowledgements}
  \gdef\@axiomname{Axiom}
  \gdef\@conjecturename{Conjecture}
  \gdef\@defname{Definition}
  \gdef\@lemmaname{Lemma}
  \gdef\@theoname{Theorem}
  \gdef\@propname{Proposition}
  \gdef\@corname{Corollary}
  \gdef\@proofname{Proof}
  \gdef\@figurename{Figure}
  \gdef\@tablename{Table}
  \gdef\@textby{By}
  \gdef\@equationame{equation}
  \gdef\@chaptername{Chapter}
  \gdef\@sectionname{Section}
  \gdef\@tocname{Contents}
  \gdef\@listoftablesname{List of Tables}
  \gdef\@listoffiguresname{List of Figures}
  \renewcommand{\appendixtocname}{Appendix}
  \renewcommand{\appendixpagename}{Appendix}
  \newcommand\bibliographytocname{References}
  \renewcommand{\bibname}{\bibliographytocname}
  \gdef\@pagename{page}
  \gdef\@listacronymname{Acronyms}
  \gdef\@colophontext{%
  \urlstyle{rm}%
  This volume has been typeset in \LaTeX with the \textsf{UFPEThesis} class
  (\url{www.cin.ufpe.br/~paguso/ufpethesis}).
  \if\@scr1
  For details about this document, click \Acrobatmenu{GeneralInfo}{here}. 
  \fi}
\fi\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IDENTIFICATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% School identification

\def\universitypt#1{%
  \gdef\@universitypt{#1}}
\def\@universitypt{Universidade Federal de Pernambuco}

\def\universityen#1{%
  \gdef\@universityen{#1}}
\def\@universityen{Federal University of Pernambuco}

\def\universitylogo{ufpelogo.tex}

\let\@showinstitute=0
\def\institutept#1{%
  \let\@showinstitutept=1
  \gdef\@institutept{#1}}
\def\instituteen#1{%
  \let\@showinstituteen=1
  \gdef\@instituteen{#1}}

\let\@showdepartment=0
\def\departmentpt#1{%
  \let\@showdepartment=1
  \gdef\@departmentpt{#1}}
\def\departmenten#1{%
  \let\@showdepartment=1
  \gdef\@departmenten{#1}}

\def\programpt#1{%
  \gdef\@programpt{#1}}
\def\@programpt{\@notdefined}

\def\programen#1{%
  \gdef\@programen{#1}}
\def\@programen{\@notdefined}

\def\majorfieldpt#1{%
  \gdef\@majorfieldpt{#1}}
\def\@majorfieldpt{\@notdefined}

\def\majorfielden#1{%
  \gdef\@majorfielden{#1}}
\def\@majorfielden{\@notdefined}

\def\address#1{%
  \gdef\@address{#1}}
\def\@address{Recife}

%% Authors identification

\def\author#1{%
  \gdef\@author{#1}
  \if\@scr1 \hypersetup{pdfauthor={\@author}}\fi}
\def\@author{\@notdefined}

\def\adviser{%
  \@ifnextchar [%
    {\@padviser}%
    {\@padviser[\@empty]}}
\def\@padviser[#1]#2{%
  \ifx#1\@empty
    \gdef\@advisertitle{\@maleadvisertitle}
  \else
    \gdef\@advisertitle{\@femaleadvisertitle}
  \fi
  \gdef\@adviser{#2}}
\def\@adviser{\@notdefined}

\let\@showcoadviser=0
\def\coadviser{%
  \@ifnextchar [%
    {\@pcoadviser}%
    {\@pcoadviser[\@empty]}}
\def\@pcoadviser[#1]#2{%
  \let\@showcoadviser=1
  \ifx#1\@empty
    \gdef\@coadvisertitle{\@malecoadvisertitle}
  \else
    \gdef\@coadvisertitle{\@femalecoadvisertitle}
  \fi
  \gdef\@coadviser{#2}}

%% Work identification

\def\title#1{%
  \gdef\@title{#1}
  \if\@scr1 \hypersetup{pdftitle={\@title}}\fi}
\def\@title{\@notdefined}

\def\@texttype{%
  \if\@degreetype0
    \@bachelordissertation
  \else\if\@degreetype1
    \@mastersdissertation
  \else\if\@degreetype2
    \@phdqualifying
  \else\if\@degreetype3
    \@phdproposal
  \else\if\@degreetype4
    \@phdthesis
  \fi\fi\fi\fi\fi}

\def\@degree{%
  \if\@degreetype0
    \@bachelordegree
  \else\if\@degreetype1
    \@mastersdegree
  \else\if\@degreetype2
    \@phddegree
  \else\if\@degreetype3
    \@phddegree
  \else\if\@degreetype4
    \@phddegree
  \fi\fi\fi\fi\fi}


\gdef\@presentationtext{%
\if\@language0
Trabalho apresentado ao Programa de
\@programpt\ do \if\@showdepartment1\@departmentpt\ \else\@institutept\ \fi
da \@universitypt\ como requisito parcial para obtenção do
grau de \@degree\ em \@majorfieldpt.
\fi
\if\@language1 %If language is English
% \vskip\baselineskip
% \vskip\baselineskip
A \@texttype{} presented to the \if\@showdepartment1\@departmenten\
\else\@instituteen\ \fi of \@universityen\ in partial fulfillment of the
requirements for the degree of \@degree\ in \@majorfielden.
\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chapter formats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\formatFrontmatterChapter}{
   \titlespacing*{\chapter}{0pt}{-34pt}{40pt}
   \titleformat{\chapter}[display]{
     \centering\normalfont
   }{
     \chaptertitlename~\thechapter
   }{20pt}{\normalsize}
}

\renewcommand{\frontmatter}{\formatFrontmatterChapter}
\renewcommand{\backmatter}{\frontmatter}

\newcommand{\MainChapterFormat}{
   \renewcommand{\chapnumfont}{%     % define font for chapter number
     \usefont{T1}{pnc}{b}{n}%      % choose New Chancery, bold, normal shape
    \fontsize{18}{100}%          % font size 100pt, baselineskip 100pt
     \selectfont%                  % activate font
   }
   
   \colorlet{chapnumcol}{gray!85}  % color for chapter number

   \titleformat{\chapter}[display]
     {\bfseries}
     {\chapnumfont\textcolor{chapnumcol}{\thechapter}}
     {-24pt}
     {\normalsize}
}

\newcommand{\formatMainmatterChapter}{
%    \titlespacing*{\chapter}{0pt}{-65pt}{40pt}
   \MainChapterFormat
}

\newcommand{\formatAppendixmatterChapter}{
%    \titlespacing*{\chapter}{0pt}{-63pt}{40pt}
   \MainChapterFormat
}

\renewcommand{\mainmatter}{
  \formatMainmatterChapter
  \pagestyle{fancy}
  \acresetall % Reset all acronyms
}

\newcommand{\appendixmatter}{
  \formatAppendixmatterChapter
  \pagestyle{fancy}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAGE LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Line spacing
\if\@linespacing0
  \singlespacing
\else\if\@linespacing1
  \onehalfspacing
\else\if\@linespacing2
  \doublespacing
\fi\fi\fi

%% Paragraphs
\setlength\parindent{1.30cm}

%% Lists, enumerations, etc.
\setlist[itemize]{leftmargin=\parindent+\labelwidth-\labelsep, label={\tiny$\blacksquare$}}
\setlist[enumerate]{leftmargin=\parindent+\labelwidth-\labelsep}

%% Appendix

\newcommand{\theappendix}{%
  \appendixmatter
  \if@openright\cleardoublepage\else\clearpage\fi
  \addappheadtotoc
  \appendix
  \begingroup
    \let\ps@plain\ps@empty
    \appendixpage
  \endgroup}

%% References

\newenvironment{references}
{
	\backmatter
	\bibliographystyle{abnt}
	\setlength{\bibhang}{0pt}
	\singlespacing % Change to singlespacing for the references
	\begingroup
	\raggedright
	\renewcommand{\bibname}{\bibliographytocname}
}
{
	\endgroup
	\onehalfspacing % Put onehalfspacing back
}

%% Captions (Tables, Figures, etc.)

% \captionsetup{justification=centering}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         STANDARD STYLE           %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fonts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\quotefont{\normalfont\normalsize}
\newcommand\quotefonti{\it\normalsize}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Frontpage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\frontpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \begin{center}
  \includegraphics[scale=0.65]{cinlogo} \\
  \vfill
  \begin{center}
    {\normalsize\bfseries{\MakeUppercase{\@title}}}
    \vskip1\baselineskip
    \if\@language0
        {\normalsize \bfseries{Por}}
    \else
        {\normalsize \bfseries{By}}
    \fi
    \vskip1\baselineskip
    \normalsize \textit{\bfseries{\MakeUppercase{\@author}}}
    \vskip1\baselineskip
    {{\normalsize \bfseries{\@texttype}}}\\
  \end{center}
  \vspace{0.2cm}
  \includegraphics[width=1cm]{ufpelogo} \\
  \if\@language0
    {\fontfamily{times}\selectfont \tiny \@universitypt\\}
  \else
    {\fontfamily{times}\selectfont \tiny \@universityen\\}
  \fi
  {\fontfamily{times}\selectfont \tiny posgraduacao@cin.ufpe.br\\}
  {\fontfamily{times}\selectfont \tiny \url{www.cin.ufpe.br/~posgraduacao}\\}
  \vskip\baselineskip
  \vskip\baselineskip
  \@address/\@date
  \end{center}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Presentation page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\presentationpage{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \vskip 25mm
  \begin{center}
  {\Large \@author}
  \vfill
  \begin{center}
	{\large\bfseries{\MakeUppercase{\@title}}}\\
  \end{center}
  \vskip 38mm
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti %
    \@presentationtext
    \vskip2\baselineskip
    \end{minipage}
  \end{flushright}
  \flushleft{
    	{\quotefont \@advisertitle:} \@adviser\\
    	\if\@showcoadviser1{\quotefont\@coadvisertitle:} \@coadviser\\\fi
  }
  \vfill
 \begin{center}
  		\@address
  		\\
  		\@date
  \end{center}
  \end{center}
  \setcounter{page}{1}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ficha catalografica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ficha catalografica (Dados internacionais de
% catalogação-na-publicacao)
\newenvironment{fichacatalografica}{%
    \clearpage
    \thispagestyle{empty}
    \singlespacing
    \footnotesize
}{%   
    \onehalfspacing
    \normalsize
}%

\newcommand{\FakeFichaCatalografica}{
	\vspace*{\fill}						% Posição verticaL
	\hrule							% Linha horizontal
	\begin{center}					% Minipage Centralizado
	\begin{minipage}[c]{12.5cm}		% Largura
	
	\@author
	
	\hspace{0.5cm} \@title  / \@author. --
	\@address, \@date-
	
	\hspace{0.5cm} \pageref{LastPage} p. : il. (algumas color.) ; 30 cm.\\
	
	\hspace{0.5cm} \@advisertitle~\@adviser\\
	
	\hspace{0.5cm}
	\parbox[t]{\textwidth}{\@texttype~--~\@universitypt,
	\@date.}\\
	
	\hspace{0.5cm}
		1. Palavra-chave1.
		2. Palavra-chave2.
		I. Orientador.
		II. Universidade xxx.
		III. Faculdade de xxx.
		IV. Título\\ 			
	
	\hspace{8.75cm} CDU 02:141:005.7\\
	
	\end{minipage}
	\end{center}
	\hrule
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Banca
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\banca{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \noindent
  Tese de doutorado apresentada por \textbf{\@author} ao programa de Pós-Graduação em
  Ciência da Computação do Centro de Informática da Universidade Federal de
  Pernambuco, sob o título \textbf{\@title}, orientada pelo \textbf{Prof.
  \@adviser} e aprovada pela banca examinadora formada pelos professores:
  
  \vspace{5\baselineskip}
  
  \begin{center}
  
  -----------------------------------------------------------------------\\
  Prof. André Luis de Medeiros Santos\\
  Centro de Informática/UFPE
  
  \vspace{\baselineskip}
  -----------------------------------------------------------------------\\
  Prof. Alexandre Marcos Lins de Vasconselos\\
  Centro de Informática/UFPE
  
  \vspace{\baselineskip}
  -----------------------------------------------------------------------\\
  Prof. Christina von Flach Garcia Chavez\\
  Departamento de Ciência da Computação/UFBA
  
  \vspace{\baselineskip}
  -----------------------------------------------------------------------\\
  Prof. Leonardo Gresta Paulino Murta\\
  Instituto de Computação/UFF
  
  \vspace{\baselineskip}
  -----------------------------------------------------------------------\\
  Prof. Jones Oliveira de Albuquerque\\
  Departamento de Estatística e Informática/UFRPE
  
  \vfill
  \@address
  \\
  \@date
  
  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dedicatory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\dedicatory{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{flushright}
    \begin{minipage}{100mm}
    \quotefonti
    \begin{flushright}}
\def\enddedicatory{
		\end{flushright}
    \normalfont
    \end{minipage}
  \end{flushright}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acknowledgements
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\acknowledgements{%
  \pagestyle{empty}
  \chapter*{\acknowledgementsname}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Resumo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\resumo{%
  %\onehalfspacing
  \pagestyle{empty}
  \gdef\@keywordsname{\keywordsnamePT}
  \chapter*{\resumoname}
  \thispagestyle{empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\abstract{%
  %\onehalfspacing
  \gdef\@keywordsname{\keywordsnameEN}
  \pagestyle{empty}
  \chapter*{\abstrname}
  \thispagestyle{empty}}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Keywords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@keywordsname{\@defaultkeywordsname}
\def\keywords{%
  \par\vskip\baselineskip\noindent{\bf\@keywordsname: }}
\def\endkeywords{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Quotations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{citationblock}%
  {%
  \begin{spacing}{1.}
   \small
   \begin{list}{}{%
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{4cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\end{list}\end{spacing}}

\def\epigraph{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{quotation}}
\def\endepigraph{\end{quotation}}

\def\quotation{%
  \@ifnextchar [%
    {\begin{pquot@tion}}%
    {\begin{pquot@tion}[\@empty]\end{pquot@tion}}}
\def\endquotation{\end{pquot@tion}\@afterindentfalse\@afterheading}

\def\pquot@tion[#1]#2{%
  \def\@qauthor{#2}
  \def\@qnote{#1}
  \begin{flushright}
    \begin{minipage}{0.8\textwidth}
      \begin{flushright}\quotefonti}
\def\endpquot@tion{%
        \vskip.2\baselineskip%
        \quotefont---\MakeTextUppercase{\@qauthor}
        \if\@qnote\@empty
          \relax
        \else
          \space(\@qnote)
        \fi
      \end{flushright}
    \end{minipage}
  \end{flushright}
  \normalfont\vskip2\baselineskip}

  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Table of contents
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{4}

\renewcommand\tableofcontents{%

   \pagestyle{empty}

   \chapter*{\@tocname}

   \thispagestyle{empty}

   \@starttoc{toc}

   \thispagestyle{empty}}
 

\renewcommand\listoffigures{%
   \pagestyle{empty}
   \chapter*{\@listoffiguresname}
   \thispagestyle{empty}
   \@starttoc{lof}}

\renewcommand\listoftables{%
   \pagestyle{empty}
   \chapter*{\@listoftablesname}
   \thispagestyle{empty}
   \@starttoc{lot}}

\newcommand{\listofacronyms}{%
   \pagestyle{empty}
   \if\@language1
      \chapter*{\acronymname}
      \thispagestyle{empty}
   \else\if\@language0
      \chapter*{\acronimoname}
      \thispagestyle{empty}
   \fi\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Some codes coming from phdthesis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% make the equation numbers have little ovals around them
 \def\tagform@#1{\maketag@@@{\cornersize{0.8}\ovalbox{\ignorespaces\sffamily{#1}\unskip\@@italiccorr}}}
% 
% %% Load up PS insertion package
 \PScommands
 
% %% now reset the headers and footers
 \fancyhead{}
 \fancyfoot{}
 
% %% put the page numbers on the top in a nice box
% %% even side pages
 \fancyhead[LE]{%
 	\rule{0cm}{4mm}\color{black}{\thepage}\hfill\leftmark
 }
 
% 
% %% odd side pages
 \fancyhead[RO]{
 	\rule{0cm}{4mm}\color{black}{\rightmark}\hfill\thepage
 }

% Header style of the chapter page
\fancypagestyle{plain}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead{\hfill\thepage}
  \renewcommand{\headrulewidth}{0pt}
 }
% 
% %% bring the style into effect

 \pagestyle{fancy}
\renewcommand{\chaptermark}[1]{% 
	\markboth{\MakeUppercase{% 
			\ #1}}{}}
% 
% %% make the quotation appear next to the chapter number
\renewcommand\chapterheadstartvskip{\vspace*{-5\baselineskip}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter{secnumdepth}{4}
% 
% \def\part{%
% 	\if@openright\cleardoublepage\else\clearpage\fi
%   \thispagestyle{empty}%
%   \secdef\@part\@spart}
% \def\@part[#1]#2{%
%     \ifnum \c@secnumdepth >-2\relax
%       \refstepcounter{part}%
%       \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
%     \else
%       \addcontentsline{toc}{part}{#1}%
%     \fi
%     \markboth{}{}%
%     {\centering
%      \interlinepenalty \@M
%      \normalfont
%      \null\vfil
%      \ifnum \c@secnumdepth >-2\relax
%        {\sc\Large\partname\nobreakspace\thepart}
%        \par
%        \vskip 20\p@
%      \fi
%      {\huge\bfseries #2\par}}
%      \vfil}
% \def\@spart#1{%
%     {\centering
%      \interlinepenalty \@M
%      \normalfont
%      \null\vfil
%      {\huge\bfseries #1\par}}
%      \vfil}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tables and figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small\bf #1\rm\enskip #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\small\bf#1\rm\enskip #2\par}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mathematics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Equation numbering
\renewcommand{\theequation}{\rm\thechapter.\arabic{equation}}

% Theorem-like environments
\newtheoremstyle{theo}%
	{\topsep}{\topsep}% Space above and below
	{\slshape}% Body style
	{0pt}% Heading indent amount
	{\bfseries}{.}% Heading font and punctuation after it
	{1ex plus 0pt minus .2ex}% Space after heading 
	{}% Head spec (empty = same as �plain� style
\theoremstyle{definition}
\newtheorem{Def}{\@defname}[chapter]
\theoremstyle{theo}
\newtheorem{Axi}{\@axiomname}[chapter]
\newtheorem{Conj}{\@conjecturename}[chapter]
\newtheorem{Lem}{\@lemmaname}[chapter]
\newtheorem{Theo}{\@theoname}[chapter]
\newtheorem{Prop}{\@propname}[chapter]
\newtheorem{Cor}{\@corname}[chapter]
%\renewcommand{\qedsymbol}{\rule{3pt}{8pt}}
%\renrewcommand{\proofname}{\@proofname}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\figref}[2][]{\@figurename~\ref{#2}#1\xspace}
\newcommand{\tabref}[1]{\@tablename~\ref{#1}\xspace}
\newcommand{\eqnref}[1]{\@equationame~\eqref{#1}\xspace}
\newcommand{\chapref}[1]{\@chaptername~\ref{#1}\xspace}
\newcommand{\secref}[1]{\@sectionname~\ref{#1}\xspace}
\newcommand{\appref}[1]{\@appendixname~\ref{#1}\xspace}
\newcommand{\axiref}[1]{\@axiomname~\ref{#1}\xspace}
\newcommand{\conjref}[1]{\@conjname~\ref{#1}\xspace}
\newcommand{\defref}[1]{\@defname~\ref{#1}\xspace}
\newcommand{\lemref}[1]{\@lemmaname~\ref{#1}\xspace}
\newcommand{\theoref}[1]{\@theoname~\ref{#1}\xspace}
\newcommand{\corref}[1]{\@corname~\ref{#1}\xspace}
\newcommand{\propref}[1]{\@propname~\ref{#1}\xspace}
\newcommand{\pgref}[1]{\@pagename~\pageref{#1}\xspace}
