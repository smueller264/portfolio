import 'package:flutter/material.dart';

///Class containing functions returning the [height] and [width] of the current device
class DeviceSize {
  ///Returns the current Devie height using [MediaQuery]
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  ///Returns the current Device width using [MediaQuery]
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
