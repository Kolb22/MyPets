class Pet {
  const Pet({
    required this.id,
    required this.code,
    required this.name,
    required this.birthday,
    required this.age,
    required this.animal,
    required this.race,
    required this.weight,
    required this.imageUrl,
    required this.instructions,
    required this.contacts,
  });

  final int id;
  final String code;
  final String name;
  final String birthday;
  final String age;
  final String animal;
  final String race;
  final String weight;
  final String imageUrl;
  final List<PetInstruction> instructions;
  final List<PetContact> contacts;
}

class PetInstruction {
  const PetInstruction({
    required this.title,
    required this.frequency,
    required this.description,
    required this.notes,
  });

  final String title;
  final String frequency;
  final String description;
  final String notes;
}

class PetContact {
  const PetContact({
    required this.name,
    required this.role,
    required this.phone,
  });

  final String name;
  final String role;
  final String phone;
}
