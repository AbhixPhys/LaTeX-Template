# LaTeX Template for Notes

(AI Acknowledgement: I used help from Copilot to add lorem text as a filler for the template, and also to learn about packages that may be helpful for modifications.)

## File Structure
```
main.tex              # Main document file
custom.sty            # Custom commands and styling
compile.sh            # Compile TeX files.
references.bib        # Bibliography database
chapters/             # Individual chapter files
  chapter01.tex
  chapter02.tex
  ...
appendices/           # Appendix files
  appendixA.tex
  appendixB.tex
```

## Quick Start

1. Edit your content in the chapter/appendix files (`chapters/chapter0x.tex`, etc.)
2. Add references to `references.bib`
3. Compile the document:
   ```bash
   ./compile.sh
   ```

## Bibliography System

Uses numbered references in order of first appearance:
- References are numbered [1], [2], [3], etc.
- Numbers are assigned based on the order they first appear in the text
- Same reference cited multiple times keeps the same number

## Mathematical Environments

All environments are numbered consecutively within each chapter (e.g., Definition 1.1, Theorem 1.2, etc.).

### Available Environments

**Theorem-like** (italicized):
- `theorem` - Main results
- `lemma` - Auxiliary results  
- `corollary` - Consequences of theorems
- `proposition` - Standalone results

**Definition-like** (upright):
- `definition` - Definitions
- `example` - Examples

**Remark-like** (upright):
- `remark` - Remarks and observations
- `observation` - Observations

**Proof environment**:
- `proof` - Standard proof with QED symbol

### Usage Examples

```latex
\begin{definition}[Sample Space]
\label{def:sample-space}
A sample space $\Omega$ is the set of all possible outcomes.
\end{definition}

\begin{theorem}[Main Result]
\label{thm:main-result}
Under certain conditions, we obtain the desired result.
\end{theorem}

\begin{proof}
The proof follows from standard techniques.
\end{proof}
```

## Custom Styled Blocks

Five themed blocks with colored left borders for highlighting information:

### Available Block Types

**Todo Block** (red theme):
```latex
\begin{block}[todo]
Remember to update this section with recent findings.
\end{block}
```

**Tip Block** (green theme):
```latex
\begin{block}[tip]
Review probability theory fundamentals first.
\end{block}
```

**Warning Block** (yellow theme):
```latex
\begin{block}[warning]
The assumptions in Theorem~\ref{thm:main-result} cannot be relaxed.
\end{block}
```

**Note Block** (blue theme):
```latex
\begin{block}[note]
This methodology has been applied in real-world scenarios.
\end{block}
```

**TL;DR Block** (gray theme):
```latex
\begin{block}[tldr]
Key findings: Current methodologies show promise but lack validation.
\end{block}
```
