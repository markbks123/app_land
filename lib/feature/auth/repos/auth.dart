import 'package:app_land/feature/auth/model/profile_model.dart';
import 'package:app_land/feature/auth/model/register_request.dart';
import 'package:app_land/services/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:retrofit/http.dart';

part 'auth.g.dart';

@RestApi()
@injectable
abstract class LoginService {
  @factoryMethod
  factory LoginService(Client _dioClient) => _LoginService(_dioClient.client);

  // @PUT('user/resend/{refCode}')
  // Future<void> resendCode(@Path() String refCode);

  // @PUT('/user/profile')
  // Future<void> updateProfile(@Body() CreateUserProfileRequest request);

  // @POST('/user/otp/generate')
  // Future<GenerateOtpResponse> generateOtp(@Body() GenerateOtpRequest request);

  // @POST('/user/otp/verify')
  // Future<VerifyCodeResponse> verifyOtpCode(@Body() VerifyCodeRequest request);

  // @PUT('/user/set/password')
  // Future<void> resetPassword(@Body() ResetPasswordRequest request);

  // @PUT('/public/user/reset/password')
  // Future<ForgotPasswordResponse> forgotPassword(@Body() ForgotPasswordRequest request);

  // @GET('/user/application/leave/reason')
  // Future<List<DeleteAccountReasonModel>> getDeleteAccountReason();

  // @PUT('/user/application/leave')
  // Future<ProfileModel> deleteAccount(@Body() DeleteAccountRequest request);

  // @PUT('/user/application/comeback')
  // Future<void> comebackAccount();

  @GET('/user/plan/my')
  Future<void> getUserPayment();

  @PUT('/user/application/subscription/{status}')
  Future<void> updateUserSubscription(@Path() String status);

  @POST('/register')
  Future<void> register(@Body() RegisterRequest request);

  @GET('/user/profile')
  Future<ProfileModel> getProfile();

  // @GET('/public/user/login/{social}')
  // Future<ProfileModel> signinSocial(@Path() String social);

  // @PUT('/user/application/subscription/{status}')
  // Future<void> updateUserSubscription(@Path() String status);
}
