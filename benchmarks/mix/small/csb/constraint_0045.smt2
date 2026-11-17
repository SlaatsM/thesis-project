(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-924, 401] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10001100100) (= i1 #b10101111100) (= i1 #b11101001001) (= i1 #b00110010001)))

; Formula constraint
(assert (bvsle i1 #b11111111011))

(check-sat)