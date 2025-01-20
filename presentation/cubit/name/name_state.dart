class NameState extends Equatable {
  final NormalApiState nameState;
  final NormalApiState updateNameState;
  final String nameError;
  final NameEntities nameEntities;

  const NameState(
      {required this.nameState,
      required this.updateNameState,
      required this.nameError,
      required this.nameEntities});

  @override
  List<Object> get props =>
      [nameState, nameError, nameEntities, updateNameState];

  factory NameState.initial() {
    return NameState(
        nameError: "",
        nameState: NormalApiState.initial,
        updateNameState: NormalApiState.initial,
        nameEntities: NameEntities(
          currentPage: 0,
          data: [],
          perPage: 0,
          totalPage: 0,
          totalResult: 0,
        ));
  }

  NameState copyWith({
    NormalApiState? nameState,
    NormalApiState? updateNameState,
    String? nameError,
    NameEntities? nameEntities,
  }) {
    return NameState(
      nameEntities: nameEntities ?? this.nameEntities,
      nameError: nameError ?? this.nameError,
      nameState: nameState ?? this.nameState,
      updateNameState: updateNameState ?? this.updateNameState,
    );
  }
}
