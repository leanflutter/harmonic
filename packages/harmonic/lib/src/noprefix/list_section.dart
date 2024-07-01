import 'package:flutter/widgets.dart';
import 'package:harmonic/src/list_section.dart';

class ListSection extends HarmonicListSection {
  const ListSection({
    super.key,
    super.children,
    super.header,
    super.footer,
    super.margin = const EdgeInsets.only(left: 12, right: 12),
    super.decoration,
    super.clipBehavior = Clip.none,
    super.topMargin = 8,
    bool hasLeading = true,
    super.separatorColor,
  });
}
