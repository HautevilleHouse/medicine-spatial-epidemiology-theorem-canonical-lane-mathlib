import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SpatialEpidemiologyPackage where
  spatialDomain : Type u
  transmissionKernel : Type v
  populationDensity : Prop
  mobilityMatrix : Prop
  interventionScenarios : Prop

structure SpatialEpidemiologyEvidence (S : SpatialEpidemiologyPackage) where
  transmissionKernelClosed : S.transmissionKernel = S.transmissionKernel
  populationDensityClosed : S.populationDensity
  mobilityMatrixClosed : S.mobilityMatrix
  interventionScenariosClosed : S.interventionScenarios

def SpatialEpidemiologyClosed (S : SpatialEpidemiologyPackage) : Prop :=
  S.populationDensity ∧ S.mobilityMatrix ∧ S.interventionScenarios

theorem spatial_epidemiology_closed_from_evidence (S : SpatialEpidemiologyPackage)
    (E : SpatialEpidemiologyEvidence S) : SpatialEpidemiologyClosed S := by
  exact And.intro E.populationDensityClosed
    (And.intro E.mobilityMatrixClosed E.interventionScenariosClosed)

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
