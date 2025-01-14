

// ignore: must_be_immutable
class NameEntities extends Equatable {
  List<NameList> data;
  int perPage;
  int currentPage;
  int totalPage;
  int totalResult;

  NameEntities({
    required this.data,
    required this.perPage,
    required this.currentPage,
    required this.totalPage,
    required this.totalResult,
  });

  @override
  List<Object?> get props =>
      [data, perPage, currentPage, totalPage, totalResult];
}
