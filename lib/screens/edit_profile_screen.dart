import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

import '../utils/images.dart';
import '../widgets/common_textfield_area.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

enum ImageSourceType { gallery, camera }

class _EditProfileScreenState extends State<EditProfileScreen> {
  PickedFile? imageFile = null;

  bool show = true;

  final ImagePicker _imagePicker = ImagePicker();
  var _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar1("Edit Profile"),
              addHeight(32.h),
              Center(
                child: Stack(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(70),
                      elevation: 0,
                      child: Container(
                        height: 124.h,
                        width: 124.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          image: DecorationImage(
                              image: AssetImage(Ig.logoRound),
                              fit: BoxFit.cover),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          child: (_image?.path == null)
                              ? SizedBox()
                              : Image.file(
                                  File(_image!.path),
                                ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 2,
                        right: 2,
                        child: GestureDetector(
                          onTap: () => showImageOptions(),
                          child: Container(
                            height: 37.2.h,
                            width: 37.2.h,
                            // backgroundColor: AppTheme.loginLabelColor,
                            // radius: 12,
                            child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 10,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 20.sp,
                                  color: Colors.white,
                                )),
                          ),
                        ))
                  ],
                ),
              ),
              addHeight(36.h),
              Text(
                "Name",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textColor),
              ),
              addHeight(12.h),
              const CommonTextFieldWidget(
                hint: "Pip & Dip",
              ),
              addHeight(30.h),
              Text(
                "Email",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textColor),
              ),
              addHeight(12.h),
              const CommonTextFieldWidget(
                hint: "pipanddip@support.com",
              ),
              Spacer(),
              commonButton1("Save Account", () {})
            ],
          ),
        ),
      ),
    );
  }

  showImageOptions() {
    showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Type",
                      style: TextStyle(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                      onPressed: () {
                        _PickImage(context, ImageSourceType.camera);
                      },
                      child: const Text(
                        'Camera',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _PickImage(context, ImageSourceType.gallery);
                      },
                      child: const Text(
                        'Gallery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  void _PickImage(BuildContext context, var type) async {
    var source = type == ImageSourceType.camera
        ? ImageSource.camera
        : ImageSource.gallery;
    XFile? image = await _imagePicker.pickImage(
        source: source,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    setState(() {
      _image = File(image?.path ?? "");
      Navigator.of(context).pop();
    });
  }

  pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      // String base64Image = base64Encode(bytes);
      // setState(() => _profileController.image = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pic image: $e');
    }
  }
}
