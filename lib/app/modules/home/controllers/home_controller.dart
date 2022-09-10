import 'package:get/get.dart';

class HomeController extends GetxController {
  var listCard = [].obs;

  void selectFav(int index) {
    if (!getFav(index).value) {
      listCard.add(index);
    } else {
      listCard.remove(index);
    }
  }

  RxBool getFav(int id) {
    int index = listCard.indexOf(id);
    if (index == -1) {
      return false.obs;
    } else {
      return true.obs;
    }
  }

  var items = <String>[
    'Melisa',
    'Ruby',
    'Nabela',
  ].obs;

  var disable = false.obs;

  String? selectedDropDown;

  void selected(String value) {
    selectedDropDown = value;
    if (value.isNotEmpty) {
      disable.value = true;
    }
    update(['dropDown']);
  }

  List<Map<String, dynamic>> dataCard = [
    {
      'id': 0,
      'backgroundImage':
          'https://images.unsplash.com/photo-1530975080071-4d6704a9a993?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXdlc29tZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
      'imageUrl':
          'https://images.unsplash.com/photo-1621784563330-caee0b138a00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
      'title': 'Kesenian',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley',
      'date': 'December 25, 2022',
    },
    {
      'id': 1,
      'backgroundImage':
          'https://images.unsplash.com/photo-1536036483252-1dc4112957a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXdlc29tZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
      'imageUrl':
          'https://images.unsplash.com/photo-1608317512088-7f2ce2ec9f90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
      'title': 'Astronomi',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley',
      'date': 'August 5, 2022',
    },
    {
      'id': 2,
      'backgroundImage':
          'https://images.unsplash.com/photo-1534100497223-b455f2566b2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YXdlc29tZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
      'imageUrl':
          'https://images.unsplash.com/photo-1615212814093-f56085658024?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
      'title': 'Kecantikan',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley',
      'date': 'October 12, 2022',
    },
    {
      'id': 3,
      'backgroundImage':
          'https://images.unsplash.com/photo-1600787449405-cfed74773992?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGF3ZXNvbWV8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
      'imageUrl':
          'https://images.unsplash.com/photo-1621086893822-ca4d5a70bf36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
      'title': 'Model',
      'description':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley',
      'date': 'March 22, 2022',
    },
  ];
}
