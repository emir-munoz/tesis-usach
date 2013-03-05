\NeedsTeXFormat{LaTeX2e}
% Estilo original para tesis de Victor Munoz
% Agradecimiento por aportes a:
% Rodrigo Campos
% Hugo Meneses
\ProvidesClass{tesis}[2012/08/01 v1.2 Estilo para tesis (Emir Munoz)]
\newif\ifkeys\keysfalse
\newif\iftxfonts\txfontsfalse
\newif\ifdosguias\dosguiasfalse
\newif\iflogo\logofalse
\newif\ifpropuesta\propuestafalse
\newif\ifdoctorado\doctoradofalse
\newif\ifmagister\magisterfalse
\DeclareOption{keys}{\keystrue}
\DeclareOption{doctorado}{\doctoradotrue}
\DeclareOption{magister}{\magistertrue}
\DeclareOption{txfonts}{\txfontstrue}
\DeclareOption{dosguias}{\dosguiastrue}
\DeclareOption{logo}{\logotrue}
\DeclareOption{nologo}{\logofalse}
\DeclareOption{propuesta}{\propuestatrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[oneside,12pt,a4paper,fullpage]{book}

%%   Modificado desde `book.cls'.
%%
%%   Modificado para que 
%%   1) El default sea `oneside,12pt'
%%   2) Los nombres de secciones aparezcan en castellano
%%   3) La fecha aparezca en castellano
%%   4) Bibliografia aparezca bien acentuada en heading
%%   5) Los headings contengan el numero de pagina y capitulo.
%%   6) Los margenes sean: Superior = 3cm, Inferior = 3cm, Izquierdo = 4cm, Derecho = 2,5cm.
%%   7) El argumento opcional de \chapter vaya a Indice.
%%   8) Las Referencias aparezcan en Indice.
%%   9) Indice General -> Indice
%%   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% tesis.cls %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------Archivos suplementarios
\RequirePackage[spanish]{babel}
\RequirePackage[utf8x]{inputenc}
% \RequirePackage[latin1]{inputenc}
% \RequirePackage[T1]{fontenc}
% \RequirePackage{lmodern}
\ifkeys\RequirePackage[notref,notcite]{showkeys}\fi
%--------Configuracion de header y footer
\RequirePackage{fancybox}
\RequirePackage{fancyhdr}
\RequirePackage{float}
%--------Simbolos y fuentes
\RequirePackage{amstext}
\RequirePackage{amssymb,latexsym}
\RequirePackage{amsfonts}
\RequirePackage{stmaryrd}
\RequirePackage{amssymb,latexsym}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{marvosym}
\RequirePackage{textcomp}
\RequirePackage{mathcomp}
\RequirePackage{marvosym} %Simbolos de caritas
\RequirePackage{upgreek}
\iftxfonts\RequirePackage{txfonts}\fi
%-------Entornos, figuras
\RequirePackage{verbatim}
\RequirePackage{fancyvrb}
\RequirePackage{enumerate}
%-------Imagenes GNU Plot
\RequirePackage{graphicx}
\RequirePackage{epsf}
\RequirePackage{psfrag}
\RequirePackage{epic,eepic} % para imagenes
\RequirePackage{subfigure}
%\RequirePackage{color}
%-------Referencias
\RequirePackage{hyperref}
\RequirePackage{url} %citacion de URL
\RequirePackage[all]{hypcap}
%--------Tablas
%\RequirePackage{colortbl} % Darle color a las tablas
\RequirePackage{multirow} % Multiples filas en Tablas
\RequirePackage{array}
\RequirePackage{caption}
\captionsetup[table]{position=top,belowskip=4pt,aboveskip=4pt}
\RequirePackage{longtable} % Para cortar tablas grandes
\RequirePackage{lscape}
%--------Apendice y tabla de contenidos
\RequirePackage{appendix}
\RequirePackage[nottoc]{tocbibind}
%--------Algoritmos
\RequirePackage[ruled,algochapter,linesnumbered]{algorithm2e}
\renewcommand{\algorithmcfname}{Algoritmo}%
\RequirePackage{algorithmic}
\setlength{\algomargin}{1em}
\renewcommand{\algorithmicrequire}{\textbf{Entrada:}}
\renewcommand{\algorithmicensure}{\textbf{Salida:}}
\renewcommand{\algorithmiccomment}[1]{//#1}
%--------Configuracion indice de algoritmos
\renewcommand{\listofalgorithms}{
    \begingroup
    \tocfile{\'Indice de Algoritmos}{loa}
    \endgroup
}
%--------Package para la numeracion
% by Emir
\RequirePackage{thesis_em}
%--------Listing de código
\RequirePackage{listings} % For insert code in the paper
\lstset{ 
%    language=[Visual]C++,
    frame=Ltb,
    framerule=0pt,
    aboveskip=0.2cm,%0.5cm
    framextopmargin=1pt, %3pt
    framexbottommargin=1pt, %4pt
    framexleftmargin=0cm,
    framesep=0pt,
    rulesep=.4pt,
    backgroundcolor=\color{gray97},
    rulesepcolor=\color{black},
    %
    stringstyle=\ttfamily,
    showstringspaces=false,
    basicstyle=\scriptsize\ttfamily, %\small \scriptsize
    commentstyle=\color{gray45},
    keywordstyle=\bfseries,
    %
    numbers=left,
    numbersep=4pt,%15pt
    numberstyle=\tiny,
    numberfirstline=false,
    breaklines=true,
    %
    tabsize=4,
    upquote=true,
    extendedchars=true,
    morecomment=[s]{/**\<}{*/},
    morecomment=[s]{/*}{*/},
%    morekeywords={¿,?},
}

\usepackage{color}
\definecolor{gray97}{gray}{.97}
\definecolor{gray75}{gray}{.75}
\definecolor{gray45}{gray}{.45}
% minimizar fragmentado de listados
\lstnewenvironment{listing}[1][]
    {\lstset{#1}\pagebreak[0]}
    {\pagebreak[0]}
\lstloadlanguages
{
    %[Visual]Basic
    %Pascal
    C,
    C++,
    XML,
    HTML,
    Java
}
\lstdefinestyle{consola}
{
    basicstyle=\scriptsize\bf\ttfamily,
    backgroundcolor=\color{gray75},
}
%--------Bibliografia
%\RequirePackage{apacite}
\RequirePackage{natbib}
\RequirePackage{tocbibind} % Agregar referencias al índice
\RequirePackage[fixlanguage]{babelbib}
\selectbiblanguage{spanish}
\bibpunct{(}{)}{;}{}{,}{,}
\setcounter{secnumdepth}{3} %Mostrar numeración en las subsubsecciones
\setcounter{tocdepth}{3} %Mostrar las subsubsecciones en el índice
%--------Teoremas, definiciones, ejemplos, lemas, etc
\newtheoremstyle{teorema}{\topsep}{\topsep}%
    {\normalfont} % Body font
    {} % Indent amount (empty = no indent, \parindent = para indent)
    {\bfseries} % Theorem head font
    {} % Punctuation after theorem head
    { } % Space after theorem head (\newline = linebreak)
    {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{teorema}
\newtheorem{teorema}{Teorema}[chapter]

\newtheoremstyle{ejemplo}{\topsep}{\topsep}%
    {\normalfont} % Body font
    {} % Indent amount (empty = no indent, \parindent = para indent)
    {\bfseries} % Theorem head font
    {} % Punctuation after theorem head
    { } % Space after theorem head (\newline = linebreak)
    {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{ejemplo}
\newtheorem{ejemplo}{Caso}[chapter]%Ejemplo

\newtheoremstyle{definicion}{\topsep}{\topsep}%
    {\normalfont} % Body font
    {} % Indent amount (empty = no indent, \parindent = para indent)
    {\bfseries} % Theorem head font
    {} % Punctuation after theorem head
    { } % Space after theorem head (\newline = linebreak)
    {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{definicion}
\newtheorem{definicion}{Definici\'on}[chapter]

\newtheoremstyle{lema}{\topsep}{\topsep}%
    {\normalfont} % Body font
    {} % Indent amount (empty = no indent, \parindent = para indent)
    {\bfseries} % Theorem head font
    {} % Punctuation after theorem head
    { } % Space after theorem head (\newline = linebreak)
    {\thmname{#1}\thmnumber{ #2}\thmnote{ #3}} % Thm head spec
\theoremstyle{lema}
\newtheorem{lema}{Lema}[chapter]

\newenvironment{prueba}[1][Demostraci\'on]
{
    \begin{trivlist}
    \item[\hskip \labelsep {\bfseries #1}]
}{\end{trivlist}}

\renewcommand{\qed}
{   
    \nobreak \ifvmode \relax \else
    \ifdim\lastskip<1.5em \hskip-\lastskip
    \hskip1.5em plus0em minus0.5em \fi \nobreak
    \vrule height0.75em width0.5em depth0.25em\fi
}


%================================================================
% Notaciones Generales
%================================================================
\newcommand{\textrev}[1]{\textbf{#1}}
\newcommand{\emphrule}[1]{\emph{#1}}
\newcommand{\normlen}[1]{\ensuremath{\left |#1\right |}}
%----------------------------------------------------------------
\newcommand\ie{i.e.\@\xspace}
\newcommand\eg{e.g.\@\xspace}
\newcommand\cf{cf.\@\xspace}
\newcommand\ds{\slash\hspace*{-.6ex}\slash}
\newcommand{\bra}[1]{[\hspace{-.4ex}[#1]\hspace{-.4ex}]}
%----------------------------------------------------------------
% Notaciones para mi tesis
\newcommand{\keyclass}[4][*]{\ensuremath{\mathcal{K}^{\scriptscriptstyle#2}_{\scriptscriptstyle #3,#4^{#1}}}}
\newcommand{\keyclassl}[4][+]{\ensuremath{\mathcal{K}(PL^{\{#2\}}, PL^{\{#3\}}, PL^{\{#4\}}_{#1})}}
\newcommand{\labels}{\ensuremath{\mathcal L}}
\newcommand{\anylabel}{\ensuremath{\ell}}
\newcommand{\fixedlabel}{\ensuremath{\anylabel_0}}
\newcommand{\zerolabel}{\ensuremath{\varepsilon}}
\newcommand{\wildcard}{\ensuremath{\_^*}}
\newcommand{\dipath}{\ensuremath{D}}
\newcommand{\pin}{\ensuremath{\lesssim}}
\newcommand{\pathexp}[2]{\ensuremath{#1}\textlbrackdbl\ensuremath{{#2}}\textrbrackdbl}
%================================================================
% Definición del estilo del header y footer
%================================================================
\lhead{\chaptername \thechapter. \chaptermark}
\chead{}
\rhead{\thepage}
\cfoot{}
\fancyheadoffset[LE,RO]{0cm}
% Cambios al default de spanish
\deactivatetilden
\decimalpoint
% Headings
\markboth{}{}
% Renombre de los titulos por defecto
\addto\captionsspanish
{
    \def\bibname{Referencias}
    \def\contentsname{\'Indice de Contenidos}
    \def\listfigurename{\'Indice de Figuras}
    \def\listtablename{\'Indice de Tablas}
    \def\listalgorithmname{\'Indice de Algoritmos}
    \def\appendixname{Ap\'endice}
    \def\tablename{TABLA}
    \def\figurename{FIGURA}
    \def\chaptername{Cap\'itulo}
}
\renewcommand{\appendixname}{Apéndices}
\renewcommand{\appendixtocname}{Apéndices}
\renewcommand{\appendixpagename}{Apéndices}
%--------Header de los capitulos
% by Emir
\usepackage[compact]{titlesec}
\titleformat{\chapter}
{\bfseries\Large\vspace*{-2.0cm}} %Formato título
{ % Contenido de la etiqueta
    \filright
    \Large\MakeUppercase\chaptertitlename\ \thechapter.\ 
} %Contenido de la etiqueta
{0pt} % espacio mínimo entre etiqueta y cuerpo
{\filright\MakeUppercase} %código que precede al cuerpo del título
[\vspace{10pt}] %1,5

\titleformat{\section}
{\bfseries\large\vspace{4pt}}
{\large\MakeUppercase\thesection\ \vspace{3pt} } % 3 espacios luego del titulo de una seccion
{0pt}
{\MakeUppercase}
[\vspace*{0.5cm}]

\titleformat{\subsection}
{\bfseries\normalsize\vspace{4pt}}
{\normalsize\thesubsection\ }
{0pt}
{\vspace*{0.5cm}}

\titleformat{\subsubsection}
{\itshape\normalsize\vspace{1.0cm}}
{\itshape\thesubsubsection\ }
{0pt}
{\vspace*{0.5cm}\itshape}

\titlespacing*{\chapter} {0pt}{80pt}{60pt} 
\titlespacing*{\section} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection} {0pt}{6.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}
\titlespacing*{\paragraph} {0pt}{3.25ex plus 1ex minus .2ex}{1em}
\titlespacing*{\subparagraph} {\parindent}{3.25ex plus 1ex minus .2ex}{1em}

%--------Margenes segun reglamento: izq=inf=3cm y sup=der=2cm
\RequirePackage[a4paper,nohead,nofoot]{geometry}
% Estos margenes estan considerando la diferencia entre
% los formatos A4 y Letter (carta)
\geometry{top=1.77cm, bottom=3.67cm, left=2.15cm, right=0.92cm}
%--------Otros margenes
\setlength{\parindent}{2cm}%2cm Tabulación
\setlength{\headsep}{20pt}
\setlength{\voffset}{0.0cm}
\setlength{\hoffset}{0.0cm}
\setlength{\footskip}{20pt}
%--------Evitar que corte las palabras al final
% by Emir
\setlength{\pretolerance}{2000}
\setlength{\tolerance}{3000}
%--------pagina en blanco
\newcommand{\paginaenblanco}{\newpage{\pagestyle{empty}\cleardoublepage}}
%--------Referenciacion en la forma: 1-5
\newcommand{\lref}[2]{\ref{#1}--\ref{#2}}
%--------Referenciacion en la forma:  (1)
\newcommand{\cref}[1]{(\ref{#1})}
%--------Referenciacion en la forma:  (1)-(5)
\newcommand{\clref}[2]{(\ref{#1})--(\ref{#2})}
%--------Otras referencias
\newcommand{\Ref}[1]{Ref.\ \cite{#1}}
\newcommand{\dRef}[2]{Refs.\ \cite{#1},\cite{#2}}
%================================================================
% Comandos matematicos
%================================================================
% Parte real e imaginaria
\newcommand{\Real}{\mbox{Re }}
\newcommand{\Imag}{\mbox{Im }}
% Mayor/menor o igual y aproximado
\newfont{\msamfnt}{msam10}
\newcommand{\msam}[1]{\mbox{ \msamfnt #1}\ }
\newcommand{\simgeq}{\msam \&}
\newcommand{\simleq}{\msam .}
%--------Abreviaciones
\newcommand{\Capt}[1]{Cap.\ \ref{#1}}
\newcommand{\Fig}[1]{Fig.\ \ref{#1}}
\newcommand{\Sec}[1]{Sec.\ \ref{#1}}
%--------Otros
\newcommand{\salto}{\vspace{.5cm}}

%================================================================
% Caratula y Portada
%================================================================
%--------Comandos
\def\@title{} \def\@autor{} \def\@fecha{} \def\@profesorguia{} \def\@profesorcoguia{}
\def\@ciudad{} \def\@pais{} \def\@run{} \def\@telefono{} \def\@email{} \def\@annoingreso{}
\newcommand{\keywords}[1]{\def\keywords{#1}}
\def\titulo#1{\gdef\@title{\begin{center}{\LARGE\bf#1}%
\end{center}}\gdef\@titleMay{\begin{center}{\LARGE\bf\MakeUppercase{#1}}%
\end{center}}}
\def\autor#1{\gdef\@autor{{\bfseries #1}}\gdef\@autorn{#1}}
\def\fecha#1#2#3#4{\gdef\@diasemana{#1}\gdef\@diaexamen{#2}\gdef\@mesexamen{#3}%
\gdef\@annoexamen{#4}\gdef\@fecha{#3, #4}}
\def\profesorguia#1{\gdef\@profesorguia{#1}}
\def\profesorcoguia#1{\gdef\@profesorcoguia{#1}}
\def\regular#1{\gdef\@regular{#1}}
\def\externo#1{\gdef\@externo{#1}}
\def\presidente#1{\gdef\@presidente{#1}}
\def\ciudad#1{\gdef\@ciudad{#1}}
\def\pais#1{\gdef\@pais{#1}}
\def\run#1{\gdef\@run{#1}}
\def\telefono#1{\gdef\@telefono{#1}}
\def\email#1{\gdef\@email{#1}}
\def\annoingreso#1{\gdef\@annoingreso{#1}}
%--------Información del documento PDF
\hypersetup
{
    bookmarksopen, bookmarksnumbered, pdfdisplaydoctitle=true,
    pdfborder=false,
    pdftitle=\@title,
    pdfauthor=\@autor,
    pdfsubject=Trabajo de T\'itulo,
    pdfkeywords=,
    pdfcreator=Universidad de Santiago de Chile,
    pdfproducer=Emir Mu\~noz,
    colorlinks=true,
    % linkcolor=red,
    % citecolor=green,
    % filecolor=magenta,
    % urlcolor=cyan,
    linkcolor=black,
    citecolor=black,
    filecolor=black,
    urlcolor=black,
    linkbordercolor={1 0 0},
    citebordercolor={0 1 0}
}

\newsavebox{\GradoTesis}
\newsavebox{\Gradotesis}
\newsavebox{\GradoOtorgado}
\newsavebox{\GradoOtorgadoTapa}

\ifdoctorado\savebox{\GradoTesis}{DOCTORADO}
            \savebox{\Gradotesis}{Doctorado}
            \savebox{\GradoOtorgado}{Doctor en Ciencias de la Computaci\'on}
            \savebox{\GradoOtorgadoTapa}{\large Doctor en Ciencias de la Computaci\'on}
\else\savebox{\GradoTesis}{MAG\'ISTER}
       \savebox{\Gradotesis}{Mag\'{\i}ster}
       \savebox{\GradoOtorgado}{Mag\'{\i}ster en Ingenier\'ia Inform\'atica}
       \savebox{\GradoOtorgadoTapa}{\large Mag\'{\i}ster en Ingenier\'ia Inform\'atica} %\large
\fi

%-------Cubierta
% by Emir
\newcommand{\makecubierta}
{
\iflogo
    \vspace*{-0.5cm}
    \begin{picture}(18,4)(0,40)
        \put(380,-7){\includegraphics[scale=.25]{./images/LogoUsach.pdf}}
    \end{picture}
\fi

\sloppy
\thispagestyle{empty}
\vspace*{-1.6cm}

\begin{center}
    {\bf \mbox{\large UNIVERSIDAD DE SANTIAGO DE CHILE}}\\
    {\bf \mbox{FACULTAD DE INGENIER\'IA}}\\
    {\bf \mbox{DEPARTAMENTO DE INGENIER\'IA INFORM\'ATICA}}\\
\end{center}

\ifpropuesta % si se trata de la propuesta
    \vspace*{5cm}
    \@titleMay\par
    \vspace{1cm}
    \begin{center}
    \large
    \ifdoctorado
        Propuesta de Trabajo de T\'{i}tulo para Doctor en Ingenier\'{i}a Inform\'{a}tica
    \fi
    \ifmagister
        Propuesta de Trabajo de T\'{i}tulo para Mag\'{i}ster en Ingenier\'{i}a Inform\'{a}tica
    \fi
    \end{center}
    \vspace{1.5cm}
    \begin{flushright}
        \begin{tabular}[t]{l l}
            Nombre: & \@autorn \\
            R.U.N.: & \@run \\
            A\~no Ingreso: & \@annoingreso \\
            Tel\'efono: & \@telefono \\
            E-mail: & \@email \\
            \ifdosguias Profesores: \else Profesor: \fi &
            \ifdosguias
                {\normalfont \@profesorguia} \\ 
                & {\normalfont \@profesorcoguia} \\
            \else
                \@profesorguia \\
            \fi
        \end{tabular}
    \end{flushright}
    \begin{center}
        \vspace{1.5cm}
        \@diasemana, \@diaexamen\ de \@mesexamen\ de \@annoexamen
    \end{center}
\else % si se trata del documento final
    \vspace*{5cm}
    \@titleMay\par
    \vspace{1cm}
    {
        \large
        \begin{center}
        \vspace*{1cm}
        \iflogo
            {\bf\MakeUppercase{\@autor}}\\[1cm]
        \else
            {\bf\MakeUppercase{\@autor}}\\[1.5cm]
        \fi

        %Datos profesor(es)
        \vspace*{1.6cm}
        \begin{flushleft}
        \normalsize
        \hspace{7.5cm} PROFESOR GU\'IA: {\MakeUppercase{\@profesorguia}}\\
        \ifdosguias
            \hspace{7.5cm} PROFESOR CO-GU\'IA: {\MakeUppercase{\@profesorcoguia}}\\
        \fi
        \vspace{1cm}
        \hspace{7.5cm} TRABAJO DE TITULACIÓN PRESENTADO\\
        \hspace{7.5cm} EN CONFORMIDAD A LOS REQUISITOS PARA\\
        \ifdoctorado
            \hspace{7.5cm} OBTENER EL GRADO DE DOCTOR EN\\
            \hspace{7.5cm} INGENIER\'IA INFORM\'ATICA\\
        \fi
        \ifmagister
            \hspace{7.5cm} OBTENER EL GRADO DE MAG\'ISTER EN \\
            \hspace{7.5cm} INGENIER\'IA INFORM\'ATICA\\
        \fi
        \end{flushleft}

        \vspace*{3.5cm}
        \normalsize\MakeUppercase{\@ciudad\ -- \@pais}\\
        \@annoexamen
        \end{center}\par
        \iflogo \vspace{.9cm} \else \vspace{1cm} \fi
    }
\fi
} %\\end \makecubierta
%-------Copyright
% by Emir
\newcommand{\makecopyright}
{
    \ifpropuesta
        % no va copyright
    \else
        \thispagestyle{empty}
        \vspace*{18cm}\par
        \begin{flushleft}
        \copyright\ \@autor \\
        Se autoriza la reproducción parcial o total de esta obra, con fines académicos, por cualquier forma, medio o procedimiento, siempre y cuando se incluya la cita bibliográfica del documento.
        %Queda prohibida la reproducción parcial o total de esta obra en cualquier forma, medio o procedimiento sin permiso por escrito del autor.
        \end{flushleft}
    \fi
}
%------Página de dedicatoria
\newenvironment{dedicatoria}[1]
{
    \thispagestyle{empty}
    \vspace*{18cm}\par
    \hspace*{5cm}
    \begin{flushright}
    \textit{#1}
    \end{flushright}
}{}
%------Página de agradecimientos
\newenvironment{gracias}
{
    \begin{center}
        {\Large\bf AGRADECIMIENTOS}
    \end{center}
}{}
%------Página de resumen (castellano)
\newcommand{\KeywordsES}[1]
{
    \par\noindent
    {\bf Palabras Claves\/}: #1
}
\newcommand{\resumenCastellano}[1]
{
    \begin{center}
        {\Large\bf RESUMEN}
    \end{center}
#1
}
%------Página de abstract (ingles)
\newcommand{\KeywordsEN}[1]
{
    \par\noindent
    {\bf Keywords\/}: #1
}
\newcommand{\resumenIngles}[1]
{
    \begin{center}
        {\Large\bf ABSTRACT}
    \end{center}
#1
}
%------Página de glosario
% by Hugo Meneses
\newenvironment{glosario}
{
    \begin{center}
        \textbf{\Large GLOSARIO}
    \end{center}
}{}

\endinput
%% 
%% End of file `tesis.cls'.
