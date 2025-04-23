// import 'dart:convert';

// import 'package:hive/hive.dart';
// import 'package:jnp_sdk/jnp_sdk.dart';
// import 'package:auth/auth.dart';
// import 'package:stream_transform/stream_transform.dart';

// class HiveAuthCacheDataSource implements AuthCacheDataSource {
//   HiveAuthCacheDataSource();

//   late final Box<String> _box;

//   @override
//   Stream<List<StoryObjectModel>> get stream => _box
//       .watch()
//       .debounce(const Duration(milliseconds: 300))
//       .asyncMap<List<StoryObjectModel>>((_) => getAuth());

//   @override
//   Stream<StoryObjectModel?> watch(String login) => _box
//       .watch(key: login)
//       .asyncMap<StoryObjectModel?>((_) => getStory(login));

//   @override
//   Future<void> clear() async {
//     await _box.clear();
//   }

//   @override
//   Future<StoryObjectModel?> getStory(String login) async {
//     try {
//       final String? _story = _box.get(login);

//       if (_story != null) {
//         return _transform(_story);
//       }
//     } catch (_) {
//       await _box.clear();
//     }

//     return null;
//   }

//   @override
//   Future<void> deleteStory(String login) {
//     return _box.delete(login);
//   }

//   @override
//   Future<List<StoryObjectModel>> getAuth() async {
//     try {
//       return _box.values.map(_transform).toList();
//     } catch (_) {
//       await _box.clear();

//       return [];
//     }
//   }

//   @override
//   Future<void> init() async {
//     _box = await Hive.openBox<String>('auth');
//   }

//   @override
//   Future<void> saveStory(StoryObjectModel story) async {
//     await _box.put(story.login, json.encode(story.toJson()));
//   }

//   StoryObjectModel _transform(String value) {
//     return StoryObjectModel.fromJson(json.decode(value));
//   }

//   @override
//   Future<StoryObjectModel?> updateStory(
//     String login,
//     UpdateStoryCallback onUpdate,
//   ) async {
//     final story = await getStory(login);

//     final newStory = onUpdate(story);

//     if (newStory != null) {
//       await saveStory(newStory);

//       return newStory;
//     }

//     return null;
//   }
// }
