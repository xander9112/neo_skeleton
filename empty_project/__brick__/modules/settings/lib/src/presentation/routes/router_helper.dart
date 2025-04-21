// import 'package:core/core.dart';
// import 'package:settings/settings.dart';

// class SettingsRouter extends AppRouter {
//   SettingsRouter(super.router);

//   Future<void> goToCreateStory() async {
//     await pushNamed(SettingsRoutePath.create);
//   }

//   void goToStory(String login, int id) {
//     navigateNamed(
//       SettingsRoutePath.story
//           .params(<String, dynamic>{'login': login, 'id': id}),
//     );
//   }

//   Future<void> goToStoryReaction(String login, int id) async {
//     await pushNamed(
//       SettingsRoutePath.storyReaction
//           .params(<String, dynamic>{'login': login, 'id': id}),
//     );
//   }
// }
