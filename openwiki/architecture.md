# Architecture Overview

The **MyPets** application is built using the Flutter framework, leveraging the GetX package for state management and dependency injection. The main architecture components include:

## Entry Point
- **lib/main.dart**: This is the entry point of the application where the main widget is defined. It initializes the application's dependencies using the **DependencyInjection** utility.

## Dependency Injection
- **lib/utils/dependency_injection.dart**: Responsible for initializing app-wide dependencies, making them accessible throughout the application. This includes controllers and repository instances.

## Module Structure
- The application is organized into features located in **lib/app/modules/**. Each feature follows a structure of:
  - **Binding**: Connects routes to the appropriate controller.
  - **Controller**: Manages the business logic for a feature.
  - **View**: The UI component of the feature.

## Routing
- **lib/app/routes/app_routes.dart**: Contains route definitions for navigation between different application screens, powered by GetX.
- **lib/app/routes/app_pages.dart**: Defines bindings and transitions for each route.

## State Management
- Utilizes **GetX** for managing state and routing efficiently. Each controller uses **GetX**'s reactive programming model to observe and respond to changes in the application state.

## Localization
- **lib/app/utils/message_bundle.dart**: Handles translation keys and locale mappings to support multiple languages. Translation files exist under **lib/app/messages/labels/**.