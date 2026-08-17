import 'package:flutter/material.dart';
import 'package:pets/app/global_widgets/pet_icon.dart';

class PetCard extends StatelessWidget {
  final Function? onCardClick;
  final String name;
  final String animal;
  final String imageUrl;

  const PetCard({
    super.key,
    this.onCardClick,
    required this.name,
    required this.animal,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick!();
      },
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          margin: const EdgeInsets.all(20),
          height: 150,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.7),
                              Colors.transparent
                            ]))),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      PetIcon(
                        color: const Color(0xFFffdec8),
                        iconName: animal,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFFffdec8),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
