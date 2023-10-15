import 'package:clean_architecture/app/modules/home/domain/models/dtos/user_dto.dart';

abstract class GetUsersRepository {
  Future<UserDto> call();
}
  