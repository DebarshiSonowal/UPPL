import 'package:flutter/material.dart';
import 'package:uppl/Models/Profile/profile_data_model.dart';

import '../Models/Auth/registration_model.dart';
import '../Models/JSON/generate_json_model.dart';
import '../Models/Member/member_details_model.dart';
// import '../Models/Member/update_member_family_details_model.dart';
import '../Models/Referal/joined_by_referral_model.dart';
import '../Models/audience/audience_demography_model.dart';
import '../Models/family/family_details_model.dart';
import '../Models/family/referred_family_details_model.dart';

class Repository extends ChangeNotifier {
  int currentIndex = 0;
  ReferredMemberFamilyDetails? selectedReferredFamilyDetailsModel;
  FamilyDetail? selectedFamilyDetailModel;
  MemberDetailsData? memberData;
  ProfileData? profileData;
  PersonalDetails? personalDetails;
  SocialDetails? socialDetails;
  AudienceDemographyData? demographyData;
  RegistrationData? registrationData;
  List<AssemblyConstituency> assemblyConstituencies = [];
  List<District> districts = [];
  List<PartyDistrict> partyDistricts = [];
  List<List<Primary>> btcPrimaries = [];
  Map<String, List<Primary>> btcPrimariesList = {};
  List<List<Constituency>> btcAssemblyConstituencies = [];
  List<FamilyDetail> familyDetail = [];
  List<Constituency> btcAssemblyConstituenciesList = [];
  List<JoinedByReferralMember> joinedByReferralMember = [],
      unverifiedJoinedByReferralMember = [];
  List<BTCConstituency> btcConstituency = [];
  List<Booth> booths = [];
  List<Village> villages = [];
  List<ReferredMemberFamilyDetails> referredMembersFamilyDetails = [];
  List<String> religions = [];
  List<String> categories = [];
  List<String> castes = [];
  List<String> professions = [];
  List<String> educationLevels = [];
  List<String> relationships = [];
  List<String> country = [];
  List<String> motherTounge = [];

  //Methods
  void setMotherTounge(List<String> data) {
    motherTounge = data;
    notifyListeners();
  }

  void setEducationLevels(List<String> data) {
    educationLevels = data;
    notifyListeners();
  }

  void setCountry(List<String> data) {
    country = data;
    notifyListeners();
  }

  void setRelationship(List<String> data) {
    relationships = data;
    notifyListeners();
  }

  void setProfessions(List<String> data) {
    professions = data;
    notifyListeners();
  }

  void setCastes(List<String> data) {
    castes = data;
    notifyListeners();
  }

  void setCategories(List<String> data) {
    categories = data;
    notifyListeners();
  }

  void setReligions(List<String> data) {
    religions = data;
    notifyListeners();
  }

  void setData(MemberDetailsData data) {
    memberData = data;
    notifyListeners();
  }

  void setRegistrationData(RegistrationData data) {
    registrationData = data;
    notifyListeners();
  }

  void clearData() {
    registrationData = null;
    notifyListeners();
  }

  void setSocialData(SocialDetails data) {
    socialDetails = data;
    notifyListeners();
  }

  void setProfileData(ProfileData data) {
    profileData = data;
    notifyListeners();
  }

  void setPersonalData(PersonalDetails data) {
    personalDetails = data;
    notifyListeners();
  }

  void setReferredMemberFamilyDetails(List<ReferredMemberFamilyDetails> data) {
    referredMembersFamilyDetails = data;
    notifyListeners();
  }

  void setReferredMembersFamilyDetails(ReferredMemberFamilyDetails data) {
    selectedReferredFamilyDetailsModel = data;
    notifyListeners();
  }

  void setMembersFamilyDetails(FamilyDetail data) {
    selectedFamilyDetailModel = data;
    notifyListeners();
  }

  void setJoinedByReferralMember(List<JoinedByReferralMember> data) {
    joinedByReferralMember = data;
    notifyListeners();
  }

  void setUnverifiedJoinedByReferralMember(List<JoinedByReferralMember> data) {
    unverifiedJoinedByReferralMember = data;
    notifyListeners();
  }

  void setFamilyDetails(List<FamilyDetail> data) {
    familyDetail = data;
    notifyListeners();
  }

  void setDemographyData(AudienceDemographyData data) {
    demographyData = data;
    notifyListeners();
  }

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void setAssemblyConstituencies(List<AssemblyConstituency> val) {
    assemblyConstituencies = val;
    notifyListeners();
  }

  void setDistricts(List<District> val) {
    districts = val;
    notifyListeners();
  }

  void setPartyDistricts(List<PartyDistrict> val) {
    partyDistricts = val;
    notifyListeners();
  }

  void setPrimary(List<List<Primary>> val) {
    btcPrimaries = val;
    notifyListeners();
  }

  void setPrimaryList(Map<String, List<Primary>> val) {
    btcPrimariesList = val;
    notifyListeners();
  }

  void setConstituency(List<List<Constituency>> val) {
    btcAssemblyConstituencies = val;
    notifyListeners();
  }

  void setConstituencyList(List<Constituency> val) {
    btcAssemblyConstituenciesList = val;
    notifyListeners();
  }

  void setBTCConstituency(List<BTCConstituency> val) {
    btcConstituency = val;
    notifyListeners();
  }

  void setBooths(List<Booth> val) {
    booths = val;
    notifyListeners();
  }

  void setVillages(List<Village> val) {
    villages = val;
    notifyListeners();
  }
}
