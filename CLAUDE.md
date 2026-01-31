# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Obsidian vault for developing a TCC (Trabalho de Conclusão de Curso) with automatic PDF generation following ABNT standards.

**Thesis topic**: Aplicação de Arquitetura Hexagonal em um SaaS Multi-Tenant

## Build Commands

```bash
# Generate PDF (ABNT format)
./build.sh

# Watch mode - auto-rebuild on save
./watch.sh
```

Requires: Pandoc, XeLaTeX (MacTeX/TeX Live)

## Structure

- **TCC.md** - Main thesis document with YAML frontmatter
- **referencias.bib** - BibTeX bibliography
- **abnt.csl** - ABNT citation style
- **template-abnt.tex** - LaTeX template for PDF generation
- **Anotações/** - Research notes

## Citation Format

In markdown, use `[@citationkey]` to cite. Example: `[@evans2003]`

BibTeX entries go in `referencias.bib`:
```bib
@book{citationkey,
  title     = {Title},
  author    = {Author, Name},
  year      = {2024},
  publisher = {Publisher}
}
```

## ABNT Formatting

The build system applies:
- Margins: 3cm (top/left), 2cm (bottom/right)
- Font: Times New Roman 12pt
- Line spacing: 1.5
- Paragraph indent: 1.25cm
