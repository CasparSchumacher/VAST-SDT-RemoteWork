# Core Phenomena and UTOS Framework

This document lists the five central empirical phenomena that the model is intended to explain, based on Gagné et al. (2022). Each phenomenon is structured using the UTOS framework (Units, Treatments, Outcomes, Settings), followed by an evaluation of its empirical robustness and a summary of the corresponding VAST modeling decision.

---

## **P1 – Remote Work and Autonomy Need Satisfaction**

**Short description:**  
Structured remote or hybrid work can enhance employees’ autonomy through increased flexibility in time, location, and task execution.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Knowledge workers in flexible, digital jobs |
| Treatments | Hybrid or remote work with autonomy-supportive design |
| Outcomes | Satisfaction of autonomy need (e.g., volition, self-initiation) |
| Settings | Post-2020, hybrid-enabled organizational environments |

**Evidence strength:**  
Moderate–strong. Theoretically grounded and supported by workplace studies. Moderated by implementation quality.

**VAST representation:**

HYBRID_WORK_CONTEXT →c NEED_SATISFACTION_AUTONOMY


## **P2 – Remote Work and Competence Frustration** 

**Short description:**  
When remote work is poorly implemented, disruptions such as communication overload, vague expectations, and technology breakdowns can undermine employees’ perceived competence.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Remote workers in cognitively demanding or autonomy-critical roles |
| Treatments | Fragmented communication, task ambiguity, tech failures |
| Outcomes | Lower competence need satisfaction |
| Settings | Digitally mediated, distributed, or asynchronous work teams |

**Evidence strength:**  
Moderate. Gagné et al. (2022) identify multiple plausible mechanisms, including digital friction, multitasking, and malfunctioning tools. While these are theoretically sound and intuitively compelling, the empirical evidence base remains scattered and non-causal.

**VAST representation:**

REMOTE_WORK_CONTEXT →c CONTEXTUAL_COMPETENCE_THREATS
CONTEXTUAL_COMPETENCE_THREATS →c (–) NEED_SATISFACTION_COMPETENCE

## P3 – Remote Work and Relatedness Frustration

**Short description:**  
Remote work can reduce opportunities for informal interaction, social support, and team belonging, which may lead to lower satisfaction of the need for relatedness—particularly when virtual collaboration lacks intentional structure.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Remote and hybrid employees in team-based environments |
| Treatments | Absence of informal contact, weak virtual cohesion, poor interaction design |
| Outcomes | Reduced relatedness need satisfaction |
| Settings | Distributed or remote-first teams, low social structure |

**Evidence strength:**  
Moderate. Gagné et al. (2022) present this link as a core risk of remote work, especially when long-term virtual setups fail to offer compensatory social structures. Although intuitive and widely supported in applied literature, the empirical causal chain is not yet formally established.

**VAST representation:**

REMOTE_WORK_CONTEXT →c SOCIAL_DISCONNECTION_RISK
SOCIAL_DISCONNECTION_RISK →c (–) NEED_SATISFACTION_RELATEDNESS

## P4 – Need Satisfaction → Self-Determined Motivation

**Short description:**  
Satisfaction of the three basic psychological needs—autonomy, competence, and relatedness—independently contributes to more self-determined (i.e., intrinsic or internalized) motivation.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Employees across organizational contexts and job types |
| Treatments | Variation in satisfaction of SDT needs (autonomy, competence, relatedness) |
| Outcomes | Degree of self-determined motivation (e.g., intrinsic, identified regulation) |
| Settings | Modern work settings including remote, hybrid, and in-person contexts |

**Evidence strength:**  
Strong. This phenomenon is a foundational claim of Self-Determination Theory (Deci & Ryan, 2000) and is reaffirmed by Gagné et al. (2022) in applied organizational settings. Multiple studies support the independent contributions of each need to motivational quality.

**VAST representation:**

NEED_SATISFACTION_AUTONOMY    →c INTRINSIC_MOTIVATION
NEED_SATISFACTION_COMPETENCE  →c INTRINSIC_MOTIVATION
NEED_SATISFACTION_RELATEDNESS →c INTRINSIC_MOTIVATION

## P5 – Intrinsic Motivation → Job Satisfaction

**Short description:**  
Higher levels of intrinsic (self-determined) motivation are positively associated with greater job satisfaction, though the specific mechanism is not the focus of Gagné et al. (2022).

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Employees in modern, flexible work contexts |
| Treatments | Degree of intrinsic motivation (e.g., enjoyment, volition) |
| Outcomes | Attitudinal job satisfaction (self-reported) |
| Settings | Knowledge-intensive work environments, including hybrid or remote teams |

**Evidence strength:**  
Moderate. Gagné et al. cite this relationship as a consistent downstream outcome of high-quality motivation, based on established SDT literature. However, it is not formally elaborated within the reviewed theory, and mechanisms (e.g., engagement, alignment) remain unspecified.

**VAST representation:**

INTRINSIC_MOTIVATION →r JOB_SATISFACTION




