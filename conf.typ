#import "@preview/ctheorems:1.1.2": *
#import "@preview/polytonoi:0.1.0": *

#let gk = ptgk

#let theorem = thmbox("theorem", "Теорема", fill: rgb("#eeffee"))

#let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
#let definition = thmbox("definition", "Определение", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Пример").with(numbering: none)
#let proof = thmproof("proof", "Доказательство")

#let conf(title, doc) = {
  set page(paper: "a4", numbering: "1", header: align(right + horizon, title))
  set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
  set text(font: "New Computer Modern", size: 12pt, lang: "ru")
  set heading(numbering: "1.")

  show raw: set text(font: "New Computer Modern Mono")
  show par: set block(spacing: 0.55em)
  show heading: set block(above: 1.4em, below: 1em)
  show: thmrules.with(qed-symbol: $square$)

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }

  page()[#outline(indent: auto)]

  doc
}
