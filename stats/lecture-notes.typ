#import "./preamble.typ": *
// This is the final cheatsheet

// #fa-version("5")
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

#let gaussian(mean, variance) = $cal(N)(#mean, #variance)$
#let rnd(X) = $#X$
#let Ex = $EE$
#let Pr = $PP$
#let Var = $VV$
#let Cov = $"Cov"$
#let iid = $~^"i.i.d."$
#let cip = $->^PP$
#let cid = $arrow.r.squiggly$

#gatbox(
  title: [#fa-icon("compass") Overview (L01)],
)[
  *Statistics*: Analyze, describe, and reason about data
  - *Descriptive Stats* (Mean, std, plots): Summarize data (I would say comprehend)
  - *Estimation*: Say something about the general population
  - *Confidence Intervals*: Quantify uncertainty
  - *Hypothesis Testing*: Answer yes or no questions
  - *Regression/classification*: Prediction
  - *Causal Inference*: Does $x$ cause $y$?
  - *Data Visualization* (PCA, t-SNE, ...): Understand

  *Probability*: $PP$ to $X$ is probability while $X$ to $PP$ is statistics.

  *Independently and Identically Distributed* (i.i.d) from $PP$ (the true distribution) described with $X_1, ..., X_n ~^"iid" PP$

  *Average of Samples*: (Note $macron(X)_n$ is an R.V.)
  $
    X_1, ..., X_n & ~^"iid" PP \
                  & macron(X)_n := (X_1 + ... + X_n)/n \
        mu := EE[ & macron(X)_n] \
              VV[ & macron(X)_n] = sigma^2 / n "(Variance shrinks (how was this found))"
  $
  - *Law of Large Numbers (LLN)*: As samples go to infinity, the average converges to the true average
    $
      lim_(n -> oo) macron(X)_n = mu
    $


  #link("https://youtu.be/YAlJCEDH2uY")[*Central Limit Theorem (CLT)*]: The MEANS of samples will be normally distributed even if the distribution of samples are not. Means we don't need to know what distribution the data came from to do t-tests, confidence intervals, etc. (Generally sample size must be greater than 30)
  $
    lim_(n -> oo) overbrace(macron(X)_n - mu, "Recentered act 0")/underbrace(sigma slash sqrt(n), "std of" macron(X)_n) = gaussian(0, 1)
  $
  - This doesn't seem like the right way of writing this. Right hand side is a distribution, left is an RV. (I think the wiggle arrow is needed?)
]

#gatbox(
  title: [#fa-icon("chart-bar") Descriptive Statistics (L02)],
)[
  Kiss example?
  Oh gosh I can't take notes from what this person wrote only.

  Plots
  - Dot plot -- Continuous line where dots placed continuously on a line to show samples
  - Histogram -- Dot plot, but buckets are made and turned into a bar graph
    - Linear combination of gaussians can be used to get the curve out of the histogram

  Graph analysis: Unimodal, bimodal, multimodal, symmetric, right-skewed (long tail), left-skewed

  Quantiles: Location at which the following is true (couldn't there be multiple by this definition though?)
  $
    q_alpha := (1 - alpha) "quantile where" \
    1/n sum bb(1)(X_i <= q_alpha) = 1- alpha
  $
  - Median: Basically $q_(1 slash 2)$
  - Inter Quartile Range (IQR): $q_(1 slash 4) - q_(3 slash 4)$ sometimes written as $Q_3 - Q_1$ (third and first quartiles)
    - Outliers: $X_i$ is an outlier if:
    $
      X_i > Q_3 + 1.5 "IQR" \
      X_i < Q_1 - 1.5 "IQR"
    $
]

#gatbox(
  title: [#fa-icon("arrows-to-dot") Convergence of Random Variables (L03)],
)[
  Notes confusing

  Convergence of sequences:
  $
    X_1, X_2, ... \
    lim_(n -> oo) X_n = X^star
  $
  - *Almost Sure*

  Sample Space $Omega$

  *Convergence in Probability* $cip$: Later samples become increasingly close to a single convergence value.
  $
    X_n cip X "if"\
    forall epsilon > 0: quad lim_(n -> oo) PP(abs(X_n - X) > epsilon) = 0
  $
  - Operations: $ "If" X_n cip X_1 quad and quad Y_n cip Y: \
    X_n + Y_n cip X + Y \
    X_n Y_n cip X Y $

  *Strong Law of Large Numbers (SLLN)*: TODO

  *Weak Law of Large Numbers (WLLN)*: TODO

  *Convergence in Distribution* $cid$ (or $->^d$): $X_n cid X$ if the CDF of $X_n$ converges to the CDF of $X$ at all continuity points of the CDF of $X$.
  - If $X_n cip X$ then $X_n cid X$ (did not understand their proof)
  - Operations: $ "If" X_n cid X quad and quad Y_n cip c: \
    X_n + Y_n cid X + c \
    X_n Y_n cid c X $
    - Some other one I didn't understand

  *Continuous Mapping Theorem*:
  $
    X_n cip X \
    g(X_n) cip g(X) \
    "... they didn't finish ..."
  $
  *Delta Method* -- Also didn't understand, but they didn't finish in lecture anyways. Need lecture notes.


]

#gatbox(
  title: [#fa-icon("bell") The Gaussian Distribution (L04)],
)[
  Did not understand the intro whatsoever.

  Types of distributions:
  - Discrete
    - Binomial
    - Bernoulli
    - Poisson
    - Geometric
  - Continuous
    - Gaussian / Normal / Log normal
    - Exponential
    - Uniform
    - Cauchy
    - Chi-Squared
    - Pareto
    - Gamma
    - Beta
    - Student-t

  *Gaussian PDF*

  $
    1 / (sqrt(2 pi) sigma) e^(- (x - mu)^2 / (2 sigma^2))
  $


  *Standardization*

  Define $Z := gaussian(0, 1)$
  $
    "If" X ~ gaussian(mu, sigma^2) "then": \
    X = mu + sigma Z <=> Z = (x - mu)/sigma
  $

  *Gaussian CDF*
  Define $Phi(x) := PP(Z <= x)$ ... okay didn't fully understand, I think this is supposed ot be the CDF but not sure. It's like one side of the below.
  $
    PP(c <= X <= d) & = PP((c-mu)/sigma <= Z <= (d - mu)/sigma) \
                    & = Phi((d - mu)/sigma) - Phi((c-mu)/ sigma)
  $
  Properties:
  - Tails are related to one another: $Phi(-x) = 1 - Phi(x)$


  *Algebraic Rules*

  $
    X ~ gaussian(mu, sigma^2) quad alpha, beta in RR \
    alpha X + beta ~ gaussian(alpha mu + beta, alpha^2 sigma^2)
  $

  (Missed a lot of this lecture. Covered CDFs and misc jazz. Wants us to understand common values, i.e. prob of 1 stdev above.)
]


#gatbox(
  title: [#fa-icon("cubes") Multivariate Distributions (L05)],
)[
  *Inner Product*
  $
    vb(v), vb(w) in RR^k : quad vb(v) dot vb(w) = vb(v)^T vb(w) = iprod(vb(v), vb(w))
  $

  *Outer Product*
  $
    vb(v) in RR^k, vb(w) in RR^ell : quad vb(v) vb(w)^T = "Matrix w/ entries" v_i w_j
  $

  *Identity Matrix*
  $
    I_k : "identity" in RR^(k times k)
  $

  *Random Vector*
  $
    rnd(vb(X)) & := (rnd(X_1), ..., rnd(X_k)) in RR^k: \
     Ex[vb(X)] & = (Ex[X_1], ..., Ex[X_k]) \
    Var[vb(X)] & = (Var[X_1], ..., Var[X_k])
  $

  *Covariance Matrix*
  $
    Sigma_(i,j) & := Cov[X_i, X_j] \
                & = Ex[quad (X_i - Ex[X_i]) quad (X_j - Ex[X_j]) quad] \
                & = Ex[ X_i X_j ] - Ex[X_i] Ex[X_j] \
          Sigma & = Ex[(X - mu) (X - mu)^T] \
                & = Ex[X X^T] - mu mu^T
  $
  - Covariance with oneself is just the variance: $Cov[X_i, X_i] = Var[X_i]$

  - Two properties I didn't register regarding the linearity of expectation

  $
    Var[a^T X] & = Ex[(a^T X)^2] - (Ex[a^T X])^2 \
               & = a^T (X X^T) a = ... "okay confused by their work"
  $

  *Positive Semi-Definite*
  $
    A "is psd if":\
    quad forall x quad x^T A x >= 0
    <=> "Eigenvalues"(A) >= 0
  $
]

#gatbox(
  title: [#fa-icon("layer-group") Multivariate Limit Theorems (L06)],
)[
  *Probability Density Function (PDF)*: PDF of $vb(X) in RR^k$ is a function $f : RR^K -> RR_(>=0)$ s.t.
  $
    integral_(RR^K) f(vb(x)) dd(vb(x)) = 1
  $

  Can determine the probability $vb(X)$ is in some region $R subset.eq RR^K$ as so:
  $
    Pr(vb(X) in R) & = integral_R f(vb(x)) dd(vb(x)) \
                   & = integral_(a_k)^(b_k) ... integral_(a_1)^(b_1) f(x_1, ..., x_k) dd(x_1) ... dd(x_k)
  $

  *Case 1*: $(X_1, ..., X_k)$ are independent
  - *Joint Density* (I think) the joint PDF is simply the product of smaller PDFs:
    $
      f(x_1, ..., x_k) = f_1 (x_1) dot ... dot f_k (x_k)
    $
  - *Conditional Density*: I think the note taker messed up here
  $
    f(x_k mid(|) X_1 = x_1, ..., X_(k-1) = x_(k-1)) = f(x_1, ..., x_(k-1), x_k) / (integral_RR f(x_1, ..., x_(k-1), x_k) dd(x_k))
  $
  - *Marginal Density*: Idk if they wrote this down right either, check
  $
    f_1 (x_1) = ...
  $

  *Case 2*: Gaussian Case
  - $vb(X) in RR^K$ is a gaussian if its PDF is (also don't know if copied correctly.)
    $
      f(vb(x)) = ...
    $
  - Here then $vb(mu) in RR^k$ is a mean vector and $Sigma in RR^(k times k)$ is a covariance matrix.
  - How are they using p.d. here?
  - *Standardization*: Did not finish here, need to look at again later.
    $
      vb(X) ~ gaussian(vb(mu), Sigma)
    $
]
