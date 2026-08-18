# Data Models Overview

## Overview

In the **MyPets** application, data models are utilized to represent the main entities of the application.

## User Model
- **File**: `lib/app/data/models/User.dart`
- **Fields**:
  - `id`: Unique identifier for the user.
  - `name`: Name of the user.
  - `email`: Email address of the user.
  - `pets`: List of pets associated with the user.

## Pet Model
- **File**: `lib/app/data/models/Pet.dart`
- **Fields**:
  - `id`: Unique identifier for the pet.
  - `name`: Name of the pet.
  - `age`: Age of the pet.
  - `type`: Type of pet (e.g., dog, cat).
  - `ownerId`: Identifier of the user who owns the pet.

These models are essential for data manipulation and storage, particularly when interfacing with data providers that handle CRUD operations.

## Overview

In the **MyPets** application, data models are utilized to represent the main entities of the application.

## User Model
- **File**: `lib/app/data/models/User.dart`
- **Fields**:
  - `id`: Unique identifier for the user.
  - `name`: Name of the user.
  - `email`: Email address of the user.
  - `pets`: List of pets associated with the user.

## Pet Model
- **File**: `lib/app/data/models/Pet.dart`
- **Fields**:
  - `id`: Unique identifier for the pet.
  - `name`: Name of the pet.
  - `age`: Age of the pet.
  - `type`: Type of pet (e.g., dog, cat).
  - `ownerId`: Identifier of the user who owns the pet.

These models are essential for data manipulation and storage, particularly when interfacing with data providers that handle CRUD operations.