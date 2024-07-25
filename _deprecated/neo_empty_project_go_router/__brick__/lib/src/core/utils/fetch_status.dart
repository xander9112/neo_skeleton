enum FetchStatus {
  /// The form has not been touched.
  pure,

  /// The form is in the process of being submitted.
  fetchingInProgress,

  /// The form has been submitted successfully.
  fetchingSuccess,

  /// The form fetching failed.
  fetchingFailure;

  /// Indicates whether the form is untouched.
  bool get isPure => this == FetchStatus.pure;

  /// Indicates whether the form is in the process of being submitted.
  bool get isFetchingInProgress => this == FetchStatus.fetchingInProgress;

  /// Indicates whether the form has been submitted successfully.
  bool get isFetchingSuccess => this == FetchStatus.fetchingSuccess;

  /// Indicates whether the form fetching failed.
  bool get isFetchingFailure => this == FetchStatus.fetchingFailure;
}
