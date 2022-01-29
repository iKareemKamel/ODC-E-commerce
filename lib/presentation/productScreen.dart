import 'package:ecommerce/Shared/components.dart';
import 'package:ecommerce/Shared/network/remote/dio_helper.dart';
import 'package:ecommerce/business_logic/home_cubit.dart';
import 'package:ecommerce/business_logic/home_states.dart';
import 'package:ecommerce/presentation/productitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Productitem> data = [
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.xda-developers.com%2Ffiles%2F2021%2F09%2FRed.png&f=1&nofb=1.jpg",
    "iphone 13",
    "19.000 ",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.lojasconforto.com%2Fwp-content%2Fuploads%2F2018%2F01%2F4e1786424de3642532645c95fd27efe291d8dcfd.jpg&f=1&nofb=1",
    "LG - TV LED Full HD Smart",
    "8.000 ",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic.zattini.com.br%2Fprodutos%2Fperfume-one-million-masculino-paco-rabanne-edt-100ml%2F60%2FM42-0013-460%2FM42-0013-460_zoom1.jpg&f=1&nofb=1",
    "1 Million Perfume",
    "650 ",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.securahousewares.com%2Fwp-content%2Fuploads%2F2018%2F03%2F1-6.jpg&f=1&nofb=1",
    "Automatic coffee grinder",
    "3.600",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages.scaffolding-direct.co.uk%2Fproduct-images%2F1000-1000%2F278-757.jpg&f=1&nofb=1",
    "Leather Belt",
    "150",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.s4wGd7oAGqlB0YGWB01rwgHaHa%26pid%3DApi&f=1",
    "Headphones",
    "1.450",
  ),
  Productitem(
    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fprintempspottery.indiemade.com%2Fsites%2Fprintempspottery.indiemade.com%2Ffiles%2Fimagecache%2Fim_clientsite_product_zoom%2F2020_inventory_019.jpg&f=1&nofb=1",
    "Mug",
    "85",
  ),
];

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (context, state) {

      },builder: (context, state) {

        if(state is! GetProductDataLoadingState ){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 3.0,
              childAspectRatio: 1 / 1.5,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(
                  HomeCubit.get(context).products!.length,
                      (index) =>
                      buildGridProducts(HomeCubit.get(context).products![index]!, context)),
            ),
          );
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}