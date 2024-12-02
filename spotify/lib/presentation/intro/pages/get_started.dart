import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStatrtedPage extends StatelessWidget {
  const GetStatrtedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal:  40),
            
            decoration: const BoxDecoration(
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: 
              AssetImage(
                AppImages.introBG
              ))
            ),
           ),
           Container(
            color: Colors.black.withOpacity(0.15),
           ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo
                  ),
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.white,
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 21,),
                const Text(
                  'Let your body cool and move to the sound of the beat, feel the rhythm take over, as the music sets you free. Surrender to the melody, let your soul dance with every pulse of the sound.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,color: AppColors.grey,
                    fontSize: 13 
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                BasicAppButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage()));
                }, title: 'Get Started')
              ],
            ),
        ],
        
      ),
    );
  }
}