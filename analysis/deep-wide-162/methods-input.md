# Section 1. Net Impact Analysis Description

In evaluating the effectiveness and efficiency of social programs, there is often an interest in assessing a program's *net impact*---the estimated effect of program participation on outcomes such as income or employment, relative to those who do not participate in a program, taking into account pre-existing differences between those two groups. This usually represents a quasi-experimental comparison, where individuals are naturally choosing whether or not to participate in the program rather than undergoing random assignment, making straightforward interpretations of group differences difficult. The methods for conducting this comparison in a statistically robust way represent a **Net Impact Analysis**. This type of analysis has long been employed by staff in the ministry of Seniors, Community and Social Services as a means of better understanding program outcomes and as a way of providing financial justification for program expenses. If it can be demonstrated that an employment services or other program significantly increases the likelihood of employment, improves income, or helps reduce other government costs (e.g., use of Income Support), such would help establish the social and financial value of SCSS programming.

This document outlines a consistent methodology for conducting Net Impact Analyses within SCSS, and provides a detailed description of how it is applied within research, evaluation, and reporting contexts. It is intended for use by those wanting to better understand this methodology as well as those attempting to replicate it in other contexts.

# Section 2. General Methodology

## Balancing Methodology

The standard SCSS Net Impact Analysis (NIA) methodology relies on a propensity score weighting methodology to balance intervention and comparison groups, calculating propensity scores based on all observed confounding variables[^1]. Propensity scores were used to reweight comparison cases for each intervention (those in the sample who did not participate in the selected intervention) so that the distribution of observed confounding variables matched clients who did participate in the intervention. Where applicable, scores are balanced on the following demographic variables:

[^1]: Austin, P. C. (2011). An introduction to propensity score methods for reducing the effects of confounding in observational studies. *Multivariate behavioral research, 46*(3), 399-424.

-   **Gender** (using three variables for categories of Male, Female, and Other/Missing)

-   **Age** (using age in years; in cases where age categories are used the following age bands are preferred: 15-24 (youth), 25-34, 35-44, 45-54, and 55+ (senior))

-   **Ethnicity** (using three variables for categories of Indigenous, Caucasian and Other/Missing, as well as a separate variable indicating whether a client is a visible minority)

-   **Immigration Status** (using two variables of Born in Canada and Immigrant)

-   **Disability** (using two variables for those With and Without a reported disability)

-   **Marital Status** (using four variables for Together, Apart, Never Married, and Missing)

-   **Educational Attainment** (using five variables for Less than High School, High School Diploma, Some Post-High-School Education, University Degree, and Missing)

-   **Number of Dependents** (using four variables for 0, 1, 2, and 3+ dependents)

-   **Client Region** (using variables for each of the SCSS regions: North West, North East, Edmonton, Central, Calgary, and South; the North Central region is also included for clients with data prior to the region rework).

Additional balancing variables may also be included where appropriate for specific projects or research questions (e.g., balancing on pre-intervention income when assessing income changes).

Propensity score reweighting is conducted in R Studio using the twang package[^2]. An example of the code used when running that package is included below:

[^2]: <https://cran.r-project.org/web/packages/twang/vignettes/twang.pdf>

![](../libs/docs/vfm-methodology/media/image2.png)

*Note on sample size.* The primary pressure on sample size comes from the balancing procedure, which is data-hungry and seems to produce suboptimal results when group size drops below N=500. However, this is not an empirically tested threshold and likely depends on other factors, such as heterogeneity of the group on other demographic factors.

## Income Support 

There are three types of Financial Assistance in Alberta:
- One time Issues (OTI)
- Income Support (IS)
- Assured Income for the Severely Handicapped (AISH)

Sometimes the termm "Income Support" is used to refer to all three types of Financial Assistance, but in this document "Income Support" refers specifically to the second type of Financial Assistance.

## Programs to evaluate

In this program we define "intervention" as participation any of the Career Information programs listed in the ./analysis/deep-wide-162/intervention-definition.md file. We are interested in estimating the impact of each program individually, but not more granuar than column intervention1 specifies. 
