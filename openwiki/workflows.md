# Development Workflows

This document outlines the common workflows for contributing to the **MyPets** repository.

## Initial Setup
1. Clone the repository and install dependencies using `flutter pub get`.
2. Set up your local development environment as per the Flutter documentation.
3. Ensure **Android Studio** or **VS Code** is configured with Flutter and Dart plugins.

## Branching Strategy
- Use a feature branch for new features or bug fixes:
  - Naming convention: `feature/<description>` or `bugfix/<description>`.
- Before creating a new branch, ensure your `main` branch is up to date and synced with remote:
  ```bash
  git checkout main
  git pull origin main
  ```

## Coding Standards
- Follow the [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines for Dart code.
- Ensure consistent code formatting using
  ```bash
  dart format .
  ```

## Testing
- Write unit tests for new features and functionality.
- Run the tests before submitting a Pull Request (PR):
  ```bash
  flutter test
  ```

## Pull Requests
1. Ensure all changes are committed and pushed to the feature branch.
2. Create a PR against the `main` branch.
3. Request reviews from team members and address any feedback.