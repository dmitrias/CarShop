import 'package:car_shop/src/screens/car_model_screen.dart';
import 'package:car_shop/src/screens/bookmarks_screen.dart';
import 'package:flutter/material.dart';
import 'package:car_shop/src/blocs/main_bloc/main_state.dart';
import 'package:car_shop/src/screens/welcome_screen.dart';
import 'package:car_shop/src/screens/shop_screen.dart';

class MainCubitHelper {
  Widget mainWidget(MainState state) {
    Widget widget;
    switch(state.toString()){
      case('InitialState'):
        {
          widget = WelcomeScreen();
          return widget;
        }
        break;
      case('WelcomeScreenState'):
        {
          widget = WelcomeScreen();
          return widget;
        }
        break;
      case('ShopScreenState'):
        {
          ShopScreenState shopScreenState = state as ShopScreenState;
          widget = ShopScreen(shopScreenState.advertisement);
          return widget;
        }
        break;
      case('CarModelScreenState'):
        {
          CarModelScreenState carModelScreenState = state as CarModelScreenState;
          widget = CarModelScreen(carModelScreenState.car, carModelScreenState.page);
          return widget;
        }
        break;
      case('BookmarksScreenState'):
        {
          widget = BookmarksScreen();
          return widget;
        }
        break;
      default: {
        return Container();
      }
      break;
    }
  }
}