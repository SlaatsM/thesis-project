(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-711, 694] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b10100111001) (bvsle i1 #b01010110110)))

; Formula constraint
(assert (and (or (bvsle #b00001001101 i1) (bvslt #b00000011111 i1)) (not (= #b00000110111 #b00001011110))))

(check-sat)