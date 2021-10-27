import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tries/app/ui/modules/home/controllers/controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[700],
              title: Text("Home"),
            ),
            body: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Obx(
                    () => controller.data.isEmpty
                        ? Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.red[700],
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 50.0,
                                    backgroundColor: Colors.red[700],
                                    backgroundImage: NetworkImage(
                                        "${controller.data[0].result!.photo!}"),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${controller.data[0].result!.name!}",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "${controller.data[0].result!.email!}",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16.0,
                                            color: Colors.black87),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "${controller.data[0].result!.address!}",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16.0, color: Colors.black87),
                              ),
                              Text(
                                "${controller.data[0].result!.age!} Tahun",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16.0, color: Colors.black87),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Pendidikan",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: controller
                                    .data[0].result!.educations!.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "${controller.data[0].result!.educations![index].level}"),
                                        Text(
                                            "${controller.data[0].result!.educations![index].institution}")
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Portofolio",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: controller
                                    .data[0].result!.portfolios!.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${controller.data[0].result!.portfolios![index].title}",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            primary: false,
                                            itemCount: controller
                                                .data[0]
                                                .result!
                                                .portfolios![index]
                                                .images!
                                                .length,
                                            itemBuilder: (context, index) =>
                                                Container(
                                                  width: 300.0,
                                                  child: Image.network(
                                                    "${controller.data[0].result!.portfolios![index].images![index]}",
                                                  ),
                                                )),
                                        Text(
                                            "${controller.data[0].result!.portfolios![index].desc}")
                                      ],
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                  )),
            )));
  }
}
