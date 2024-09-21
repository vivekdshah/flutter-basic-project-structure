enum ReceptionStatus {
  pendingHandoverReception("Pending Handover Reception"),
  pendingMeltingHouseReception("Pending Melting House Reception"),
  pendingAssayReception("Pending Assay Reception"), //This is a Specific Gravity
  pendingVaultReception("Pending Vault Reception"),
  approvedHandoverReception("Approved Handover Reception"),
  approvedMeltingHouseReception("Approved Melting House Reception"),
  approvedAssayReception("Approved Assay Reception"), //This is a Specific Gravity
  approvedVaultReception("Approved Vault Reception");

  final String value;

  const ReceptionStatus(this.value);
}