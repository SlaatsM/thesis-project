(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-586, 587] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000000001) (= i1 #b00001010100) (= i1 #b00010000101) (= i1 #b00101111100) (= i1 #b01001001011)))

; Formula constraint
(assert (not (not (and (bvsgt i1 (bvsub i1 i1)) (bvsgt #b00000101011 i1)))))

(check-sat)