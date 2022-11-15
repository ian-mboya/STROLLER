import 'controller/camera_window_controller.dart';
import 'package:flutter/material.dart';
import 'package:ian_kwe_mboya_s_application4/core/app_export.dart';
import 'package:ian_kwe_mboya_s_application4/widgets/custom_button.dart';
import 'package:ian_kwe_mboya_s_application4/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CameraWindowScreen extends GetWidget<CameraWindowController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 21, top: 31, right: 21),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 67,
                                    width: 67,
                                    margin: getMargin(top: 25),
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                CustomButton(
                                    width: 116,
                                    text: "lbl_logout".tr,
                                    margin: getMargin(bottom: 55),
                                    variant: ButtonVariant.OutlineBlack9003f,
                                    shape: ButtonShape.RoundedBorder18,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsSemiBold15,
                                    onTap: onTapLogout)
                              ])),
                      Container(
                          width: getHorizontalSize(245.00),
                          margin: getMargin(left: 21, top: 46, right: 21),
                          child: Text("msg_we_are_detectin".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular22Black900)),
                      OutlineGradientButton(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(3.00),
                              top: getVerticalSize(3.00),
                              right: getHorizontalSize(3.00),
                              bottom: getVerticalSize(3.00)),
                          strokeWidth: getHorizontalSize(3.00),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, -3.0616171314629196e-17),
                              end: Alignment(0.5, 0.9999999999999999),
                              colors: [
                                ColorConstant.blue500,
                                ColorConstant.purpleA400
                              ]),
                          corners: Corners(
                              topLeft: Radius.circular(169.5),
                              topRight: Radius.circular(169.5),
                              bottomLeft: Radius.circular(169.5),
                              bottomRight: Radius.circular(169.5)),
                          child: Container(
                              height: getSize(339.00),
                              width: getSize(339.00),
                              margin: getMargin(left: 21, top: 45, right: 21),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(169.50))))),
                      CustomButton(
                          width: 327,
                          text: "lbl_stop".tr,
                          margin: getMargin(
                              left: 21, top: 66, right: 21, bottom: 5),
                          variant: ButtonVariant.OutlineBlack9003f_1,
                          shape: ButtonShape.RoundedBorder34,
                          padding: ButtonPadding.PaddingAll30,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold22,
                          onTap: onTapStop)
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapLogout() {
    Get.toNamed(AppRoutes.loadScreenOneScreen);
  }

  onTapStop() {
    Get.toNamed(AppRoutes.welcomePageScreen);
  }
}
