import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

def ConstrainedSpatialEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_spatial_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedSpatialEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
