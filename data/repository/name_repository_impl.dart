class NameRepositoryImpl extends NameRepository {
  final NameDataSource service;

  NameRepositoryImpl({
    required this.service,
  });

  @override
  Future<Either<Failure, NameModel>> getName({
    required String token,
    required final int id,
  }) async {
    return await service.getName(token: token, page: id);
  }

  @override
  Future<Either<Failure, dynamic>> postName({
    required final String token,
    required int charge,
    required int id,
    required String text,
  }) async {
    return await service.postName(
        token: token, charge: charge, id: id, text: text);
  }
}
