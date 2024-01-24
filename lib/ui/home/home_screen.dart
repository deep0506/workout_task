import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:workout_task/utils/utils.dart';
import '../../utils/strings.dart';
import 'component/cutom_tile.dart';
import 'controller/home_notifier.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedBox = useState<int>(-1);
    useEffect(() {
      ref.read(homeProvider.notifier).getUser();
      return;
    }, []);
    final homeState = ref.watch(homeProvider);
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(userList),
      ),
      body: homeState.when(
        data: (val) {
          Widget bloc(double width, int index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.all(20.0),
              child:CustomCard(user: val[index],onPressed: (){
                if(selectedBox.value == index){
                  selectedBox.value = -1;
                }else{
                  selectedBox.value = index;
                }
              },buttonName:selectedBox.value == index ? viewLess : viewMore,isSelected: selectedBox.value == index),
            );
          }

          return ListView.builder(
              itemCount: val.length,
              itemBuilder: (_, index) {
            return bloc(Utils.getWidth(context), index);
          });
        },
        loading: () => Container(),
        error: (obj, trace) => ErrorWidget(obj),
      ),
    );
  }
}
