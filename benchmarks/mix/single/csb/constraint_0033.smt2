(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-300, 734] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b11111010100) (bvsle i1 #b01000001100)))
(assert (and (bvsge i2 #b11100101110) (bvsle i2 #b00100000000)))

; Formula constraint
(assert (not (or (not (bvsle i2 i1)) (or (not (= (bvsub i1 i2) #b00000000001)) (not (= i2 #b11111110110))))))

(check-sat)