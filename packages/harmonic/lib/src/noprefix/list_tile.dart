import 'package:harmonic/src/list_tile.dart';

class ListTile extends HarmonicListTile {
  const ListTile({
    super.key,
    required super.title,
    super.subtitle,
    super.additionalInfo,
    super.leading,
    super.trailing,
    super.onTap,
    super.backgroundColor,
    super.backgroundColorActivated,
    super.padding,
    super.leadingSize,
    super.leadingToTitle,
  });
}

class ListTileChevron extends HarmonicListTileChevron {
  const ListTileChevron({super.key});
}
