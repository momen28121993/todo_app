
import 'dart:convert';


import 'package:dartz/dartz.dart';

import 'package:http/http.dart'as http;
import 'package:todo_app/core/class/request_status.dart';

import '../functions/check_internet_function.dart';

String _basicAuth = 'Basic ${base64Encode(utf8.encode(
        'perfectChem:perfectChem1993'))}';

Map<String, String> myheaders = {
  'authorization': _basicAuth
};
class DataRequest {




  Future<Either<RequestStatus,Map>> postData(String url ,Map data)async{
   try{

     if(await checkInternetFunction()){
       http.Response response = await http.post(Uri.parse(url),body: data ,headers: myheaders);

       if(response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 202){
         Map receivedData = jsonDecode(response.body);
         return  right(receivedData) ;
       }else{
         return left(RequestStatus.serverFailure);
       }
     }else{
       return   left(RequestStatus.offline) ;
     }
   }catch(e){
     return left(RequestStatus.serverException);
   }
  }



}
