import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter_app/main_screen.dart';
import 'package:starter_app/model/bottom_navigation_bar_tuple.dart';
import 'package:starter_app/news_screen.dart';
import 'package:starter_app/search_screen.dart';
import 'package:starter_app/stock_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              color: Colors.white,
            ),
      ),
      darkTheme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        brightness: Brightness.dark,
        primaryColor: Colors.black87,
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              color: Colors.black87,
            ),
      ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  static final selectedNavigationProvider = StateProvider<int>((ref) {
    return 0;
  });

  final List<BottomNavigationBarTuple> pages = [
    BottomNavigationBarTuple(
      screen: const StockScreen(),
      icon: const Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarTuple(
      screen: const SearchScreen(),
      icon: const Icon(Icons.search_outlined),
      label: 'Search',
    ),
    BottomNavigationBarTuple(
      screen: const NewsScreen(),
      icon: const Icon(Icons.newspaper),
      label: 'News',
    ),
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedNavigation = ref.watch(selectedNavigationProvider);
    return Scaffold(
      body: pages[selectedNavigation].screen,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedNavigation,
        onTap: (index) => ref
            .read(selectedNavigationProvider.notifier)
            .update((state) => state = index),
        items: pages
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
            .toList(),
      ),
    );
  }
}
