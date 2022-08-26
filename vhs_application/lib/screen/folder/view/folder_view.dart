import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vhs_application/core/config/size_config.dart';

class FolderView extends StatelessWidget {
  const FolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    double screenHeight = SizeConfig.blockSizeVertical!;
    double screenWidth = SizeConfig.blockSizeHorizontal!;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [buildBackText(), buildButtons()],
          ),
          buildFilesText(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  generateItem("assets/images/folder.png", "Folder"),
                  generateItem("assets/images/photo.png", "Photo"),
                  generateItem("assets/images/video.png", "Video"),
                ]),
          )
        ]));
  }

  Padding buildButtons() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 46) + const EdgeInsets.only(right: 10),
      child: Container(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                iconSize: 21,
                color: Color.fromRGBO(31, 31, 31, 0.6),
                // Callback that sets the selected popup menu item.
                onSelected: (value) => {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(
                        value: "itemOne",
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Open camera'),
                        ),
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500),
                      ),
                      const PopupMenuItem(
                        value: "itemTwo",
                        child: Text('Import from Gallery'),
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500),
                      ),
                      const PopupMenuItem(
                        value: "itemThree",
                        child: Text('Import from iCloud'),
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500),
                      ),
                      const PopupMenuItem(
                        value: "itemFour",
                        child: Text('Add new folder'),
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500),
                      ),
                    ]),
            IconButton(
              icon: Icon(Icons.edit_outlined),
              color: Colors.white,
              onPressed: () => {},
              iconSize: 21,
            ),
          ],
        ),
      ),
    );
  }

  Column generateItem(String path, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
            color: Colors.transparent,
            child: InkWell(child: Image.asset(path), onTap: () => {})),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0.0),
              width: 30.0,
              child: PopupMenuButton(
                  icon: new Image.asset("assets/images/Headline.png"),
                  iconSize: 20,
                  color: Color.fromRGBO(31, 31, 31, 0.6),
                  // Callback that sets the selected popup menu item.
                  onSelected: (value) => {},
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          value: "itemOne",
                          child: Text('Share'),
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500),
                        ),
                        const PopupMenuItem(
                          value: "itemTwo",
                          child: Text('Rename'),
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500),
                        ),
                        const PopupMenuItem(
                          value: "itemThree",
                          child: Text('Duplicate'),
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500),
                        ),
                        const PopupMenuItem(
                          value: "itemFour",
                          child: Text('Delete'),
                          textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
            ),
          ],
        )
      ],
    );
  }

  Align buildBackText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
          padding:
              const EdgeInsets.only(top: 46) + const EdgeInsets.only(left: 26),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Text(
                  "BACK",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color.fromRGBO(255, 59, 48, 1),
                      fontWeight: FontWeight.w500),
                ),
                onTap: () => {},
              ))),
    );
  }

  Align buildFilesText() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 17) + const EdgeInsets.only(left: 16),
        child: Text(
          "Files",
          style: TextStyle(
              fontSize: 44, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
