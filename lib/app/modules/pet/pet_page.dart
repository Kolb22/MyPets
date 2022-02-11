import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:pets/app/modules/pet/pet_controller.dart';
import 'package:share_plus/share_plus.dart';

class PetPage extends StatelessWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              iconTheme: const IconThemeData(
                color: Colors.black, //change your color here
              ),
              title: const Text("Pet",
                  style: TextStyle(
                      color: Colors.black
                  )),
              backgroundColor: const Color(0xFFffdec8),
              actions: [
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    Share.share("The number of my list is:");
                  },
                ),
                // add more IconButton
              ],
            ),
          backgroundColor:  const Color(0xFFffdec8),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 270,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.grey[50],
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 2, color: Colors.black),
                          ),
                          child: SizedBox(
                              height: 270,
                              width: 170,
                              child: Image.network('https://i.imgur.com/FiapxAD.jpeg', fit: BoxFit.cover)
                          ),
                        ),
                        Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.grey[50],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(width: 2, color: Colors.black),
                            ),
                          child: SizedBox(
                            height: 270,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Center(
                                    child: Text("Description",
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(20),
                                            fontWeight: FontWeight.bold)
                                    ),
                                  ),
                                ),
                                horizontalLine(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Name: ",
                                          style: TextStyle(
                                          fontSize: ScreenUtil().setSp(13),
                                          fontWeight: FontWeight.normal)
                                      ),
                                      Flexible(
                                        child: Text("Yordy",
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            style: TextStyle(
                                                fontSize: ScreenUtil().setSp(13),
                                                fontWeight: FontWeight.normal)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Birthday: 17-OCT-2010",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.normal)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age: 11",
                                      style: TextStyle(
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.normal)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Animal: Dog",
                                      style: TextStyle(
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.normal)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Race: N/A",
                                      style: TextStyle(
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.normal)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Weight: 25 Lbs",
                                      style: TextStyle(
                                      fontSize: ScreenUtil().setSp(13),
                                      fontWeight: FontWeight.normal)
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 2, color: Colors.black),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("Instructions",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(25),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: .6)),
                            children: [
                              //horizontalLine(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 3.7,
                                child: ListView.builder(
                                  itemCount: 6,
                                  shrinkWrap: true,
                                  itemBuilder: (context, i) {
                                    return  ExpansionTile(title: Text("Limpieza"),
                                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("probando"),
                                            Text("probando"),
                                            Text("probando"),
                                          ],
                                        )
                                      ],);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(width: 2, color: Colors.black),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("Contacts",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(25),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: .6)
                            ),
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 3.7,
                                child: ListView.builder(
                                  itemCount: 10,
                                  shrinkWrap: true,
                                  itemBuilder: (context, i) {
                                    return  ExpansionTile(title: Text("Veterinario"),
                                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("probando"),
                                            Text("probando"),
                                            Text("probando"),
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.black,
            overlayColor: Colors.black,
            overlayOpacity: 0.4,
            spacing: 5,
            spaceBetweenChildren: 10,
            children: [
              SpeedDialChild(
                  child: const Icon(Icons.download),
                  label: "Download PDF",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold)
              ),
              SpeedDialChild(
                  child: const Icon(Icons.edit),
                  label: "Edit",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold)
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget horizontalLine() => Container(
    width: ScreenUtil().setWidth(600),
    height: 2.0,
    color: Colors.black26.withOpacity(.6),
  );
}