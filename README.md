# ECTE Thesis Latex Template
##### By Adam Pigram
A LaTeX Report template for University of Wollongong School of Electrical, Computer &amp; Telecommunications Engineering based on the original provided within the ECTE Thesis Subject.

## TL;DR & Getting Started
The template is broken into three main writing sections, `Front_Matter/`, `Body/` and `Back_Matter/`. Go through each file replacing/filling out the information as needed.

All of the sections get compiled into `Thesis_Main.tex`, which is where you will build the project from and includes all the other files.

After that, is writing the body of the report within the `Body/` folder. Following the naming scheme and structure seen in the examples. When writing a new chapter, include it in the `Thesis_Main.tex`.

Add any references in `Body/References.bib` when needed, following the examples or using alternative settings from online resources.

## LaTeX
LaTeX (Latex) is a markup language similar to Markdown or HTML and is based on TeX. Writing Latex can be similar to mixing Microsoft Word with coding. It does have a high learning curve associated with it, however, it offers far greater customisation options which is standardised within the document. LaTeX is highly used within academia and usually has a distinct style out the box that most people use.

## The Template

### Folder Structure
To keep things organised within a document, different parts can be sectioned out, placed in folders, and included into the main document.

This template is broken into the three major sections outlined in the ECTE499 Information booklet.
1. Front Matter
2. Body
3. Back Matter

Additionally the template includes directories for `Figures/` and `Tables/` to make organising these documents easier. If it helps it is possible to add directories within these to separate them into Chapters or Sections. An alternative is to name the files with the chapters to help keep things clear.

### Front Matter

As per the ECTE499 Information Booklet, the Front Matter includes:
1. Title Page
2. Abstract
3. Statement of Originality (SOG)
4. Table of Contents
5. List of Figures
6. List of Tables
7. List of Abbreviations and Symbols (Glossary)
8. Changes
9. Acknowledgements

Most of these are handled within the `Thesis_Styles.sty` (Talked about later).

As a writer you should be filling out the author information at the top of the `ECTE499_Thesis_Main.tex`. These values will then automatically fill out information in these front matters using macros.

Table of Contents, Figures, Tables are all automatically logged when you define them in your documents.

Other things to be mindful of changing is the Glossary, Acknowledgements and Changes. These are not automatically handled as they vary between reports.

### Body

The main body contains:
1. Introduction
2. Literature Review
3. Details on your work on the project (Method, Design, Analysis, Discussion)
4. Conclusions
5. References

References is not specified as Back Matter

The example in this template gives an example naming structure to keep things in order and organised, but any naming scheme you want is fine as well.

All of the Body need to be added into the `Thesis_Main.tex` document as a `\include{Body/<Name>}`, you can see in the example how to do this.

### Back Matter

The Back Matter only contains the Appendicies, where this can be appended to in the `Back_Matter/Appendices.tex` file. Alternatively you could separate each Appendix Item into its own file if need be.

### Styles

All of the main styles and macros are placed into `Thesis_Styles.sty`, which is imported into the main document at the top. These styles are based on the Information Booklet provided and are noted within the file for reference.

There shouldn't really be a need for defining anything else within this file, unless there are custom macros or redefining commands that you would like to add to this.

## Setting Up LaTeX

There are two main ways of using LaTeX:
1. Overleaf - A web based Google-Docs-like tool that is an all-in-one solution to get started.
2. Locally - This involves downloading a LaTeX distribution and then editing the files with a text editor.

Overleaf is free for basic use and is a powerful tool for getting things started straight away. There is a paid version of it to be aware of as there are limitations with large file document sizes. Overleaf also has great documentation which can be used by anyone on learning LaTeX.

For doing it locally, on Windows you can use a distribution like MikTex and a code editor like VSCode (With LaTeX Workshop and LaTeX Utilities extensions)

[Windows + VSCode install](https://www.youtube.com/watch?v=4lyHIQl4VM8)

## Using LaTeX

Here is a summarised list of examples for reference when writing your report.

You will most likely delete the originals in the .tex files, so they are here to help flip to.

### Labels
Everything should have labels to keep track, these are placed after creating something
```latex
\chapter{My Awesome Chapter}\label{chap:myawsomechapter}
```

### References
These don't relate to citations, as they refer to the labels you create for headings, figures, e.t.c. The `~` is important to getting the spacing correct. Try with and without.
```latex
As you can see in Figure~\ref{fig:graph_1}...
```

### Citations
These are for linking to your bibliography, each item in the `Body/References.bib` is given a label to use within the main document.

There are two styles for the citation in this template
```latex
% Appears like 'Honsinger [1]'
\citet{Honsinger71a}
% Appears like '[1]'
\citep{Honsinger71a}
```

### The `*` Symbol
This symbol when delcaring an element e.g. `\section`, can be used to exclude it from the table of contents.
```latex
% This will not appear on the table of contents
\section*{Secret Heading}
```

### New lines
When you want to create space, use `\\` to insert a break. `\\ \\` Can also be used in the same line to separate paragraphs.

### New Pages
When wanting to do a page break, use `\newpage`.

### Headings
Headings are in the rankings as follows, it is best not to go past a `\subsubsection`
```latex
\chapter{My Chapter}
\section{Heading 1}
\subsection{Heading 2}
\subsubsection{Heading 3}
...
```
NOTE: `\subsubsection` is not listed on the table of contents.

### Figures
Figures are best copy pasted, the snippet below will give you a well formatted image but there are some notes.

Size can be changed via the width property.

`[!h]` Places it where it is called, rather than the bottom of a page. 

```latex
\begin{figure}[!h]
\begin{singlespace}
\centering
\includegraphics[width=8cm]{Figures/FBD.pdf}
\caption[Caption for the List of Figures.]{Caption for the text body. We can
make this one really really long in order to describe everything
about the figure for which this caption references, noting that
the caption for the index really should be much shorter.}
\label{fig:example}
\end{singlespace}
\end{figure}
```

### Equations

This is probably one of the strengths of LaTeX and with practice is really helpful. Other software also use LaTeX notation due to how popular it is.

The equation below will highlight how to do many of the basic symbols, other symbols can be found online.

[Online Cheatsheet](https://tug.ctan.org/info/undergradmath/undergradmath.pdf)

```latex
\begin{equation}
A=\frac{1}{\displaystyle\sum_{k=1}^{}}
\end{equation}

\begin{equation}
A=n^{\frac{1}{3}}
\end{equation}

\begin{equation}
A=n^{\frac{1}{3}}\max_{k=1}
\end{equation}
```

```latex
\begin{equation}
\frac{d^2 \Phi_q(\theta)}{d\theta^2}-\frac{2\mu_o R^2 L_R}{p^2 g_e}\Phi_q(\theta)
+\frac{\mu_o R^2 L_R}{p^2 g_e} \left[J(\theta)-J(\pi-\theta)\right]=0
\label{aeqn:mm16}
\end{equation}
```

Arrays are used for really long equations.
```latex
\begin{eqnarray}
2RJ_q=2A\left[\frac{\Re_qR}{\gamma}(e^{\gamma\frac{\theta_p}{2}}-e^{-\gamma\frac{\theta_p}{2}})
+p\Re_{side}(e^{\gamma\frac{\theta_p}{2}}+e^{-\gamma\frac{\theta_p}{2}})\right]+
\nonumber\\
\frac{4cJ_q}{b+1}\left[\Re_qR\sin\frac{\theta_p}{2}+p\Re_{side}\cos\frac{\theta_p}{2}\right]
\end{eqnarray}
```
Maths can also be aligned at the `&` symbol
```latex
\begin{align}
x &= y + z \\
y &= z^2 \\
z &= x + y + 1
\end{align}
```

### Tables

Tables are probably one of the weirdest things to create in LaTeX, they rely on you placing the characters in the right spots to create the right table.

They do however follow similar rules to Figures in styling for positioning, labels and captions.

A basic 3x3 table looks like this:
```latex
\begin{tabular}{|c|c|c|}
\hline
A & B & C \\ \hline
D & E & F \\ \hline
G & H & I \\ \hline
\end{tabular}
```
It contains how many columns with `{|c|c|c|}`.
It then places a line underneath, then defines each cell between `&`, ending a row with `\\ \hline`.

A more complicated example.
```latex
\begin{table}[!h]
\centering
\begin{tabular}{l|l|l|l|}
\multicolumn{1}{l}{}&\multicolumn{1}{l}{}&\multicolumn{2}{c}{TO}\\ 
\cline{3-4}
\multicolumn{1}{l}{}&\multicolumn{1}{c|}{}&\multicolumn{1}{c|}{AC}&\multicolumn{1}{c|}{DC}\\ 
\cline{2-4}
\multirow{2}{*}{FROM}&\multicolumn{1}{c|}{AC}&Cycloconverter&Rectifier\\ 
&\multicolumn{1}{c|}{DC}&Inverter&Chopper\\ 
\cline{2-4}
\end{tabular}
\caption[Caption for List of Tables]{Classification of Conversion Circuits}
\label{conversion}
\end{table}
```

### Code Blocks

This template does support code blocks through the listings and color packages. The styling of the code block can be changed in `Thesis_Styles.sty` under the `\lstset` tag.

```latex
\begin{lstlisting}
    #include <iostream>
    
    int main() { std::cout << "Hello World!";
        return 0;}
    
\end{lstlisting}
```