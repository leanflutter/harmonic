import 'package:flutter/material.dart' show MaterialColor;
import 'package:flutter/widgets.dart';
import 'package:harmonic/src/theme.dart';

class HarmonicSwitch extends StatefulWidget {
  const HarmonicSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.trackColor,
    this.thumbColor,
  });

  /// Whether this switch is on or off.
  final bool value;

  /// Called when the user toggles with switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled, which has a reduced opacity.
  ///
  /// The callback provided to onChanged should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// SwitchSwitch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  final ValueChanged<bool>? onChanged;

  /// The color to use for the track when the switch is on.
  final Color? activeColor;

  /// The color to use for the track when the switch is off.
  final Color? trackColor;

  /// The color to use for the thumb of the switch.
  final Color? thumbColor;

  @override
  State<HarmonicSwitch> createState() => _HarmonicSwitchState();
}

class _HarmonicSwitchState extends State<HarmonicSwitch>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    HarmonicThemeData themeData = HarmonicTheme.of(context);

    Color activeColor =
        widget.activeColor ?? themeData.compBackgroundEmphasizeColor;
    Color trackColor =
        widget.trackColor ?? themeData.compBackgroundSecondaryColor;
    Color thumbColor =
        widget.thumbColor ?? themeData.compBackgroundPrimaryContraryColor;

    if (activeColor is MaterialColor) {
      activeColor = activeColor.shade600;
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          widget.onChanged?.call(!widget.value);
        },
        child: Stack(
          children: [
            Container(
              width: 40,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.value ? activeColor : trackColor,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: widget.value ? 18 : 2,
              top: 2,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: thumbColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
