import 'package:flutter/widgets.dart';
import 'package:harmonic/src/theme.dart';

class HarmonicListSection extends StatelessWidget {
  const HarmonicListSection({
    super.key,
    this.children,
    this.header,
    this.footer,
    this.margin = const EdgeInsets.only(left: 12, right: 12),
    this.decoration,
    this.clipBehavior = Clip.none,
    this.topMargin = 8,
    bool hasLeading = true,
    this.separatorColor,
  });

  final Widget? header;
  final Widget? footer;
  final EdgeInsetsGeometry margin;
  final List<Widget>? children;
  final BoxDecoration? decoration;
  final Clip clipBehavior;
  final double? topMargin;
  final Color? separatorColor;

  @override
  Widget build(BuildContext context) {
    HarmonicThemeData theme = HarmonicTheme.of(context);

    final Color dividerColor = separatorColor ?? theme.compDividerColor;
    final double dividerHeight = 1.0 / MediaQuery.devicePixelRatioOf(context);

    // Short divider is used between rows.
    final Widget shortDivider = Container(
      margin: const EdgeInsetsDirectional.only(
        start: 12,
        end: 12,
      ),
      color: dividerColor,
      height: dividerHeight,
    );

    TextStyle style = const TextStyle();

    Widget? headerWidget, footerWidget;

    if (header != null) {
      headerWidget = DefaultTextStyle(style: style, child: header!);
    }
    if (footer != null) {
      footerWidget = DefaultTextStyle(style: style, child: footer!);
    }

    Widget? decoratedChildrenGroup;
    if (children != null && children!.isNotEmpty) {
      final List<Widget> childrenWithDividers = <Widget>[];

      children!.sublist(0, children!.length - 1).forEach((Widget widget) {
        childrenWithDividers.add(widget);
        childrenWithDividers.add(shortDivider);
      });
      childrenWithDividers.add(children!.last);

      final BorderRadius childrenGroupBorderRadius = BorderRadius.circular(16);

      decoratedChildrenGroup = DecoratedBox(
        decoration: decoration ??
            BoxDecoration(
              color: decoration?.color ?? theme.compBackgroundPrimaryTransColor,
              borderRadius: childrenGroupBorderRadius,
            ),
        child: Column(children: childrenWithDividers),
      );

      decoratedChildrenGroup = Padding(
        padding: margin,
        child: clipBehavior == Clip.none
            ? decoratedChildrenGroup
            : ClipRRect(
                borderRadius: childrenGroupBorderRadius,
                clipBehavior: clipBehavior,
                child: decoratedChildrenGroup,
              ),
      );
    }

    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          if (headerWidget != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: headerWidget,
              ),
            ),
          if (decoratedChildrenGroup != null) decoratedChildrenGroup,
          if (footerWidget != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: footerWidget,
              ),
            ),
        ],
      ),
    );
  }
}
