import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_app/model/stock.dart';

final watchlistsProvider = StateProvider<List<Stock>>((ref) {
  return [
    Stock(name: 'Ashford Inc', code: 'AINC'),
    Stock(name: 'Tesla Inc', code: 'TSLA'),
    Stock(name: 'NVIDIA Corp', code: 'NVDA'),
    Stock(name: 'Intel Inc', code: 'INTC'),
    Stock(name: 'Microsoft', code: 'MSFT'),
  ];
});

class MyWatchlistCard extends StatelessWidget {
  const MyWatchlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Watchlist',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Consumer(
              builder: (context, ref, child) {
                final watchlists = ref.watch(watchlistsProvider);
                if (watchlists.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text('There\'s no watchlist here..'),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: watchlists.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final watchlist = watchlists[index];
                    return ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0.0),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(watchlist.logoSrc),
                      ),
                      title: Text(
                        '${watchlist.code}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      subtitle: Text(
                        watchlist.name,
                        style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 11.0,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  'Remove ${watchlist.name} from Watchlist ?',
                                  style: const TextStyle(wordSpacing: 1.6),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Cancel'),
                                      ),
                                      const SizedBox(
                                        width: 4.0,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          ref
                                              .read(watchlistsProvider.notifier)
                                              .update((state) => state = state
                                                  .where((element) =>
                                                      element.name !=
                                                      watchlist.name)
                                                  .toList());
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Remove'),
                                      )
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.star, color: Colors.yellow),
                      ),
                    );
                  },
                );
                ;
              },
            )
          ],
        ),
      ),
    );
  }
}
