import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconImage {
  static const String _assetFolderPath = 'assets/icon/';

  static const String _icNotification = '${_assetFolderPath}ic_notification.svg';
  static const String _icSetting = '${_assetFolderPath}ic_setting.svg';

  static SvgPicture icNotification() => SvgPicture.asset(
        _icNotification,
        width: 15.0,
        height: 15.0,
        colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
      );

  static SvgPicture icSetting() => SvgPicture.asset(
        _icSetting,
        width: 25.0,
        height: 25.0,
      );
}
