import 'dart:io';

import 'package:bloc_fetch_api/cubit/post_fetch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch data from API with Cubit"),
      ),
      body: BlocBuilder<PostFetchCubit, PostFetchState>(
          builder: (context, state){
         if(state is PostFetchStateLoading){
           return   Align(
             alignment: Alignment.center,
               child: Platform.isAndroid ?
               const CircularProgressIndicator() : const CircularProgressIndicator.adaptive());
         } else if(state is PostFetchStateError){
           return Text(state.failure.message);
         } else if(state is PostFetchStateData){
           final postList = state.postList;
           if(postList.isNotEmpty){
             return ListView.builder(
                 shrinkWrap: true,
                 itemCount: state.postList.length,
                 itemBuilder: (context, index){
                   return  ListTile(
                     title: Text(postList[index].title),
                   );
                 }
             );
           } else {
             return const Center(
               child: Text("There are currently no posts available"),
             );
           }

         } else {
           return const SizedBox();
         }
      }),
    );
  }
}
