import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  bioavailability : Prop
  therapeuticWindow : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  bioavailabilityClosed : P.bioavailability
  therapeuticWindowClosed : P.therapeuticWindow

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.therapeuticWindow

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.bioavailabilityClosed E.therapeuticWindowClosed)))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
