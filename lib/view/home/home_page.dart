import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:unsplash_api/design/design_assets.dart';
import 'package:unsplash_api/view/home/home_controller.dart';
import 'package:unsplash_api/view/home/widgets/error_text_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Obx(
              () {
                if (controller.isLoading) {
                  return const Center(
                    child: const CircularProgressIndicator(),
                  );
                } else if (controller.error) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: const ErrorText(),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            DesignAssets.ERROR_IMAGE,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            controller.actualImage.full,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 10,
                      child: Container(
                        color: Colors.black26,
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Welcome',
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(250, 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Start',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
