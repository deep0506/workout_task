import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/datasource/app_dio.dart';
import '../data/models/home/res_user.dart';
import '../data/result.dart';
import '../utils/constants/api_end_points.dart';

abstract class HomeRepository {
  Future<Result<List<ResUser>>> getUsers();

}

final homeRepositoryProvider = Provider((ref) => HomeRepositoryImpl(ref.read));

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._reader);

  final Reader _reader;
  late final Dio _dio = _reader(dioProvider);

  @override
  Future<Result<List<ResUser>>> getUsers() {
    {
      return Result.guardFuture(() async {
        return _dio.get<List<dynamic>>(apiGetUser, options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          }
        )).then((value) async {
          final data = value.data!.map((e)=> ResUser.fromJson(e)).toList();
          return data;
        });
      }).catchError((error) {
        throw error;
      });
    }
  }

}
