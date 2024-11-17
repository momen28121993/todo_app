
import 'package:test/test.dart';
import 'package:todo_app/features/home/presentation/widgets/task_list_view.dart';

void main ()async {

  test( "test check done task function",  () {
    final bool val = true;
    //do
    final bool actual = checkDone(val);
    //result
    final bool matcher  = false;
    expect(actual, matcher);
  });
  // setup

}