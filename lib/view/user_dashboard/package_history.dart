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
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Text(
                                "Order Id",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "9he653",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8, top: 2),
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
                                    child: const Center(
                                      child: Text(
                                        "Ongoing",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ikeja",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "2 Anifowose",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
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
                                child: const Center(
                                  child: Text(
                                    "1 Package",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                const Text(
                                  "Ikorodo",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
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
                                      child: const Center(
                                        child: Text(
                                          "Garage",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
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
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                height: 3,
                                width: 80,
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
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Text(
                                "Order Id",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "9he653",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8, top: 2),
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
                                    child: const Center(
                                      child: Text(
                                        "Ongoing",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ikeja",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "2 Anifowose",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
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
                                child: const Center(
                                  child: Text(
                                    "1 Package",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                const Text(
                                  "Ikorodo",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
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
                                      child: const Center(
                                        child: Text(
                                          "Garage",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
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
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                height: 3,
                                width: 80,
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
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Text(
                                "Order Id",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "9he653",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8, top: 2),
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
                                    child: const Center(
                                      child: Text(
                                        "Ongoing",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ikeja",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "2 Anifowose",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
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
                                child: const Center(
                                  child: Text(
                                    "1 Package",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                const Text(
                                  "Ikorodo",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
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
                                      child: const Center(
                                        child: Text(
                                          "Garage",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
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
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                height: 3,
                                width: 80,
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
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 6),
              height: MediaQuery.of(context).size.height / 5.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFf5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Text(
                                "Order Id",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "9he653",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 5),
                          child: Column(
                            children: [
                              const Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8, top: 2),
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
                                    child: const Center(
                                      child: Text(
                                        "Ongoing",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ikeja",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "2 Anifowose",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
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
                                child: const Center(
                                  child: Text(
                                    "1 Package",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 5),
                            child: Column(
                              children: [
                                const Text(
                                  "Ikorodo",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
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
                                      child: const Center(
                                        child: Text(
                                          "Garage",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
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
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                height: 3,
                                width: 80,
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
          ],
        ),
      ),
    );
  }
}
