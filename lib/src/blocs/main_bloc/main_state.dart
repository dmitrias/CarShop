import 'package:car_shop/src/models/advertisement_model.dart';
import 'package:car_shop/src/models/car_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class MainState {}

class InitialState extends MainState {
  @override
  String toString() => 'InitialState';
}

class WelcomeScreenState extends MainState {
  @override
  String toString() => 'WelcomeScreenState';
}

class ShopScreenState extends MainState {

  Advertisement advertisement;

  ShopScreenState(this.advertisement);

  @override
  String toString() => 'ShopScreenState';
}

class CarModelScreenState extends MainState {

  Car car;

  int page;

  CarModelScreenState(this.car, this.page);

  @override
  String toString() => 'CarModelScreenState';
}

class BookmarksScreenState extends MainState{

  BookmarksScreenState();

  @override
  String toString() => 'BookmarksScreenState';
}