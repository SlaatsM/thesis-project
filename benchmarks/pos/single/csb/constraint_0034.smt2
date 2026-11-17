(set-logic QF_BV)

; Bit width chosen: 11 (covers range [61, 906] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b00000111101) (bvsle i1 #b00111000101)))

; Formula constraint
(assert (not (=> (= i1 #b00001000011) (not (bvslt i1 (bvadd i1 i1))))))

(check-sat)