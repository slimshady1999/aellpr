import 'package:flutter/material.dart';

class PackageHistory extends StatelessWidget {
  const PackageHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Package History",
            style: Theme.of(context).textTheme.bodyMedium),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- packages

            //-- Package 1
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              // height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              children: [
                                Text("Order Id",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(
                                  "9he653",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 8, top: 2),
                                  height: 27,
                                  width: 65,
                                  child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      onTap: () {
                                        //
                                      },
                                      child: Center(
                                        child: Text(
                                          "Ongoing",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(fontSize: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // second section
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ikeja",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "2 Anifowose",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),

                            //-- 1 package section
                            Container(
                              margin: const EdgeInsets.only(left: 8, top: 2),
                              height: 26,
                              width: 65,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    //
                                  },
                                  child: Center(
                                    child: Text(
                                      "1 Package",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, top: 5),
                              child: Column(
                                children: [
                                  Text("Ikorodo",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    height: 27,
                                    width: 65,
                                    child: Material(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(30),
                                        onTap: () {
                                          //
                                        },
                                        child: Center(
                                          child: Text(
                                            "Garage",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Little circle Progress Rectangle
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                            height: 30,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.circle_outlined,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: SizedBox(
                                  height: 3,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    color: Colors.red,
                                    value: 20,
                                    backgroundColor: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset("assets/image/package.png",
                                    height: 15, width: 15),
                              )
                            ])),
                      )
                    ]),
              ),
            ),

            //-- Package 2
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              // height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              children: [
                                Text("Order Id",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(
                                  "9he653",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 8, top: 2),
                                  height: 27,
                                  width: 65,
                                  child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      onTap: () {
                                        //
                                      },
                                      child: Center(
                                        child: Text(
                                          "Ongoing",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(fontSize: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // second section
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ikeja",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "2 Anifowose",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),

                            //-- 1 package section
                            Container(
                              margin: const EdgeInsets.only(left: 8, top: 2),
                              height: 26,
                              width: 65,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    //
                                  },
                                  child: Center(
                                    child: Text(
                                      "1 Package",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, top: 5),
                              child: Column(
                                children: [
                                  Text("Ikorodo",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    height: 27,
                                    width: 65,
                                    child: Material(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(30),
                                        onTap: () {
                                          //
                                        },
                                        child: Center(
                                          child: Text(
                                            "Garage",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Little circle Progress Rectangle
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                            height: 30,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.circle_outlined,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: SizedBox(
                                  height: 3,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    color: Colors.red,
                                    value: 20,
                                    backgroundColor: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset("assets/image/package.png",
                                    height: 15, width: 15),
                              )
                            ])),
                      )
                    ]),
              ),
            ),

            //-- Package 3
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              // height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              children: [
                                Text("Order Id",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(
                                  "9he653",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 8, top: 2),
                                  height: 27,
                                  width: 65,
                                  child: Material(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      onTap: () {
                                        //
                                      },
                                      child: Center(
                                        child: Text(
                                          "Ongoing",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(fontSize: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // second section
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ikeja",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "2 Anifowose",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),

                            //-- 1 package section
                            Container(
                              margin: const EdgeInsets.only(left: 8, top: 2),
                              height: 26,
                              width: 65,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    //
                                  },
                                  child: Center(
                                    child: Text(
                                      "1 Package",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, top: 5),
                              child: Column(
                                children: [
                                  Text("Ikorodo",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 8, top: 2),
                                    height: 27,
                                    width: 65,
                                    child: Material(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(30),
                                        onTap: () {
                                          //
                                        },
                                        child: Center(
                                          child: Text(
                                            "Garage",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Little circle Progress Rectangle
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                            height: 30,
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.circle_outlined,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: SizedBox(
                                  height: 3,
                                  width: 120,
                                  child: LinearProgressIndicator(
                                    color: Colors.red,
                                    value: 20,
                                    backgroundColor: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset("assets/image/package.png",
                                    height: 15, width: 15),
                              )
                            ])),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
