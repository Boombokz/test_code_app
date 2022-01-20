import 'package:flutter/material.dart';
import 'package:test_project_pro_area/data/repository/button_repository.dart';
import 'package:test_project_pro_area/ui/screens/home_screen/components/button_list.dart';
import 'package:test_project_pro_area/ui/screens/home_screen/components/remove_item_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.repository,
  }) : super(key: key);

  final ButtonRepository repository;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ButtonList(
                  buttonList: widget.repository.buttonList,
                  onTap: (index) {
                    setState(() {
                      widget.repository.addCount(index);
                    });
                  },
                ),
              ),
              RemoveItemButton(
                onTap: () {
                  setState(() {
                    widget.repository.deleteButton();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
