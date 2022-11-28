// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charter/app/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/widget/custom_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          iconTheme:
              IconThemeData(color: Theme.of(context).secondaryHeaderColor),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: Get.height - 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add charterer',
                        style: TextStyle(
                          fontFamily: 'heebo',
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Full name',
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Obx(() => DropdownButton(
                                style: TextStyle(
                                  fontFamily: 'heebo',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                hint: Text(controller.selectedValue.value),
                                items: controller.menuItems,
                                onChanged: (Object? value) {
                                  controller.selectedValue.value =
                                      value.toString();
                                },
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                underline: Container(
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                dropdownColor: Theme.of(context).primaryColor,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: '+55',
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width - 150,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: 'Mobile number',
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Address',
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'City',
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Website',
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                              enableDrag: true,
                              isScrollControlled: true,
                              Container(
                                height: Get.height * 0.9,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Charter',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () {
                                        Get.back();
                                      },
                                    ),
                                    SizedBox(
                                      height: 50,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.search,
                                            color: AppColor.blue,
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: 'Search',
                                          labelStyle: TextStyle(fontSize: 14),
                                          hintStyle: TextStyle(fontSize: 14),
                                          filled: true,
                                          fillColor:
                                              Colors.grey.withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      //height: 400,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            title: Text('Charter'),
                                          );
                                        },
                                        itemCount: 5,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        style: TextStyle(
                                          fontFamily: 'Helvetica Neue',
                                          fontSize: 14,
                                          color: const Color(0xff707070),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Want to search again? ',
                                          ),
                                          TextSpan(
                                            text: 'Click here',
                                            style: TextStyle(
                                              color: const Color(0xff0cabdf),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '.',
                                          ),
                                        ],
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                    ),
                                  ],
                                ),
                              ));
                        },
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 14,
                              color: const Color(0xff707070),
                            ),
                            children: [
                              TextSpan(
                                text: 'Want to search again? ',
                              ),
                              TextSpan(
                                text: 'Click here',
                                style: TextStyle(
                                  color: const Color(0xff0cabdf),
                                ),
                              ),
                              TextSpan(
                                text: '.',
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: CustomButtons(
                    text: "Contnue",
                    color: const Color(0xff0cabdf),
                  ))
            ],
          ),
        ));
  }
}
