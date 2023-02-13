class ApiMethods {
  static const String authLogin = '/V1/auth/login';
  static const String authLogout = '/V1/auth/logout';
  static const String authVerify = '/V1/verify';
  static const String authFirebaseId = '/V1/firebase_id';
  static const String authUpdateDeviceVersion = '/V1/update_device_version';

  static const String users = '/V1/users';
  static const String userById = '/V1/users/{id}';

  static const String cities = '/V1/cities';
  static const String departments = '/V1/departments';

  static const String stories = '/V1/stories';
  static const String storyById = '/V1/stories/{id}';
  static const String storyComplain = '/V1/stories/{id}/complain';
  static const String storiesHistory = '/V1/stories/history';

  static const String promos = '/V1/promos';

  static const String posts = '/V1/boards';
  static const String postById = '/V1/boards/{id}';
  static const String postComplainById = '/V1/boards/{id}/complain';
  static const String postCommentsById = '/V1/boards/{id}/comments';
  static const String postCommentById = '/V1/boards/{id}/comments/{commentId}';
  static const String postLikesById = '/V1/boards/{id}/who_likes';
  static const String postLookedById = '/V1/boards/{id}/looked';
  static const String postLike = '/V1/boards/like';
  static const String postDislike = '/V1/boards/dislike';
  static const String postDeleteImages = '/V1/boards/delete-images';
  static const String postsHistory = '/V1/boards/history';

  static const String pushesSend = '/V1/pushes/send';

  static const String settingsMobile = '/V1/settings/mobile';

  static const String servicesJiraLogTime = '/V1/services/set-worklog';
  static const String servicesJiraIssueHistory = '/V1/services/issue-history';
  static const String servicesJiraIssueLast = '/V1/services/issue-last';
  static const String servicesJiraIssueCurrentUser =
      '/V1/services/issue-current-user';
  static const String servicesJiraIssueFavorites =
      '/V1/services/issue-favorites';
  static const String servicesJiraIssueFavoriteAdd =
      '/V1/services/issue-favorite-add';
  static const String servicesJiraIssueFavoriteDelete =
      '/V1/services/issue-favorite-delete';
  static const String servicesVacation = '/V1/services/vacation';
  static const String servicesSickLeave = '/V1/services/vacation-sick-leave';
  static const String servicesSickWithoutSick =
      '/V1/services/vacation-without-proof';
  static const String servicesWorkingDay = '/V1/services/working-day';
  static const String servicesWorklogs = '/V1/services/worklogs';
  static const String servicesAvailableWithoutProof =
      '/V1/services/available-without-proof';
  static const String servicesSetWithoutProof =
      '/V1/services/set-without-proof';
  static const String servicesSetSickLeave = '/V1/services/set-sick-leave';
}
