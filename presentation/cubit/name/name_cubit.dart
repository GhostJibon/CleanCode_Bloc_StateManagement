class NameCubit extends Cubit<NameState> {
  final NameUseCase useCase;
  NameCubit({required this.useCase}) : super(NameState.initial());

  Future<void> getName({
    required  final String token,
    required  int id,
  }) async {
    emit(state.copyWith(
      nameState: NormalApiState.loading,
    ));
    await useCase.getName(token: token, id:id).then((response) {
      response.fold((error) {
        return emit(state.copyWith(
          nameState: NormalApiState.failure,
          nameError: error.message,
        ));
      }, (success) {
        return emit(state.copyWith(
          nameState: NormalApiState.loaded,
          nameError: "",
          nameEntities: success,
        ));
      });
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        nameState: NormalApiState.failure,
        nameError: error.toString(),
      ));
    });
  }

  Future<void> postName({
    required final String token,
    required int id,
    required String text
  }) async {
    emit(state.copyWith(
      updateNameState: NormalApiState.loading,
    ));
    await useCase
        .postName(token: token, id: id, text: text)
        .then((response) {
      response.fold(
          (error) => emit(state.copyWith(
                updateNameState: NormalApiState.failure,
              )), (success) {
        emit(state.copyWith(
          updateNameState: NormalApiState.loaded,
        ));
      });
    });
  }


}
