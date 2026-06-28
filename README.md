# AI-Powered Shell Insurance Claim Verification System

## Overview
This project is a pure command-line multi-modal insurance claim verification system built entirely with shell scripting. It analyzes customer claim conversations and uploaded images to determine whether a damage claim is supported by visual evidence. The system interfaces directly with Google's Gemini API via command-line network utilities to inspect images, extract claim descriptions, identify visible damage, estimate severity, and generate structured insurance review reports.

## Features
o Analyze car, laptop, and package damage claims directly from the terminal
o Process single and multiple image paths via pure text strings
o Extract core damage claims from raw customer chat conversations
o Verify claims using visual evidence as the primary source of truth
o Identify damaged object parts and specific visible issue types
o Estimate damage severity levels on a structured scale
o Append custom risk and hazard flags based on image quality and user history
o Handle API rate limits and network timeouts via automated loop retries
o Generate fully structured CSV outputs matching complex regulatory criteria

## System Architecture
o Claims CSV Data and Local Binary Images
  - Fed into the system loop
o Image Binary Stream Preparation
  - Encoded dynamically into serialized text compatible with network payloads
o Gemini API Gateway Integration
  - Dispatched via raw network requests using curl
o Dynamic Token Stream Parsing
  - Processed using terminal text selectors to extract key variables
o Structured Report Output
  - Compiled and written directly into output.csv

## Project Workflow
o Ingest Data: Input dataset files are loaded through the terminal execution path.
o Execute Core App: The main application script reads claim text transcripts and converts local image assets.
o Network Request: The script sends data payloads to Gemini models using strict command-line arguments.
o Final Formatting: The system converts raw AI text into your final output matrix report.

## Technologies Used
o Unix/Linux Bash Shell Scripting
o Curl for secure gateway data transmission
o Bc for accurate floating-point mathematical computations
o Jq or text filtering for stream extraction
o Git and GitHub for source code configuration management

## Dataset
The system processes data files organized within a dataset folder path:
o claims.csv: Input file containing user IDs, chat text transcripts, and image paths.
o sample_claims.csv: Baseline labeled dataset used for debugging and pre-evaluations.
o user_history.csv: Historical metrics mapping prior rejection ratios and hazard indices.
o evidence_requirements.csv: Minimum evidence checklists categorized by object domains.
o images directory: Contains the physical image frames referenced inside the data sheets.

## Output Fields
The system evaluates each row and writes a structured array of fourteen columns to output.csv in this exact order:
o user_id
o image_paths
o user_claim
o claim_object
o evidence_standard_met
o evidence_standard_met_reason
o risk_flags
o issue_type
o object_part
o claim_status
o claim_status_justification
o supporting_image_ids
o valid_image
o severity

## Installation
Open your Git Bash terminal or Linux console and run the following commands to clone the repository and configure your environment variables:

```bash
git clone [https://github.com/shreyansh07sk/Shell-Calculator.git](https://github.com/shreyansh07sk/Shell-Calculator.git)
cd Shell-Calculator
touch .env
echo "GEMINI_API_KEY=YOUR_ACTUAL_API_KEY_HERE" > .env
chmod +x calculator.sh
```
# How to Use the Project
o Step 1: Open your Git Bash terminal on Windows or standard shell on Linux.
o Step 2: Ensure your hidden environment configuration file named .env contains your valid GEMINI_API_KEY.
o Step 3: Ensure your dataset folder contains your input tables and matching image assets.
o Step 4: Make your script executable by running the command chmod plus x calculator.sh in your console.
o Step 5: Execute your script by running dot slash calculator.sh in the terminal.
o Step 6: Select option five from the interactive command-line menu to begin the automated verification pipeline.
o Step 7: View the generated report results by checking the newly created output.csv file.
Author
o Name: Shreyansh Khandelwal
o Academic Domain: B.Tech Computer Science Engineering specializing in Cyber Security
o Current Residence: Jaipur, Rajasthan, India
o GitHub Profile Link: https://github.com/shreyansh07sk
