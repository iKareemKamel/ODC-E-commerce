import 'package:ecommerce/Shared/components.dart';
import 'package:ecommerce/Shared/models.dart';
import 'package:ecommerce/business_logic/home_cubit.dart';
import 'package:ecommerce/business_logic/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categoriesitems.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<Categoriesitems> data = [
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F0050%2F9761%2F9505%2Fproducts%2Fperfume-pour-femme-dylan-blue-para-mujer-de-versace-edp-100ml-681404_2048x2048.jpg%3Fv%3D1582838425&f=1&nofb=1.jpeg",
        "Perfumes"),
    Categoriesitems(
        "https://shop.orange.eg/content/images/thumbs/0004375_iphone-13_550.jpeg",
        "Phones"),
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic.highsnobiety.com%2Fthumbor%2F8uQ9HZ_XpAo-rQErI9vvUVCcp6s%3D%2F1600x1067%2Fstatic.highsnobiety.com%2Fwp-content%2Fuploads%2F2021%2F04%2F16162418%2Fhow-to-care-for-clothes-02.jpg&f=1&nofb=1.jpeg",
        "Fashion"),
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.techprevue.com%2Fwp-content%2Fuploads%2F2017%2F06%2Felectronic-devices-1.jpg&f=1&nofb=1.jpeg",
        "Electronics"),
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.foodism.co.uk%2Ffeatured_image%2F5d4400165b52d.jpeg&f=1&nofb=1.jpg",
        "Supermarket"),
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.nevistas.com%2Ful%2F4%2F2014%2F10%2F08%2F13.jpg&f=1&nofb=1.jpeg",
        "Brands"),
    Categoriesitems(
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.brandedgirls.com%2Fwp-content%2Fuploads%2F2016%2F12%2Fsmashh.jpg&f=1&nofb=1.jpeg",
        "Cosmetics"),

  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates >(
      listener: (context, state) {

      },
      builder: (context, state) {
        if(state is! GetCategoryDataLoadingState) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 1 / 1.5,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(
                HomeCubit.get(context).categories.length,
                    (index) => buildCategoriesItem(HomeCubit.get(context).categories[index]),
              ),
            ),
          );
        }else {
          return Center(child: const CircularProgressIndicator());
        }
      },

    );
  }
}