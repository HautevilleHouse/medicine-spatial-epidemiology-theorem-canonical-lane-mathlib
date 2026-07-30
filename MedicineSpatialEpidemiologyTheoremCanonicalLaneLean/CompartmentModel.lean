import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  populationType : Type u
  susceptibleComponent : Prop
  infectedComponent : Prop
  recoveredComponent : Prop
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop
  spatialDomain : Type v
  diffusionCoefficient : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  susceptibleComponentClosed : C.susceptibleComponent
  infectedComponentClosed : C.infectedComponent
  recoveredComponentClosed : C.recoveredComponent
  transmissionRateClosed : C.transmissionRate
  recoveryRateClosed : C.recoveryRate
  basicReproductiveNumberClosed : C.basicReproductiveNumber
  diffusionCoefficientClosed : C.diffusionCoefficient

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.susceptibleComponent ∧ C.infectedComponent ∧ C.recoveredComponent ∧
  C.transmissionRate ∧ C.recoveryRate ∧ C.basicReproductiveNumber ∧
  C.diffusionCoefficient

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C :=
  And.intro E.susceptibleComponentClosed
    (And.intro E.infectedComponentClosed
      (And.intro E.recoveredComponentClosed
        (And.intro E.transmissionRateClosed
          (And.intro E.recoveryRateClosed
            (And.intro E.basicReproductiveNumberClosed
              E.diffusionCoefficientClosed)))))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse