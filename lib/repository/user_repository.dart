import 'package:flutter_crud_with_bloc_library/dao/user_dao.dart';
import 'package:flutter_crud_with_bloc_library/model/user_model.dart';

class UserRepository {
  final userDao = UserDao();

  Future getUsers() => userDao.getUsers();

  Future getUser(int id) => userDao.getUser(id: id);

  Future createUser(User user) => userDao.createUser(user);

  Future updateUser(User user) => userDao.updateUser(user);

  Future deleteUser(int id) => userDao.deleteUser(id);
}