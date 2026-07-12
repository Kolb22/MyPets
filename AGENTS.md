# Repository Guide

## OpenWiki Reference

### OpenWiki

This repository has documentation located in the /openwiki directory.

Start here:
- [OpenWiki quickstart](openwiki/quickstart.md)

OpenWiki includes repository overview, architecture notes, workflows, domain concepts, operations, integrations, testing guidance, and source maps.

When working in this repository, read the OpenWiki quickstart first, then follow its links to the relevant architecture, workflow, domain, operation, and testing notes.

For full project context, read the OpenWiki quickstart plus the architecture, workflow, domain, operation, and testing notes under `/openwiki`.

## Commands
- Run `flutter pub get` after dependency changes; `pubspec.lock` is tracked despite its stale `.gitignore` entry.
- Verify Dart changes with `dart format --output=none --set-exit-if-changed lib test`, then `flutter analyze`, then `flutter test`.
- Run one test file with `flutter test test/widget_test.dart`; add `--plain-name "test name"` for one case.
- Run app with `flutter run`; choose a target with `flutter devices` then `flutter run -d <device-id>`.
- Current baseline: `flutter analyze` passes, but `flutter test` fails because `test/widget_test.dart` is untouched counter-template code and `MyApp` has no counter UI. Do not mistake this known failure for a regression.

## Architecture
- `lib/main.dart` is entrypoint. It registers app-wide provider/repository dependencies through `DependencyInjection.init()`, then starts `GetMaterialApp` with GetX navigation, translations, and `ScreenUtil` design size `375x812`.
- Features live under `lib/app/modules/<feature>/` as GetX page/controller/binding trios. New routed features need route constant in `app_routes.dart`, `GetPage` plus binding in `app_pages.dart`, and controller registration in feature binding.
- `DependencyInjection` owns app-wide infrastructure (`MobileProvider` before `MobileRepository`); feature bindings own controllers via `Get.lazyPut`. Controllers/repositories resolve dependencies with `Get.find`.
- Translation keys and locale maps live in `lib/app/utils/message_bundle.dart`; values live in `lib/app/messages/labels/labels_en.dart` and `labels_es.dart`. Update both locales when adding user-facing translated text.
- `MobileProvider` uses `dart:io`, external storage, and `open_file`; PDF save/open behavior is mobile-specific. Do not assume that flow works on web or widget-test hosts.

## Toolchain And Assets
- Dart constraint is `>=3.4.0 <4.0.0`; Flutter metadata tracks stable channel. Android build requires Java 17, compile/target SDK 36, NDK `28.2.13676358`, AGP 8.6.0, and Kotlin 2.1.0.
- All bundled images must remain under `assets/images/`, the only asset directory declared in `pubspec.yaml`.
- Android release currently uses debug signing. Treat `flutter build apk --release` output as non-production until signing is configured.
