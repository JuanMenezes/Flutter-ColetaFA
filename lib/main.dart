import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/observer.dart';

import 'tabs_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Analytics Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      navigatorObservers: <NavigatorObserver>[observer],
      home: MyHomePage(
        title: 'App Template Coleta',
        analytics: analytics,
        observer: observer,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
    required this.analytics,
    required this.observer,
  }) : super(key: key);

  final String title;
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = '';

  void setMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  Future<void> _testeVSRwithPromotions() async {
    await widget.analytics.logEvent(
      name: 'view_search_results',
      parameters: {
        'screenName': "/view_search_Results/array_promotion",
        'promotions': [
          {
            'item_id': '519',
            'item_name': 'festival de verao',
            'creative_name': 'banner-verao',
            'creative_slot': 'slot1',
          },
          {
            'item_id': '520',
            'item_name': 'festival de natal',
            'creative_name': 'banner-natal',
            'creative_slot': 'slot2',
          }
        ],
      },
    );
  }

  Future<void> _testeVILwithPromotions() async {
    await widget.analytics.logEvent(
      name: 'view_item_list',
      parameters: {
        'screenName': "/view_item_list/array_promotion",
        'promotions': [
          {
            'item_id': '519',
            'item_name': 'festival de verao',
            'creative_name': 'SKU_1-id',
            'creative_slot': 'slot1',
          },
          {
            'item_id': '520',
            'item_name': 'festival de natal',
            'creative_name': 'banner-natal',
            'creative_slot': 'slot2',
          }
        ],
      },
    );
  }

  Future<void> _testeSCwithPromotions() async {
    await widget.analytics.logEvent(
      name: 'select_content',
      parameters: {
        'screenName': "/select_content/array_promotion_unicaPromo",
        'promotions': [
          {
            'item_id': '519',
            'item_name': 'festival de verao',
            'creative_name': 'SKU_1-id',
            'creative_slot': 'slot1',
          }
        ],
      },
    );
  }

  Future<void> _testeVILwithItems() async {
    await widget.analytics.logEvent(
      name: 'view_item_list',
      parameters: {
        'screenName': "/view_item_list/array_items",
        'items': [
          {
            'item_id': '12345678',
            'item_name': 'sofa',
            'item_category': 'moveis',
            'item_variant': 'preto',
            'item_brand': 'tokstok',
            'price': '2132.47',
            'currency': 'brl',
            'index': '1'
          },
          {
            'item_id': '87654321',
            'item_name': 'cama',
            'item_category': 'quarto',
            'item_variant': 'azul',
            'item_brand': 'magalu',
            'price': '1567.98',
            'currency': 'brl',
            'index': '2'
          }
        ],
      },
    );
  }

  Future<void> _testeItemListNameAnime() async {
    await widget.analytics.logEvent(
      name: 'view_item_list',
      parameters: {
        'screenName': "/view_item_list/otakus",
        'items': [
          {
            'item_id': '123232',
            'item_name': 'camisa branca estampa zoro',
            'item_category': 'anime',
            'item_variant': 'preto',
            'item_brand': 'one piece',
            'price': '333.33',
            'currency': 'brl',
            'index': '1'
          },
          {
            'item_id': '2424532',
            'item_name': 'sandalia tanjiro',
            'item_category': 'anime',
            'item_variant': 'azul',
            'item_brand': 'kimetsu no yaiba',
            'price': '45.78',
            'currency': 'brl',
            'index': '2'
          }
        ],
      },
    );
  }

  Future<void> _testePurchase() async {
    await widget.analytics.logEvent(
      name: 'ecommerce_purchase',
      parameters: {
        'screenName': "/purchase",
        'transaction_id': '123456',
        'items': [
          {
            'item_id': '12345678',
            'item_name': 'sofa',
            'item_category': 'moveis',
            'item_variant': 'preto',
            'item_brand': 'tokstok',
            'price': '2132.47',
            'currency': 'brl',
            'index': '1'
          },
          {
            'item_id': '87654321',
            'item_name': 'cama',
            'item_category': 'quarto',
            'item_variant': 'azul',
            'item_brand': 'magalu',
            'price': '1567.98',
            'currency': 'brl',
            'index': '2'
          }
        ],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: _testeVSRwithPromotions,
            child: const Text(
                'Testando View Search Results com Promotions no Array'),
          ),
          MaterialButton(
            onPressed: _testeVILwithPromotions,
            child:
                const Text('Testando View Item List com Promotions no Array'),
          ),
          MaterialButton(
            onPressed: _testeVILwithItems,
            child: const Text('Testando View Item List com Items no Array'),
          ),
          MaterialButton(
            onPressed: _testeSCwithPromotions,
            child:
                const Text('Testando Select Content com Promotions no Array '),
          ),
          MaterialButton(
            onPressed: _testePurchase,
            child: const Text('Purchase '),
          ),
          Text(_message,
              style: const TextStyle(color: Color.fromARGB(255, 0, 155, 0))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute<TabsPage>(
              settings: const RouteSettings(name: TabsPage.routeName),
              builder: (BuildContext context) {
                return TabsPage(widget.observer);
              }));
        },
        child: const Icon(Icons.tab),
      ),
    );
  }
}
