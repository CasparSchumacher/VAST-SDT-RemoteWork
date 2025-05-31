# Core Phenomena and UTOS Framework

This document lists the five central empirical phenomena that the model is intended to explain, based on Gagné et al. (2022). Each phenomenon is structured using the UTOS framework (Units, Treatments, Outcomes, Settings), followed by an evaluation of its empirical robustness and a summary of the corresponding VAST modeling decision.

---

## **P1 – Remote Work and Autonomy Need Satisfaction**

**Short description:**  
Structured remote or hybrid work can enhance or undermine employees’ autonomy depending on the degree of flexibility and autonomy support embedded in the work design.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Knowledge workers in flexible, digital jobs |
| Treatments | Hybrid or remote work, varying in autonomy-supportive design |
| Outcomes | Satisfaction (or frustration) of autonomy need (e.g., volition, self-initiation) |
| Settings | Post-2020, hybrid-enabled organizational environments |

**Evidence strength:**  
Moderate–strong. Theoretically grounded and supported by workplace studies. Moderated by implementation quality and managerial support.

**VAST representation:**
```plaintext
REMOTE_WORK_CONTEXT →c AUTONOMY_SUPPORT
AUTONOMY_SUPPORT →c NEED_SATISFACTION_AUTONOMY
```

---

## **P2 – Remote Work and Competence Need Satisfaction**

**Short description:**  
Remote work can either support competence satisfaction (e.g., through digital learning opportunities) or undermine it (e.g., through communication overload, tech failures), depending on how the work environment is structured.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Remote workers in cognitively demanding or autonomy-critical roles |
| Treatments | Varying quality of digital communication, role clarity, and technology support |
| Outcomes | Satisfaction (or frustration) of competence need |
| Settings | Digitally mediated, distributed, or asynchronous work teams |

**Evidence strength:**  
Moderate. Gagné et al. (2022) identify plausible mechanisms for both positive and negative effects, including digital friction, multitasking, malfunctioning tools, and access to online learning. While theoretically robust, empirical causal evidence remains scattered.

**VAST representation:**
```plaintext
REMOTE_WORK_CONTEXT →c CONTEXTUAL_COMPETENCE_CONDITIONS
CONTEXTUAL_COMPETENCE_CONDITIONS →c NEED_SATISFACTION_COMPETENCE
```

---

## **P3 – Remote Work and Relatedness Need Satisfaction**

**Short description:**  
Remote work can reduce or enhance opportunities for social connection depending on the quality of virtual collaboration structures and intentional social design.

**UTOS**

| Component | Description |
|----------|-------------|
| Units | Remote and hybrid employees in team-based environments |
| Treatments | Varying quality of virtual cohesion, informal contact, and social structure |
| Outcomes | Satisfaction (or frustration) of relatedness need |
| Settings | Distributed or remote-first teams, variable social infrastructure |

**Evidence strength:**  
Moderate–strong. Gagné et al. (2022) highlight the central role of structured social support in remote contexts. Although intuitive and widely acknowledged in organizational practice, the empirical causal chain needs further direct testing.

**VAST representation:**
```plaintext
REMOTE_WORK_CONTEXT →c SOCIAL_CONNECTION_CONDITIONS
SOCIAL_CONNECTION_CONDITIONS →c NEED_SATISFACTION_RELATEDNESS
```

---

## **P4 – Need Satisfaction → Self-Determined Motivation**

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
```plaintext
NEED_SATISFACTION_AUTONOMY    →c INTRINSIC_MOTIVATION
NEED_SATISFACTION_COMPETENCE  →c INTRINSIC_MOTIVATION
NEED_SATISFACTION_RELATEDNESS →c INTRINSIC_MOTIVATION
```

---

## **P5 – Intrinsic Motivation → Job Satisfaction**

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
```plaintext
INTRINSIC_MOTIVATION →p JOB_SATISFACTION
```
