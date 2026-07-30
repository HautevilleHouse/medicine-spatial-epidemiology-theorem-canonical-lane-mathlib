import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SpatialEpidemiologyCorePackage where
  spatialDomain : Type
  infectionKernel : Prop
  reproductionNumberSpatial : Prop
  mobilityMatrix : Prop
  interventionScenarios : Prop

structure SpatialEpidemiologyCoreEvidence (S : SpatialEpidemiologyCorePackage) where
  infectionKernelClosed : S.infectionKernel
  reproductionNumberSpatialClosed : S.reproductionNumberSpatial
  mobilityMatrixClosed : S.mobilityMatrix
  interventionScenariosClosed : S.interventionScenarios

def SpatialEpidemiologyCoreClosed (S : SpatialEpidemiologyCorePackage) : Prop :=
  S.infectionKernel ∧ S.reproductionNumberSpatial ∧ S.mobilityMatrix ∧ S.interventionScenarios

theorem spatial_epidemiology_core_closed_from_evidence (S : SpatialEpidemiologyCorePackage) (E : SpatialEpidemiologyCoreEvidence S) : SpatialEpidemiologyCoreClosed S := by
  exact And.intro E.infectionKernelClosed (And.intro E.reproductionNumberSpatialClosed (And.intro E.mobilityMatrixClosed E.interventionScenariosClosed))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
