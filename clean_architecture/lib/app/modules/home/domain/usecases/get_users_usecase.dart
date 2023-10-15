import 'package:clean_architecture/app/modules/shared/response/response_presentation.dart';

abstract class GetUsersUseCase {
  Future<ResponsePresentation> call();
}
  