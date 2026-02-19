#import "../preamble.typ": *
#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot

#let cols = 1
#show: homework.with(
  title: "PS01",
  date: datetime(year: 2026, month: 2, day: 18),
  cols: cols,
)

#show: style.with()

#set heading(numbering: "1.1")
#let solution = solution.with(cols: cols)

= Probability Review

Please use the accompanying bubble sheet for submitting your solutions for this problem.

In what follows, $Phi$ is the CDF of the standard Gaussian (Normal) distribution.

== Sinusoidal PDF

Let $X$ be a random variable taking values between $0$ and $pi$, with pdf given by
$
  f(x) = c sin x, quad x in [0, pi].
$

#question(status: "done")[
  1. What is the value of $c$? \
    (a) $pi$ #h(2em) (b) $1\/2$ #h(2em) (c) $2$ #h(2em) (d) $1\/pi$
]
#solution[
  For $f$ to be a valid pdf:
  $
    c integral_0^pi sin x dd(x) = 1
  $
  Solving:
  $
    integral_0^pi sin x dd(x) & = [-cos x]_0^pi = 2 \
                         => c & = 1/2
  $
  *Answer: (b)*
]

#question(status: "done")[
  2. What is $EE[X]$? \
    (a) $pi\/2$ #h(2em) (b) $pi$ #h(2em) (c) $1$ #h(2em) (d) $1\/2$
]
#solution[
  Integration by parts ($u = x$, $dd(v) = sin x dd(x)$):
  $
    EE[X] & = 1/2 integral_0^pi x sin x dd(x) \
          & = 1/2 [-x cos x + sin x]_0^pi \
          & = 1/2 dot pi = pi/2
  $
  *Answer: (a)*
]

#pagebreak()
== Gaussian Random Variable

Let $X$ be a Gaussian random variable with mean $mu > 0$ and variance $sigma^2$.

#question(status: "done")[
  3. What is $EE[X]$? \
    (a) $0$ #h(2em) (b) $sigma^2$ #h(2em) (c) $mu^2 + sigma^2$ #h(2em) (d) $mu$
]
#solution[
  By definition, *Answer: (d)*
]

#question(status: "done")[
  4. What is $VV[X]$? \
    (a) $sigma^2$ #h(2em) (b) $mu^2 + sigma^2$ #h(2em) (c) $mu^2$ #h(2em) (d) $sigma$
]
#solution[
  By definition, *Answer: (a)*
]

#question(status: "done")[
  5. What is $EE[X^2]$? \
    (a) $mu^2$ #h(2em) (b) $(mu + sigma)^2$ #h(2em) (c) $mu^2 + sigma^2$ #h(2em) (d) $sigma^2$
]
#solution[
  Using $VV[X] = EE[X^2] - (EE[X])^2$:
  $
    EE[X^2] = VV[X] + (EE[X])^2 = sigma^2 + mu^2
  $
  *Answer: (c)*
]

#question(status: "done")[
  6. What is $EE[X^3]$? \
    (a) $mu^3 + 3 mu sigma$ #h(2em) (b) $mu^3 + 3 mu sigma^2$ \
    (c) $mu^3$ #h(2em) (d) $3 mu sigma^2$
]
#solution[
  Write $X = mu + sigma Z$ with $Z tilde cal(N)(0,1)$:
  $
    EE[X^3] & = EE[(mu + sigma Z)^3] \
    & = mu^3 + 3 mu^2 sigma underbrace(EE[Z], 0) + 3 mu sigma^2 underbrace(EE[Z^2], 1) + sigma^3 underbrace(EE[Z^3], 0) \
    & = mu^3 + 3 mu sigma^2
  $
  *Answer: (b)*
]

#question(status: "done")[
  7. What is $VV[X^2]$? \
    (a) $4 mu^2 sigma^2$ #h(2em) (b) $(mu^2 + sigma^2)^2$ \
    (c) $2 sigma^4$ #h(2em) (d) $4 mu^2 sigma^2 + 2 sigma^4$
]
#solution[
  For a Gaussian, $EE[X^4] = mu^4 + 6 mu^2 sigma^2 + 3 sigma^4$ (via MGF):
  $
    VV[X^2] & = EE[X^4] - (EE[X^2])^2 \
            & = (mu^4 + 6 mu^2 sigma^2 + 3 sigma^4) - (mu^2 + sigma^2)^2 \
            & = 4 mu^2 sigma^2 + 2 sigma^4
  $
  *Answer: (d)*
]

#question(status: "done")[
  8. What is $PP(X > 0)$ in terms of $Phi$? \
    (a) $Phi(mu\/sigma)$ #h(2em) (b) $Phi(mu\/sigma^2)$ #h(2em) (c) $1 - Phi(mu\/sigma)$ #h(2em) (d) $Phi(mu)$
]
#solution[
  Standardize:
  $
    PP(X > 0) & = PP((X - mu)/sigma > -mu/sigma) \
              & = PP(Z > -mu/sigma) \
              & = Phi(mu\/sigma)
  $
  by symmetry of the standard normal.
  *Answer: (a)*
]

#pagebreak()
== Lognormal Distribution

Let $X tilde "Lognormal"(mu, sigma^2)$, i.e., $log X tilde cal(N)(mu, sigma^2)$ with $sigma > 0$.

#question(status: "done")[
  9. What is $EE[X]$? \
    (a) $e^mu$ #h(2em) (b) $e^(mu + sigma^2 \/ 2)$ #h(2em) (c) $e^(mu + sigma^2)$ #h(2em) (d) $mu + sigma^2 \/ 2$
]
#solution[
  Standard lognormal result from the MGF of the normal:
  $
    EE[X] = e^(mu + sigma^2\/2)
  $
  *Answer: (b)*
]

#question(status: "done")[
  10. What is the median of $X$? \
    (a) $e^(mu + sigma^2 \/ 2)$ #h(2em) (b) $e^(mu - sigma^2)$ #h(2em) (c) $e^mu$ #h(2em) (d) $mu$
]
#solution[
  The median of $log X$ is $mu$ (dist is symmetric). Since $x |-> e^x$ is monotone:
  $
    "median"(X) = e^("median"(log X)) = e^mu
  $
  *Answer: (c)*
]

#question(status: "done")[
  11. What is $PP(X > 1)$ in terms of $Phi$? \
    (a) $1 - Phi(mu\/sigma)$ #h(2em) (b) $Phi(mu)$ #h(2em) (c) $Phi(mu\/sigma^2)$ #h(2em) (d) $Phi(mu\/sigma)$
]
#solution[
  Standardize:
  $
    PP(X > 1) & = PP(log X > 0) \
              & = PP(Z > (0 - mu)/sigma) \
              & = PP(Z > -mu/sigma) = Phi(mu\/sigma)
  $
  *Answer: (d)*
]

Let $X, Y tilde "Lognormal"(0, 1)$ be independent.

#question(status: "done")[
  12. What is $PP(X Y > 1)$? \
    (a) $1\/4$ #h(2em) (b) $1\/2$ #h(2em) (c) $1\/sqrt(2 pi)$ #h(2em) (d) $1\/e$
]
#solution[
  Since $log X, log Y tilde.op cal(N)(0,1)$ independently:
  $
    log(X Y) = log X + log Y tilde cal(N)(0, 2)
  $
  By symmetry of the normal about $0$:
  $
    PP(X Y > 1) = PP(log(X Y) > 0) = 1/2
  $
  *Answer: (b)*
]

#pagebreak()
== Bernoulli $plus.minus 1$

Let $X$ be a random variable such that
$
  X = cases(
    1 & "with probability" p,
    -1 & "with probability" 1 - p,
  )
$
for some $p in [0, 1]$.

#question(status: "done")[
  13. What is $EE[X]$? \
    (a) $-p$ #h(2em) (b) $p$ #h(2em) (c) $1 - 2p$ #h(2em) (d) $2p - 1$
]
#solution[
  $
    EE[X] & = p dot 1 + (1-p) dot (-1) \
          & = 2p - 1
  $
  *Answer: (d)*
]

#question(status: "done")[
  14. What is $VV[X]$? \
    (a) $p(1-p)$ #h(2em) (b) $4p - p^2$ #h(2em) (c) $4p(1-p)$ #h(2em) (d) $4p^2(1-p)$
]
#solution[
  $
    EE[X^2] & = p dot 1 + (1-p) dot 1 \
            & = 1
  $
  Thus:
  $
    VV[X] & = EE[X^2] - (EE[X])^2 \
          & = 1 - (2p-1)^2 \
          & = 1 - (4p^2 - 4p + 1) \
          & = 4p(1-p)
  $

  *Answer: (c)*
]

#question(status: "done")[
  15. For what $p$ is $VV[X]$ maximized? \
    (a) $1$ #h(2em) (b) $0$ #h(2em) (c) $0.5$ #h(2em) (d) $1\/sqrt(2)$
]
#solution[
  $VV[X] = 4p(1-p) = -4(p^2 - p)$ is maximized at $p = 1\/2$.

  *Answer: (c)*
]

#question(status: "done")[
  16. What is $EE[X^k]$? \
    (a) $p^k$ #h(2em) (b) $p^k - (1-p)^k$ #h(2em) (c) $p(-1)^k + (1-p)$ #h(2em) (d) $p + (1-p)(-1)^k$
]
#solution[
  $
    EE[X^k] & = p dot 1^k + (1-p) dot (-1)^k \
            & = p + (1-p)(-1)^k
  $
  *Answer: (d)*
]

#pagebreak()
== Independent Standard Gaussians

Let $X, Y$ be two independent standard Gaussian random variables.

#question(status: "done")[
  17. What is $EE[X^2 Y]$? \
    (a) $0$ #h(2em) (b) $1$ #h(2em) (c) $2$ #h(2em) (d) $3$
]
#solution[
  By independence:
  $
    EE[X^2 Y] & = EE[X^2] dot EE[Y] \
              & = 1 dot 0 \
              & = 0
  $
  *Answer: (a)*
]

#question(status: "done")[
  18. What is $VV(X + Y)$? \
    (a) $0$ #h(2em) (b) $1$ #h(2em) (c) $2$ #h(2em) (d) $3$
]
#solution[
  By independence:
  $
    VV(X + Y) = VV(X) + VV(Y) = 1 + 1 = 2
  $
  *Answer: (c)*
]

#question(status: "done")[
  19. What is $VV(X Y)$? \
    (a) $0$ #h(2em) (b) $1$ #h(2em) (c) $2$ #h(2em) (d) $3$
]
#solution[
  $
        EE[X Y] & = EE[X] EE[Y] = 0 \
    EE[(X Y)^2] & = EE[X^2] EE[Y^2] = 1 \
     => VV(X Y) & = 1 - 0 = 1
  $
  *Answer: (b)*
]

#question(status: "done")[
  20. What is $"Cov"(X, X + Y)$? \
    (a) $0$ #h(2em) (b) $1$ #h(2em) (c) $2$ #h(2em) (d) $3$
]
#solution[
  $
    "Cov"(X, X + Y) = "Cov"(X, X) + "Cov"(X, Y) = VV(X) + 0 = 1
  $
  *Answer: (b)*
]

#question(status: "done")[
  21. What is $"Cov"(X, X Y)$? \
    (a) $0$ #h(2em) (b) $1$ #h(2em) (c) $2$ #h(2em) (d) $3$
]
#solution[
  $
    "Cov"(X, X Y) = EE[X^2 Y] - EE[X] EE[X Y] = 0 - 0 = 0
  $
  *Answer: (a)*
]

#pagebreak()
== Exponential Lifetime

Let $X$ be an exponential random variable with parameter $1\/2$ that models the lifetime (in years) of a lightbulb.#footnote[We use the convention from AoS for the parameter of an exponential distribution.]

#question(status: "done")[
  22. What is (approximately) the probability that the lightbulb will last at least 2 years? \
    (a) $0.002$ #h(2em) (b) $0.018$ #h(2em) (c) $0.180$ #h(2em) (d) $0.810$
]
#solution[
  Under the AoS convention, $"Exp"(beta)$ has mean $beta$, so $EE[X] = 1\/2$ and rate $= 2$, we can use the survival function $PP(X >= x) = e^(-x slash beta)$:
  $
    PP(X >= 2) = e^(-2 dot 2) = e^(-4) approx 0.018
  $
  *Answer: (b)*
]

#question(status: "done")[
  23. Given that the lightbulb has already lasted for at least 3 years, what is (approximately) the probability that it will last for at least two more years? \
    (a) $0.002$ #h(2em) (b) $0.018$ #h(2em) (c) $0.180$ #h(2em) (d) $0.810$
]
#solution[
  By the memoryless property of the exponential:
  $
    PP(X >= 5 | X >= 3) = PP(X >= 2) = e^(-4) approx 0.018
  $
  *Answer: (b)*
]

#pagebreak()
== i.i.d. Sample Statistics

Let $X_1, dots, X_n$ be i.i.d with mean $mu$ and variance $sigma^2$.

#question(status: "done")[
  24. What is $EE[sum_(i=1)^n X_i]$? \
    (a) $mu$ #h(2em) (b) $n sigma$ #h(2em) (c) $n mu$ #h(2em) (d) $sigma$
]
#solution[
  By linearity of expectation:
  $
    EE[sum_(i=1)^n X_i] = n mu
  $
  *Answer: (c)*
]

#question(status: "done")[
  25. What is $VV[sum_(i=1)^n X_i]$? \
    (a) $n^2 sigma^2$ #h(2em) (b) $n sigma^2$ #h(2em) (c) $n sigma^2 + n^2 mu^2$ #h(2em) (d) $n mu$
]
#solution[
  Since the $X_i$ are independent:
  $
    VV[sum_(i=1)^n X_i] = sum_(i=1)^n VV[X_i] = n sigma^2
  $
  *Answer: (b)*
]

#question(status: "done")[
  26. What is $EE[(sum_(i=1)^n X_i)^2]$? \
    (a) $n^2 mu^2$ #h(2em) (b) $n sigma^2$ #h(2em) (c) $n mu$ #h(2em) (d) $n sigma^2 + n^2 mu^2$
]
#solution[
  $
    EE[(sum X_i)^2] = VV[sum X_i] + (EE[sum X_i])^2 = n sigma^2 + n^2 mu^2
  $
  *Answer: (d)*
]

#question(status: "done")[
  27. What is $EE[1/n sum_(i=1)^n X_i]$? \
    (a) $sigma$ #h(2em) (b) $n sigma^2$ #h(2em) (c) $n mu$ #h(2em) (d) $mu$
]
#solution[
  $
    EE[macron(X)_n] = 1/n dot n mu = mu
  $
  *Answer: (d)*
]

#question(status: "done")[
  28. What is $VV[1/n sum_(i=1)^n X_i]$? \
    (a) $mu$ #h(2em) (b) $sigma^2 \/ n$ #h(2em) (c) $sigma^2$ #h(2em) (d) $n mu$
]
#solution[
  $
    VV[macron(X)_n] = 1/n^2 dot n sigma^2 = sigma^2 / n
  $
  *Answer: (b)*
]

#pagebreak()

= Convergence of Uniforms

Let $X_n tilde "Unif"(-1\/n, 1\/n)$ and let $X$ be a random variable such that $PP(X = 0) = 1$.

#question(status: "done")[
  1. Compute and draw the CDF $F_n (x)$ and $F(x)$ of $X_n$ and $X$ respectively.
]
#solution[
  $
    F_n (x) = cases(
      0 & "if" x < -1\/n,
      (n x + 1)/2 & "if" -1\/n <= x <= 1\/n,
      1 & "if" x > 1\/n,
    )
  $
  This is a linear ramp from $0$ to $1$ on $[-1\/n, 1\/n]$.
  $
    F(x) = cases(
      0 & "if" x < 0,
      1 & "if" x >= 0,
    )
  $
  This is a unit step function at $x = 0$.

  #align(center, canvas({
    import draw: *

    set-style(
      axes: (stroke: .5pt, tick: (stroke: .5pt)),
      legend: (stroke: .5pt, orientation: ttb, item: (spacing: .25), scale: 80%),
    )

    plot.plot(
      size: (8, 5),
      x-tick-step: 0.5,
      y-tick-step: 0.5,
      y-min: -0.1,
      y-max: 1.15,
      legend: "inner-north-west",
      {
        plot.add(
          ((-1.5, 0), (-1, 0), (1, 1), (1.5, 1)),
          label: $F_1$,
          style: (stroke: blue + 0.8pt),
        )
        plot.add(
          ((-1.5, 0), (-0.5, 0), (0.5, 1), (1.5, 1)),
          label: $F_2$,
          style: (stroke: teal + 0.8pt),
        )
        plot.add(
          ((-1.5, 0), (-0.2, 0), (0.2, 1), (1.5, 1)),
          label: $F_5$,
          style: (stroke: orange + 0.8pt),
        )
        plot.add(
          ((-1.5, 0), (0, 0), (0, 1), (1.5, 1)),
          label: $F$,
          style: (stroke: (paint: red, thickness: 1.2pt, dash: "dashed")),
        )
      },
    )
  }))
]

#pagebreak()
#question(status: "done")[
  2. Does $X_n arrow.r^P X$? (prove or disprove)
]
#solution[
  *Yes.* Fix $epsilon > 0$. For $n > 1\/epsilon$:
  $
    X_n in (-1\/n, 1\/n) subset (-epsilon, epsilon)
  $
  So $|X_n| < epsilon$. Therefore $PP(|X_n| > epsilon) = 0$ for all $n > 1\/epsilon$.
]

#pagebreak()
#question(status: "done")[
  3. Does $X_n arrow.squiggly X$? (prove or disprove)
]
#solution[
  *Yes.* By definition, $X_n arrow.squiggly X$ iff $F_n (x) -> F(x)$ at every continuity point of $F$.

  The only discontinuity of $F$ is at $x = 0$, so we check $x != 0$:

  *Case $x < 0$:* Pick $N > 1\/|x|$. Then for all $n >= N$:
  $
    x < -1\/n quad => quad F_n (x) = 0 = F(x) #sym.checkmark
  $

  *Case $x > 0$:* Pick $N > 1\/x$. Then for all $n >= N$:
  $
    x > 1\/n quad => quad F_n (x) = 1 = F(x) #sym.checkmark
  $

  In both cases $F_n (x) = F(x)$ eventually, so $F_n (x) -> F(x)$.

  _Note:_ Since convergence in probability implies convergence in distribution, this also follows directly from part 2.
]

#pagebreak()

= Gaussian Probabilities

Let $X tilde cal(N)(2, 1.44)$. Note $sigma = sqrt(1.44) = 1.2$.

#question(status: "done")[
  1. $PP(2X - 1 < 0)$
]
#solution[
  $PP(2X - 1 < 0) = PP(X < 1\/2)$. Standardize:
  $
    PP(X < 1\/2) & = Phi((0.5 - 2)/1.2) \
                 & = Phi(-1.25) \
                 & = 1 - Phi(1.25) approx 0.1056
  $
]

#pagebreak()
#question(status: "done")[
  2. $PP(7\/5 <= X <= 16\/5)$
]
#solution[
  Standardize:
  $
    z_1 = (1.4 - 2)/1.2 = -0.5, quad z_2 = (3.2 - 2)/1.2 = 1
  $
  Thus:
  $
    PP & = Phi(1) - Phi(-0.5) \
       & = 0.8413 - 0.3085 = 0.5328
  $
]

#pagebreak()
#question(status: "done")[
  3. $PP(X > 16\/5 | X > 7\/5)$
]
#solution[
  Using the z-scores from part 2:
  $
    PP(X > 3.2 | X > 1.4) & = (PP(X > 3.2))/(PP(X > 1.4)) \
                          & = (1 - Phi(1))/(Phi(0.5)) \
                          & = 0.1587/0.6915 approx 0.2295
  $
]

#pagebreak()
#question(status: "done")[
  4. $PP(X <= 4\/5 "or" X >= 16\/5)$
]
#solution[
  Standardize:
  $
    z_1 = (0.8 - 2)/1.2 = -1, quad z_2 = (3.2 - 2)/1.2 = 1
  $
  These are symmetric about $0$:
  $
    PP & = Phi(-1) + [1 - Phi(1)] \
       & = 2(1 - Phi(1)) approx 2(0.1587) = 0.3174
  $
]

#pagebreak()

= Bivariate Normal

Let
$
  vec(X, Y) tilde cal(N)(vec(1, 0), mat(1, 1; 1, 2))
$
So $EE[X] = 1$, $EE[Y] = 0$, $VV[X] = 1$, $VV[Y] = 2$, $"Cov"(X, Y) = 1$.


#question(status: "done")[
  1. $VV[X]$
]
#solution[
  From the $(1,1)$ entry of the covariance matrix:
  $
    VV[X] = 1
  $
]

#pagebreak()
#question(status: "done")[
  2. $EE[Y^2 + X]$
]
#solution[
  $
    EE[Y^2 + X] & = EE[Y^2] + EE[X] \
                & = (VV[Y] + (EE[Y])^2) + EE[X] \
                & = (2 + 0) + 1 = 3
  $
]

#pagebreak()
#question(status: "done")[
  3. $EE[(X - Y)^2]$
]
#solution[
  $
    EE[(X - Y)^2] & = VV[X - Y] + (EE[X - Y])^2 \
                  & = VV[X] + VV[Y] - 2"Cov"(X, Y) + (EE[X] - EE[Y])^2 \
                  & = 1 + 2 - 2 + 1 \
                  & = 2
  $
]

#pagebreak()
#question(status: "done")[
  4. $VV[X + 2Y]$
]
#solution[
  $
    VV[X + 2Y] & = VV[X] + 4 VV[Y] + 4 "Cov"(X, Y) \
               & = 1 + 8 + 4 \
               & = 13
  $
]

#pagebreak()
#question(status: "done")[
  5. Find $alpha > 0$ such that $alpha X = Y$ with probability 1 or prove that no such $alpha$ exists.
]
#solution[
  *No such $alpha > 0$ exists.*

  If $Y = alpha X$:
  $
    EE[Y] = alpha EE[X] & => 0 = alpha dot 1 \
                        & => alpha = 0
  $
  This contradicts $alpha > 0$.

  // Alternatively:
  // $
  //   VV(Y - alpha X) & = VV[Y] + alpha^2 VV[X] - 2 alpha "Cov"(X, Y) \
  //                   & = 2 + alpha^2 - 2 alpha \
  //                   & = (alpha - 1)^2 + 1 >= 1 > 0
  // $
  // So $Y - alpha X$ cannot be a.s. zero.
]

#pagebreak()

= Lightbulb Quality Testing

== Setup

We are testing $n$ lightbulbs. Each bulb independently passes some quality check with probability $p in (0, 1)$ and fails with probability $1 - p$. Let $X_i in {0, 1}$ indicate the outcome, where $X_i = 1$ means the bulb passes.

Conditioned on $X_i$, the lifetime $Y_i$ of bulb $i$ is exponentially distributed:
$
  Y_i | (X_i = 1) tilde "Exp"(lambda_1), quad Y_i | (X_i = 0) tilde "Exp"(lambda_0),
$
where $lambda_0, lambda_1 > 0$. Assume the pairs $(X_i, Y_i)$ are i.i.d. across $i$.

#question(status: "done")[
  1. Let $(X, Y)$ be a copy of $(X_1, Y_1)$ and let $T := X Y$. Compute the following quantities in terms of $p, lambda_0, lambda_1$:
  $
    EE[Y], quad VV(Y), quad "Cov"(X, Y), quad EE[T], quad VV(T), quad "and" quad "Cov"(X, T).
  $
]
#solution[
  Using $"Exp"(lambda)$ with rate $lambda$ (mean $1\/lambda$, variance $1\/lambda^2$):

  *$EE[Y]$:*
  $
    EE[Y] = p dot 1/lambda_1 + (1 - p) dot 1/lambda_0
  $

  *$VV(Y)$:* By law of total variance, $VV(Y) = EE[VV(Y|X)] + VV(EE[Y|X])$.

  $
    EE[VV(Y|X)] & = p dot VV(Y|X=1) + (1-p) dot VV(Y|X=0) \
                & = p/lambda_1^2 + (1 - p)/lambda_0^2
  $
  $
    VV(EE[Y|X]) & = EE[(EE[Y|X])^2] - (EE[EE[Y|X]])^2 \
                & = p dot 1/lambda_1^2 + (1-p) dot 1/lambda_0^2 - (p/lambda_1 + (1-p)/lambda_0)^2 \
                & = p(1 - p)(1/lambda_1 - 1/lambda_0)^2
  $
  $
    VV(Y) = p/lambda_1^2 + (1 - p)/lambda_0^2 + p(1 - p)(1/lambda_1 - 1/lambda_0)^2
  $

  *$"Cov"(X, Y)$:*
  $
        EE[X Y] & = PP(X = 1) dot EE[Y | X = 1] \
                & = p/lambda_1 \
    "Cov"(X, Y) & = p/lambda_1 - p(p/lambda_1 + (1 - p)/lambda_0) \
                & = p(1 - p)(1/lambda_1 - 1/lambda_0)
  $

  *$EE[T]$:*
  - $T = Y$ when $X = 1$
  - $T = 0$ when $X = 0$:
  $
    EE[T] & = p dot EE[Y | X = 1] \
          & = p/lambda_1
  $

  *$VV(T)$:*

  $
    EE[T^2] & = p dot EE[Y^2 | X = 1] \
            & = p dot 2/lambda_1^2
  $
  $
    VV(T) & = 2p/lambda_1^2 - p^2/lambda_1^2 \
          & = (p(2 - p))/lambda_1^2
  $

  *$"Cov"(X, T)$:*
  $
        EE[X T] & = EE[X^2 Y] = p/lambda_1 \
    "Cov"(X, T) & = p/lambda_1 - p dot p/lambda_1 = (p(1 - p))/lambda_1
  $
]

#pagebreak()
== Central Limit Theorems

Define
$
  macron(X)_n = 1/n sum_(i=1)^n X_i, quad macron(Y)_n = 1/n sum_(i=1)^n Y_i, quad "and" quad macron(T)_n = 1/n sum_(i=1)^n X_i Y_i.
$
Write a central limit theorem for each of the following quantities in the form
$
  sqrt(n)(Z_n - mu) arrow.squiggly cal(N)(0, sigma^2) quad "or" quad sqrt(n)(Z_n - mu) arrow.squiggly cal(N)(0, Sigma),
$
depending on whether $Z_n$ is a random variable or a random vector.

#question(status: "done")[
  2. $
      Z_n = vec(macron(X)_n, macron(T)_n)
    $
]
#solution[
  By the multivariate CLT:
  $
    sqrt(n)(Z_n - mu) arrow.squiggly cal(N)(0, Sigma)
  $
  where $mu = vec(p, p\/lambda_1)$ and $Sigma$ is the covariance matrix of $(X, T)$:
  $
    Sigma = mat(
      p(1 - p), p(1 - p)\/lambda_1;
      p(1 - p)\/lambda_1, p(2 - p)\/lambda_1^2
    )
  $
]

#pagebreak()
#question(status: "done")[
  3. $Z_n = log(macron(Y)_n)$.
]
#solution[
  By the CLT:
  $
    sqrt(n)(macron(Y)_n - mu_Y) arrow.squiggly cal(N)(0, sigma_Y^2)
  $
  with $mu_Y = EE[Y]$ and $sigma_Y^2 = VV(Y)$.

  Apply the delta method with $g(y) = log(y)$, $g'(mu_Y) = 1\/mu_Y$:
  $
    sqrt(n)(log(macron(Y)_n) - log(mu_Y)) arrow.squiggly cal(N)(0, sigma_Y^2 / mu_Y^2)
  $
  where $mu_Y = p\/lambda_1 + (1 - p)\/lambda_0$ and $sigma_Y^2 = VV(Y)$ from part 1.
]

#pagebreak()
== Delta Method Estimators

Define the average lifetime among passed bulbs
$
  hat(lambda)_(1,n) = cases(
    (sum_(i=1)^n X_i Y_i) / (sum_(i=1)^n X_i) = macron(T)_n / macron(X)_n & "if" sum_(i=1)^n X_i > 0,
    0 & "if" sum_(i=1)^n X_i = 0,
  )
$
and the corresponding rate estimator
$
  hat(rho)_(1,n) = cases(
    1 / hat(lambda)_(1,n) = macron(X)_n / macron(T)_n & "if" sum_(i=1)^n X_i > 0,
    0 & "if" sum_(i=1)^n X_i = 0.
  )
$
(Note that $PP(sum_(i=1)^n X_i = 0) = (1-p)^n -> 0$, so this convention does not affect any CLT/delta-method limits.)

Write a CLT for each of the following choices of $Z_n$:

#question(status: "done")[
  4. $Z_n = hat(lambda)_(1,n)$.
]
#solution[
  $hat(lambda)_(1,n) = g(macron(X)_n, macron(T)_n)$ where $g(a, b) = b\/a$. The gradient:
  $
    nabla g(a, b) = (-b\/a^2, 1\/a)
  $
  Evaluated at $(p, p\/lambda_1)$:
  $
    nabla g = (-1/(p lambda_1), 1/p)
  $
  Computing the asymptotic variance:
  $
    Sigma nabla g = vec(0, 1/lambda_1^2) => nabla g^top Sigma nabla g = 1/(p lambda_1^2)
  $
  Therefore:
  $
    sqrt(n)(hat(lambda)_(1,n) - 1/lambda_1) arrow.squiggly cal(N)(0, 1/(p lambda_1^2))
  $
]

#pagebreak()
#question(status: "done")[
  5. $Z_n = hat(rho)_(1,n)$.
]
#solution[
  Apply the delta method to $h(x) = 1\/x$ at $x = 1\/lambda_1$, where $h'(1\/lambda_1) = -lambda_1^2$:
  $
    sqrt(n)(hat(rho)_(1,n) - lambda_1) arrow.squiggly cal(N)(0, lambda_1^4 dot 1/(p lambda_1^2)) = cal(N)(0, lambda_1^2 / p)
  $

  // Alternatively, using $g(a, b) = a\/b$ directly:
  // $
  //   nabla g(p, p\/lambda_1) = (lambda_1\/p, -lambda_1^2\/p) => nabla g^top Sigma nabla g = lambda_1^2/p
  // $
  // Confirming:
  // $
  //   sqrt(n)(hat(rho)_(1,n) - lambda_1) arrow.squiggly cal(N)(0, lambda_1^2/p)
  // $
]

// #pagebreak()

// = Extra Probability Practice (not graded)

// == Poisson Distribution

// Let $X$ be a random variable with pmf given by
// $
//   PP(X = k) = (c lambda^k) / (k!), quad k = 0, 1, 2, dots
// $
// for some $lambda > 0$.

// #question(status: "done")[
//   1. What is the value of $c$? \
//     (a) $1$ #h(2em) (b) $lambda$ #h(2em) (c) $e^(-lambda)$ #h(2em) (d) $e^lambda$
// ]
// #solution[
//   Summing over all $k$:
//   $
//     sum_(k=0)^infinity (c lambda^k)/(k!) = c e^lambda = 1 => c = e^(-lambda)
//   $
//   This is the Poisson($lambda$) distribution. *Answer: (c)*
// ]

// #question(status: "done")[
//   2. What is $EE[X]$? \
//     (a) $1$ #h(2em) (b) $lambda$ #h(2em) (c) $e^(-lambda)$ #h(2em) (d) $e^lambda$
// ]
// #solution[
//   Poisson($lambda$): $EE[X] = lambda$. *Answer: (b)*
// ]

// #question(status: "done")[
//   3. What is $VV[X]$? \
//     (a) $1$ #h(2em) (b) $lambda$ #h(2em) (c) $e^(-lambda)$ #h(2em) (d) $e^lambda$
// ]
// #solution[
//   Poisson($lambda$): $VV[X] = lambda$. *Answer: (b)*
// ]

// == Uniform Distribution

// Let $X$ be a uniform random variable in the interval $[2, 8]$.

// #question(status: "done")[
//   4. What is $EE[X]$? \
//     (a) $2$ #h(2em) (b) $3$ #h(2em) (c) $5$ #h(2em) (d) $8$
// ]
// #solution[
//   $
//     EE[X] = (2 + 8)/2 = 5
//   $
//   *Answer: (c)*
// ]

// #question(status: "done")[
//   5. What is $VV[X]$? \
//     (a) $2$ #h(2em) (b) $3$ #h(2em) (c) $5$ #h(2em) (d) $8$
// ]
// #solution[
//   $
//     VV[X] = (8 - 2)^2/12 = 36/12 = 3
//   $
//   *Answer: (b)*
// ]

// #question(status: "done")[
//   6. What#footnote[All logs are natural (base $e$) unless specified otherwise.] is $PP[log(X) <= 1]$ approximately? \
//     (a) $0.12$ #h(2em) (b) $0.8$ #h(2em) (c) $-0.1$ #h(2em) (d) $0$
// ]
// #solution[
//   $PP(log X <= 1) = PP(X <= e)$. Since $X tilde "Unif"[2, 8]$:
//   $
//     PP(X <= e) = (e - 2)/(8 - 2) = 0.718/6 approx 0.12
//   $
//   *Answer: (a)*
// ]

// == Exponential and Poisson

// Let $X$ be an exponential random variable with parameter $3$ and $Y$ be a Poisson random variable with parameter $2$. Assume that $X$ and $Y$ are independent.

// #question(status: "done")[
//   7. What is $EE[X^2 + Y^2]$? \
//     (a) $12$ #h(2em) (b) $23$ #h(2em) (c) $24$ #h(2em) (d) $36$
// ]
// #solution[
//   Using $"Exp"(beta)$ with mean $beta$:
//   $
//              EE[X^2] & = VV(X) + (EE[X])^2 = 9 + 9 = 18 \
//              EE[Y^2] & = VV(Y) + (EE[Y])^2 = 2 + 4 = 6 \
//     => EE[X^2 + Y^2] & = 18 + 6 = 24
//   $
//   *Answer: (c)*
// ]

// #question(status: "done")[
//   8. What is $EE[X^2 Y]$? \
//     (a) $12$ #h(2em) (b) $23$ #h(2em) (c) $24$ #h(2em) (d) $36$
// ]
// #solution[
//   By independence:
//   $
//     EE[X^2 Y] = EE[X^2] dot EE[Y] = 18 dot 2 = 36
//   $
//   *Answer: (d)*
// ]

// #question(status: "done")[
//   9. What is $VV(2X + 3Y)$? \
//     (a) $24$ #h(2em) (b) $34$ #h(2em) (c) $44$ #h(2em) (d) $54$
// ]
// #solution[
//   By independence:
//   $
//     VV(2X + 3Y) = 4 VV(X) + 9 VV(Y) = 36 + 18 = 54
//   $
//   *Answer: (d)*
// ]

// == Miscellaneous

// Let $X >= 0$ be a positive random variable such that $EE[X] = lambda$.

// #question(status: "done")[
//   10. Which is correct? \
//     (a) $EE[1\/X] = 1\/lambda$ #h(2em) (b) $EE[1\/X] >= 1\/lambda$ #h(2em) (c) $EE[1\/X] <= 1\/lambda$
// ]
// #solution[
//   By Jensen's inequality, $g(x) = 1\/x$ is convex for $x > 0$:
//   $
//     EE[g(X)] >= g(EE[X]) = 1/lambda
//   $
//   *Answer: (b)*
// ]

// Let $X$ and $Y$ be two random variables such that $X$ is a Bernoulli random variable with parameter $p in (0, 1)$, and $Y^2 + 2 X Y = 3 X^2$ almost surely.

// #question(status: "done")[
//   11. What is $EE[Y]$? \
//     (a) $0$ #h(2em) (b) $-3p$ #h(2em) (c) $X$ #h(2em) (d) $-3X$ #h(2em) (e) Some number in $[-3, 1]$
// ]
// #solution[
//   Factor:
//   $
//     Y^2 + 2 X Y - 3 X^2 = (Y + 3X)(Y - X) = 0 "a.s."
//   $
//   So $Y = X$ or $Y = -3X$ a.s.

//   - When $X = 0$: $Y = 0$
//   - When $X = 1$: $Y in {1, -3}$, but the split is not determined

//   Let $q = PP(Y = 1 | X = 1)$:
//   $
//     EE[Y] = p(q dot 1 + (1 - q)(-3)) = p(4q - 3)
//   $
//   This ranges over $[-3p, p] subset [-3, 1]$ as $q$ varies. *Answer: (e)*
// ]

// Let $X$ and $Y$ be two independent, identically distributed random variables.

// #question(status: "done")[
//   12. Compute the conditional expectation $EE[X | X + Y = x]$. \
//     (a) $x\/2$ #h(2em) (b) $x$ #h(2em) (c) $-x$ #h(2em) (d) $0$
// ]
// #solution[
//   By symmetry ($X$ and $Y$ are i.i.d.):
//   $
//     EE[X | X + Y = x] = EE[Y | X + Y = x]
//   $
//   Adding these:
//   $
//      2 EE[X | X + Y = x] & = EE[X + Y | X + Y = x] = x \
//     => EE[X | X + Y = x] & = x/2
//   $
//   *Answer: (a)*
// ]
