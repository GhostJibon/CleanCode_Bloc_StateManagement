class NameDataSource {
  final DioClient client = sl<DioClient>();

  Future<Either<Failure, NameModel>> getName({
    required String token,
    required final int id,
  }) async {
    final APIRequestParam param = APIRequestParam(
      path: ApiEndPoints.nameGet,
      // '${ApiEndPoints.dateRangeSell}/id',
      options: Options(headers: {"Authorization": "Bearer $token"}),
      isRequiredAuth: true,
    );
    return await client.get(param).then((response) {
      return response.fold((l) {
        return Left(ApiErrorGenerator.apiError(l));
      }, (r) {
        try {
          Map<String, dynamic> convertedList = {"data": r.data};
          NameModel sellG = NameModel.fromJson(convertedList);
          return Right(sellG);
        } on Exception catch (e) {
          return Left(InvalidFormatFailure(
            message: e.toString(),
          ));
        }
      });
    });
  }

  Future<Either<Failure, dynamic>> postName({
    required final String token,
    required int id,
    required String text,
  }) async {
    final payload = APIRequestParam(
      path: "${ApiEndPoints.namePost}/$id",
      options: Options(headers: {"Authorization": "Bearer $token"}),
      data: {"text": text},
      isRequiredAuth: true,
    );
    return await client.patch(payload).then((response) {
      return response.fold((error) {
        return Left(ApiErrorGenerator.apiError(error));
      }, (success) {
        try {
          return Right(success.data);
        } catch (e) {
          return Left(InvalidFormatFailure(
            message: e.toString(),
          ));
        }
      });
    });
  }
}
