import 'package:advanced_riverpod/breeds_logic/breeds_provider.dart';
import 'package:advanced_riverpod/get_breeds_state/get_breeds_state.dart';
import 'package:advanced_riverpod/models/cat_breed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(getBreedsProvider.notifier).getBreeds();
  }

  @override
  Widget build(BuildContext context) {
    GetBreedsState getBreedsState = ref.watch(getBreedsProvider);

    return Scaffold(
        appBar: AppBar(title: const Text("Breeds")),
        body: getBreedsState.maybeWhen(loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, success: (breeds) {
          return ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BreedDetailPage(
                                catBreed: breeds[index],
                              )));
                    },
                    title: Text(breeds[index].name!));
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: breeds.length);
        }, orElse: () {
          return Container();
        }));
  }
}

class BreedDetailPage extends StatelessWidget {
  final CatBreed catBreed;
  const BreedDetailPage({Key? key, required this.catBreed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(catBreed.name!)),
      body: Column(
        children: [
          Image.network(catBreed.image!['url']),
          Text(catBreed.description!)
        ],
      ),
    );
  }
}
