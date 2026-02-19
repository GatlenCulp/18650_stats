#import "./preamble.typ": *
// This is the final cheatsheet

#show: style.with()
#show: cheatsheet.with(
  title: "Midterm",
  date: datetime(year: 2025, month: 11, day: 2),
)

#let gatbox = gatbox.with(color-cycle: true)
#set page(columns: 2)
#set text(size: 12pt)

= Cheatsheet

// #gatbox(
//   title: [#fa-icon("calculator") Mathematical Foundations],
// )[
//   _Background material used throughout course_

//   == #fa-icon("square-root-variable") Linear Algebra

//   *Least Squares:* $vb(x)^* := (A^T A)^(-1) A^T vb(b) = A^+ vb(b)$ where $A^+$ is pseudoinverse. *Matrix Inversion:* $(I + U V)^(-1) = I - U (I + V U)^(-1) V$

//   *Gradients:* $grad_(vb(x)) (vb(x)^T A vb(x)) = (A + A^T) vb(x); quad grad_(vb(x)) (vb(u)^T A vb(x)) = A^T vb(u)$
// ]

#let gaussian(mean, variance) = $N(#mean, #variance)$
#let rnd(X) = $#X$

#gatbox(
  title: [#fa-icon("network-wired") Gaussian and Friends (L04)],
)[

  Gaussian PDF

  $
    1 / (sqrt(2 pi) sigma) e^(- (x - mu)^2 / (2 sigma^2))
  $

  Algebraic Rules

  $
    X ~ gaussian(mu, sigma^2) quad alpha, beta in RR \
    alpha X + beta ~ gaussian(alpha mu + beta, alpha^2 sigma^2)
  $

  (Missed a lot of this lecture. Covered CDFs and misc jazz. Wants us to understand common values, i.e. prob of 1 stdev above.)
]


#gatbox(
  title: [#fa-icon("network-wired") ??(L05)],
)[
  Inner Product
  $
    vb(v), vb(w) in RR^k : quad vb(v) dot vb(w) = vb(v)^T vb(w) = iprod(vb(v), vb(w))
  $

  Outer Product
  $
    vb(v) in RR^k, vb(w) in RR^ell : quad vb(v) vb(w)^T = "Matrix w/ entries" v_i w_j
  $

  Identity Matrix
  $
    I_k : "identity" in RR^(k times k)
  $

  Random Vector
  $
    rnd(vb(X)) := (rnd(X_1), ..., rnd(X_k)) in RR^k:\
    "expectation yada" \
    Cov(rnd(X)_i)
  $
]
