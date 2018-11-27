

import 'dart:async';

void main(){
  
  downloadTheFile();
}



void downloadTheFile(){
Future.delayed(Duration(seconds: 5),(){
    return 'This is youe file take it';
  }).then((result){
    print('Download Complete this is the contect of your app ---> ${result}');
  });
}