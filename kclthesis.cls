\ProvidesClass{kclthesis}[2016/01/20 KCL MSc Thesis Class by Andre Mueller]
\NeedsTeXFormat{LaTeX2e}

% Options
\newif\ifkclthesis@releaseproject
\DeclareOption{releaseproject}{\kclthesis@releaseprojecttrue}
\DeclareOption{notreleaseproject}{\kclthesis@releaseprojectfalse}

\ExecuteOptions{releaseproject}
\ProcessOptions\relax

% Macros
\newcommand*{\modulecode}[1]{\gdef\@modulecode{#1}%
}
\newcommand*{\@modulecode}{Module Code}
\newcommand*{\submissiontitle}[1]{\gdef\@submissiontitle{#1}}
\newcommand*{\@submissiontitle}{Submission Title}
\newcommand*{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@studentnumber}{~}
\newcommand*{\programme}[1]{\gdef\@programme{#1}}
\newcommand*{\@programme}{~}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{~}
\newcommand*{\wordcount}[1]{\gdef\@wordcount{#1}}
\newcommand*{\@wordcount}{~}
\newcommand*{\signdate}[1]{\gdef\@signdate{#1}}
\newcommand*{\@signdate}{\today}

\LoadClass[11pt,a4paper]{article}


% Fonts
%\RequirePackage[quiet]{fontspec}
%\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

%\newfontfamily\coverpagefont[]{Arial}
%\newfontfamily\bodyfont[]{Helvetica Neue}
%\newfontfamily\headingfont[]{Helvetica Neue Condensed Bold}

%\defaultfontfeatures{Mapping=tex-text}
%\setmainfont[Mapping=tex-text]{Helvetica Neue}

% Mathfonts
\RequirePackage{amsmath, amsfonts, amsthm, amssymb}

\RequirePackage{wasysym}
\RequirePackage{MnSymbol}

% TO DO NOTES
\RequirePackage{todonotes}

% Cover Page
\RequirePackage{graphicx}
\RequirePackage[paper=a4paper]{geometry}
\RequirePackage{setspace}
\RequirePackage{framed}

\renewcommand*{\maketitle}{
\begin{titlepage}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
\textbf{Faculty of Natural and\\
	Mathematical Sciences\\}
\small{Department of Informatics}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\begin{flushleft}
	\scriptsize{The Strand\\
		Strand Campus\\
		London WC2R 2LS\\
		Telephone 020 7848 2145\\
		Fax 020 7848 2851}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.25\textwidth}
	\begin{flushright}
		\includegraphics[width=3.25cm]{img/kcl}
	\end{flushright}
\end{minipage}
\vspace{1cm}

\doublespacing{
\begin{minipage}{0.3\textwidth}
	~
\end{minipage}
\begin{minipage}{0.44\textwidth}
	\begin{flushright}
		\textbf{\@modulecode \\ \@submissiontitle}
	\end{flushright}
\end{minipage}%


\vspace{0.5cm}

\begin{minipage}{0.3\textwidth}
	\begin{flushleft}
	\textbf{Name:\\Student Number:\\Degree Programme:\\Project Title:\\ Supervisor:\\ Word Count:\\}
	\end{flushleft}
\end{minipage}%
\begin{minipage}{0.7\textwidth}
	\begin{flushleft}
	\@author \\ \@studentnumber \\ \@programme \\ \@title \\ \@supervisor \\ \@wordcount
	\end{flushleft}
\end{minipage}
}
\vspace{1cm}
	
\begin{minipage}{\textwidth}
	\begin{framed}
		\begin{center}
			\textbf{RELEASE OF PRODUCT}
		\end{center}
		Following the submission of your project, the Department would like to make it publicly available via the library electronic resources. You will retain copyright of the project.
	\end{framed}

	\begin{flushleft}
	\ifkclthesis@releaseproject
		$\CheckedBox$ I \textbf{agree} to the release of my project\\
		$\square$ I \textbf{do not} agree to the release of my project
	\else
		$\square$ I \textbf{agree} to the release of my project\\
		$\CheckedBox$ I \textbf{do not} agree to the release of my project
	\fi
	\end{flushleft}
\end{minipage}

\vspace{1.5cm}

\begin{minipage}{0.5\textwidth}
\begin{flushleft}
	\textbf{Signature:}
\end{flushleft}
\end{minipage}%
\begin{minipage}{0.5\textwidth}
	\begin{flushleft}
		\textbf{Date:} \@signdate
	\end{flushleft}
\end{minipage}
}
\newcommand*{\maketitleTwo}{
\end{titlepage}

\begin{titlepage}
\thispagestyle{empty}
\null\vskip0.2in%

\begin{center}
Department of Informatics \\ 
King's College London \\
WC2R 2LS London \\ 
United Kingdom
\end{center}


\vspace{1.5cm}

\begin{center}
\LARGE{{\bf \@title
}}\\
\vspace{0.2cm}
\vskip\bigskipamount % or other desired dimension
\leaders\vrule width \textwidth\vskip0.4pt % or other desired thickness
\vskip\bigskipamount % ditto
\nointerlineskip
\end{center}

\vspace{0.2cm}
\begin{center}
{\bf \@author}\\
Student Number: \@studentnumber\\
Course: \@programme
\end{center}

\vspace{1.2cm}
\begin{center}
\bf{Supervisor:} \@supervisor
\end{center}

\vspace{1cm}
\begin{figure}[!h]
\centering
\includegraphics[width=3.5cm]{img/kcl}
\end{figure}

\vspace{1.2cm}

\begin{center}
Thesis submitted as part of the requirements for the award of the MSc in Web Intelligence.\\
7CCSMPRJ - MSc Individual Project - 2016
\end{center}
\end{titlepage}
}

\onehalfspacing
\endinput
