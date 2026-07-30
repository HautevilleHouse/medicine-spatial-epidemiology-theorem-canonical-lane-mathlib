import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SpatialEpidemiologyModelPackage where
  spatialRegion : Type u
  populationDensity : Prop
  transmissionKernel : Prop
  incidenceRate : Prop
  reproductiveNumberR0 : Prop
  mobilityMatrix : Prop
  interventionScenarios : Prop
  spatialDiffusion : Prop

def SpatialEpidemiologyModelEvidence (S : SpatialEpidemiologyModelPackage) where
  populationDensityClosed : S.populationDensity
  transmissionKernelClosed : S.transmissionKernel
  incidenceRateClosed : S.incidenceRate
  reproductiveNumberR0Closed : S.reproductiveNumberR0
  mobilityMatrixClosed : S.mobilityMatrix
  interventionScenariosClosed : S.interventionScenarios
  spatialDiffusionClosed : S.spatialDiffusion

def SpatialEpidemiologyModelClosed (S : SpatialEpidemiologyModelPackage) : Prop :=
  S.populationDensity ∧ S.transmissionKernel ∧ S.incidenceRate ∧
  S.reproductiveNumberR0 ∧ S.mobilityMatrix ∧ S.interventionScenarios ∧
  S.spatialDiffusion

theorem spatial_epidemiology_model_closed_from_evidence
    (S : SpatialEpidemiologyModelPackage) (E : SpatialEpidemiologyModelEvidence S) :
    SpatialEpidemiologyModelClosed S :=
  And.intro E.populationDensityClosed
    (And.intro E.transmissionKernelClosed
      (And.intro E.incidenceRateClosed
        (And.intro E.reproductiveNumberR0Closed
          (And.intro E.mobilityMatrixClosed
            (And.intro E.interventionScenariosClosed
              E.spatialDiffusionClosed)))))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse