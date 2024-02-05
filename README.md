# Scalable Flutter App Starter

👋 Hey, welcome to Scalable Flutter App.

Watch/star this repo to be notified when updates are pushed.

## Table of Contents

<!-- TOC -->
* [Scalable Flutter App Starter](#scalable-flutter-app-starter)
  * [Table of Contents](#table-of-contents)
  * [What is Scalable Flutter App?](#what-is-scalable-flutter-app)
  * [Requirements](#requirements)
  * [About the Author](#about-the-author)
* [Features](#features)
  * [Scalable Flutter App Pro](#scalable-flutter-app-pro)
* [Docs](#docs)
  * [Code Architecture](#code-architecture)
  * [Styling](#styling)
  * [Google Fonts](#google-fonts)
  * [Useful GitHub Pull Request Settings](#useful-github-pull-request-settings)
* [FAQ](#faq)
  * [Why bloc and not X?](#why-bloc-and-not-x)
  * [Who is Scalable Flutter App for?](#who-is-scalable-flutter-app-for)
  * [Where to learn Flutter basics?](#where-to-learn-flutter-basics)
  * [What if I don't need a specific feature?](#what-if-i-dont-need-a-specific-feature)
  * [What if I want more?](#what-if-i-want-more)
* [Resources](#resources)
* [Feedback](#feedback)
<!-- TOC -->

## What is Scalable Flutter App?

Scalable Flutter App is a starter template for Flutter apps.

It's designed to be scalable and easy to maintain. And should save you weeks of development time.

To get started, click on the green "Use this template" button on the top-right.

## Requirements

Always keep up to date:

- Flutter
- Cocoapods
- Firebase CLI

## About the Author

I'm Milos Jokic and I:

- built my first mobile app in 2007
- grew my apps to 214k users and $106,140 revenue.
- built apps for 10 Toptal clients.

And now I run a 6-figure devs agency where we launch MVPs in 4 weeks using Flutter & Firebase.

You can find me on:

- [LinkedIn](https://www.linkedin.com/in/milos-jokic/)
- [Twitter](https://twitter.com/miloshjokic)
- [Newsletter](http://flutterpreneur.com/)

# Features

| Feature                                                              | Starter | Pro |
|----------------------------------------------------------------------|---------|-----|
| Platforms: Android, iOS, web                                         | ✅       | ✅   |
| Scalable Architecture using [flutter_bloc](https://bloclibrary.dev/) | ✅       | ✅   |
| Navigation using [go_router](https://pub.dev/packages/go_router)     | ✅       | ✅   |
| Scalable App Styling                                                 | ✅       | ✅   |
| GitHub Actions - code and formatting check                           | ✅       | ✅   |
| Responsive Design                                                    | ✅       | ✅   |
| UserMockProvider                                                     | ✅       | ✅   |
| Profile Page                                                         | ✅       | ✅   |
| Settings Page: sign out, app version...                              | ✅       | ✅   |
| Legal: Terms, Policy, Data Deletion                                  | ✅       | ✅   |
| Google Fonts                                                         | ✅       | ✅   |
| Sign in and Sign Up Pages                                            | ✅       | ✅   |
| Input Validators                                                     | ✅       | ✅   |
| Cached network image                                                 | ✅       | ✅   |
| Email Support                                                        | ❌       | ✅   |
| Lifetime Updates                                                     | ❌       | ✅   |
| Firebase Project Integration                                         | ❌       | ✅   |
| Firebase Authentication                                              | ❌       | ✅   |
| Firebase Remote Config                                               | ❌       | ✅   |
| Firebase Crashlytics                                                 | ❌       | ✅   |
| Firebase Firestore                                                   | ❌       | ✅   |
| Firebase Analytics                                                   | ❌       | ✅   |
| Firebase Storage                                                     | ❌       | ✅   |
| Google Sign In                                                       | ❌       | ✅   |
| Apple Sign In                                                        | ❌       | ✅   |
| Common Cubits                                                        | ❌       | ✅   |
| In App Purchases (RevenueCat)                                        | ❌       | ✅   |
| App Store Review Request                                             | ❌       | ✅   |
| Local Notifications                                                  | ❌       | ✅   |
| Remote Notifications (Firebase)                                      | ❌       | ✅   |
| HTTP Requests                                                        | ❌       | ✅   |
| Local Storage                                                        | ❌       | ✅   |
| Permissions                                                          | ❌       | ✅   |
| Environments                                                         | ❌       | ✅   |
| Localization                                                         | ❌       | ✅   |
| Dark Mode                                                            | ❌       | ✅   |
| Connectivity check                                                   | ❌       | ✅   |
| Hive - local database                                                | ❌       | ✅   |
| MixPanel - analytics                                                 | ❌       | ✅   |
| Android - Release Signing                                            | ❌       | ✅   |
| Onboarding                                                           | ❌       | ✅   |
| Forgot Password                                                      | ❌       | ✅   |
| 🎉 BONUS: Scalable Firebase Backend Template                         | ❌       | ✅   |

## Scalable Flutter App Pro

[Grab Scalable Flutter App - Pro Here](https://AIBuddy.com/)

# Docs

## Code Architecture

The code architecture is based on
[flutter_bloc architecture proposal](https://bloclibrary.dev/#/architecture).

There are 4 layers:

1. UI (Flutter Widgets)
2. BLoC (stateful business logic)
3. Repository (high-level API)
4. Provider (low-level implementation)

And there's only 1 communication rule that we must follow:

_**The layer can only call the one layer below it.**_

That means that:

- UI can only call BLoC
- BLoC can only call Repository
- Repository can only call Provider
- Provider can only call external services (Firebase, HTTP, etc.)

And we avoid same-layer communication (as it creates interdependencies):

- `UserRepository` calling `AuthRepository` is _**not**_ allowed.
- `UserCubit` calling `UserRepository` and `AuthRepository` is allowed.

When creating Providers, Repositories, and Cubits we follow this rule:

- Providers are created top-level (so that they can be used in multiple Repositories)
- Repositories are created top-level (so that they can be used in multiple Cubits)
- Cubits are created in the router builder callbacks (so that they're accessible only where needed)
- Cubits that are used in multiple screens are created top-level

## Styling

Styling is based on [Google's Material Design](https://material.io/design).

App-wide styling is defined in `core/app/style.dart` and is easy to update.

Here's a quick tip on custom Widget params. There are 2 Widget param types:

- data (user, title, ...)
- style (colors, paddings, ...)

Our custom Widgets should only hava data params.

And the style should be done app-wide (in `style.dart`).

That way all of our UI is consistent and easy to update.

## Google Fonts

To change the font:

1. Go to [Google Fonts](https://fonts.google.com/) and select a font.
2. Download the font files.
3. Add the font files to `assets/fonts` (remove the old ones).
4. Update `style.dart` with the new font (i.e. `return GoogleFonts.rubikTextTheme(textTheme)`).

## Useful GitHub Pull Request Settings

I've found that turning on these 2 settings in GitHub repo settings helps a lot:

1. `Always suggest updating pull request branches`
2. `Automatically delete head branches`

# FAQ

## Why bloc and not X?

While GetX, Provider, Riverpod, MobX, Redux, etc. are all great solutions,
most of them are too forgiving. They allow us to access and change state globally.

Whereas [flutter_bloc](https://bloclibrary.dev/) forces us to have `BuildContext`
in order to access and change the state. The stricter the rules, the harder it is to make mistakes.

And flutter_bloc has a great [architecture proposal](https://bloclibrary.dev/#/architecture) that
scales well.

## Who is Scalable Flutter App for?

Scalable Flutter App is for developers, agencies, and founders who want to:

- build scalable Flutter apps
- save weeks of development time
- learn best practices

## Where to learn Flutter basics?

I can only recommend what I've used myself:

- [Flutter Codelabs](https://docs.flutter.dev/codelabs)
- [Flutter YouTube](https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw)
- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- and just keep building apps and getting better with each one :)

## What if I don't need a specific feature?

If you don't need a feature:

- delete its imported package in `pubspec.yaml`
- delete the code that uses the feature

## What if I want more?

If you want Firebase integration, notifications, in-app purchases and more,
[get the Pro version here](https://AIBuddy.com/):

# Resources

Build your app icon in minutes (free): [Icon Kitchen](https://icon.kitchen/)

Cool illustrations that match your app's colors (free): [unDraw](https://undraw.co/illustrations)

CI/CD for mobile apps (free & paid): [Codemagic](https://codemagic.io/)

Want me to launch your MVP in 4 weeks (premium)?
[Go to App Launch Program](https://applaunchprogram.com/)

Need a Flutter Expert (paid)? [Go to Flutter Devs Board](https://flutterdevsboard.com/)

# Feedback

Found an issue or want to request a feature? Open
an [issue](https://github.com/Gradoid/ai_buddy/issues)

Have a question? Ask me on [LinkedIn](https://www.linkedin.com/in/milos-jokic/)
or [Twitter](https://twitter.com/miloshjokic).

Enjoying Scalable Flutter App? [Leave a testimonial](https://testimonial.to/scalable-flutter-app)
