(set-logic QF_BV)

; Bit width chosen: 11 (covers range [13, 910] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b01000001001) (bvsle i1 #b01110001110)))
(assert (or (and (bvsge i2 #b00000001101) (bvsle i2 #b00001100101)) (and (bvsge i2 #b00100010111) (bvsle i2 #b00110101110)) (and (bvsge i2 #b00110111101) (bvsle i2 #b01101011000))))

; Formula constraint
(assert (not (= #b00000110101 i2)))

(check-sat)