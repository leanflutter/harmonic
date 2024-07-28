import 'package:harmonic/harmonic.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'switch_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Switch',
  argTypes: [],
)
class SwitchMeta extends Meta with _$SwitchMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    bool checked = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return HarmonicSwitch(
          value: checked,
          onChanged: (value) {
            setState(() {
              checked = value;
            });
          },
        );
      },
    );
  }
}

@storybook.Story('Default')
class SwitchDefaultStory extends StoryObj<SwitchMeta>
    with _$SwitchDefaultStory {}
