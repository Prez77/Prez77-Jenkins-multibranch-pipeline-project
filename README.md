This project demonstrates a Jenkins Multibranch Pipeline that automatically builds and deploys code whenever a pull request is approved and merged into the main branch.
- Automatically detects and builds all Git branches.
- Builds only trigger on merge (after PR approval).
- Uses GitHub branch protection rules for PR enforcement.
- Includes build status, simulated deployment steps.
