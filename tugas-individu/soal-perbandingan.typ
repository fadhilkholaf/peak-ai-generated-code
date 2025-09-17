#set document(
  title: "Perbandingan Perhitungan Manual dan Simulasi",
  author: "Muhammad Fadhil Kholaf",
)
#set page(paper: "a4", margin: 1in, numbering: "1", number-align: bottom + right)
#set text(font: "Times New Roman", size: 12pt)
#set block(spacing: 1.213em)
#set par(leading: 1.213em, spacing: 1.213em, justify: true)

#show heading.where(level: 1): it => [
  #set text(size: 16pt, weight: "bold")
  #it
  #v(0.8em)
]

#show heading.where(level: 2): it => [
  #set text(size: 14pt, weight: "bold")
  #it
  #v(0.5em)
]

#align(center + horizon)[
  = Perbandingan Variabel Random Diskrit dan Kontinu
  #v(0.5em)
  Muhammad Fadhil Kholaf \
  25051214111
]

== Variabel Random Diskrit (Pelemparan 3 Koin)

PDF dan CDF dihitung dengan distribusi Binomial (n = 3, p = 0.5), kemudian dibandingkan dengan hasil simulasi Python (10.000 percobaan).

#table(
  columns: 5,
  align: center,
  table.header([K], [PDF Manual], [CDF Manual], [PDF Simulasi], [CDF Simulasi]),
  [0], [0.125], [0.125], [0.126], [0.126],
  [1], [0.375], [0.500], [0.373], [0.499],
  [2], [0.375], [0.875], [0.376], [0.875],
  [3], [0.125], [1.000], [0.125], [1.000],
)

Probabilitas: \
Manual $P(X \leq 2) = 0.875$ \
Simulasi $P(X \leq 2) approx 0.875$

== Variabel Random Kontinu (Distribusi Eksponensial)

Distribusi Eksponensial dengan $lambda = 0.2$ (mean = 5 menit). Dibandingkan dengan hasil simulasi Python (10.000 data acak).

#table(
  columns: 5,
  align: center,
  table.header([x], [PDF Manual], [CDF Manual], [PDF Simulasi], [CDF Simulasi]),
  [0], [0.200], [0.000], [0.198], [0.000],
  [2], [0.134], [0.330], [0.133], [0.328],
  [5], [0.074], [0.632], [0.075], [0.631],
  [8], [0.040], [0.798], [0.041], [0.799],
)

Probabilitas: \
Manual $P(2 < X < 8) = 0.468$ \
Simulasi $P(2 < X < 8) approx 0.471$
