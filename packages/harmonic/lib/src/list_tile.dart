// import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harmonic/src/theme.dart';

class HarmonicListTile extends StatefulWidget {
  const HarmonicListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.additionalInfo,
    this.leading,
    this.trailing,
    this.onTap,
    this.backgroundColor,
    this.backgroundColorActivated,
    this.padding,
    this.leadingSize = 0,
    this.leadingToTitle = 0,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? additionalInfo;
  final Widget? leading;
  final Widget? trailing;
  final FutureOr<void> Function()? onTap;
  final Color? backgroundColor;
  final Color? backgroundColorActivated;
  final EdgeInsetsGeometry? padding;
  final double leadingSize;
  final double leadingToTitle;

  @override
  State<HarmonicListTile> createState() => _HarmonicListTileState();
}

class _HarmonicListTileState extends State<HarmonicListTile> {
  bool _tapped = false;

  @override
  Widget build(BuildContext context) {
    HarmonicThemeData theme = HarmonicTheme.of(context);

    final TextStyle titleTextStyle = TextStyle(
      color: theme.fontPrimaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );

    final TextStyle subtitleTextStyle = TextStyle(
      color: theme.fontSecondaryColor,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );

    final TextStyle? additionalInfoTextStyle = widget.additionalInfo != null
        ? TextStyle(
            color: theme.fontSecondaryColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          )
        : null;

    final Widget title = DefaultTextStyle(
      style: titleTextStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      child: widget.title,
    );

    final EdgeInsetsGeometry padding = widget.padding ??
        const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 8,
          bottom: 8,
        );

    Widget? subtitle;
    if (widget.subtitle != null) {
      subtitle = DefaultTextStyle(
        style: subtitleTextStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        child: widget.subtitle!,
      );
    }

    Widget? additionalInfo;
    if (widget.additionalInfo != null) {
      additionalInfo = DefaultTextStyle(
        style: additionalInfoTextStyle!,
        maxLines: 1,
        child: widget.additionalInfo!,
      );
    }

    Color? backgroundColor = widget.backgroundColor;
    if (_tapped) {
      backgroundColor = widget.backgroundColorActivated;
    }

    final double minHeight = 48;

    final Widget child = Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: minHeight,
      ),
      color: backgroundColor,
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            if (widget.leading != null) ...<Widget>[
              SizedBox(
                width: widget.leadingSize,
                height: widget.leadingSize,
                child: Center(
                  child: widget.leading,
                ),
              ),
              SizedBox(width: widget.leadingToTitle),
            ] else
              SizedBox(height: widget.leadingSize),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  title,
                  if (subtitle != null) ...<Widget>[
                    const SizedBox(height: 0),
                    subtitle,
                  ],
                ],
              ),
            ),
            if (additionalInfo != null) ...<Widget>[
              additionalInfo,
              if (widget.trailing != null) const SizedBox(width: 0),
            ],
            if (widget.trailing != null) widget.trailing!,
          ],
        ),
      ),
    );

    if (widget.onTap == null) {
      return child;
    }

    return GestureDetector(
      onTapDown: (_) => setState(() {
        _tapped = true;
      }),
      onTapCancel: () => setState(() {
        _tapped = false;
      }),
      onTap: () async {
        await widget.onTap!();
        if (mounted) {
          setState(() {
            _tapped = false;
          });
        }
      },
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}

class HarmonicListTileChevron extends StatelessWidget {
  const HarmonicListTileChevron({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(12, 24),
      painter: _ChevronRightPainter(),
    );
  }
}

class _ChevronRightPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define the path from the SVG data
    Path path = Path();
    path.moveTo(2.81, 18.83);
    path.cubicTo(2.98, 19.01, 3.17, 19.09, 3.37, 19.08);
    path.cubicTo(3.57, 19.08, 3.74, 19, 3.89, 18.83);
    path.lineTo(9.17, 12.77);
    path.cubicTo(9.37, 12.54, 9.47, 12.28, 9.47, 12);
    path.cubicTo(9.46, 11.71, 9.36, 11.45, 9.17, 11.23);
    path.lineTo(3.89, 5.14);
    path.cubicTo(3.76, 4.97, 3.59, 4.9, 3.37, 4.91);
    path.cubicTo(3.15, 4.91, 2.97, 4.99, 2.83, 5.14);
    path.cubicTo(2.69, 5.28, 2.62, 5.45, 2.62, 5.64);
    path.cubicTo(2.62, 5.85, 2.69, 6.03, 2.83, 6.18);
    path.lineTo(7.85, 12);
    path.lineTo(2.81, 17.78);
    path.cubicTo(2.68, 17.93, 2.61, 18.12, 2.6, 18.32);
    path.cubicTo(2.59, 18.52, 2.66, 18.69, 2.81, 18.83);
    path.close();

    // Create a paint object with the desired color
    Paint paint = Paint()
      ..color = const Color(0xE6000000)
      ..style = PaintingStyle.fill;

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
