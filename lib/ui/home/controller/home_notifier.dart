import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:workout_task/data/models/home/res_user.dart';

import '../../../data/result.dart';
import '../../../repositery/home_repository.dart';

final homeProvider =
    StateNotifierProvider.autoDispose<HomeModel, AsyncValue<List<ResUser>>>(
        (ref) => HomeModel(ref.read));


class HomeModel extends StateNotifier<AsyncValue<List<ResUser>>> {
  HomeModel(this._reader) : super(const AsyncValue.loading());

  late final Reader _reader;
  late final HomeRepository _repository = _reader(homeRepositoryProvider);

  Future<Result?> getUser() async {
    final result = await _repository.getUsers();
    return result.when(
        success: (result) {
          AsyncValue.data(result);
          state = AsyncValue.data(result);
          return;
        },
        failure: (error) {
          throw error;
        });
  }
}
