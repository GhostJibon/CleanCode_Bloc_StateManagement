class NameUseCase {
  final NameRepository repository;

  NameUseCase({required this.repository});

  Future<Either<Failure, NameEntities>> getName({
    required final String token,
    required final int id,
  }) async {
    return await repository.getName(token: token, id: id);
  }

  Future<Either<Failure, dynamic>> postName({
    required final String token,
    required int charge,
    required int id,
    required String text,
  }) async {
    return await repository.postName(
        token: token, charge: charge, id: id, text: text);
  }
}
