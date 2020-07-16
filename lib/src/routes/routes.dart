import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/lists_page.dart';
import 'package:componentes/src/pages/sliders_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alerts_page.dart';
import 'package:componentes/src/pages/avatars_page.dart';
import 'package:componentes/src/pages/cards_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/not_found_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertsPage(),
    'avatar': (BuildContext context) => AvatarsPage(),
    'card': (BuildContext context) => CardsPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SlidersPage(),
    'list': (BuildContext context) => ListsPage()
  };
}

getErrorRoute() => MaterialPageRoute(builder: (context) => NotFoundPage());
