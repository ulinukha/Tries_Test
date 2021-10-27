import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tries/app/base/resource/_index.dart';
import 'package:velocity_x/velocity_x.dart';

class CommonWidgets {
  // —————————————————————————————————————————————————————————————————————————
  // SNACK BAR —————————————————————————————————————————————————————————
  // —————————————————————————————————————————————————————————————————————————
  void snackBar({
    required String title,
    required String message,
    SnackPosition position = SnackPosition.TOP,
    int durationInSecond = 2,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.black45,
      barBlur: 8.0,
      snackPosition: position,
      margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 30),
      duration: Duration(seconds: durationInSecond),
    );
  }

  void snackBarError({
    String title = "Gagal",
    String message = "",
    SnackPosition position = SnackPosition.TOP,
    int durationInSecond = 2,
  }) {
    Get.snackbar(title, message,
        backgroundColor: Color(0x73ff0000),
        barBlur: 8.0,
        snackPosition: position,
        margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 30),
        duration: Duration(seconds: durationInSecond),
        icon: Icon(Icons.error, color: Colors.white));
  }

  void snackBarSuccess({
    String title = "",
    String message = "",
    SnackPosition position = SnackPosition.TOP,
    int durationInSecond = 2,
  }) {
    Get.snackbar(title, message,
        backgroundColor: Color(0x8A2E7D32),
        barBlur: 8.0,
        snackPosition: position,
        margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 30),
        duration: Duration(seconds: durationInSecond),
        icon: Icon(Icons.check_circle, color: Colors.white));
  }

  // —————————————————————————————————————————————————————————————————————————
  // LOADING DIALOG  —————————————————————————————————————————————————————————
  // —————————————————————————————————————————————————————————————————————————
  void loadingDialog() {
    Get.dialog(
        Material(
          color: Colors.black26,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(48.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: CupertinoActivityIndicator(),
            ),
          ),
        ),
        barrierDismissible: false,
        name: "Loading Dialog");
  }

  void hideLoadingDialog() {
    if (Get.isDialogOpen!) Get.back();
  }

  // —————————————————————————————————————————————————————————————————————————
  // BOTTOM SHEET DIALOG  ————————————————————————————————————————————————————
  // —————————————————————————————————————————————————————————————————————————
  void bottomSheetContentDialog(
      {required String title, required Widget childrenWidget}) {
    Get.bottomSheet(
      Container(
        decoration: boxBottomSheetRadiusDecoration(),
        child: VStack(
          [
            11.heightBox,
            Container(
                    height: 5,
                    width: 61,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(10)))
                .centered(),
            17.heightBox,
            "$title"
                .text
                .size(18)
                .fontWeight(FontWeight.w500)
                .align(TextAlign.center)
                .makeCentered(),
            40.heightBox,
            Wrap(children: [childrenWidget]),
          ],
        ),
      ),
      elevation: 10,
      isScrollControlled: true,
    );
  }

  // —————————————————————————————————————————————————————————————————————————
  // CONTAINER BORDER  ———————————————————————————————————————————————————————
  // —————————————————————————————————————————————————————————————————————————
  BoxDecoration boxBottomSheetRadiusDecoration({double radius = 16}) {
    return BoxDecoration(
      color: colorWhite,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
    );
  }

  Container noDataWidget() {
    return Container(
      child: VStack([
        'No Data !'
            .text
            .size(18)
            .fontWeight(FontWeight.w500)
            .align(TextAlign.center)
            .makeCentered(),
        Container(
            width: 280,
            height: 226,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SvgPicture.asset('assets/image-failed.svg'),
            )).p12(),
      ], crossAlignment: CrossAxisAlignment.stretch),
    );
  }
}
