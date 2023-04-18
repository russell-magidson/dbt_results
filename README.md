## Name
Project dbt-results

## Description
Contains the code for logging post-run record counts and timings.
The table dbt_results in the data mart BQ projects (9198/2114/99b5) sbx/tst/acc/prd_dbt_monitoring schema will hold all the timings from all projects 
This may change in the future

## Installation
Add to packages.yml:
packages:
  - git: "https://github.com/russell-magidson/dbt_results.git"
    revision: 1.0.2

If the dbt_results table does not yet exist (or needed to be recreated) in the desired environment, execute a local _dbt run -m dbt_results_ against the appropriate target_env to create it

## Usage
Once the package is installed it will automatically execute an _on_run_end_ macro that will insert one row for each model in the dbt run

## Roadmap
Future enhancements
 - Support for the project to be accessed from our internal Git server
 - Ability to specify a specific target table 
 - Change the table creation to a pre_hook so that there is no need to manually create the table if it doesn't exist

## Contributing
Feel free to take over ownership

## Authors and acknowledgment
RLMagidson

## Project status
Proof-of-concept
