import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/transactions_controller/add_beneficiary_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddBeneficiary extends StatelessWidget {
  const AddBeneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddBeneficiaryController());
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Form(
        key: controller.beneficiaryKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              Text("Accounts Details",
                  style: Theme.of(context).textTheme.bodyMedium)
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 40),
            child: Text("Bank", style: Theme.of(context).textTheme.bodySmall),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 22, right: 22),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFFf3f0f0),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                  onTap: () {
                    //  CustomShowDialog.displayDialog();
                  },
                  leading: const Icon(
                    Icons.account_balance,
                    color: Colors.grey,
                  ),
                  title: Text(" Select Back",
                      style: Theme.of(context).textTheme.bodySmall),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )),
            ),
          ),

          //-- Account Number
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text("Bank Account",
                style: Theme.of(context).textTheme.bodySmall),
          ),

          //-- Bank Account Number
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
            child: TextFormField(
                controller: controller.accountNumber,
                validator: (value) =>
                    FormValidation.accountNumberVerification(value),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.credit_card),
                    hintText: "Enter 10 digits account number",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    contentPadding: const EdgeInsets.only(top: 31, left: 10),
                    filled: true,
                    fillColor: const Color(0xFFf3f0f0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)))),
          ),

          //-- Bank Account Name
          //-- Account Number
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text("Account Name",
                style: Theme.of(context).textTheme.bodySmall),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
            child: TextFormField(
                controller: controller.accountName,
                validator: (value) =>
                    FormValidation.accountNameVerification(value),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.credit_card),
                    hintText: "Enter account name",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    contentPadding: const EdgeInsets.only(top: 31, left: 10),
                    filled: true,
                    fillColor: const Color(0xFFf3f0f0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)))),
          ),

          //-- Continue Button
          Container(
            margin: const EdgeInsets.only(top: 40, left: 25, right: 25),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Material(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  controller.addBeneficiaryProcess();
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
        ]),
      ),
    )));
  }
}
