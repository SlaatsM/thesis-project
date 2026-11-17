(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-22, 948] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000101101) (and (bvsge i1 #b00010011010) (bvsle i1 #b00100010001)) (= i1 #b01000100110) (= i1 #b01110110100)))

; Formula constraint
(assert (=> (not (= #b11111101010 #b00000101100)) (bvsle (bvsub i1 #b00000111010) #b00001001001)))

(check-sat)