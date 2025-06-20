# Relationship Table

This table defines all relationships between constructs in the VAST model. Each relation is classified by type (causal `c`, probabilistic `p`, or reasoning `r`), strength, and supporting words/phrases from Gagné et al. (2022). Moderators and correlation values are noted where applicable.

**Note:** The link from `REMOTE_WORK_CONTEXT` to `AUTONOMY_SUPPORT` was originally formalized as a reasoning link (`r`) in the VAST model. To preserve this pathway in the DAG representation—necessary for explaining observed inter-need correlations—it is reclassified here as a **causal link (`c`)**, reflecting a plausible reinterpretation in which autonomy-supportive practices evolve as a downstream response to remote work implementation. This change is explained in the main text (ISSUE 2 discussion) and flagged here as a theoretically grounded modeling choice with implications for temporal measurement.

| From | To | Type (strength) | Key words (strength indicator) | Moderator | Comment |
|------|----|------------------|---------------------------------|-----------|---------|
| REMOTE_WORK_CONTEXT | CONTEXTUAL_COMPETENCE_CONDITIONS | c (weak) | might thwart | – | Remote work can introduce competence barriers under poor conditions. Source: Gagné et al. (2022) |
| REMOTE_WORK_CONTEXT | SOCIAL_CONNECTION_CONDITIONS | c (moderate) | can present | – | Remote work can challenge relatedness if not well-structured. Source: Gagné et al. (2022) |
| REMOTE_WORK_CONTEXT | AUTONOMY_SUPPORT | c (moderate) | reinterpreted from "important to" | – | Reclassified as causal link for DAG translation. Reflects that autonomy-supportive practices may be developed in response to remote work. Measurement must occur after remote work adoption. See main text (ISSUE 2). |
| REMOTE_WORK_CONTEXT | NEED_SATISFACTION_AUTONOMY | c (moderate) | experience increased autonomy | – | Structural effect: absence of workplace routines increases autonomy. Source: Gagné et al. (2022), p. 7 |
| HYBRID_WORK_CONTEXT | NEED_SATISFACTION_AUTONOMY | c (moderate) | seems to offer | – | Hybrid work can promote autonomy if well designed. Source: Gagné et al. (2022) |
| HYBRID_WORK_CONTEXT | NEED_SATISFACTION_RELATEDNESS | c (moderate) | seems to offer | – | Hybrid work can promote relatedness if well structured. Source: Gagné et al. (2022) |
| AUTONOMY_SUPPORT | NEED_SATISFACTION_AUTONOMY | c (strong) | leads to | Emotional Stability (moderator) | Autonomy-supportive management increases autonomy satisfaction. Source: Gagné et al. (2022) |
| CONTEXTUAL_COMPETENCE_CONDITIONS | NEED_SATISFACTION_COMPETENCE | c (weak) | might thwart | – | Competence conditions influence competence satisfaction. Source: Gagné et al. (2022) |
| SOCIAL_CONNECTION_CONDITIONS | NEED_SATISFACTION_RELATEDNESS | c (strong) | lead to | – | Social connection conditions influence relatedness satisfaction. Source: Gagné et al. (2022) |
| NEED_SATISFACTION_AUTONOMY | NEED_SATISFACTION_RELATEDNESS | p (strong) | correlation r = 0.629 | – | Inter-need correlation. Source: Brunelle & Fortin (2021) |
| NEED_SATISFACTION_AUTONOMY | NEED_SATISFACTION_COMPETENCE | p (moderate) | correlation r = 0.474 | – | Inter-need correlation. Source: Brunelle & Fortin (2021) |
| NEED_SATISFACTION_RELATEDNESS | NEED_SATISFACTION_COMPETENCE | p (weak-moderate) | correlation r = 0.301 | – | Inter-need correlation. Source: Brunelle & Fortin (2021) |
| NEED_SATISFACTION_AUTONOMY | INTRINSIC_MOTIVATION | c (strong) | significantly related to | – | Core SDT causal link. Source: Gagné et al. (2022) |
| NEED_SATISFACTION_COMPETENCE | INTRINSIC_MOTIVATION | c (strong) | significantly related to | – | Core SDT causal link. Source: Gagné et al. (2022) |
| NEED_SATISFACTION_RELATEDNESS | INTRINSIC_MOTIVATION | c (strong) | significantly related to | – | Core SDT causal link. Source: Gagné et al. (2022) |
| INTRINSIC_MOTIVATION | JOB_SATISFACTION | p (moderate) | correlation r = 0.48 | – | Probabilistic relation based on meta-analytic evidence. Source: Van den Broeck et al. (2021) |

