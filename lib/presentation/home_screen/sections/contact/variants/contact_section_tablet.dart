import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/core/utils/base_functions.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_details_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_action_widget/view/contact_action_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_input_widget/view/contact_input_widget.dart';

class ContactSectionTablet extends StatefulWidget {

  final Function(ContactActionType, String) onActionPressed;
  final Function(ContactDetailsObject) onMessageSent;

  const ContactSectionTablet({
    super.key,
    required this.onMessageSent,
    required this.onActionPressed
  });

  @override
  State<ContactSectionTablet> createState() => _ContactSectionTabletState();
}

class _ContactSectionTabletState extends State<ContactSectionTablet> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  bool isNameError = false;
  bool isEmailError = false;
  bool isPhoneError = false;
  bool isSubjectError = false;
  bool isMessageError = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fifteen = width * 0.0158061117; //15
    double seventeen = width * 0.0158061117; //15
    double eighteen = width * 0.01685985248; //13
    double twenty = width * 0.0210748156; //20
    double twentyFive = width * 0.02634351949; //25
    double thirty = width * 0.02634351949; //25
    double sixty = width * 0.06322444679; //60
    double seventy = width * 0.05268703899; //50
    double eighty = width * 0.06322444679; //60
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(eighty),
      color: AppColors.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ContactSectionDataset.title,
            style: AppStyles.boldestPrimaryColor.copyWith(
                fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Row(
            children: [
              Expanded(
                child: Text(
                  ContactSectionDataset.subTitle,
                  style: AppStyles.normalTextGrey2.copyWith(
                      fontSize: eighteen
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: sixty,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ContactSectionDataset.actions.length,
                        separatorBuilder: (context, index){
                          return SizedBox(height: twentyFive,);
                        },
                        itemBuilder: (context, index){
                          ContactActionObject action = ContactSectionDataset.actions[index];
                          return ContactActionWidget(onPressed: (){
                            widget.onActionPressed(action.type, action.value);
                          }, data: action);
                        }
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      ContactSectionDataset.leaveMessage,
                      style: AppStyles.boldestWhite.copyWith(
                          fontSize: thirty
                      ),
                    ),
                    SizedBox(height: thirty,),
                    ContactInputWidget(
                        title: ContactSectionDataset.yourName,
                        hint: ContactSectionDataset.johnDoe,
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        numRows: 1,
                        isError: isNameError,
                    ),
                    SizedBox(height: fifteen,),
                    ContactInputWidget(
                        title: ContactSectionDataset.emailAddress,
                        hint: ContactSectionDataset.johnEmail,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        numRows: 1,
                        isError: isEmailError,
                    ),
                    SizedBox(height: fifteen,),
                    ContactInputWidget(
                        title: ContactSectionDataset.yourPhone,
                        hint: ContactSectionDataset.johnPhone,
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        numRows: 1,
                        isError: isPhoneError,
                    ),
                    SizedBox(height: fifteen,),
                    ContactInputWidget(
                        title: ContactSectionDataset.subject,
                        hint: ContactSectionDataset.johnSubject,
                        controller: subjectController,
                        keyboardType: TextInputType.text,
                        numRows: 1,
                        isError: isSubjectError,
                    ),
                    SizedBox(height: fifteen,),
                    ContactInputWidget(
                        title: ContactSectionDataset.message,
                        hint: ContactSectionDataset.johnMessage,
                        controller: messageController,
                        keyboardType: TextInputType.text,
                        numRows: 10,
                        isError: isMessageError,
                    ),
                    SizedBox(height: fifteen,),
                    Row(
                      children: [
                        Builder(
                            builder: (context) {
                              return CustomButton(
                                  title: ContactSectionDataset.sendMessage,
                                  icon: AppIcons.arrowRight,
                                  verticalPadding: eighteen,
                                  horizontalPadding: thirty,
                                  fontSize: seventeen,
                                  iconSize: twenty,
                                  borderRadius: twenty,
                                  innerPadding: twenty,
                                  rotatedIcon: true,
                                  onPressed: (){
                                    setState(() {
                                      isNameError = false;
                                      isEmailError = false;
                                      isPhoneError = false;
                                      isSubjectError = false;
                                      isMessageError = false;
                                    });
                                    List<bool> errors = <bool>[false, false, false, false, false];
                                    if(nameController.text.isEmpty){
                                      errors[0] = true;
                                    }
                                    if(emailController.text.isEmpty){
                                      errors[1] = true;
                                    }
                                    if(phoneController.text.isEmpty){
                                      errors[2] = true;
                                    }
                                    if(subjectController.text.isEmpty){
                                      errors[3] = true;
                                    }
                                    if(messageController.text.isEmpty){
                                      errors[4] = true;
                                    }
                                    if(errors.contains(true)){
                                      setState(() {
                                        isNameError = errors[0];
                                        isEmailError = errors[1];
                                        isPhoneError = errors[2];
                                        isSubjectError = errors[3];
                                        isMessageError = errors[4];
                                      });
                                    }else{
                                      widget.onMessageSent(ContactDetailsObject(
                                          fullName: nameController.text,
                                          email: emailController.text,
                                          phone: phoneController.text,
                                          subject: subjectController.text,
                                          message: messageController.text
                                      ));
                                    }
                                  }
                              );
                            }
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
