class MapModel {
  MapModel._();

  static final MapModel _instance = MapModel._();

  factory MapModel() {
    return _instance;
  }

  static String receptionStatus = "ReceptionStatus";
  static String processStatus = "ProcessStatus";
  static String sampleWeightR = "SampleWeightR";
  static String ingotWeightR = "IngotWeightR";
  static String weightAfterMeltR = "WeightAfterMeltR";
  static String  reAssay= "ReAssay";
  static String reassayFireA = "ReAssayFireA";
  static String reassayFireB = "ReAssayFireB";
  static String reAssayResultA = "ReAssayResultA";
  static String reAssayResultB = "ReAssayResultB";
  static String reassayGoldAverage = "ReAssayGoldAverage";
  static String reassaySampleTolerance = "ReAssaySampleTolerance";

  static String fireAssayA = "FireAssayA";
  static String fireAssayB = "FireAssayB";
  static String silverContentA = "SilverContentA";
  static String silverContentB = "SilverContentB";
  static String fireAssayAResult = "FireAssayAResult";
  static String fireAssayBResult = "FireAssayBResult";
  static String cutComplete = "CutComplete";
  static String zwgRate = "ZwgRate";
  static String transactionDate = "TransactionDate";
  static String branchCode = "BranchCode";
  static String branch = "Branch";
  static String buyingCentre = "BuyingCentre";
  static String lodgementDate = "LodgementDate";
  static String title = "Title";
  static String customerCode = "CustomerCode";
  static String debit = "Debit";
  static String credit = "Credit";
  static String chartOfAccounts = "ChartOfAccounts";
  static String paymentCode = "PaymentCode";
  static String auGrossValue = "AuGrossValue";
  static String amountPaidUsd = "AmountPaidUsd";
  static String balanceUsd = "BalanceUsd";
  static String dateOfReceipt = "DateOfReceipt";
  static String grossWeight = "GrossWeight";


  //dev
  static String residualValue = "ResidualValue";
  static String depreciableAmount = "DepreciableAmount";
}
