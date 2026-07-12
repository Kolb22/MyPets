import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/global_widgets/app_menu_button.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'package:pets/app/modules/pet/pet_controller.dart';
import 'package:share_plus/share_plus.dart';
class PetPage extends StatelessWidget {
  const PetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(
      builder: (c) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
              shape: const Border(bottom: BorderSide(color: Colors.black, width: 1.5)),
              centerTitle: true,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              title: const Text("Pet",
                  style: TextStyle(
                      color: Colors.black
                  )),
              backgroundColor: const Color(0xFFffdec8),
              actions: [
                AppMenuButton(
                  onSelected: (value) {
                    switch (value) {
                      case 'pdf':
                        c.createPDF();
                        break;
                      case 'share':
                        SharePlus.instance.share(
                          ShareParams(text: "The number of my list is: 213123"),
                        );
                        break;
                      case 'logout':
                        Get.offNamed(AppRoutes.SPLASH_MENU);
                        break;
                    }
                  },
                  items: const [
                    PopupMenuItem(
                      value: 'pdf',
                      child: ListTile(
                        leading: Icon(Icons.download, color: Colors.black),
                        title: Text("Download PDF"),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                    PopupMenuItem(
                      value: 'share',
                      child: ListTile(
                        leading: Icon(Icons.share, color: Colors.black),
                        title: Text("Share"),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                    PopupMenuItem(
                      value: 'logout',
                      child: ListTile(
                        leading: Icon(Icons.logout, color: Colors.black),
                        title: Text("Logout"),
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          backgroundColor: const Color(0xFFffdec8),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
              child: Column(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(width: 2, color: Colors.black),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network('https://i.imgur.com/FiapxAD.jpeg',
                          height: MediaQuery.of(context).size.width * 0.7,
                          width: double.infinity,
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(width: 2, color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text("Description",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)
                            ),
                          ),
                          const Divider(),
                          infoRow("Name:", "Yordy"),
                          const SizedBox(height: 8),
                          infoRow("Birthday:", "17-OCT-2010"),
                          const SizedBox(height: 8),
                          infoRow("Age:", "11"),
                          const SizedBox(height: 8),
                          infoRow("Animal:", "Dog"),
                          const SizedBox(height: 8),
                          infoRow("Race:", "N/A"),
                          const SizedBox(height: 8),
                          infoRow("Weight:", "25 Lbs"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(width: 2, color: Colors.black),
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
                    return const ExpansionTile(title: Text("Limpieza"),
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
                    height: 8.0,
                  ),
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.grey[50],
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(width: 2, color: Colors.black),
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
                    return const ExpansionTile(title: Text("Veterinario"),
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
          // floatingActionButton removido
        ),
      ),
    );
  }

  Widget infoRow(String label, String value) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(label,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54)),
        ),
        Expanded(
          child: Text(value,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}