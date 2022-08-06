import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loynews/src/model/remote_data.dart';
import 'package:loynews/src/utility/widgets.dart';
import 'package:loynews/src/view_model/new_post_view_model.dart';

class NewPostScreen extends StatelessWidget {
  NewPostScreen({Key? key}) : super(key: key);


  final titleTextController = TextEditingController();
  final contentTextController = TextEditingController();

  final viewModel = Get.put(NewPostViewModel());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Post'),
      ),
      body: body,
    );

  }


  Widget get body {
    return Column(
      children: [
        TextField(
          controller: titleTextController,
          decoration: const InputDecoration(
          labelText: 'Title'
        ),),
        TextField(
          controller: contentTextController,
          decoration: const InputDecoration(
          labelText: 'Content'
        ),),
        addButtonWidget,
        messageWidget
      ],
    );
  }

  Widget get addButtonWidget {
    return Obx((){
      final data = viewModel.data;
      /*if(processing){
        return Widgets.loading;
      } else {
        return ElevatedButton.icon(onPressed: onAddClick, icon: const Icon(Icons.add), label: const Text('Add'));
      }*/

      final icon = data.status == RemoteDataStatus.processing ? Widgets.loading : const Icon(Icons.add);
      return ElevatedButton.icon(onPressed: onAddClick, icon: icon, label: const Text('Add'));
    });
  }

  Widget get messageWidget {
    return Obx((){
      final data = viewModel.data;
      return Text(data.message ?? '');
    });
  }

  void onAddClick(){
    final title = titleTextController.text;
    final content = contentTextController.text;
    viewModel.addPost(title, content);
  }

}