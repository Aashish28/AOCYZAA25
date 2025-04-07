@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Subproject Root view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YR_SUBPROJECTM
  as select from YI_SUBPROJECTM
  association to parent YR_Project01TPM as _Project on $projection.ProjID = _Project.ProjID
{
  key ProjID,
  key SubprojID,
      Subprojname,
      Isactiveproject,
      Startdate,
      Enddate,
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
      _Project
}
