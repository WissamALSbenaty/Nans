

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/local_database_tables/app_database.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/login_response_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/models/response_model.dart';
import 'package:nans/src/Data/models/user_profile_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{

  AuthRepository(super.localDatabase,super.apiHelper);

  @override
  Future<void> register(RegisterModel registerModel)async{
    try{
        await apiHelper.post(url:  'mobile/user', formData: {
          ...registerModel.toJson()
        });
        await setAuthLocalData(name:  registerModel.name,email: registerModel.email,
          fatherName: registerModel.fatherName,motherName: registerModel.motherName,
          phoneNumber: registerModel.phoneNumber,token: '',
          password: registerModel.password,);
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<LoginResponseModel> login(LoginModel loginModel)async{

    try{
        String? firebaseToken=await getFirebaseToken();
      ResponseModel response=await apiHelper.post(url:  'user/auth/login',
        formData:{
          'email':loginModel.email,
          'password':loginModel.password,
          'fcmToken': firebaseToken??'',
        });
    LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(response.data);

    await setAuthLocalData(name:  loginResponseModel.user.name,email: loginResponseModel.user.email,
        fatherName: loginResponseModel.user.fatherName,motherName: loginResponseModel.user.motherName,
       phoneNumber: loginResponseModel.user.phoneNumber,token: loginResponseModel.token, password: loginModel.password,);

    return loginResponseModel;
    }
    on CustomError {
      rethrow ;
    }
    on Exception  {

      throw SomethingWentWrongError();
    }
  }


  @override
  Future<void> loginAsGuest() async{
    await setAuthLocalData(name:'',motherName:'',fatherName: '', email:'', phoneNumber:'', password:'', token:'');
  }

  @override
  Future<void> sendConfirmationCode({required String email})=>apiHelper.patch(url: 'user/code', formData: {'email':email,});

  @override
  Future<void> resetPassword({required String email,required String newPassword,required String otpCode,})=>
      apiHelper.patch(url: 'mobile/user/setNewPassword', formData: {
      "email": email, "code": otpCode, "password": newPassword});

 @override
  Future<void> sendForgetPasswordCode({required String email})=> apiHelper.patch(url: 'mobile/user/forgetPassword',
     formData: {email:email,});


  @override
  Future<void> changePassword({required String oldPassword, required String newPassword})async {
    User currentUser =await localDatabase.getUser();
    await apiHelper.patch(url: 'mobile/user/updatePassword', formData: {
      'oldPassword':oldPassword,
      'newPassword':newPassword,
    });
    await setAuthLocalData(name:currentUser.name,email: currentUser.email,
        phoneNumber:currentUser.phoneNumber,fatherName:currentUser.fatherName ,motherName:currentUser.motherName ,
        password:newPassword,
        token:currentUser.token,);
  }

  @override
  Future<void> changeEmail({required String email})=> apiHelper.post(url: 'mobile/user/updateRequest', formData: {"update": {"email":email,}});


  @override
  Future<UserProfileModel> getUserProfile()async {
    User currentUser=await localDatabase.getUser();
    UserProfileModel ret =await apiHelper.getObject(url: 'mobile/user/profile', parameters: {},mapper:UserProfileModel.fromJson );
    await setAuthLocalData(name:ret.name,email: ret.email,
      phoneNumber:ret.phoneNumber,fatherName: ret.fatherName,motherName: ret.motherName,
        password:currentUser.password,
        token:currentUser.token,);

    return ret;
  }

  @override
  Future<void> checkConfirmationCode({required String email, required String otpCode})=> apiHelper.patch(url: 'mobile/user/validate', formData:  {
      'code':otpCode, 'email':email,});

  @override
  Future<void> checkForgetPasswordCode({required String email, required String otpCode})=> apiHelper.patch(url: 'mobile/user/forgetPassword/validate',
      formData: {"email":email, "code":otpCode});

  @override
  Future<void> updateFirebaseToken() async{
  /*  String? firebaseToken=await getFirebaseToken();
    if(firebaseToken!=null) {
      await apiHelper.post(url: 'Auth/AddOrUpdateFireBaseToken', formData: {
      'FireBaseToken':firebaseToken,
      'DeviceType':Platform.isIOS? "IOS":"Android",
    });
    }*/
  }

  @override
  Future<void> logout()async{

      await apiHelper.patch(url: 'user/auth/logout', formData: {});
      await FirebaseMessaging.instance.deleteToken();
      await localDatabase.clearDatabase();
      apiHelper.setToken('');
  }

  @override
  Future<void> editUserProfile({String? name, String? fatherName, String? motherName,String? phoneNumber,}) =>
      apiHelper.post(url: 'mobile/user/updateRequest', formData: {"update": {
        "name":name, "phoneNumber":phoneNumber, "fatherName":fatherName, "motherName":motherName,
      }});

}