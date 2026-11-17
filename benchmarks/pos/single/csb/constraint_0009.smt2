(set-logic QF_BV)

; Bit width chosen: 11 (covers range [0, 613] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (and (bvsge i1 #b00000000000) (bvsle i1 #b00110010010)) (and (bvsge i1 #b01001000000) (bvsle i1 #b01001100101))))

; Formula constraint
(assert (not (and (bvsge i1 i1) (not (= #b00000101011 i1)))))

(check-sat)