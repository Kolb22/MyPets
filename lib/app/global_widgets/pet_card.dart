import 'package:flutter/material.dart';
import 'package:pets/app/global_widgets/pet_icon.dart';


class PetCard extends StatelessWidget {

  final Function? onCardClick;

  const PetCard({super.key, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick!();
      },
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: const BorderRadius.all(Radius.circular(25))
          ),
          margin: const EdgeInsets.all(20),
          height: 150,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:  Image.network('https://i.imgur.com/FiapxAD.jpeg', fit: BoxFit.cover)
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
              const Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      PetIcon(
                          color: Color(0xFFffdec8),
                          iconName: "Dog"),
                      SizedBox(width: 10),
                      Text("Yordy",
                          style: TextStyle(color: Color(0xFFffdec8), fontSize: 25, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}