import 'package:clean_architecture/app/modules/home/domain/repositories/get_users_repository.dart';
import 'package:clean_architecture/app/modules/shared/response/response_presentation.dart';

import 'get_users_usecase.dart';

final $GetUsersUseCaseImpl = Bind.singleton(
  (i) => GetUsersUseCaseImpl(i()),
);

class GetUsersUseCaseImpl implements GetUsersUseCase {
  GetUsersUseCaseImpl(this._getUsersRepository);

  final GetUsersRepository _getUsersRepository;

  @override
  Future<ResponsePresentation> call() async {
    try{
      var res = await _getUsersRepository();
      return ResponsePresentation(success: true);
    } catch (e) {
      return ResponsePresentation(success: false);
    }
  }
}
  