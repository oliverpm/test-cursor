# Contributing Guidelines

Welcome! This repository uses the **Gitflow** branching model to organize work and releases. Please follow these guidelines to keep the workflow smooth for everyone.

## Branching Strategy

We use the following permanent branches:

- **main**: Always production-ready. Only release or hotfix branches are merged here.
- **develop**: All completed features are merged here for integration and testing before release.

We use the following supporting branches:

- **feature/***: For new features. Branch off `develop`, merge back into `develop`.
- **release/***: For preparing a new release. Branch off `develop`, merge into `main` and `develop`.
- **hotfix/***: For urgent fixes to production. Branch off `main`, merge into `main` and `develop`.

### Branch Naming Conventions

- Feature: `feature/short-description`
- Release: `release/x.y.z`
- Hotfix: `hotfix/short-description`

## Branch Protection Rules (Recommended)

- `main`:
  - Require PR review before merging.
  - Require status checks to pass before merging.
  - Restrict force pushes and deletions.
- `develop`:
  - Require PR review before merging.
  - Require status checks to pass before merging.
  - Restrict force pushes and deletions.

> Please ask a repository admin to set these branch protection rules.

## Pull Requests

- Always open a PR from your feature, release, or hotfix branch.
- Target `develop` for features; target `main` for releases and hotfixes.
- Follow the PR template and reference related issues.

## Issues

- Use the provided templates for feature requests and bug reports.
- Link PRs to issues for traceability.

## Automation

- All PRs to `main` or `develop` must pass checks in `.github/workflows/gitflow-pr-check.yml`.

## Scripts

Use `scripts/create-gitflow-branch.sh` to quickly create a Gitflow-compliant branch.

Thank you for contributing!