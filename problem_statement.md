# Problem Statement: Multi-Modal Automated Insurance Evidence Review System

## 1. Context & Background
Insurance claim validation traditionally relies on human claims adjusters manually auditing text reports alongside photographic proof to determine legitimacy. This process is highly inefficient, prone to subjective review disparities, and slows down payout lifecycles. 

By integrating modern Multimodal Large Language Models (LLMs), visual evidence can be programmatically verified against textual transcripts. However, a production-ready automated adjudication framework must do more than identify damage—it must evaluate whether the submitted data conforms to structured regulatory evidence standards, check historical risk vectors, and handle complex edge cases safely without failing.

---

## 2. Objective
The goal is to design and implement a robust automation pipeline using Unix/Linux shell scripting, `curl`, and the Google Gemini API. The system must process an insurance claims batch dataset, cross-reference it against baseline compliance and historical hazard indices, evaluate visual evidence, and output a highly structured decision evaluation matrix (`output.csv`).

---

## 3. Core Task & Architectural Responsibilities

For every claim record inside the incoming engine pipeline, the architecture must perform the following tasks sequentially:
1. **Context Extraction:** Parse the chat transcript conversation to isolate the core damage claim.
2. **Evidence Compliance Audit:** Check image metadata and availability against minimum standards based on the object-issue family.
3. **Multimodal Evaluation:** Inspect the provided binary image frames to determine if they visually support, contradict, or lack the visual data to verify the claim.
4. **Anomaly & Risk Isolation:** Audit image quality defects, structural mismatches, or user history flags to append hazard warnings.
5. **Severity Calculation:** Quantify the scale of structural failure or cosmetic damage observed within the frame.

---

## 4. System Input Schema Matrix

### A. Core Claims Entry Data (`dataset/claims.csv`)
| Column Field | Data Type | Description |
| :--- | :--- | :--- |
| `user_id` | String | Unique hash identifying the claimant (maps to history profiles). |
| `image_paths` | String | Semicolon-separated path strings pointing to physical images. |
| `user_claim` | String | Raw text transcript of user chat conversations regarding the incident. |
| `claim_object` | Enum | Target domain category: `car`, `laptop`, or `package`. |

### B. Compliance Metrics (`dataset/evidence_requirements.csv`)
* Defines the strict minimum checklist of viewpoints, coverage areas, or details required to evaluate specific object-issue combinations before automated assessment is allowed.

### C. Historical Profiles (`dataset/user_history.csv`)
* Holds prior user data profiles including historical rejection ratios, cumulative claim metrics, and system hazard indicators used to evaluate fraud likelihood.

---

## 5. Strict Permitted Values & Enumerations

To guarantee structured programmatic data mapping downstream, the output pipeline must classify findings using only these explicit constraints:

* **`claim_status`:** `supported`, `contradicted`, `not_enough_information`
* **`issue_type`:** `dent`, `scratch`, `crack`, `glass_shatter`, `broken_part`, `missing_part`, `torn_packaging`, `crushed_packaging`, `water_damage`, `stain`, `none`, `unknown`
* **`severity`:** `none`, `low`, `medium`, `high`, `unknown`
* **Domain Specific `object_part` Enumerations:**
  * **`car`:** `front_bumper`, `rear_bumper`, `door`, `hood`, `windshield`, `side_mirror`, `headlight`, `taillight`, `fender`, `quarter_panel`, `body`, `unknown`
  * **`laptop`:** `screen`, `keyboard`, `trackpad`, `hinge`, `lid`, `corner`, `port`, `base`, `body`, `unknown`
  * **`package`:** `box`, `package_corner`, `package_side`, `seal`, `label`, `contents`, `item`, `unknown`
* **`risk_flags`:** `none`, `blurry_image`, `cropped_or_obstructed`, `low_light_or_glare`, `wrong_angle`, `wrong_object`, `wrong_object_part`, `damage_not_visible`, `claim_mismatch`, `possible_manipulation`, `non_original_image`, `text_instruction_present`, `user_history_risk`, `manual_review_required`

---

## 6. Target Output Architecture Matrix (`output.csv`)
The final system output must produce a scannable, data-correct layout mapping exactly to the following column headers in sequence:
1. `user_id`
2. `image_paths`
3. `user_claim`
4. `claim_object`
5. `evidence_standard_met` (`true`/`false`)
6. `evidence_standard_met_reason`
7. `risk_flags`
8. `issue_type`
9. `object_part`
10. `claim_status`
11. `claim_status_justification`
12. `supporting_image_ids` (Extract without extensions, e.g. `img_1`)
13. `valid_image` (`true`/`false`)
14. `severity`

---

## 7. Operational & Token Resource Constraints
The engineering delivery package requires an accompanying metrics summary report (`evaluation/evaluation_report.md`). This document must monitor and map out operational efficiency data profiles, covering:
* Real and estimated tracking counts of API endpoint model requests.
* Input and output Token consumption profiles across processing environments.
* Cost estimation configurations relative to standard model gateway price matrices.
* Rate limits (RPM/TPM) handling via custom timeout, back-off loop, or throttling implementations built within the Shell architecture.
  
