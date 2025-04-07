@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forProject'
define root view entity YI_Project01TPM
  provider contract transactional_interface
  as projection on YR_Project01TPM as Project
{
  key ProjID,
  Projname,
  Isparentproject,
  Isactiveproject,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt,
  _Subproject : redirected to composition child YI_SUBPROJECT01M
}
