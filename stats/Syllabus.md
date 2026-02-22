# 18.650 - Fundamentals of Statistics

## Course Information

- **Term:** Spring 2026 (AY 2025-2026)
- **Meeting Times:** Monday, Wednesday, Friday, 1:00–2:00 pm
- **Location:** 2-190

## Course Resources

- [Canvas](CANVAS_URL)
- [Gradescope](GRADESCOPE_URL)
- [Piazza](PIAZZA_URL)
- Lecture Recordings: Posted on Canvas after processing

## Course Staff

### Instructor

<!-- Instructor name not listed in Canvas syllabus -->

### Teaching Assistants / Office Hours

| Name                  | Day | Time        | Location |
| --------------------- | --- | ----------- | -------- |
| Julia Kozak           | Mon | 11am–12pm   | 2-142    |
| Aleksander Zimin      | Tue | 4–5pm       | 2-142    |
| Cedric Kamkoum        | Wed | 11am–12pm   | 2-147    |
| Mohammad Reza Karimi  | Wed | 2–3pm       | 2-103    |
| Hang Du               | Thu | 11am–12pm   | 2-136    |
| Gracie Sheng          | Fri | 3–4pm       | 2-143    |

No office hours or recitations during the first week of class.

### Recitations

| Section   | Time              | Location | TA               |
| --------- | ----------------- | -------- | ---------------- |
| Section 1 | Thursdays 1–2 pm  | 4-270    | Cedric Kamkoum   |
| Section 2 | Thursdays 3–4 pm  | 4-153    | Aleksander Zimin |

## Course Description

Welcome to the Spring 2026 offering of 18.650, Course 18's largest and most advanced statistics class! We will cover a broad range of statistical ideas at a brisk pace. Our main text is Larry Wasserman's *All of Statistics* (hereafter "the book"). The title is somewhat ambitious, but it will often feel accurate.

This is a theoretical statistics course with a strong emphasis on *why* and *when* methods work. Following the course will require a reasonable level of mathematical maturity (see Prerequisites below).

### Learning Objectives

By the end of the course, you should be able to:

1. Formulate a statistical model from a real-world problem.
2. Understand the role of mathematics in the design and analysis of statistical methods.
3. Select appropriate statistical methods for a given problem.
4. Evaluate the assumptions, implications, and limitations of various methods.
5. Take an ML class and actually understand what is happening "under the hood."
6. Crush the statistics portion of technical interviews (e.g., hedge funds, data science).

## Prerequisites

- Calculus I (GIR)
- Probability at the level of 18.600 or 6.041 (comfortable with the first three chapters of the book)
- Linear algebra fundamentals (vectors, matrices, orthogonality, inner products, etc.)

Pset 1 is a review of key probability concepts. If you find it difficult, spend time studying the first three chapters of the book.

## Required Materials

- Larry Wasserman. *All of Statistics*. Springer, 2004. (~$40 new, also available free via [SpringerLink PDF](https://link.springer.com/) through MIT Libraries)
- All editions are effectively equivalent; use whichever is most convenient.
- If you print your own copy for the final exam, it must be a **bound** copy (loose pages not allowed).

## Grading Structure

| Component | Weight | Details                                     |
| --------- | ------ | ------------------------------------------- |
| Homework  | 40%    | 4 PSets, turned in via Gradescope           |
| Midterms  | 30%    | 3 in-class tests (see dates below)          |
| Final     | 30%    | TBA                                         |

**Additional credit:** For every 10 endorsed answers on Piazza, you receive 1 additional point on your final exam (capped at 100).

**Exam make-ups:** No policy of dropping the lowest midterm. Missed exams require documentation and will be replaced with an oral make-up. Contact the instructor directly via email.

## Course Schedule

### Tentative Lecture Schedule

| L#  | Date   | Topics                                      | Chapter |
| --- | ------ | ------------------------------------------- | ------- |
|     |        | **Part 1: Probability and Basics**          |         |
| 1   | Feb 2  | Overview                                    | other   |
| 2   | Feb 4  | Descriptive statistics                      | other   |
| 3   | Feb 6  | Convergence of random variables             | 5       |
| 4   | Feb 9  | The Gaussian distribution                   | 2, 3    |
| 5   | Feb 11 | Multivariate distributions                  | 2, 14   |
| 6   | Feb 13 | Multivariate Gaussian and limit theorems    | 5, 14   |
|     | Feb 16 | HOLIDAY (President's Day)                   |         |
| 7   | Feb 17 | Statistical models and point estimation     | 6       |
| 8   | Feb 18 | Estimators and confidence intervals         | 6       |
|     | Feb 20 | Review session for Midterm 1                |         |
|     | Feb 23 | **Midterm 1** (Walker 50-340)               |         |
|     |        | **Part 2: Statistical Estimation**          |         |
| 9   | Feb 25 | Parameter estimation                        | 9       |
| 10  | Feb 27 | Properties of the MLE                       | 9       |
| 11  | Mar 2  | MLE algorithms and mixture models           | 9       |
| 12  | Mar 4  | The EM algorithm                            | 9       |
| 13  | Mar 6  | Method of moments and Intro to Bootstrap    | 8       |
| 14  | Mar 9  | Bootstrap properties and confidence intervals | 8     |
|     |        | **Part 3: Hypothesis Testing**              |         |
| 15  | Mar 11 | Hypothesis testing I                        | 6, 10   |
| 16  | Mar 13 | Hypothesis testing II                       | 10      |
| 17  | Mar 16 | p-values                                    | 10      |
|     | Mar 18 | Review session for Midterm 2                |         |
|     | Mar 20 | **Midterm 2** (26-100)                      |         |
|     | Mar 23–27 | SPRING BREAK                             |         |
| 18  | Mar 30 | t-test and chi-squared test                 | 10      |
| 19  | Apr 1  | Nonparametric tests                         | 10      |
| 20  | Apr 3  | Multiple hypothesis testing                 | 10      |
|     |        | **Part 4: Bayesian Inference**              |         |
| 21  | Apr 6  | Bayesian inference I                        | 11      |
| 22  | Apr 8  | Bayesian inference II                       | 11      |
|     |        | **Part 5: Regression**                      |         |
| 23  | Apr 10 | Linear Regression I                         | 13      |
| 24  | Apr 13 | Linear Regression II                        | 13      |
| 25  | Apr 15 | Logistic Regression                         | 13      |
| 26  | Apr 17 | Bayesian linear regression                  | other   |
|     | Apr 20 | HOLIDAY (Patriot's Day)                     |         |
|     | Apr 22 | Review session for Midterm 3                |         |
|     | Apr 24 | **Midterm 3** (26-100)                      |         |
|     |        | **Part 6: Advanced Topics**                 |         |
| 27  | Apr 27 | Model selection                             | 13      |
| 28  | Apr 29 | Survival analysis                           | other   |
| 29  | May 1  | Causal inference                            | 16      |
| 30  | May 4  | Non-parametric curve estimation I           | 20      |
| 31  | May 6  | Non-parametric curve estimation II          | 20      |
| 32  | May 8  | Survey sampling                             | other   |
| 33  | May 11 | Data visualization: PCA, MDS, t-SNE        | other   |

### Assignments

- **Late Policy:** 4 late days total across the semester. At most 2 late days per Pset. Late days counted in full-day increments. Submitted after Friday of the due week receives a 0.

| Assignment | Due Date         |
| ---------- | ---------------- |
| Pset 1     | Wed, Feb. 18     |
| Pset 2     | Wed, Mar. 11     |
| Pset 3     | Wed, Apr. 8      |
| Pset 4     | Wed, May. 6      |

Homeworks are due on Gradescope by 11:59 pm Eastern Time.

### Exams

In-class tests last from 1:05 pm to 1:55 pm.

| Exam       | Date            | Location       |
| ---------- | --------------- | -------------- |
| Midterm 1  | Mon, Feb. 23    | Walker 50-340  |
| Midterm 2  | Fri, Mar. 20    | 26-100         |
| Midterm 3  | Fri, Apr. 24    | 26-100         |
| Final      | TBA             | TBA            |

All exams are closed notes. You may bring **one double-sided letter-sized cheat sheet** to each midterm and to the final. You may also bring the textbook (*All of Statistics*) **only to the final exam**, not to midterms.

## Course Policies

### Collaboration & AI Policy

You are encouraged to collaborate with classmates, but verbatim copying is strictly forbidden. On each submission, list the names of any collaborators. Each student must produce their own write-up, in their own words, and be able to explain their solutions if asked. You may use the PSet Partners matching tool or Piazza to find partners.

### Attendance Policy

Lectures will be recorded and posted on Canvas, but recordings are a supplementary resource, not a substitute for attendance. In-person attendance is highly encouraged. Technical issues may occasionally prevent recordings from being available.

### Academic Integrity

Do not ask for or post problem set solutions on Piazza. You should be able to explain your reasoning in a meeting. Make a serious attempt on each problem before seeking help.

### Communication Policy

All announcements and discussions take place on Piazza. Use Piazza instead of email for most course-related questions (except private or personal matters). Questions about homework grading should be addressed on Gradescope first; if unresolved, discuss with the instructor.

This syllabus is subject to minor adjustments; any changes will be announced on Piazza.
