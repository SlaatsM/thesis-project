(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-695, 785] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i4 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i4 #b00100111000) (bvsle i4 #b01100010001)))

; Formula constraint
(assert (=> (not (= i4 i4)) (bvslt #b00001001000 (bvsub #b00000111001 (bvsub #b00001011010 i4)))))

(check-sat)