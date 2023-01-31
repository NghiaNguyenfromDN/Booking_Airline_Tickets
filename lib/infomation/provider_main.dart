import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/infomation/provider_back.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:provider/provider.dart';

final nameController = TextEditingController();
final messageController = TextEditingController();

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key, required}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var myList = context.watch<MovieProvider>().myList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('App đặt vé máy bay'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProviderBack()),
                  );
                },
                icon: const Icon(Icons.shopping_bag),
                label: Text(
                  " Hiện có (${myList.length}) vé",
                  style: const TextStyle(fontSize: 24),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                )),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (_, index) {
                  final currentMovie = movies[index];
                  return Card(
                    key: ValueKey(currentMovie.title),
                    color: Colors.blue,
                    elevation: 4,
                    child: ListTile(
                      title: Text(
                        currentMovie.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        currentMovie.duration ?? 'No ìno',
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.airplane_ticket,
                          color: myList.contains(currentMovie)
                              ? Colors.red
                              : Colors.white,
                          size: 30,
                        ),
                        onPressed: (() {
                          if (!myList.contains(currentMovie)) {
                            context
                                .read<MovieProvider>()
                                .addToList(currentMovie);
                          } else {
                            context
                                .read<MovieProvider>()
                                .removeFromList(currentMovie);
                          }
                        }),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
