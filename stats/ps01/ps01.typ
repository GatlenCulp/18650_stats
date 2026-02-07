#import "../preamble.typ": *

#show: homework.with(
  title: "PS01",
  date: datetime(year: 2026, month: 2, day: 18),
)

#show: style.with()

#set heading(numbering: "1.1")

= Probability Review

#question(status: "todo")[
  Please use the accompanying bubble sheet for submitting your solutions for this problem.

  In what follows, $Phi$ is the CDF of the standard Gaussian (Normal) distribution.

  Let $X$ be a random variable taking values between $0$ and $pi$, with pdf given by
  $
    f(x) = c sin x, quad x in [0, pi].
  $

  1. What is the value of $c$? #h(1em) (a) $pi$ #h(1em) (b) $1\/2$ #h(1em) (c) $2$ #h(1em) (d) $1\/pi$

  2. What is $EE[X]$? #h(1em) (a) $pi\/2$ #h(1em) (b) $pi$ #h(1em) (c) $1$ #h(1em) (d) $1\/2$

  Let $X$ be a Gaussian random variable with mean $mu > 0$ and variance $sigma^2$.

  3. What is $EE[X]$? #h(1em) (a) $0$ #h(1em) (b) $sigma^2$ #h(1em) (c) $mu^2 + sigma^2$ #h(1em) (d) $mu$

  4. What is $VV[X]$? #h(1em) (a) $sigma^2$ #h(1em) (b) $mu^2 + sigma^2$ #h(1em) (c) $mu^2$ #h(1em) (d) $sigma$

  5. What is $EE[X^2]$? #h(1em) (a) $mu^2$ #h(1em) (b) $(mu + sigma)^2$ #h(1em) (c) $mu^2 + sigma^2$ #h(1em) (d) $sigma^2$

  6. What is $EE[X^3]$? #h(1em) (a) $mu^3 + 3 mu sigma$ #h(1em) (b) $mu^3 + 3 mu sigma^2$ #h(1em) (c) $mu^3$ #h(1em) (d) $3 mu sigma^2$

  7. What is $VV[X^2]$? #h(1em) (a) $4 mu^2 sigma^2$ #h(1em) (b) $(mu^2 + sigma^2)^2$ #h(1em) (c) $2 sigma^4$ #h(1em) (d) $4 mu^2 sigma^2 + 2 sigma^4$

  8. What is $PP(X > 0)$ in terms of $Phi$? \
    (a) $Phi(mu\/sigma)$ #h(1em) (b) $Phi(mu\/sigma^2)$ #h(1em) (c) $1 - Phi(mu\/sigma)$ #h(1em) (d) $Phi(mu)$

  Let $X tilde "Lognormal"(mu, sigma^2)$, i.e., $log X tilde cal(N)(mu, sigma^2)$ with $sigma > 0$.

  9. What is $EE[X]$? #h(1em) (a) $e^mu$ #h(1em) (b) $e^(mu + sigma^2 \/ 2)$ #h(1em) (c) $e^(mu + sigma^2)$ #h(1em) (d) $mu + sigma^2 \/ 2$

  10. What is the median of $X$? #h(1em) (a) $e^(mu + sigma^2 \/ 2)$ #h(1em) (b) $e^(mu - sigma^2)$ #h(1em) (c) $e^mu$ #h(1em) (d) $mu$

  11. What is $PP(X > 1)$ in terms of $Phi$? \
    (a) $1 - Phi(mu\/sigma)$ #h(1em) (b) $Phi(mu)$ #h(1em) (c) $Phi(mu\/sigma^2)$ #h(1em) (d) $Phi(mu\/sigma)$

  Let $X, Y tilde "Lognormal"(0, 1)$ be independent.

  12. What is $PP(X Y > 1)$? #h(1em) (a) $1\/4$ #h(1em) (b) $1\/2$ #h(1em) (c) $1\/sqrt(2 pi)$ #h(1em) (d) $1\/e$

  Let $X$ be a random variable such that
  $
    X = cases(
      1 &"with probability" p,
      -1 &"with probability" 1 - p,
    )
  $
  for some $p in [0, 1]$.

  13. What is $EE[X]$? #h(1em) (a) $-p$ #h(1em) (b) $p$ #h(1em) (c) $1 - 2p$ #h(1em) (d) $2p - 1$

  14. What is $VV[X]$? #h(1em) (a) $p(1-p)$ #h(1em) (b) $4p - p^2$ #h(1em) (c) $4p(1-p)$ #h(1em) (d) $4p^2(1-p)$

  15. For what $p$ is $VV[X]$ maximized? #h(1em) (a) $1$ #h(1em) (b) $0$ #h(1em) (c) $0.5$ #h(1em) (d) $1\/sqrt(2)$

  16. What is $EE[X^k]$? \
    (a) $p^k$ #h(1em) (b) $p^k - (1-p)^k$ #h(1em) (c) $p(-1)^k + (1-p)$ #h(1em) (d) $p + (1-p)(-1)^k$

  Let $X, Y$ be two independent standard Gaussian random variables.

  17. What is $EE[X^2 Y]$? #h(1em) (a) $0$ #h(1em) (b) $1$ #h(1em) (c) $2$ #h(1em) (d) $3$

  18. What is $VV(X + Y)$? #h(1em) (a) $0$ #h(1em) (b) $1$ #h(1em) (c) $2$ #h(1em) (d) $3$

  19. What is $VV(X Y)$? #h(1em) (a) $0$ #h(1em) (b) $1$ #h(1em) (c) $2$ #h(1em) (d) $3$

  20. What is $"Cov"(X, X + Y)$? #h(1em) (a) $0$ #h(1em) (b) $1$ #h(1em) (c) $2$ #h(1em) (d) $3$

  21. What is $"Cov"(X, X Y)$? #h(1em) (a) $0$ #h(1em) (b) $1$ #h(1em) (c) $2$ #h(1em) (d) $3$

  Let $X$ be an exponential random variable with parameter $1\/2$ that models the lifetime (in years) of a lightbulb.#footnote[We use the convention from AoS for the parameter of an exponential distribution.]

  22. What is (approximately) the probability that the lightbulb will last at least 2 years? \
    (a) $0.002$ #h(1em) (b) $0.018$ #h(1em) (c) $0.180$ #h(1em) (d) $0.810$

  23. Given that the lightbulb has already lasted for at least 3 years, what is (approximately) the probability that it will last for at least two more years? \
    (a) $0.002$ #h(1em) (b) $0.018$ #h(1em) (c) $0.180$ #h(1em) (d) $0.810$

  Let $X_1, dots, X_n$ be i.i.d with mean $mu$ and variance $sigma^2$.

  24. What is $EE[sum_(i=1)^n X_i]$? #h(1em) (a) $mu$ #h(1em) (b) $n sigma$ #h(1em) (c) $n mu$ #h(1em) (d) $sigma$

  25. What is $VV[sum_(i=1)^n X_i]$? #h(1em) (a) $n^2 sigma^2$ #h(1em) (b) $n sigma^2$ #h(1em) (c) $n sigma^2 + n^2 mu^2$ #h(1em) (d) $n mu$

  26. What is $EE[(sum_(i=1)^n X_i)^2]$? #h(1em) (a) $n^2 mu^2$ #h(1em) (b) $n sigma^2$ #h(1em) (c) $n mu$ #h(1em) (d) $n sigma^2 + n^2 mu^2$

  27. What is $EE[1/n sum_(i=1)^n X_i]$? #h(1em) (a) $sigma$ #h(1em) (b) $n sigma^2$ #h(1em) (c) $n mu$ #h(1em) (d) $mu$

  28. What is $VV[1/n sum_(i=1)^n X_i]$? #h(1em) (a) $mu$ #h(1em) (b) $sigma^2 \/ n$ #h(1em) (c) $sigma^2$ #h(1em) (d) $n mu$
]

#solution[
  1. $c integral_0^pi sin x dd(x)$ would need to integrate to $1$. Integral of $sin x$ is $- cos x$. So we have $- cos pi + cos 0 = 1 + 1 = 2$. So $c = 1/2$
  2. This would be $(integral_0^pi x f(x) dd(x)) / pi$ -- the weighted average of values, right? actually no shouldn't need to divide.
]

#pagebreak()

= Convergence of Uniforms

#question(status: "todo")[
  Let $X_n tilde "Unif"(-1\/n, 1\/n)$ and let $X$ be a random variable such that $PP(X = 0) = 1$.

  + Compute and draw the CDF $F_n (x)$ and $F(x)$ of $X_n$ and $X$ respectively.

  + Does $X_n arrow.r^P X$? (prove or disprove)

  + Does $X_n arrow.squiggly X$? (prove or disprove)
]

#pagebreak()

= Gaussian Probabilities

#question(status: "todo")[
  Let $X tilde cal(N)(2, 1.44)$. Compute the following probabilities:

  + $PP(2X - 1 < 0)$

  + $PP(7\/5 <= X <= 16\/5)$

  + $PP(X > 16\/5 | X > 7\/5)$

  + $PP(X <= 4\/5 "or" X >= 16\/5)$
]

#pagebreak()

= Bivariate Normal

#question(status: "todo")[
  Let
  $
    vec(X, Y) tilde cal(N)(vec(1, 0), mat(1, 1; 1, 2))
  $
  Compute the following quantities (show your work):

  + $VV[X]$

  + $EE[Y^2 + X]$

  + $EE[(X - Y)^2]$

  + $VV[X + 2Y]$

  + Find $alpha > 0$ such that $alpha X = Y$ with probability 1 or prove that no such $alpha$ exists.
]

#pagebreak()

= Lightbulb Quality Testing

#question(status: "todo")[
  We are testing $n$ lightbulbs. Each bulb independently passes some quality check with probability $p in (0, 1)$ and fails with probability $1 - p$. Let $X_i in {0, 1}$ indicate the outcome, where $X_i = 1$ means the bulb passes.

  Conditioned on $X_i$, the lifetime $Y_i$ of bulb $i$ is exponentially distributed:
  $
    Y_i | (X_i = 1) tilde "Exp"(lambda_1), quad Y_i | (X_i = 0) tilde "Exp"(lambda_0),
  $
  where $lambda_0, lambda_1 > 0$. Assume the pairs $(X_i, Y_i)$ are i.i.d. across $i$.

  + Let $(X, Y)$ be a copy of $(X_1, Y_1)$ and let $T := X Y$. Compute the following quantities in terms of $p, lambda_0, lambda_1$:
    $
      EE[Y], quad VV(Y), quad "Cov"(X, Y), quad EE[T], quad VV(T), quad "and" quad "Cov"(X, T).
    $

  Define
  $
    overline(X)_n = 1/n sum_(i=1)^n X_i, quad overline(Y)_n = 1/n sum_(i=1)^n Y_i, quad "and" quad overline(T)_n = 1/n sum_(i=1)^n X_i Y_i.
  $
  Write a central limit theorem for each of the following quantities in the form
  $
    sqrt(n)(Z_n - mu) arrow.squiggly cal(N)(0, sigma^2) quad "or" quad sqrt(n)(Z_n - mu) arrow.squiggly cal(N)(0, Sigma),
  $
  depending on whether $Z_n$ is a random variable or a random vector.

  + $Z_n = vec(overline(X)_n, overline(T)_n)$.

  + $Z_n = log(overline(Y)_n)$.

  Define the average lifetime among passed bulbs
  $
    hat(lambda)_(1,n) = cases(
      (sum_(i=1)^n X_i Y_i) / (sum_(i=1)^n X_i) = overline(T)_n / overline(X)_n &"if" sum_(i=1)^n X_i > 0,
      0 &"if" sum_(i=1)^n X_i = 0,
    )
  $
  and the corresponding rate estimator
  $
    hat(rho)_(1,n) = cases(
      1 / hat(lambda)_(1,n) = overline(X)_n / overline(T)_n &"if" sum_(i=1)^n X_i > 0,
      0 &"if" sum_(i=1)^n X_i = 0.
    )
  $
  (Note that $PP(sum_(i=1)^n X_i = 0) = (1-p)^n -> 0$, so this convention does not affect any CLT/delta-method limits.)

  Write a CLT for each of the following choices of $Z_n$:

  + $Z_n = hat(lambda)_(1,n)$.

  + $Z_n = hat(rho)_(1,n)$.
]

#pagebreak()

= Extra Probability Practice (not graded)

#question(status: "todo")[
  Let $X$ be a random variable with pmf given by
  $
    PP(X = k) = (c lambda^k) / (k!), quad k = 0, 1, 2, dots
  $
  for some $lambda > 0$.

  + What is the value of $c$? #h(1em) (a) $1$ #h(1em) (b) $lambda$ #h(1em) (c) $e^(-lambda)$ #h(1em) (d) $e^lambda$

  + What is $EE[X]$? #h(1em) (a) $1$ #h(1em) (b) $lambda$ #h(1em) (c) $e^(-lambda)$ #h(1em) (d) $e^lambda$

  + What is $VV[X]$? #h(1em) (a) $1$ #h(1em) (b) $lambda$ #h(1em) (c) $e^(-lambda)$ #h(1em) (d) $e^lambda$

  Let $X$ be a uniform random variable in the interval $[2, 8]$.

  + What is $EE[X]$? #h(1em) (a) $2$ #h(1em) (b) $3$ #h(1em) (c) $5$ #h(1em) (d) $8$

  + What is $VV[X]$? #h(1em) (a) $2$ #h(1em) (b) $3$ #h(1em) (c) $5$ #h(1em) (d) $8$

  + What#footnote[All logs are natural (base $e$) unless specified otherwise.] is $PP[log(X) <= 1]$ approximately? \
    (a) $0.12$ #h(1em) (b) $0.8$ #h(1em) (c) $-0.1$ #h(1em) (d) $0$

  Let $X$ be an exponential random variable with parameter $3$ and $Y$ be a Poisson random variable with parameter $2$. Assume that $X$ and $Y$ are independent.

  + What is $EE[X^2 + Y^2]$? #h(1em) (a) $12$ #h(1em) (b) $23$ #h(1em) (c) $24$ #h(1em) (d) $36$

  + What is $EE[X^2 Y]$? #h(1em) (a) $12$ #h(1em) (b) $23$ #h(1em) (c) $24$ #h(1em) (d) $36$

  + What is $VV(2X + 3Y)$? #h(1em) (a) $24$ #h(1em) (b) $34$ #h(1em) (c) $44$ #h(1em) (d) $54$

  Let $X >= 0$ be a positive random variable such that $EE[X] = lambda$.

  + Which is correct? \
    (a) $EE[1\/X] = 1\/lambda$ #h(1em) (b) $EE[1\/X] >= 1\/lambda$ #h(1em) (c) $EE[1\/X] <= 1\/lambda$

  Let $X$ and $Y$ be two random variables such that $X$ is a Bernoulli random variable with parameter $p in (0, 1)$, and $Y^2 + 2 X Y = 3 X^2$ almost surely.

  + What is $EE[Y]$? \
    (a) $0$ #h(1em) (b) $-3p$ #h(1em) (c) $X$ #h(1em) (d) $-3X$ #h(1em) (e) Some number in $[-3, 1]$

  Let $X$ and $Y$ be two independent, identically distributed random variables.

  + Compute the conditional expectation $EE[X | X + Y = x]$. \
    (a) $x\/2$ #h(1em) (b) $x$ #h(1em) (c) $-x$ #h(1em) (d) $0$
]
