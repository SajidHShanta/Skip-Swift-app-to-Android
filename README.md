# Skip.tools Exploration
This repository explores [Skip.tools](https://skip.tools/), which enables Swift developers to create native iOS and Android apps using a single codebase.

## What is Skip?
Skip brings Swift app development to Android by allowing developers to:
- Create Swift code that runs natively on both iOS and Android using Xcode, maintaining a unified codebase for a consistent experience.  
- Optimize performance to ensure true native execution on Android.

## Repository Purpose
This repository serves as a playground to:
- Experiment with Skip's capabilities and limitations.
- Create sample projects demonstrating Swift-based cross-platform development.
- Document findings, best practices, and potential challenges.

# Getting Started
## Installation
To set up Skip on your macOS, ensure you have [Xcode](https://developer.apple.com/xcode/), [Android Studio](https://developer.android.com/studio), and [Homebrew](https://brew.sh/) installed. Then, open Terminal and run:

```bash
brew install skiptools/skip/skip
```

After installation, verify that all prerequisites are met by executing:

```bash
skip checkup
```

## Creating a Dual-Platform App
Create a new dual-platform app project with the command:
```bash
skip init --appid=bundle.id project-name AppName
```
You can optionally pass --open-xcode argument to immediately open the project in Xcode.
```bash
skip init --open-xcode --appid=bundle.id project-name AppName
```
A complete example should look like this:
```bash
skip init --open-xcode --appid=com.sajidhasan.testskip test-skip TestSkip
```

---
