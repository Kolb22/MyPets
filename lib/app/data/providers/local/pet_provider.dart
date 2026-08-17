import 'package:pets/app/data/models/pet.dart';

class PetProvider {
  Future<List<Pet>> getPets() async {
    return const [
      Pet(
        id: 1,
        code: 'PET-0001',
        name: 'Yordy',
        birthday: '17-OCT-2010',
        age: '11',
        animal: 'Dog',
        race: 'N/A',
        weight: '25 Lbs',
        imageUrl: 'https://i.imgur.com/FiapxAD.jpeg',
        instructions: [
          PetInstruction(
            title: 'Limpieza',
            frequency: 'Daily',
            description: 'Brush coat and clean paws.',
            notes: 'Use sensitive skin shampoo.',
          ),
          PetInstruction(
            title: 'Comida',
            frequency: 'Twice daily',
            description: 'Serve dry food with water.',
            notes: 'Avoid chicken bones.',
          ),
        ],
        contacts: [
          PetContact(
            name: 'Dr. Rivera',
            role: 'Veterinario',
            phone: '787-555-0101',
          ),
          PetContact(
            name: 'Ana Lopez',
            role: 'Cuidadora',
            phone: '787-555-0199',
          ),
        ],
      ),
      Pet(
        id: 2,
        code: 'PET-0002',
        name: 'Mia',
        birthday: '03-MAY-2018',
        age: '6',
        animal: 'Cat',
        race: 'Siamese',
        weight: '9 Lbs',
        imageUrl: 'https://i.imgur.com/aIesvbq.jpeg',
        instructions: [
          PetInstruction(
            title: 'Arena',
            frequency: 'Daily',
            description: 'Clean litter box every night.',
            notes: 'Prefers unscented litter.',
          ),
          PetInstruction(
            title: 'Medicina',
            frequency: 'Weekly',
            description: 'Give flea prevention dose.',
            notes: 'Apply behind neck.',
          ),
        ],
        contacts: [
          PetContact(
            name: 'Dr. Soto',
            role: 'Veterinario',
            phone: '787-555-0144',
          ),
          PetContact(
            name: 'Luis Cruz',
            role: 'Emergencia',
            phone: '787-555-0177',
          ),
        ],
      ),
      Pet(
        id: 3,
        code: 'PET-0003',
        name: 'Rocky',
        birthday: '21-JAN-2020',
        age: '4',
        animal: 'Dog',
        race: 'Beagle',
        weight: '22 Lbs',
        imageUrl: 'https://i.imgur.com/nyvJai6.jpeg',
        instructions: [
          PetInstruction(
            title: 'Paseo',
            frequency: 'Twice daily',
            description: 'Walk at least 20 minutes.',
            notes: 'Use harness, not collar.',
          ),
          PetInstruction(
            title: 'Snack',
            frequency: 'Afternoon',
            description: 'One dental treat after walk.',
            notes: 'No extra treats.',
          ),
        ],
        contacts: [
          PetContact(
            name: 'Dr. Morales',
            role: 'Veterinario',
            phone: '787-555-0112',
          ),
          PetContact(
            name: 'Karla Diaz',
            role: 'Grooming',
            phone: '787-555-0188',
          ),
        ],
      ),
    ];
  }
}
