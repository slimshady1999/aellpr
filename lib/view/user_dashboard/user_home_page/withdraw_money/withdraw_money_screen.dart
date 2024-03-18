import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/transactions_controller/withdraw_controller.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/withdraw_money/add_benficiary_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawMoneyScreen extends StatelessWidget {
  const WithdrawMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WithdrawController());
    // final _controller = Get.put(AddBeneficiaryController());
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: controller.amountKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //-- back button and page title
              SizedBox(
                width: double.infinity,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 25),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        )),
                  ),
                  Text("Withdraw Money",
                      style: Theme.of(context).textTheme.bodyMedium)
                ]),
              ),

              //-- Amount section
              const SizedBox(height: 100),
              Text("Amount", style: Theme.of(context).textTheme.bodyMedium),
              IntrinsicWidth(
                child: TextFormField(
                  controller: controller.withdrawAmountController,
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                      FormValidation.amountVerification(value),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 55,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      hintText: "0.00",
                      fillColor: Colors.grey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: SvgPicture.asset(
                            "assets/image/naira.svg",
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 55,
                          fontWeight: FontWeight.w400),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),

              //-- processing fee text
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("processing fee: ",
                    style: Theme.of(context).textTheme.bodyLarge),
                SvgPicture.asset("assets/image/naira.svg",
                    height: 10, width: 10, fit: BoxFit.cover),
                Text("50 ", style: Theme.of(context).textTheme.bodySmall),
              ]),

              //-- Send money to beneficiary
              const SizedBox(
                height: 45,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //--
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 22, right: 4),
                            child: Icon(Icons.add_card, size: 17),
                          ),
                          Text("withdraw money to",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                      controller.withdrawAmountController.text.isEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: Container(
                                height: 55,
                                width: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:
                                      const Color.fromARGB(255, 215, 215, 215),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 2.0),
                                        child: Icon(Icons.add, size: 15),
                                      ),
                                      Text("Add Beneficiary",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(fontSize: 11)),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: SizedBox(
                                height: 55,
                                width: 135,
                                child: Material(
                                  color: const Color(0xFFffdfc9),
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      Get.to(() => const AddBeneficiary());
                                    },
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 2.0),
                                            child: Icon(Icons.add, size: 15),
                                          ),
                                          Text(
                                            "Add Beneficiary",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: 11,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ]),
              ),

              //-- add existing
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
                child: ListTile(
                  selected: true,
                  selectedTileColor: const Color(0xFFf3f0f0),
                  enabled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.red)),
                  leading: SvgPicture.asset('assets/image/bank.svg'),
                  title: const Text("Sterling Bank",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  subtitle: const Text("*** *** 2145",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                  trailing: Checkbox(
                      activeColor: Colors.red,
                      checkColor: Colors.white,
                      value: true,
                      onChanged: (value) {}),
                ),
              ),

              //-- continue button
              const SizedBox(height: 80),
              controller.withdrawAmountController.text.isEmpty
                  ? Container(
                      margin:
                          const EdgeInsets.only(top: 0, left: 22, right: 22),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        color: const Color(0xFFFECFB0),
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      margin:
                          const EdgeInsets.only(top: 0, left: 25, right: 25),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            controller.withdraw();
                          },
                          child: Center(
                            child: Text(
                              "Continue",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    ));
  }
}
