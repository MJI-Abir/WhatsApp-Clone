import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/my_colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/common/widgets/custom_icon_button.dart';
import 'package:whatsapp_clone/common/widgets/short_h_bar.dart';
import 'package:whatsapp_clone/features/auth/pages/image_picker_page.dart';
import 'package:whatsapp_clone/features/auth/widgets/custom_text_filed.dart';

class UserInfoPage extends ConsumerStatefulWidget {
  const UserInfoPage({
    super.key,
  });

  @override
  ConsumerState<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends ConsumerState<UserInfoPage> {
  File? imageCamera;

  late TextEditingController userNameController;

  imagePickerTypeBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ShortHBar(),
              Row(
                children: [
                  const SizedBox(width: 20),
                  const Text(
                    'Profile photo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  CustomIconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icons.close,
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              Divider(
                color: context.theme.greyColor!.withOpacity(.3),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(width: 20),
                  imagePickerIcon(
                    onTap: () {},
                    icon: Icons.camera_alt_rounded,
                    text: 'Camera',
                  ),
                  const SizedBox(width: 15),
                  imagePickerIcon(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ImagePickerPage(),
                        ),
                      );
                    },
                    text: 'Gallery',
                    icon: Icons.photo_camera_back_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: Text(
          'Profile info',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Please provide your name and an optional profile photo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: imagePickerTypeBottomSheet,
              child: Container(
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.theme.photoIconBgColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3, right: 3),
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    size: 48,
                    color: context.theme.photoIconColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Expanded(
                  child: CustomTextField(
                    hintText: 'Type your name here',
                    textAlign: TextAlign.start,
                    autoFocus: true,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: context.theme.photoIconColor,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  imagePickerIcon({
    required VoidCallback onTap,
    required IconData icon,
    required String text,
  }) {
    return Column(
      children: [
        CustomIconButton(
          onPressed: onTap,
          icon: icon,
          iconColor: MyColors.greenDark,
          minWidth: 50,
          border: Border.all(
            color: context.theme.greyColor!.withOpacity(0.2),
            width: 1,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            color: context.theme.greyColor,
          ),
        ),
      ],
    );
  }
}
