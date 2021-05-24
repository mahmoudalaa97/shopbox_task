import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopbox_task/route/app_route.dart';
import 'package:shopbox_task/services/cubit/auth_cubit.dart';
import 'package:shopbox_task/services/cubit/client_cubit.dart';
import 'package:shopbox_task/services/cubit/product_cubit.dart';
import 'package:shopbox_task/utils/colors.dart';

class ClientScreen extends StatefulWidget {
  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<ClientCubit>().fetchClient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                ),
                onPressed: () {
                  context.read<AuthCubit>().logOut(key: "token").then((value) {
                    if (value == true) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, AppRoute.LOGIN, (s) => true);
                    }
                  });
                })
          ],
        ),
        body: BlocConsumer<ClientCubit, ClientStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is FetchClientSuccessfullyState) {
              return Container(
                child: ListView.builder(
                  itemCount: state.clientsAccountModel.clients.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.read<ProductCubit>().fetchProduct(
                              clientID: state.clientsAccountModel.clients[index]
                                  .client.uid,
                            );
                        Navigator.pushNamed(context, AppRoute.PRODUCT);
                      },
                      child: Card(
                          margin: EdgeInsets.all(10),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: state.clientsAccountModel
                                      .clients[index].client.logo.imageMedium,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    state.clientsAccountModel.clients[index]
                                        .client.name,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: MyColors.greenColor),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Description:",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          state
                                              .clientsAccountModel
                                              .clients[index]
                                              .client
                                              .description,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              );
            } else if (state is ClientLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center();
          },
        ));
  }
}
