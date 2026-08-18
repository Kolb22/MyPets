# Repository Guide

## OpenWiki

This repository has documentation located in the /openwiki directory.

Start here:
- [OpenWiki quickstart](openwiki/quickstart.md)

OpenWiki includes repository overview, architecture notes, workflows, domain concepts, operations, integrations, testing guidance, and source maps.

When working in this repository, read the OpenWiki quickstart first, then follow its links to the relevant architecture, workflow, domain, operation, and testing notes.

This repository has documentation located in the /openwiki directory.

Start here:
- [OpenWiki quickstart](openwiki/quickstart.md)

OpenWiki includes repository overview, architecture notes, workflows, domain concepts, operations, integrations, testing guidance, and source maps.

When working in this repository, read the OpenWiki quickstart first, then follow its links to the relevant architecture, workflow, domain, operation, and testing notes. Reference

Start here: [OpenWiki quickstart](openwiki/quickstart.md)

OpenWiki has architecture, workflow, domain, testing notes under `/openwiki`. Read for full project context.

## Setup & Commands

- Install deps: `flutter pub get`
- Verify changes: `dart format --output=none --set-exit-if-changed lib test` then `flutter analyze` then `flutter test`
- Run single test: `flutter test test/widget_test.dart`; add `--plain-name "test name"` for one case
- Run app: `flutter run`; target with `flutter devices` then `flutter run -d <device-id>`
- Android build requires Java 17, compile/target SDK 36, NDK `28.2.13676358`, AGP 8.6.0, Kotlin 2.1.0

## Known Baselines

- `flutter analyze` passes
- `flutter test` fails — `test/widget_test.dart` is counter-template code and `MyApp` has no counter UI. Not a regression.
- `pubspec.lock` is in `.gitignore` but tracked in git (do not remove from tracking)
- Android release uses debug signing. `flutter build apk --release` is non-production.

## Architecture

- `lib/main.dart` entrypoint. Calls `DependencyInjection.init()`, then `GetMaterialApp` with `ScreenUtilInit(designSize: 375x812)`.
- Package name in pubspec is `pets`. Internal imports: `package:pets/...`.
- Features under `lib/app/modules/<feature>/` as GetX page/controller/binding trios. 7 modules: splash, splash_menu, login, register, home, pet, pet_list.
- New routed feature needs: route constant in `app_routes.dart`, `GetPage` + binding in `app_pages.dart`, controller in feature binding.
- `DependencyInjection` registers app-wide providers then repositories. Feature bindings use `Get.lazyPut` for controllers.
- Controllers/repos resolve deps with `Get.find`.
- Translation keys + locale maps in `lib/app/utils/message_bundle.dart`. Values in `lib/app/messages/labels/labels_en.dart` and `labels_es.dart`. Update both locales for user-facing text.
- `MobileProvider` uses `dart:io`, external storage, `open_file`. PDF save/open is mobile-only; does not work on web or widget-test hosts.
- Current login flow uses local pet code lookup (`PetRepository.getPets()`), not real auth. No remote API provider exists yet.
- `RegisterPage` is currently an empty scaffold (see `sdd/001-register-account-flow.md` for planned implementation).
- `assets/images/` is the only asset directory. Contains: `dog.png`, `dog_icon.png`, `find.png`, `hueso.png`, `Logo.png`.
- `lib/app/utils/constants.dart` is empty. `lib/app/data/models/` has `User.dart` (no `fromJson` yet) and `Pet.dart`.
- `sdd/` directory contains spec-driven design docs (SDD-001 covers register flow with API contract, validation rules, and implementation tasks).
