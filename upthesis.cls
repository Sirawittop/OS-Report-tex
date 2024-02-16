
%%% UPTHESIS DOCUMENT CLASS FiLE --  Version 1 (Updated on 17/10/2022 by Phongsaphat Rangdee)
%%% This class file is for University of Phayao Thesis only .
%%% You can edit anything for your format
%%% Revised from IITTHESIS DOCUMENT CLASS FiLE
%%% NOTE: This class for THAI format thesis ONLY.
%%% =========================================================================================
%%%   IITTHESIS DOCUMENT CLASS FiLE --  Version 2 (Updated on 11/11/2003 by Babak Hamidian)
%%%   for LaTeX version 2e - 05/30/2003
%%% =========================================================================================
%%%--NNNNNN--NNNNNNNN--NNNNNNN--NNNNNNN--%
%%%----NNNN----NNNN------NNNN----NNNN----%
%%%----NNNNNN--NNNN------NNNN----NNNN----%
%%%----NNNNNN--NNNN------NNNN----NNNN----%
%%%----NNNNNNNNNNNN------NNNN----NNNN----%
%%%----NNNN--NNNNNN------NNNN----NNNN----%
%%%----NNNN--NNNNNN------NNNN----NNNN----%
%%%----NNNN----NNNN------NNNN----NNNN----%%%%%%%%%%%
%%%--NNNNNNNN--NNNN--------NNNNNNNN------Generated-%
%%%------------------------------------------by----%
%%%----------------THESIS---------------------%
%%% =========================================================================================
%%%  WHAT IS NEW IN THIS VERSION?
%%%
%%% This version editted by Phongsaphat Rangdee for the following
%%% Graduate School of Naresuan University thesis format and use for
%%% the Undergraduate students at University of Phayao since 2022.
%%% JUST FOR THAI LANGUAGE ONLY!!!
%%% =========================================================================================
%%% =========================================================================================
%%%  @LaTeX-class-file{
%%%     filename                    = "upthesis.cls", (changing from ilthesis.cls)
%%%     date                        = "October 2022",
%%%     original written by         = "Ozlem KALINLI"
%%%     address                     = "Illinois Institute of Technology
%%%                                    3300 S. Federal Street
%%%                                    Chicago, IL 60616 USA",
%%%     e-mail                      = "kaliozl@iit.edu",
%%%     codetable                   = "ISO/ASCII",
%%%     keywords                    = "LaTeX,IIT,thesis",
%%%     notes                       = "This file provides the LaTeX2e style iithesis.cls
%%%                                    for formating graduate thesis at the Illinois
%%%                                    Institute of Technology. It was written by
%%%                                    Ozlem Kalinli. For an example of its use, see the
%%%                                    file: iitsample.tex, and help files given in pdf format".
%%%
%%%     Revised by                  = "Phongsaphat Rangdee"
%%%                                    Department of Physics, School of Science, University of Phayao, Phayao Province THAILAND
%%%                                    Email: thesun.r19@gmail.com
%%%  }
%%% ==========================================================================================

\typeout{Document Class `IIT_THESIS' <May 2003>.}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upthesis}[2022/10/17, University of Phayao Thesis Class]

%   **********************************
%   * Interline Spacing Commands     *
%   **********************************
% \ssp : single-spacing
% \dsp : double-spacing
% \tsp : triple-spacing
\renewcommand{\normalsize}{\@normalsize}
\def\ssp{\def\baselinestretch{1.0}\large\normalsize}
\def\dsp{\def\baselinestretch{1.66}\large\normalsize}
\def\tsp{\def\baselinestretch{2.6}\large\normalsize}

\def\tsv{0.5cm}

%    ****************************************
%    * Declaration of Options              *
%    ****************************************
%
% Option values are declared first.
% Defaults are set to: 12 point, onesided, final (i.e., not draft) mode

\newcommand\@ptsize{}
\newcommand{\draftmark}{\dsp}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}  % can be used later for 10pt font-size
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\renewcommand{\draftmark}{\ssp}}
\DeclareOption{final}{\renewcommand{\draftmark}{\dsp}}
\ExecuteOptions{oneside,final,12pt}
\ProcessOptions

\def\ds@twoside{\@twosidetrue \@mparswitchtrue}
\def\ds@draft{\overfullrule 5pt}
\@options

% This command inputs the font file that is selected depending on size information.
\input font1\@ptsize.clo\relax


%    ****************************************
%    *          Page Format                 *
%    ****************************************
%
% See pg. 24 of "A Guide to Latex" by Helmut Kopka and Patrick W Daly
% for details. 

%\setlength{\oddsidemargin}{0cm}
%\setlength{\marginparwidth}{0pt}
%\setlength{\topmargin}{0pt}
%\setlength{\marginparsep}{0pt}
%\setlength{\hoffset}{0.91cm}
%\setlength{\voffset}{-0.86cm}    %set vertical offset to 3.75 cm = 2.54 cm(1 in) + 1.21 cm
% head
%\setlength{\headheight}{0.42cm}
%\setlength{\headsep}{1.25cm}
% body
%\setlength{\textwidth}{14.75cm}%{15.45cm}
%\setlength{\textheight}{23.45cm}%{24.36cm}
% foot
%\setlength{\footskip}{0pt}

\setlength{\parindent}{1.5cm} % indent of new paragraph
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex} % spacing between paragraph

%======================================================

%    ****************************************
%    *        Title Page Commands           *
%    ****************************************
%
\renewcommand{\title}[1]{                                   % ReDefine title
\renewcommand{\@title}{#1}
\newcommand{\@titleUP}{\uppercase{#1}}
}

\newcommand{\titleen}[1]{                                   % ReDefine title in English
\newcommand{\@titleen}{#1}
\newcommand{\@titleUPen}{\uppercase{#1}}
}

\renewcommand{\author}[2]{                                  % ReDefine author
\renewcommand{\@author}{{#1}\:{#2}}
\newcommand{\@authorUP}{\uppercase{{#1}\:\:\:{#2}}}
}

\newcommand{\authoren}[2]{                                  % ReDefine author in English
\newcommand{\@authoren}{{#1}\:{#2}}
\newcommand{\@authorUPen}{\uppercase{{#1}\:\:\:{#2}}}
}

\newcommand{\nameprefix}[1]{
\newcommand{\@nameprefix}{#1}
\newcommand{\@nameprefixUP}{\uppercase{#1}}
}

\newcommand{\nameprefixen}[1]{
\newcommand{\@nameprefixen}{#1}
\newcommand{\@nameprefixUPen}{\uppercase{#1}}
}

\newcommand{\dateofbirth}[1]{\gdef\@dateofbirth{#1}}
\newcommand{\placeofbirth}[1]{\gdef\@placeofbirth{#1}}
\newcommand{\provinceTH}[1]{\gdef\@provinceTH{#1}}
\newcommand{\address}[1]{\gdef\@address{#1}}
\newcommand{\zipcode}[1]{\gdef\@zipcode{#1}}
\newcommand{\workplace}[1]{\gdef\@workplace{#1}}
\newcommand{\position}[1]{\gdef\@position{#1}}
\newcommand{\myemail}[1]{\gdef\@myemail{#1}}
\newcommand{\myphone}[1]{\gdef\@myphone{#1}}

\newcommand{\myfig}[1]{
\newcommand{\@FigName}{#1}
}

\newcommand{\EduBG}[1]{
\newcommand{\@EduBG}{#1}
}

\newcommand{\WorkExpr}[1]{
\newcommand{\@WorkExpr}{#1}
}

\newcommand{\Publication}[1]{
\newcommand{\@Publication}{#1}
}

\newcommand{\Presentation}[1]{
\newcommand{\@Presentation}{#1}
}

\newcommand{\advisor}[1]{\gdef\@advisor{#1}}                % Define advisor
\newcommand{\advisoren}[1]{\gdef\@advisoren{#1}}                % Define advisor in English
\newcommand{\coadvisor}[1]{\gdef\@coadvisor{#1}}                % Define co-advisor
\newcommand{\coadvisoren}[1]{\gdef\@coadvisoren{#1}}                % Define co-advisor in English
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\degreeen}[1]{\gdef\@degreeen{#1}}
\newcommand{\degreeAbb}[1]{\gdef\@degreeAbb{#1}}
\newcommand{\degreeAbben}[1]{\gdef\@degreeAbben{#1}}

\newcommand{\major}[1]{\gdef\@major{#1}}                    % Define your major
\newcommand{\majoren}[1]{\gdef\@majoren{#1}}                    % Define your major in English
\newcommand{\dept}[1]{\gdef\@dept{#1}}                      % Define the name of department
\renewcommand{\date}[1]{\gdef\@date{#1}}                    % Define date
\newcommand{\academicyear}[1]{\gdef\@academicyear{#1}}      % Define the academic year
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}              % Define keywords
\newcommand{\keywordsth}[1]{\gdef\@keywordsth{#1}}              % Define keywords in Thai
\newif\ifcopyrightnotice
\newif\ifcoadvisor
\copyrightnoticefalse   % default is without copyright page
\coadvisorfalse         % default is without co-advisor


\newcommand{\committee}[1]{                                 % Define committee
\newcommand{\@committee}{#1}
}

\newcommand{\dean}[1]{\gdef\@dean{#1}}                     % Define dean of graduate school


% -- Copyright Page Format ---
%
\def\copyrightpage{
\pagestyle{plain}
\pagenumbering{roman}
\setcounter{page}{2}
\dsp           % double space
\vspace*{3in}
\begin{center}
\copyright \ Copyright by \\ \@author \\ \@date
\end{center}
\clearpage
 }


% -- No Copyriht Page,  --
% -- It Creates Blank Page --
%
\def\nocopyrightpage{
\hbox{}               %   THEN Produce totally blank page
\thispagestyle{empty}%
\newpage
}


% -- Co-advisor  --
%
\def\coadvisortype{
  \vspace*{1.5em}
  \hfil{Approved \rule{2in}{0.01in}\\}
  \hfil
  \makebox[2in][c]{Co-Advisor} \\
  }
\clearpage
%%  *********************************************
%%  *           Page of Approvement             *
%%  *********************************************
\def\makecommittee{
\baselineskip=8mm
 \pagestyle{empty}
 \thispagestyle{empty}

		คณะกรรมการสอบการศึกษาอิสระ อาจารย์ที่ปรึกษา และคณบดีคณะวิทยาศาสตร์  ได้พิจารณาการศึกษาอิสระเรื่อง ``{\@title}" 
		โดย {\@nameprefix}{\@author} เห็นสมควรรับเป็นส่วนหนึ่งของการขอสำเร็จการศึกษา ตามหลักสูตรปริญญา{@degree} สาขาวิชา{@major} ของมหาวิทยาลัยพะเยา
%    Thesis entitled ``{\@title}" \\ by {\@nameprefix}{\@author}\\
%    has been approved by the School of Science as partial
%    fulfillment of the requirements for the {\@degree} in {\@major} of University of Phayao.

 \begin{center}
 \vspace*{0in}
 \textbf{คณะกรรมการสอบ}
% \textbf{Oral Defense Committee}\\

 \vspace{1pt}
    \begin{tabular}{p{0cm}lp{5cm}}
    \@committee
    \end{tabular}
 \end{center}

\begin{center}
\vspace{1cm}
\begin{tabular}{cp{8cm}}
{\bf ตรวจสอบแล้ว} \vspace{1cm}\\
%{\bf Approved} \vspace{1cm}\\
\dotfill \\
{(\@dean)}\vspace{4pt}\\
คณบดีคณะวิทยาศาสตร์\vspace{4pt}\\
{\@date}\\
ลิขสิทธิ์เป็นของมหาวิทยาลัยพะเยา
%Dean of the School of Science\vspace{4pt}\\
%{\@date}
\end{tabular}
\end{center}
}

\newcommand{\chair}[2]{                                 % Make chair block
\hspace*{0.5cm} & \hspace*{8.0cm} & \\
& \hspace*{-0.93cm}\makebox[7cm]{\dotfill} & \hspace*{-2.3cm}{#1}\\
& \multicolumn{2}{l}{\hspace*{-0.93cm}(#2)} \\
}

\newcommand{\thesiscommittee}[2]{                       % Make committee block
\hspace*{0.5cm} & \hspace*{8.0cm} & \\
& \hspace*{-0.93cm}\makebox[7cm]{\dotfill} & \hspace*{-2.3cm}{#1}\\
& \multicolumn{2}{l}{\hspace*{-0.93cm}(#2)} \\
}
%------------------------------------------------
\clearpage


%    ****************************************
%    * Creating Title and Copyright Pages   *
%    ****************************************
%
\def\maketitle{
\pagenumbering{roman}
 %\dsp
 \pagestyle{empty}
 %\vspace*{0.3in}
 \begin{center}
 \baselineskip=8mm
     {\bf\@titleUP} \\
 % {\large\bf\@titleUP} \\
  \vfill
  %{BY} \\
  {\bf\@authorUP} \\
  %{\large\bf\@authorUP} \\
    \vfill
    \baselineskip=8mm

  {\bf การศึกษาอิสระ เสนอเป็นส่วนหนึ่งของการศึกษา\\
  หลักสูตรปริญญาวิทยาศาสตรบัณฑิต\\
  สาขาวิชา {\@major} \\
   {\@date} \\
   ลิขสิทธิ์เป็นของ มหาวิทยาลัยพะเยา}
       
%  {\bf A Thesis Submitted to the School of Science of University of Phayao\\
%  in Partial Fulfillment of the Requirements \\
%  of the {\@degree} Degree in {\@major} \\
%   {\@date} \\
%   Copyright {\@academicyear} by University of Phayao}
 \end{center}
 \clearpage
 \let\maketitle\relax
% \ifcopyrightnotice                    % For copyright page (optional)
% \copyrightpage
% \else
% \nocopyrightpage
% \fi
}


%    ****************************************
%    *          Acknowledgement             *
%    ****************************************
%
\def\makeauthor{
\@author
}
\newenvironment{acknowledgement}{
% \thispagestyle{empty}
%\pagenumbering{roman}
 %\setcounter{page}{3}
 \begin{center}
 {\large\bf กิตติกรรมประกาศ}  
% {\large\bf ACKNOWLEDGMENT}    % Creates the title of Acknowledgement page
 \vspace{-10pt}
 \end{center}
%\addtocontents{toc}{\protect\vspace*{\tsv}}
% \addcontentsline{toc}{chapter}{\protect\noindent ACKNOWLEDGEMENT}   % adds Acknowledgement title into Table of Contents
 %\dsp

 }
 \clearpage


%    ****************************************
%    *            Abstract                  *
%    ****************************************
%%%%%%%%%%%%%%%%%%%%%% ABSTRACT IN ENGLISH %%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstract}{
\thispagestyle{empty}
%\pagenumbering{roman}
 \begin{flushleft}
 \begin{tabular}{p{4cm}ll}
     {\bf Title}                          &   \hspace{-1mm}\@titleUPen \\% \vspace{7pt}\\
     {\bf Author}                       &    \@authoren \\%\vspace{7pt}\\
     {\bf Advisor}                      &    \@advisoren \\%\vspace{7pt}\\
     {\bf Co-Advisor}				& 		\@coadvisoren \\
     {\bf Bachelor of Science}      &    Department of {\@majoren}, School of Science, \\%\vspace{7pt}\\
                                              &    University of Phayao, \@academicyear \\ %\vspace{7pt}\\
     {\bf Keywords}                   &    \@keywords

%     {\bf Title}                          &   \hspace{-1mm}\@titleUP \\% \vspace{7pt}\\
%     {\bf Author}                       &    \@author \\%\vspace{7pt}\\
%     {\bf Advisor}                      &    \@advisor \\%\vspace{7pt}\\
%     {\bf Academic Paper}           &    Thesis {\@degreeAbb} in {\@major}, \\%\vspace{7pt}\\
%                                              &    University of Phayao, \@academicyear \\ %\vspace{7pt}\\
%     {\bf Keywords}                   &    \@keywords
 \end{tabular}
 \end{flushleft}
 \vspace{5mm}
 \begin{center}
 {\large\bf ABSTRACT \\}        % Creates the title of Abstract page
 \vspace{5mm}
 \end{center}
 %\addcontentsline{toc}{chapter}{\protect\noindent ABSTRACT}         % adds Abstract title into Table of Contents
 \dsp}{\clearpage}

 %%%%%%%%%%%%%%%%%%% ABSTRACT IN THAI %%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstractth}{
\thispagestyle{empty}
%\pagenumbering{roman}
 \begin{flushleft}
 \begin{tabular}{p{4cm}ll}
     {\bf ชื่อเรื่อง}                          &   \hspace{-1mm}\@titleUP \\% \vspace{7pt}\\
     {\bf ผู้ศึกษาค้นคว้า}                       &    \@author \\%\vspace{7pt}\\
     {\bf อาจารย์ที่ปรึกษา}                      &    \@advisor \\%\vspace{7pt}\\
     {\bf อาจารย์ที่ปรึกษาร่วม}				&    \@coadvisor \\
     {\bf วิทยาศาสตรบัณฑิต}                 &    สาขาวิชา{\@major}, คณะวิทยาศาสตร์ \\%\vspace{7pt}\\
                                              &    มหาวิทยาลัยพะเยา, \@academicyear \\ %\vspace{7pt}\\
     {\bf คำสำคัญ}                   &    \@keywordsth

%     {\bf Title}                          &   \hspace{-1mm}\@titleUP \\% \vspace{7pt}\\
%     {\bf Author}                       &    \@author \\%\vspace{7pt}\\
%     {\bf Advisor}                      &    \@advisor \\%\vspace{7pt}\\
%     {\bf Academic Paper}           &    Thesis {\@degreeAbb} in {\@major}, \\%\vspace{7pt}\\
%                                              &    University of Phayao, \@academicyear \\ %\vspace{7pt}\\
%     {\bf Keywords}                   &    \@keywords
 \end{tabular}
 \end{flushleft}
 \vspace{5mm}
 \begin{center}
 {\large\bf บทคัดย่อ \\}
% {\large\bf ABSTRACT \\}        % Creates the title of Abstract page
 \vspace{5mm}
 \end{center}
 %\addcontentsline{toc}{chapter}{\protect\noindent ABSTRACT}         % adds Abstract title into Table of Contents
 \dsp}{\clearpage}



%    ****************************************
%    *    Preliminary Pages' Format         *
%    ****************************************
%
\def\prelimpages{            % sets page numbering for the preliminary pages
   \pagestyle{myheadings}         % will be {plain} at start of toc
%   \pagenumbering{roman}
   \setcounter{page}{5}
   }



%    ****************************************
%    *        Text Pages' Format            *
%    ****************************************
%
 \def\textpages{
  %\addtocontents{toc}{\protect\noindent CHAPTER \vspace{-10pt}}     % adds Chapter word into Table of Contents.
  \draftmark               % if it is draft, it will be single-spaced. if it is final, it will be double-spaced.
  \pagenumbering{arabic}
  \pagestyle{headings}
  \setcounter{page}{1}
 }


%    ****************************************
%    *           List Structures            *
%    ****************************************
%
% See pg. 56 of "The LaTeX Companion" by Goossens, Mittelbach and Samarin
% for details.


%  ENUMERATE
%  Enumeration is done with four counters: enumi, enumii, enumiii
%  and enumiv, where enumN controls the numbering of the Nth level
%  enumeration.  The label is generated by the commands \labelenumi
%  ... \labelenumiv.  The expansion of \p@enumN\theenumN defines the
%  output of a \ref command.
%
\def\labelenumi{\theenumi.}
\def\theenumi{\arabic{enumi}}

\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}

\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}

\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}


% ITEMIZE
% Itemization is controlled by four commands: \labelitemi, \labelitemii,
% \labelitemiii, and \labelitemiv, which define the labels of the
% various itemization levels.

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}


% DESCRIPTION
% Each item has a label on the left which appears in bold face.
% It is created by \item[labelname] command.

\def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
 \let\makelabel\descriptionlabel}}
\let\enddescription\endlist


% VERSE
% For indenting rhymes, poetry, verses, etc.
% The user types \\ to end of each line.
%
\def\verse{\let\\=\@centercr
 \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
 \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist


% QUOTATION
% Seperated from the text both above and belove it by a triple space
% and by being single-spaced.
% It is indented in its entirety three spaces from the left margin.

\def\quotation{\list{}{\listparindent 0em \leftmargin 0.3in \rightmargin 0em
 \itemindent\listparindent
\ssp} \vspace{0cm}\item[]}
\let\endquotation=\endlist



%    ****************************************
%    *         OTHER ENVIRONMENTS           *
%    ****************************************


% ARRAY AND TABULAR
%
% These are default values (pg.110 of "The Latex Companieon" )

\arraycolsep 5pt     % Half the width between columns in an array
                     % environment.
\tabcolsep 6pt       % Half the width between columns in a tabular
                     % environment.
\arrayrulewidth .4pt % Width of vertical rules in array and tabular environment.
\doublerulesep 2pt   % Space between adjacent rules in array or tabular
                     % environment.

% We have to redefine array here in order to make it single-spaced.
\def\array{\let\@acol\@arrayacol \let\@classz\@arrayclassz
 \let\@classiv\@arrayclassiv \let\\\@arraycr\let\@halignto\@empty\@tabarray}

% We have to redefine tabular here in order to make it single-spaced.
\def\tabular{\par\ssp\let\@halignto\@empty\@tabular}
\expandafter \def\csname tabular*\endcsname #1%
{\par\ssp\def\@halignto{to#1}\@tabular}


% TABBING
%
\tabbingsep \labelsep   % Space used by the \' command.

% \smallssp is used to produce tabular environments in the small font.
% Font size change is mandatory here, because \baselinestretch requires
% a change in font size to take effect.
% \scriptsizessp is a smaller version of the \smallssp.

\def\smallssp{\def\baselinestretch{1.0}\large\small}
\def\scriptsizessp{\def\baselinestretch{1.0}\large\scriptsize}

% \smalltabular and \smalltabular* are alternative tabular styles
% in the \small font.  They are required because single-spacing implies a
% change of font to a particular size.

\def\smalltabular{\par\smallssp\let\@halignto\@empty\@tabular}
\def\endsmalltabular{\endtabular}
\expandafter \def\csname smalltabular*\endcsname #1%
{\par\smallssp\def\@halignto{to#1}\@tabular} \expandafter \let
\csname endsmalltabular*\endcsname = \endtabular

% \scriptsizetabular and \scriptsizetabular* use the
% \scriptsize font.

\def\scriptsizetabular{\par\scriptsizessp\let\@halignto\@empty\@tabular}
\def\endscriptsizetabular{\endtabular}
\expandafter \def\csname scriptsizetabular*\endcsname #1%
{\par\scriptsizessp\def\@halignto{to#1}\@tabular} \expandafter
\let \csname endscriptsizetabular*\endcsname = \endtabular


% FRAMEBOX
%
% These are default values (pg.453 of "The Latex Companion" )

\fboxsep = 3pt    % Space left between box and text by \fbox and
                  % \framebox.
\fboxrule = .4pt  % Width of lines comprising the box made by \fbox and \framebox.



%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% DEFINE COUNTERS:
%
% \newcounter{NEWCTR}[OLDCTR] : Defines NEWCTR to be a counter, which is
%                               reset to zero when counter OLDCTR is
%                               stepped.
%                               Counter OLDCTR must already be defined.
% See pg. 446 of "The Latex Companion"

\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {appendix}

% For any counter CTR, \theCTR is a macro that defines the printed
% version of counter CTR.  It is defined in terms of the following
% macros:
%
%  \arabic{COUNTER} : The value of COUNTER printed as an arabic numeral.
%  \roman{COUNTER}  : Its value printed as a lower-case roman numberal.
%  \Roman{COUNTER}  : Its value printed as an upper-case roman numberal.
%  \alph{COUNTER}   : Value of COUNTER printed as a lower-case letter:
%                     a, b, c, etc.
%  \Alph{COUNTER}   : Value of COUNTER printed as an upper-case letter:
%                     A, B, C, etc.
%


\def\thechapter       {\arabic{chapter}}
\def\thesection       {\thechapter.\arabic{section}}
\def\thesubsection    {\thesection.\arabic{subsection}}
\def\thesubsubsection {\arabic{subsubsection}}
\def\thesubsubsubsection {\thesubsection\thesubsubsection.\arabic{subsubsubsection}}
\def\thesubsubsection {\thesubsection.\arabic{subsubsection}}
\def\theappendix      {\Alph{appendix}}



%    ****************************************
%    *         TABLE OF CONTENTS, ETC.      *
%    ****************************************
%
%  A table of contents is a special list with the titles of the section
%  units specifying the page numbers where each section starts. Similar lists
%  for figures and tables, namely, list of figures and list of tables, exist.
%  Starndard LaTeX can automatically create these three content lists. By default,
%  LaTeX enters text generated by one of the arguments of the sectioning commands
%  into the .toc file. Similarly, LaTeX maintains two more files, one for the list
%  of figures (.lof) and one for the list of tables (.lot), which contins the text
%  specified as the argument of the \caption command for figures and tables.
%  It is always necessary to run LaTeX at leat twice, once to collect the relevant
%  information, and a second time to read back the information and typeset it in
%  the correct place in the document.
%
%
% A sectioning command, such as \subsection, writes a
%       \contentsline{subsection}{TITLE}{PAGE}
% command on the .toc file, where TITLE contains the contents of the
% entry and PAGE is the page number.  If subsections are being numbered,
% then TITLE will be of the form
%       \numberline{NUM}{HEADING}
% where NUM is the number produced by \thesubsection.  Other sectioning
% commands work similarly.
%
%
% A \caption command in a 'figure' environment writes
%    \contentsline{figure}{\numberline{NUM}{CAPTION}}{PAGE}
% on the .lof file, where NUM is the number produced by \thefigure and
% CAPTION is the figure caption.  It works similarly for a 'table'
% environment using .lot file.
%
%
% The command \contentsline{NAME} expands to \l@NAME.  So, to specify
% the table of contents, we must define \l@chapter, \l@section,
% \l@subsection, ... ; to specify the list of figures, we must define
% \l@figure; and so on.  Most of these can be defined with the
% \@dottedtocline command, which works as follows.
%
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE}
%    LEVEL    : The nesting level of entry. An entry with a LEVEL greater
%               than the value of counter 'tocdepth' will not appear in the
%               table of contents.
%    INDENT   : The indentation from the outer left margin of the start
%               of the contents line.
%    NUMWIDTH : The width of a box in which the section number is to go,
%               if TITLE includes a \numberline command. This is also the
%               amount of extra indentation added to the second and later
%               lines of a multiple entry.

% Additionaly, the command \@dottedtocline uses the following three formatting
% parameters, which specify the visual appearance of all entries. These parameters
% are set with a \def command using em's to make them depend upon the font.
%
%   \@pnumwidth : The width of a box in which the page number is put.
%   \@tocrmarg  : The right margin for all but the last line of the multiple line
%                 entries.  One wants \@tocrmarg > or = \@pnumwidth
%   \@dotsep    : Separation between dots, in mu units.  Should be
%                 \def'd to a number like 1.7 or 2.

\def\@pnumwidth{2.05em}
\def\@tocrmarg{3em}
\def\@dotsep{1}
\setcounter{tocdepth}{4}
%\setcounter{secnumdepth}{3}

\def\l@chapter{\@dottedtocline{1}{0em}{5.1em}}
\def\l@section{\@dottedtocline{2}{0.82in}{2.4em}}
\def\l@subsection{\@dottedtocline{3}{8em}{2.4em}}
\def\l@subsubsection{\@dottedtocline{4}{7.8em}{5.2em}}

\def\l@figure{\@dottedtocline{1}{2em}{2.5em}}
\def\l@table{\@dottedtocline{1}{1.6em}{2.3em}}



% TABLE OF CONTENTS
%
% The \tableofcontents command is defined to create table of contents page.
% Also a command called \moretoc is defined to create second, third, etc.,
% pages for table of contents, if it is necessary.

\def\tableofcontents{
\baselineskip=8mm
%\thispagestyle{empty}
 \begin{center}
 {\large\bf สารบัญ\\}
% {\large\bf LIST OF CONTENTS\\}
 \end{center}
%\ssp
 %{\bf บทที่}\hfill {\bf หน้า}\par\@starttoc{toc}
 \hfill {\bf หน้า}\par\@starttoc{toc}
 %\noindent{\bf บทที่}\hfill {\bf หน้า}\par\@starttoc{toc}
% \noindent{\bf Chapter}\hfill {\bf Page}\par\@starttoc{toc}
  %\addtocontents{toc}{\protect\vspace*{\tsv}}
 %\addcontentsline{toc}{chapter}{\noindent LIST OF CONTENTS}
}

% If "Table of Contents" is more than one page, the following macro commands put headings for the 2nd page
%i.e. \moretoc adds "CHAPTER    PAGE" at the top of the 2nd page and \moretox adds "APPENDIX   PAGE".

%\def\moretoc{\addtocontents{toc}{\newpage\protect\noindent {\bf Chapter}\hfill {\bf Page}\par\protect\vspace*{5pt}}}
\def\moretoc{\addtocontents{toc}{\newpage\protect\noindent \hfill {\bf หน้า}\par\protect\vspace*{5pt}}}
%\def\moretox{\addtocontents{toc}{\newpage\protect\noindent {\bf APPENDIX}\hfill {\bf Page}\par\protect\vspace*{5pt}}}


% LIST OF FIGURES
%
% The \listoffigures command is defined to create list of figures page.
% Also a command called \morelof is defined to create second, third, etc.,
% pages for list of figures, if it is necessary.
% Single-space list of figures is added to the table of contents.

\def\listoffigures{
%\thispagestyle{empty}
\clearpage
 \begin{center}
  {\large\bf สารบัญภาพ\\}
%  {\large\bf LIST OF FIGURES\\}
 \end{center}
 \ssp
\hspace{1cm}{\bf ภาพ} \hfill {\bf หน้า}\vspace{0.5cm}\par\@starttoc{lof}
% \noindent {\bf รูปที่} \hfill {\bf หน้า}\vspace{0.5cm}\par\@starttoc{lof}
% \noindent {\bf Figure} \hfill {\bf Page}\vspace{0.5cm}\par\@starttoc{lof}
 %\ssp
  %\addtocontents{toc}{\protect\vspace*{\tsv}}
 %\addcontentsline{toc}{chapter}{\noindent LIST OF FIGURES}
 }
%\addtocontents{toc}{\newpage\protect\makebox[6.5in][c]{สารบัญภาพ (ต่อ)}\protect\vspace*{5pt}}
\def\morelof{\addtocontents{lof}{\newpage\protect\hspace{1cm} {\bf ภาพ}\hfill{\bf หน้า}\vspace{0.5cm}\par}}


%\def\morelof{\addtocontents{lof}{\newpage\protect\noindent {\bf Figure}\hfill
%{\bf Page}\par}}



% LIST OF TABLES
%
% The \listoftables command is defined to create list of tables page.
% Also a command called \morelot\morelot is defined to create second, third, etc.,
% pages for list of tables, if it is necessary.
% Single-space list of tables is added to the table of contents.

\def\listoftables{
%\thispagestyle{empty}
 \begin{center}
  {\large\bf สารบัญตาราง\\}
%  {\large\bf LIST OF TABLES\\}
 \end{center}
 \ssp
 \hspace{1cm}{\bf ตาราง} \hfill {\bf หน้า}\par\vspace{0.5cm}\@starttoc{lot}
% \noindent {\bf Table} \hfill {\bf Page}\par\vspace{0.5cm}\@starttoc{lot}
 %\ssp
  %\addtocontents{toc}{\protect\vspace*{\tsv}}
 %\addcontentsline{toc}{chapter}{\noindent LIST OF TABLES}
 }
%\addtocontents{toc}{\newpage\protect\makebox[6.5in][c]{สารบัญตาราง (ต่อ)}\protect\vspace*{5pt}}
\def\morelot{\addtocontents{lot}{\newpage\protect\hspace{1cm} {\bf ตาราง}\hfill{\bf หน้า}\par}}
%\def\morelot{\addtocontents{lot}{\newpage\protect\noindent {\bf Table}\hfill
%{\bf Page}\par}}



% LIST OF SYMBOLS
%
% The following section is optional. Only the list of symbols page can be
% created using \listofsymbols command, and it is added to the table of contents.

\def\listofsymbols{
\thispagestyle{empty}
 \begin{center}
 {\large\bf สารบัญสัญลักษณ์\\}
% {\large\bf LIST OF SYMBOLS\\}
 \end{center}
 \ssp
 \hbox{\protect\makebox[1.5cm][c]{สัญลักษณ์}\hspace{3cm}\makebox[10cm][l]{ความหมาย}}
% \hbox{\protect\makebox[1.5cm][c]{Symbol}\hspace{3cm}\makebox[10cm][l]{Definition}}
 %\addtocontents{toc}{\protect\vspace*{\tsv}}
 %\addcontentsline{toc}{chapter}{\noindent LIST OF SYMBOLS}  %OK
}


%    ****************************************
%    *         SYMBOL COMMNAD               *
%    ****************************************

%SymbolDefinition{symbol}{definition} COMMAND is used to add symbols and their relevant definitions. The first argument
%is used for "Symbol" and the second for definition.
%
\newcommand{\SymbolDefinition}[2]{
  \noindent
% \hbox{\protect\makebox[1.5cm][c]{#1}\hspace{1cm}\makebox[10cm][l]{#2}}
  \protect\makebox[1.5cm][c]{#1}\hspace{1cm}\parbox[t]{11cm}{#2}
  \par\vspace{5pt}
 }

%    ****************************************
%    *         FIGURES AND TABLES           *
%    ****************************************
%
% LaTeX makes it posible to float figures and tables, together with
% their headlines and captions, to an appropriate location without
% interrupting the text. Float placement parameters are set below.
% See LaTeX manual for their definition.
% Also, it can be found in 'A Quide to Latex' by Helmut Kopka.

\setcounter{topnumber}{2}    % maximum number of floats that may appear at the top of a page.
\def\topfraction{.7}         % decimal number that specifies what fraction of the page may be used for floats at the top.
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}  % the maximum number of floats that may appear on any page regardless of position.
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2} % the sameas topnumber, but for two-column format.
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}


% To define a float of type TYPE (e.g., TYPE = figure), the document
% style must define the following.
%
% \fps@TYPE   : The default placement specifier for floats of type
%               TYPE.
%
% \ftype@TYPE : The type number for floats of type TYPE.  Each TYPE
%               has associated a unique positive TYPE NUMBER, which
%               is a power of two.  E.g., figures might have type
%               number 1, tables type number 2, programs type number
%               4, etc.
%
% \ext@TYPE   : The file extension indicating the file on which the
%               contents list for float type TYPE is stored.  For
%               example, \ext@figure = 'lof'.
%
% \fnum@TYPE  : A macro to generate the figure number for a caption.
%               For example, \fnum@TYPE == Figure \thefigure.
%
%  The actual float-making environment commands--e.g., the commands
%  \figure and \endfigure--are defined in terms of the macros \@float
%  and \end@float, which are described below.
%
% \@float{TYPE}[PLACEMENT] : Macro to begin a float environment for a
%     single-column float of type TYPE with PLACEMENT as the placement
%     specifier.  The default value of PLACEMENT is defined by
%     \fps@TYPE.  The environment is ended by \end@float.  E.g.,
%     \figure == \@float{figure}, \endfigure == \end@float.


% FIGURE
%
\newcounter{figure}[chapter]
\def\thefigure{\@arabic\c@figure}
\def\thefigure{\thechapter.\@arabic\c@figure}  % numbering for figures, they are numbered for each chapters
\def\fps@figure{tbp}                           % default placement for figures
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{ภาพที่ \thefigure}
%\def\fnum@figure{Figure \thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}


% TABLE
%
\newcounter{table}[chapter]
\def\thetable{\@arabic\c@table}
\def\thetable{\thechapter.\@arabic\c@table}  % numbering for tables, they are numbered for each chapters
\def\fps@table{tbp}                          % default placement for tables
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{ตารางที่ \thetable}
%\def\fnum@table{Table \thetable}
\def\table{\@float{table}}
\renewcommand{\arraystretch}{1.3}  % determines the distance between the rows of table
                                   % it is a multiplying factor
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}



%    ****************************************
%    *               CAPTION                *
%    ****************************************
%
% A figure caption or table title is produced with the \caption command
% inside the figure or table environment. Internally, \caption invokes
% the \@makecaption{NUMBER}{TEXT} command.
% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.
%      NUMBER : Figure or table number--e.g., 'Figure 3.2'
%      TEXT   : The caption text.
%
% After an initial skip of 10 pt,the material is typeset in a temporary box
% and its width is compared to the line width. If the material is longer than one line,
% it will be typeset with indentation. If it fits on one line, then the text is centered.
% This is done with the defined \@makecaption command given below.

\newlength\captionindent \captionindent=.18in

\long\def\@makecaption#1#2{% Add space only if something is ...
   \vskip 10pt                     % 10pt vertical space above the caption
   \setbox\@tempboxa\hbox{#1. #2}%
   \ifdim \wd\@tempboxa >\hsize %#1. #2 \par         % IF longer than one line:
     \ssp \hangindent\captionindent\noindent #1. #2\par\vspace{5pt}
    \else                                             %   ELSE  center.
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}\vspace{5pt}    %inserts ssp
    \fi}

% These two command can be activated to leave more spaces above and below captions.
%\setlength{\abovecaptionskip}{10pt}
%\setlength{\belowcaptionskip}{10pt}



%    ****************************************
%    *             FOOTNOTES                *
%    ****************************************
%
% For IIT style, footnotes are single spaced below the last line of text
% or double-spaced above the top line of the footnote if the page is not full of text.
% Footnotes are numbered within entire thesis.
% \footnoterule is a macro to draw the rule separating the footnotes
% from the text.  It should take zero vertical space, so it needs a
% negative skip to compensate for any positive space taken by the rule.

\def\footnoterule{\kern-3\p@
 \hrule width 1.5in          % 1.5in footnote rule
 \kern 2.6\p@}

%   \@makefntext{NOTE} :
%        Must produce the actual footnote, using \@thefnmark as the mark
%        of the footnote and NOTE as the text.  It is called when
%        effectively inside a \parbox of width \columnwidth (i.e., with
%        \hsize = \columnwidth).
%
%        The following macro indents all lines of the footnote 0.5in,
%        and indents the first line of a new paragraph by 1em.  To
%        change these dimensions, just substitute the desired value for
%        '0.5in' [in both places] or '1em'. A footnote is single-space typed.

\setlength{\footnotesep}{20pt}      % A double-space is inserted between two footnotes.
\long\def\@makefntext#1{\parindent 1em\noindent
           \hbox to 0.5in{\hss$^{\@thefnmark}$}{#1}}  %0.5in indentation for IIT style.
% you can adjust the size of footnote by inserting "\[size]" before the sign, {#1}, above.


%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
% The \thebibliography environment executes the following commands:
%
%  \def\newblock{\hskip .11em plus .33em minus .07em} --
%      Defines the `closed' format, where the blocks (major units of
%      information) of an entry run together.
%
%  \sloppy  -- Used because it's rather hard to do line breaks in
%      bibliographies,
%
%  \sfcode`\.=1000\relax --
%      Causes a `.' (period) not toproduce an end-of-sentence space.

\def\thebibliography#1{
%\newpage
%\thispagestyle{empty}
%  \clearpage
%  \vspace*{3in}
%  \noindent
%  \begin{center}
%    {\large\bf บรรณานุกรม}
%    {\large\bf REFERENCES}
%  \end{center}
%   \addtocontents{toc}{\protect\vspace*{\tsv}}
%  \addcontentsline{toc}{chapter}{\protect\noindent\bf บรรณานุกรม}
%  \addcontentsline{toc}{chapter}{\protect\noindent\bf REFERENCES}
  \clearpage

\newpage
 \thispagestyle{empty}

 \center{\large\bf บรรณานุกรม}
 \addcontentsline{toc}{chapter}{\protect\noindent\bf บรรณานุกรม}
% \center{\large\bf REFERENCES}
 \vspace{10pt}
 \list {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}
 \leftmargin\labelwidth\advance\leftmargin\labelsep
 \addtolength{\leftmargin}{1.5cm}  % puts the second line indent.
 \setlength{\itemindent}{-1.5cm}   % puts the second line indent (used with previous line).
 \usecounter{enumi}
 %\setlength{\baselineskip}{0.8cm}
 }
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist



%    ****************************************
%    *              EQUATION                *
%    ****************************************
%
% EQUATION and EQNARRAY
% Equations are in each chapter.
\@addtoreset{equation}{chapter}
\def\theequation{\thechapter.\arabic{equation}}




%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************

% CHAPTER
%
\renewcommand{\chapter}[1]{%
  \clearpage
  \thispagestyle{empty}
  \noindent
  \refstepcounter{chapter}
  \begin{center}
  \vspace{-1.55cm}
	 	{\large\bf บทที่ \hspace{3mm}\arabic{chapter}\\}
%    {\large\bf CHAPTER\hspace{3mm}\Roman{chapter}\\}                             % Make Roman number of the Chapters head
    \vspace{0.7cm}
     {\large\bf\uppercase{#1}}                                                   % Formatting the Chapters
     \vspace{1.0cm}
     \end{center}
  %\addtocontents{toc}{\protect\vspace*{10pt}}
  \addtocontents{toc}{\protect\vspace*{0.75cm}}
  \addcontentsline{toc}{chapter}{\protect
  \makebox[0.5in][r]{\bf บทที่ \arabic{chapter}}\hspace*{0.6cm}{\bf\uppercase{#1}}}
%  \addcontentsline{toc}{chapter}{\protect
%  \makebox[0.5in][r]{\bf\Roman{chapter}}\hspace*{0.7cm}{\bf\uppercase{#1}}}      % Make Roman number of the Chapters in contents
  \addtocontents{toc}{\protect\vspace*{0pt}}
}


% SECTION
%
% Section names are bold face typed using \bf.
\renewcommand{\section}[1]{%
  \refstepcounter{section}
  \noindent
   \setbox\@tempboxa\hbox{\bf\thesection\space\space{#1}}%
   \ifdim \wd\@tempboxa >\hsize         % IF it is longer than one line, use indentation
    \vskip 1pt
    \noindent \hangindent 0.36in
     {\bf\thesection\space\space{#1}\par} \dsp
     \else                              % ELSE  center.
     \vspace{-0.3cm}\\
      {\bf\thesection\space\space{#1}}
      \vspace{0.2cm}
   \fi
  \addtocontents{toc}{\protect\vspace{0pt}}
  \addcontentsline{toc}{section}{\protect
  \makebox[0.1in][r]{\thesection} \hspace*{3pt}#1}
%  \thesection\hspace*{13pt}#1}
  \vspace{-2.5mm}
}


% SUBSECTION
%
% Subsection names are typed italic bold, and they are not included in tha table of contents.
\renewcommand{\subsection}[1]{%
  \refstepcounter{subsection}
 % \vspace{0.5cm}
  \noindent
  {{\textbf{\thesubsection\space\space{#1}}}}
  % \addtocontents{toc}{\protect\vspace{-10pt}}   % activate to put in toc
  % \addcontentsline{toc}{subsection}{\protect    % activate to put in toc
   %    \makebox[0.3in][r]{\thesubsection.} \hspace*{3pt}#1}    % activate to put in toc
   \vspace{-1.0mm}
    }


% SUBSUBSECTION
% Subsubsection names are typed italic,and they are not included in the table of contents.
\renewcommand{\subsubsection}[1]{%
  \refstepcounter{subsubsection}
  \noindent
   {{\thesubsubsection\space\space{#1}}}
 }



%    ****************************************
%    *              APPENDIX                *
%    ****************************************
% \appendix command inserts APPENDIX word into table of contents,
% and sets the appendix counter.
% \Appendix{title} command creates individual  Appendices, and puts
% into table of contents.

\def\appendix{\par
    \setcounter{chapter}{0} %\refstepcounter{chapter}
    \clearpage
    \thispagestyle{empty}
    \vspace*{3in}
    \noindent
    \begin{center}
        {\large\bf ภาคผนวก}
%        {\large\bf APPENDIX}
    \end{center}
    \addtocontents{toc}{\protect\vspace*{\tsv}}
    \addcontentsline{toc}{chapter}{\vspace{20pt}\protect\noindent {\bf ภาคผนวก}
    \vspace{-0.7cm}}
%    \addcontentsline{toc}{chapter}{\vspace{20pt}\protect\noindent {\bf APPENDIX}   \vspace{-0.7cm}}
    \clearpage
    \renewcommand{\thechapter}{\Alph{chapter}}
    %\addtocontents{toc}{\protect\vspace*{10pt}}
}

\newcommand{\Appendix}[1]{%
\newpage
\thispagestyle{empty}
  \noindent
  \refstepcounter{section}
   \vspace{-2cm}
  \begin{flushleft}
    \noindent
    \begin{tabular}{lp{10cm}}
    \hspace{-2mm}{\large\bf ภาคผนวก\hspace{3mm}\thesection} & \hspace{0pt}{\protect\vspace{10pt}\large\bf\uppercase{#1}}
%    \hspace{-2mm}{\large\bf APPENDIX\hspace{3mm}\thechapter} & \hspace{0pt}{\protect%\vspace{10pt}\large\bf\uppercase{#1}}
    \end{tabular}
  \end{flushleft}
  \addtocontents{toc}{\protect\vspace*{0pt}}
 \addcontentsline{toc}{chapter}{\protect
 \makebox[0.5in][r]{\thesection} \hspace*{1.1cm}\uppercase{#1}}
    
}
%----------------------------------------------------

%    ****************************************
%    *      Creating Biography Pages        *
%    ****************************************
%
\def\makebiography{
%\newpage
%\thispagestyle{empty}
%  \clearpage
%  \vspace*{3in}
%  \noindent
%  \begin{center}
%    {\large\bf ประวัติผู้ศึกษาวิจัย}
%    {\large\bf BIOGRAPHY}
%  \end{center}
%    \addtocontents{toc}{\protect\vspace*{\tsv}}
%    \addcontentsline{toc}{chapter}{\noindent {\bf ประวัติผู้ศึกษาวิจัย}}
%    \addcontentsline{toc}{chapter}{\noindent {\bf BIOGRAPHY}}
  \clearpage

\newpage
 \thispagestyle{empty}
    \begin{center}
    {\large\bf ประวัติผู้ศึกษาวิจัย}
%    {\large\bf BIOGRAPHY}
    \end{center}
    \addtocontents{toc}{\protect\vspace*{\tsv}}
    \addcontentsline{toc}{chapter}{\noindent {\bf ประวัติผู้ศึกษาวิจัย}}
    \vspace{3mm}
    \begin{flushleft}
    \begin{figure}
    \centering
    \includegraphics[width=0.3\textwidth]{\@FigName}
    \end{figure}
%    \vspace{3mm}
    \begin{tabular}{lp{10cm}}
     {\bf ชื่อ-นามสกุล} \hspace{1.7cm}      & \@nameprefix  \@author \vspace{7pt}\\
     {\bf วันเดือนปีเกิด}                    &   \@dateofbirth \vspace{7pt}\\
     {\bf สถานที่เกิด}                   &   \@placeofbirth \vspace{7pt}\\
     {\bf ที่อยู่ปัจจุบัน}                          &   \@address \vspace{7pt}\\
     {\bf เบอร์ติดต่อ}                          &   \@myphone \vspace{7pt}\\
     {\bf อีเมลล์}                          &   \@myemail \vspace{7pt}\\     
%     {\bf ตำแหน่ง}                         &   \@position \vspace{7pt}\\
%     {\bf สถานที่ทำงาน}                   &   \@workplace \vspace{7pt}\\

%     {\bf Name-Surname} \hspace{1.7cm}      &   \@author \vspace{7pt}\\
%     {\bf Date of Birth}                    &   \@dateofbirth \vspace{7pt}\\
%     {\bf Place of Birth}                   &   \@placeofbirth \vspace{7pt}\\
%     {\bf Address}                          &   \@address \vspace{7pt}\\
%     {\bf Position}                         &   \@position \vspace{7pt}\\
%     {\bf Work Place}                   &   \@workplace \vspace{7pt}\\
    \end{tabular}
    \vspace{-0.7cm}
    \end{flushleft}
}

\def\makeWorkExpr{
    \begin{flushleft}
    \begin{tabular}{lp{8.5cm}}
    {\bf ประสบการณ์การทำงาน}                  &   \vspace{7pt}\\
%    {\bf Work Experiences}                  &   \vspace{7pt}\\
    \vspace{4pt}   &   \vspace{4pt} \\
    \@WorkExpr                                                 % Make work experiences block
    \end{tabular}
    \end{flushleft}
}

\newcommand{\workexpr}[2]{                                     % adjust work experiences block
 \hspace{0.85cm}{#1}\hspace{2.2cm} &{#2} \vspace{7pt}\\
}

\def\makeEduBG{
    \begin{flushleft}
    \begin{tabular}{lp{8.5cm}c}
    %\renewcommand{\arraystretch}{2}
    {\bf ประวัติการศึกษา}              &   & \vspace{7pt}\\
%    {\bf Education Background}              &   \vspace{7pt}\\
%       &   &  \\
    \@EduBG                                                 % Make education background block
    \end{tabular}
    \end{flushleft}
}

\newcommand{\authorEduBG}[3]{                               % adjust education background block
 - {#1} & {#2} & จบปี พ.ศ. {#3}\vspace{7pt}\\
}

\def\makePublication{
    \begin{flushleft}
    \begin{tabular}{lp{8.5cm}}
    %\renewcommand{\arraystretch}{2}
    {\bf ผลงานตีพิมพ์}                            &   \vspace{7pt}\\
    {\bf Publications}                            &   \vspace{7pt}\\
        \vspace{4pt}   &   \vspace{4pt} \\
      %  \makebox[4cm][c]{Articles}                     &   \vspace{-7pt}\\
    \@Publication                                                % Make education background block
    \end{tabular}
    \end{flushleft}
}

\newcommand{\publication}[2]{                               % adjust education background block
 \hspace{1.3cm}{[#1]}\hspace{3.0cm} & {#2} \vspace{7pt}\\
}

\def\makePresentation{
    \begin{flushleft}
    \begin{tabular}{lp{8.5cm}}
    %\renewcommand{\arraystretch}{2}
    {\bf การนำเสนองานวิจัย}                            &   \vspace{7pt}\\
    {\bf Presentations}                            &   \vspace{7pt}\\
         \vspace{4pt}   &   \vspace{4pt} \\
      %  \makebox[4cm][c]{Articles}                     &   \vspace{-7pt}\\
    \@Presentation                                                % Make education background block
    \end{tabular}
    \end{flushleft}
}

\newcommand{\presentation}[2]{                               % adjust education background block
 \hspace{1.3cm}{[#1]}\hspace{3.0cm} & {#2} \vspace{7pt}\\
}

% Adding PUBLICATION PAPERS page
\def\MakePublicationPapersPage{
\newpage
\thispagestyle{empty}
  \clearpage
  \vspace*{3in}
  \noindent
  \begin{center}
    {\large\bf ผลงานวิจัยที่ได้รับการตีพิมพ์}
    {\large\bf PUBLICATION PAPERS}
  \end{center}
  % Adding PUBLICATION PAPERS to List of contents
 \addtocontents{toc}{\protect\vspace*{\tsv}}
 \addcontentsline{toc}{chapter}{\noindent {\bf ผลงานวิจัยที่ได้รับการตีพิมพ์}}
 \addcontentsline{toc}{chapter}{\noindent {\bf PUBLICATION PAPERS}}
}
%============================================================



%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************
%
% The \ps@... command defines the macros \@oddhead, \@oddfoot,
% \@evenhead, and \@evenfoot to define the running heads and
% feet---e.g., \@oddhead is the macro to produce the contents of the
% heading box for odd-numbered pages.  It is called inside an \hbox of
% width \textwidth.
%
% To make headings determined by the sectioning commands, the page style
% defines the commands \chaptermark, \sectionmark, ... , where
% \chaptermark{TEXT} is called by \chapter to set a mark, and so on.
% The \...mark commands and the \...head macros are defined with the
% help of the following macros.  (All the \...mark commands should be
% initialized to no-ops.)
%
% MARKING CONVENTIONS:
% LaTeX extends TeX's \mark facility by producing two kinds of marks
% a 'left' and a 'right' mark, using the following commands:
%     \markboth{LEFT}{RIGHT} : Adds both marks.
%     \markright{RIGHT}      : Adds a 'right' mark.
%     \leftmark  : Used in the \@oddhead, \@oddfoot, \@evenhead or
%                  \@evenfoot macro, gets the current 'left' mark.
%                  Works like TeX's \botmark command.
%     \rightmark : Used in the \@oddhead, \@oddfoot, \@evenhead or
%                  \@evenfoot macro, gets the current 'right' mark.
%                  Works like TeX's \firstmark command.
% The marking commands work reasonably well for right marks 'numbered
% within' left marks--e.g., the left mark is changed by a \chapter
% command and the right mark is changed by a \section command.  However,
% it does produce somewhat anomalous results if two \bothmark's occur on
% the same page.
%
%
% Commands like \tableofcontents that should set the marks in some
% page styles use a \@mkboth command, which is \let by the pagestyle
% command (\ps@...)  to \markboth for setting the heading or
% \@gobbletwo to do nothing.

\mark{{}{}}   % Initializes TeX's marks

\if@twoside \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@evenhead{\rm \thepage\hfil \sl
\leftmark}\def\@oddhead{\hbox{}\sl \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markboth {\uppercase{\ifnum
\c@secnumdepth
>\m@ne
 \@chapapp\ \thechapter. \ \fi ##1}}{}}\def\sectionmark##1{\markright
{\uppercase{\ifnum \c@secnumdepth >\z@
 \thesection. \ \fi ##1}}}}
\else \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@oddhead{\hbox {}\sl \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markright {\uppercase{\ifnum
\c@secnumdepth
>\m@ne
 \@chapapp\ \thechapter. \ \fi ##1}}}}
\fi

% Definition of 'myheadings' page style.
%
\def\ps@myheadings{\let\@mkboth\@gobbletwo
\def\@oddhead{\hbox{}\sl\rightmark \hfil
\rm\thepage}
\def\@oddfoot{}
\def\@evenhead{\rm \thepage\hfil\sl\leftmark\hbox
{}}
\def\@evenfoot{}\def\chaptermark##1{}\def\sectionmark##1{}%
\def\subsectionmark##1{}}

% Definition of 'plain' page style.
%
\def\ps@plain{\let\@mkboth\markboth
\def\@oddfoot{\hfil\rmfamily\thepage\hfil}
\def\@evenfoot{\hfil\rmfamily\thepage\hfil}
\def\@oddhead{}         % heading (right)
\def\@evenhead{}        % heading (left)
}



%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations

\ps@plain                   % 'plain' page style
\pagenumbering{arabic}      % Arabic page numbers
\onecolumn
\if@twoside\else\raggedbottom\fi % Ragged bottom unless twoside
                                 % option.
