import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';

import 'choose_button.dart';
import 'login_textfield.dart';

class create_room_sheet extends StatefulWidget {
  create_room_sheet({Key? key}) : super(key: key);

  @override
  State<create_room_sheet> createState() => _create_room_sheetState();
}

class _create_room_sheetState extends State<create_room_sheet> {
  @override
  Widget build(BuildContext context) {
    //room_number
    TextEditingController room_number_controller = TextEditingController();
    FocusNode room_number_focusNode = FocusNode();

    //name
    TextEditingController name_controller = TextEditingController();
    FocusNode name_focusNode = FocusNode();

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: Get.width,
          height: 480,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 30, spreadRadius: 5)
              ]),
          child: Stack(
            children: [
              login_textfield(
                text: "创造房间号",
                alignment: Alignment(0, -0.5),
                controller: room_number_controller,
                focusNode: room_number_focusNode,
              ),
              login_textfield(
                text: "群主名字",
                alignment: Alignment.center,
                controller: name_controller,
                focusNode: name_focusNode,
              ),
              choose_button(
                text: "创造房间",
                alignment: Alignment(0, 0.7),
                onPressed: () {
                  Get.toNamed(Broute.chat_page);
                },
              )
            ],
          ),
        ));
  }
}
