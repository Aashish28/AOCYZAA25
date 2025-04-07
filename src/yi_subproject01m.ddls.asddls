@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Subproject Root Interface view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YI_SUBPROJECT01M 
as projection on YR_SUBPROJECTM
{
    key ProjID,
    key SubprojID,
    Subprojname,
    Isactiveproject,
    Startdate,
    Enddate,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    _Project : redirected to parent YI_Project01TPM
}
