#import "./preamble.typ": *
// This is the final cheatsheet

#show: style.with()
#show: cheatsheet.with(
  title: "Midterm",
  date: datetime(year: 2025, month: 11, day: 2),
)

#let gatbox = gatbox.with(color-cycle: true)
#let large-mode = false

#if large-mode {
  set page(columns: 2)
  set text(size: 12pt)
}


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

- TODO: Integration by parts
- TODO: $VV[X] = EE[X^2] - (EE[X])^2$ (and this is a way of getting the squared expectation of the RV)
- Define $Z ~ "unit normal"$
- Normal decomposition, $X = mu + sigma Z$
- $n$-th Moment of $X$ $EE[X^n]$: Quantitative measure of the shape of a distribution
  + $E[X]$ -- Mean/Center of Mass
  + $E[X^2]$ -- Related to variance/spread
  + $E[X^3]$ -- Skewness/asymmetry (TODO: Double check this and below)
  + $E[X^4]$ -- Kurtosis / tail heaviness
- Central Moments: Moments, centered about the mean $EE[(X-mu)^2]$
- Moment Generating Function (MGF) of $X$: Easy way of finding $n$-th moment of $X$ by deriving $n$ times and setting $t = 0$ (TODO: How? Also it's some kind of Taylor Series trick.)
  $
            M_X (t) & := EE[e^(t X)] \
    M_X^((n)) (t=0) & = EE[X^n]
  $
  - For Gaussian distributions: (TODO: Show derivation)
    $
      M_X (t) = e^(mu t + sigma^2 + t^2 slash 2)
    $

- $Phi$ = CDF of a standard normal generally(?)
- Standardization
  $
    PP(Y > 0) = PP(underbrace((Y - mu)/sigma, Z) > (0 - mu) / sigma)
  $

- $X ~ "Lognormal"(mu, sigma^2)$ basically means $log X = cal(N)(mu, sigma^2)$

- Linearity of Covariance rules
- Independence rules between two independent gaussians

- *Bernoulli distribution*

- *Exponential distribution*
  $
       X & ~ "Exp"(beta) \
    f(x) & := 1/beta e^(-x / beta), quad forall x > 0
  $
  - $beta$ is the mean
  - $VV(x) = beta^2$
  - Alternatively parameterized by the *rate* $lambda = 1 / beta$
    $
      f(x) := lambda e^(-lambda x)
    $
  - Survial Function for Exponential Distribution; $PP(X >= x) = e^(x / beta)$
  - *Memoryless property*: Distribution "forgets" how long it has been going, e.g. lasting another $t$ turns is independent of how many previous turns it has lasted $s$:
  $
    PP(X > s + t mid(|) X > s) = PP(X > t)
  $
// Idk if worth including?

- *Survival Function*: Kind of inverse of CDF $F(x)$
  $
    S(x) = PP(X > x) = 1 - F(x)
  $
  - Called this because of origin in engineering/medicine -- E.g. X is the time until death or failure
- TODO: What is a survival function? Why is it called that? Does it only pertain to exponential distributions?


TODO: Definition of probabilistic convergence
#question(status: "done")[
  2. Does $X_n arrow.r^P X$? (prove or disprove)
]

*Convergence*
- *Almost Sure Convergence* $X_n ->^"a.s." X$ means:
  $
    PP(lim_(n -> oo) = X) = 1
  $
  - TODO: Understand
- *Convergence in Probability* $X_n arrow.r^P X$ means
  $
    forall epsilon > 0, quad lim_(n -> oo) PP(abs(X_n - X) > epsilon) = 0
  $
- *Convergence in Distribution* $X_n arrow.squiggly X$ where $F_n$ and $F$ are the corresponding CDFs means
  $
    lim_(n -> oo) F_n (x) = F_(x)
  $
- Hierarchy: Almost Sure $=>$ Convergenc in Probability $=>$ Convergence in Distribution
  - TODO: understand.

- Always standardized everything with Gaussians -- constants, distributions, everything.

- Bivariate Normal Rules and Algebra
  - Variance of a Linear combination $VV[a X + b Y]$

- *Tower Property* (A.k.a. law of total expectation or law of iterated expectations)
- *Law of Total Variance*
  $
    VV(Y) = EE[VV(Y mid(|) X)] + VV(EE[Y mid(|) X])
  $

- Multivariate CLT
