// ignore_for_file: annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Theme, ThemeExtension;

import 'package:flutter/widgets.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme.tailor.dart';

@TailorMixin()
class HarmonicThemeData extends ThemeExtension<HarmonicThemeData>
    with DiagnosticableTreeMixin, _$HarmonicThemeDataTailorMixin {
  const HarmonicThemeData({
    required this.brandColor,
    required this.warningColor,
    required this.alertColor,
    required this.confirmColor,
    required this.fontPrimaryColor,
    required this.fontSecondaryColor,
    required this.fontTertiaryColor,
    required this.fontFourthColor,
    required this.fontEmphasizeColor,
    required this.fontOnPrimaryColor,
    required this.fontOnSecondaryColor,
    required this.fontOnTertiaryColor,
    required this.fontOnFourthColor,
    required this.iconPrimaryColor,
    required this.iconSecondaryColor,
    required this.iconTertiaryColor,
    required this.iconFourthColor,
    required this.iconEmphasizeColor,
    required this.iconSubEmphasizeColor,
    required this.iconOnPrimaryColor,
    required this.iconOnSecondaryColor,
    required this.iconOnTertiaryColor,
    required this.iconOnFourthColor,
    required this.backgroundPrimaryColor,
    required this.backgroundSecondaryColor,
    required this.backgroundTertiaryColor,
    required this.backgroundFourthColor,
    required this.backgroundEmphasizeColor,
    required this.compForegroundPrimaryColor,
    required this.compBackgroundPrimaryColor,
    required this.compBackgroundPrimaryTransColor,
    required this.compBackgroundPrimaryContraryColor,
    required this.compBackgroundGrayColor,
    required this.compBackgroundSecondaryColor,
    required this.compBackgroundTertiaryColor,
    required this.compBackgroundEmphasizeColor,
    required this.compBackgroundNeutralColor,
    required this.compEmphasizeSecondaryColor,
    required this.compEmphasizeTertiaryColor,
    required this.compDividerColor,
    required this.compCommonContraryColor,
    required this.compBackgroundFocusColor,
    required this.compFocusedPrimaryColor,
    required this.compFocusedSecondaryColor,
    required this.compFocusedTertiaryColor,
    required this.interactiveHoverColor,
    required this.interactivePressedColor,
    required this.interactiveFocusColor,
    required this.interactiveActiveColor,
    required this.interactiveSelectColor,
    required this.interactiveClickColor,
  });

  /// A default light theme.
  factory HarmonicThemeData.light() {
    return const HarmonicThemeData(
      brandColor: Color(0xff0a59f7),
      warningColor: Color(0xffe84026),
      alertColor: Color(0xffed6f21),
      confirmColor: Color(0xff64bb5c),
      fontPrimaryColor: Color(0xe5000000),
      fontSecondaryColor: Color(0x99000000),
      fontTertiaryColor: Color(0x66000000),
      fontFourthColor: Color(0x33000000),
      fontEmphasizeColor: Color(0xff0a59f7),
      fontOnPrimaryColor: Color(0xffffffff),
      fontOnSecondaryColor: Color(0x99ffffff),
      fontOnTertiaryColor: Color(0x66ffffff),
      fontOnFourthColor: Color(0x33ffffff),
      iconPrimaryColor: Color(0xe5000000),
      iconSecondaryColor: Color(0x99000000),
      iconTertiaryColor: Color(0x66000000),
      iconFourthColor: Color(0x33000000),
      iconEmphasizeColor: Color(0xff0a59f7),
      iconSubEmphasizeColor: Color(0x660a59f7),
      iconOnPrimaryColor: Color(0xffffffff),
      iconOnSecondaryColor: Color(0x99ffffff),
      iconOnTertiaryColor: Color(0x66ffffff),
      iconOnFourthColor: Color(0x33ffffff),
      backgroundPrimaryColor: Color(0xffffffff),
      backgroundSecondaryColor: Color(0xfff1f3f5),
      backgroundTertiaryColor: Color(0xffe5e5ea),
      backgroundFourthColor: Color(0xffd1d1d6),
      backgroundEmphasizeColor: Color(0xff0a59f7),
      compForegroundPrimaryColor: Color(0xff000000),
      compBackgroundPrimaryColor: Color(0xffffffff),
      compBackgroundPrimaryTransColor: Color(0xffffffff),
      compBackgroundPrimaryContraryColor: Color(0xffffffff),
      compBackgroundGrayColor: Color(0xfff1f3f5),
      compBackgroundSecondaryColor: Color(0x19000000),
      compBackgroundTertiaryColor: Color(0x0c000000),
      compBackgroundEmphasizeColor: Color(0xff0a59f7),
      compBackgroundNeutralColor: Color(0xff000000),
      compEmphasizeSecondaryColor: Color(0x330a59f7),
      compEmphasizeTertiaryColor: Color(0x190a59f7),
      compDividerColor: Color(0x33000000),
      compCommonContraryColor: Color(0xffffffff),
      compBackgroundFocusColor: Color(0xfff1f3f5),
      compFocusedPrimaryColor: Color(0xe5000000),
      compFocusedSecondaryColor: Color(0x99000000),
      compFocusedTertiaryColor: Color(0x66000000),
      interactiveHoverColor: Color(0x0c000000),
      interactivePressedColor: Color(0x19000000),
      interactiveFocusColor: Color(0xff0a59f7),
      interactiveActiveColor: Color(0xff0a59f7),
      interactiveSelectColor: Color(0x33000000),
      interactiveClickColor: Color(0x19000000),
    );
  }

  /// A default dark theme.
  factory HarmonicThemeData.dark() {
    return const HarmonicThemeData(
      brandColor: Color(0xff317af7),
      warningColor: Color(0xffd94838),
      alertColor: Color(0xffdb6b42),
      confirmColor: Color(0xff5ba854),
      fontPrimaryColor: Color(0xe5ffffff),
      fontSecondaryColor: Color(0x99ffffff),
      fontTertiaryColor: Color(0x66ffffff),
      fontFourthColor: Color(0x33ffffff),
      fontEmphasizeColor: Color(0xff317af7),
      fontOnPrimaryColor: Color(0xff000000),
      fontOnSecondaryColor: Color(0x99000000),
      fontOnTertiaryColor: Color(0x66000000),
      fontOnFourthColor: Color(0x33000000),
      iconPrimaryColor: Color(0xe5ffffff),
      iconSecondaryColor: Color(0x99ffffff),
      iconTertiaryColor: Color(0x66ffffff),
      iconFourthColor: Color(0x33ffffff),
      iconEmphasizeColor: Color(0xff317af7),
      iconSubEmphasizeColor: Color(0x66317af7),
      iconOnPrimaryColor: Color(0xff000000),
      iconOnSecondaryColor: Color(0x99000000),
      iconOnTertiaryColor: Color(0x66000000),
      iconOnFourthColor: Color(0x33000000),
      backgroundPrimaryColor: Color(0xffe5e5e5),
      backgroundSecondaryColor: Color(0xff191a1c),
      backgroundTertiaryColor: Color(0xff202224),
      backgroundFourthColor: Color(0xff2e3033),
      backgroundEmphasizeColor: Color(0xff317af7),
      compForegroundPrimaryColor: Color(0xffe5e5e5),
      compBackgroundPrimaryColor: Color(0xffffffff),
      compBackgroundPrimaryTransColor: Color(0x33ffffff),
      compBackgroundPrimaryContraryColor: Color(0xffe5e5e5),
      compBackgroundGrayColor: Color(0xffe5e5ea),
      compBackgroundSecondaryColor: Color(0x19ffffff),
      compBackgroundTertiaryColor: Color(0x0cffffff),
      compBackgroundEmphasizeColor: Color(0xff317af7),
      compBackgroundNeutralColor: Color(0xffffffff),
      compEmphasizeSecondaryColor: Color(0x33317af7),
      compEmphasizeTertiaryColor: Color(0x19317af7),
      compDividerColor: Color(0x33ffffff),
      compCommonContraryColor: Color(0xff000000),
      compBackgroundFocusColor: Color(0xff000000),
      compFocusedPrimaryColor: Color(0xe5ffffff),
      compFocusedSecondaryColor: Color(0x99ffffff),
      compFocusedTertiaryColor: Color(0x66ffffff),
      interactiveHoverColor: Color(0x0cffffff),
      interactivePressedColor: Color(0x19ffffff),
      interactiveFocusColor: Color(0xff317af7),
      interactiveActiveColor: Color(0xff317af7),
      interactiveSelectColor: Color(0x33ffffff),
      interactiveClickColor: Color(0x19ffffff),
    );
  }

  /// 品牌色
  final Color brandColor;

  /// 一级警示色
  final Color warningColor;

  /// 二级警示色
  final Color alertColor;

  /// 确认色
  final Color confirmColor;

  /// 一级文本
  final Color fontPrimaryColor;

  /// 二级文本
  final Color fontSecondaryColor;

  /// 三级文本
  final Color fontTertiaryColor;

  /// 四级文本
  final Color fontFourthColor;

  /// 高亮文本
  final Color fontEmphasizeColor;

  /// 一级文本反色
  final Color fontOnPrimaryColor;

  /// 二级文本反色
  final Color fontOnSecondaryColor;

  /// 三级文本反色
  final Color fontOnTertiaryColor;

  /// 四级文本反色
  final Color fontOnFourthColor;

  /// 一级图标
  final Color iconPrimaryColor;

  /// 二级图标
  final Color iconSecondaryColor;

  /// 三级图标
  final Color iconTertiaryColor;

  /// 四级图标
  final Color iconFourthColor;

  /// 高亮图标
  final Color iconEmphasizeColor;

  /// 高亮辅助图标
  final Color iconSubEmphasizeColor;

  /// 一级图标反色
  final Color iconOnPrimaryColor;

  /// 二级图标反色
  final Color iconOnSecondaryColor;

  /// 三级图标反色
  final Color iconOnTertiaryColor;

  /// 四级图标反色
  final Color iconOnFourthColor;

  /// 一级背景（实色/不透明色）
  final Color backgroundPrimaryColor;

  /// 二级背景（实色/不透明色）
  final Color backgroundSecondaryColor;

  /// 三级背景（实色/不透明色）
  final Color backgroundTertiaryColor;

  /// 四级背景（实色/不透明色）
  final Color backgroundFourthColor;

  /// 高亮背景（实色/不透明色）
  final Color backgroundEmphasizeColor;

  /// 前背景
  final Color compForegroundPrimaryColor;

  /// 白色背景
  final Color compBackgroundPrimaryColor;

  /// 白色透明背景
  final Color compBackgroundPrimaryTransColor;

  /// 常亮背景
  final Color compBackgroundPrimaryContraryColor;

  /// 灰色背景
  final Color compBackgroundGrayColor;

  /// 二级背景
  final Color compBackgroundSecondaryColor;

  /// 三级背景
  final Color compBackgroundTertiaryColor;

  /// 高亮背景
  final Color compBackgroundEmphasizeColor;

  /// 黑色中性高亮背景
  final Color compBackgroundNeutralColor;

  /// 20%高亮背景
  final Color compEmphasizeSecondaryColor;

  /// 10%高亮背景
  final Color compEmphasizeTertiaryColor;

  /// 分割线颜色
  final Color compDividerColor;

  /// 通用反色
  final Color compCommonContraryColor;

  /// 获焦态背景色
  final Color compBackgroundFocusColor;

  /// 获焦态一级反色
  final Color compFocusedPrimaryColor;

  /// 获焦态二级反色
  final Color compFocusedSecondaryColor;

  /// 获焦态三级反色
  final Color compFocusedTertiaryColor;

  /// 通用悬停交互式颜色
  final Color interactiveHoverColor;

  /// 通用按压交互式颜色
  final Color interactivePressedColor;

  /// 通用获焦交互式颜色
  final Color interactiveFocusColor;

  /// 通用激活交互式颜色
  final Color interactiveActiveColor;

  /// 通用选择交互式颜色
  final Color interactiveSelectColor;

  /// 通用点击交互式颜色
  final Color interactiveClickColor;
}

class HarmonicTheme extends InheritedTheme {
  const HarmonicTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final HarmonicThemeData data;

  static HarmonicThemeData of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final defaultThemeData = brightness == Brightness.dark
        ? HarmonicThemeData.dark()
        : HarmonicThemeData.light();
    final theme = context.dependOnInheritedWidgetOfExactType<HarmonicTheme>();
    return theme?.data ??
        Theme.of(context).extension<HarmonicThemeData>() ??
        defaultThemeData;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return HarmonicTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(HarmonicTheme oldWidget) => data != oldWidget.data;
}
