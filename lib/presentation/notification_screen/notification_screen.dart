import 'package:helpcare/data/notificationList.dart';

import '../notification_screen/widgets/listplus_item_widget.dart';
import '../notification_screen/widgets/listsearch_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:helpcare/core/app_export.dart';
import 'package:helpcare/widgets/custom_icon_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: getMargin(top: 20, left: 20, bottom: 10, right: 20),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomIconButton(
                    isDark: isDark,
                    height: 50,
                    width: 50,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CommonImageView(
                      isBackBtn: true,
                      isRtl: isRtl,
                      isDark: isDark,
                      svgPath: ImageConstant.imgArrowleft,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 0,
                      top: 12,
                      bottom: 17,
                    ),
                    child: Text(
                      "Notifications",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          20,
                        ),
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                      bottom: 24,
                    ),
                    child: CommonImageView(
                      isDark: isDark,
                      svgPath: ImageConstant.imgOption,
                      height: getVerticalSize(
                        3.00,
                      ),
                      width: getHorizontalSize(
                        17.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: getMargin(
                    left: 24,
                    top: 0,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          top: 10,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: getMargin(
                              bottom: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 10,
                                  ),
                                  child: Text(
                                    "New",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 12,
                                  ),
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return ListsearchItemWidget();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 31,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Earlier",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 0,
                                  ),
                                  child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: notificationList.length,
                                    itemBuilder: (context, index) {
                                      return ListplusItemWidget(
                                        index: index,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
