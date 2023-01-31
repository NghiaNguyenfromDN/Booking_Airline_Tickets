import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/infomation/Contact_page.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:provider/provider.dart';

class ProviderBack extends StatefulWidget {
  const ProviderBack({super.key});

  @override
  State<ProviderBack> createState() => _ProviderBackState();
}

class _ProviderBackState extends State<ProviderBack> {
  @override
  Widget build(BuildContext context) {
    final _myList = context.watch<MovieProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Vé máy bay (${_myList.length})"),
      ),
      body: ListView.builder(
        itemCount: _myList.length,
        itemBuilder: (_, index) {
          final currentMovie = _myList[index];
          return Card(
            key: ValueKey(currentMovie.title),
            elevation: 4,
            child: ListTile(
              title: Text(currentMovie.title),
              subtitle: Text(currentMovie.duration ?? ''),
              trailing: TextButton(
                child: const Text(
                  'Xóa ',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  context.read<MovieProvider>().removeFromList(currentMovie);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
