abstract class NameRepository {
  Future<Either<Failure, NameEntities>> getName({
    required final String token,
    required final int id,
  });

  Future<Either<Failure, dynamic>> postName({
    required final String token,
    required int charge,
    required int id,
    required String text,
  });
}
