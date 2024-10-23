import 'package:flutter/material.dart';
import '../../flutter_stores.dart';

class ChecksPref<T> extends Preferences<T> {

   const ChecksPref({
     super.key,
     required super.title,
     required super.prefKey
   });

  @override
  State<Preferences<T>> createState() => _ChecksPrefState();
}

class _ChecksPrefState<T> extends State<ChecksPref<T>>{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}
