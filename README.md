# GHA-Playground

## Release Workflow

A [manually triggered workflow](https://dev.to/this-is-learning/manually-trigger-a-github-action-with-workflowdispatch-3mga) that’ll take release number as input.

On version input, it should:

- create a release branch
- Update translations (mock_translation.json)
- upload relase build (mock_build.json)
- commit the changes
- create a pull request to main
- merge the release branch
  - run test cases (mock_test_cases.sh)
  - auto merge enabled with minimum 1 approver
- rebase the changes to develop
- create a tag from main
- create a release in github with change requests
