import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SpatialSpreadPackage where
  diffusionCoefficient : Prop
  spatialDomain : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  susceptibleExposedInterface : Prop
  controlMeasures : Prop

structure SpatialSpreadEvidence (S : SpatialSpreadPackage) where
  diffusionCoefficientClosed : S.diffusionCoefficient
  spatialDomainClosed : S.spatialDomain
  initialConditionClosed : S.initialCondition
  boundaryConditionClosed : S.boundaryCondition
  susceptibleExposedInterfaceClosed : S.susceptibleExposedInterface
  controlMeasuresClosed : S.controlMeasures

def SpatialSpreadClosed (S : SpatialSpreadPackage) : Prop :=
  S.diffusionCoefficient ∧ S.spatialDomain ∧ S.initialCondition ∧ S.boundaryCondition ∧ S.susceptibleExposedInterface ∧ S.controlMeasures

theorem spatial_spread_closed_from_evidence (S : SpatialSpreadPackage) (E : SpatialSpreadEvidence S) : SpatialSpreadClosed S := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.spatialDomainClosed (And.intro E.initialConditionClosed (And.intro E.boundaryConditionClosed (And.intro E.susceptibleExposedInterfaceClosed E.controlMeasuresClosed))))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
