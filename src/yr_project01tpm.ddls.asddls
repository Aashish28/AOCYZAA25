@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forProject'
define root view entity YR_Project01TPM
  as select from YI_ProjectM as Project
  composition [0..*] of YR_SUBPROJECTM as _Subproject
{
  key ProjID,
  Projname,
  Isparentproject,
  Isactiveproject,
  @Semantics.user.createdBy: true
  LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  LocalCreatedAt,
  @Semantics.user.lastChangedBy: true
  LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  LastChangedAt,
  _Subproject
}
