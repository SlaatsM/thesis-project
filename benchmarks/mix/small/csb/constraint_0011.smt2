(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-900, 976] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))
(declare-const i3 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b10001111100) (= a1_0 #b11001100110) (= a1_0 #b11110001001) (= a1_0 #b00001111111) (= a1_0 #b01111010000)))
(assert (or (= i3 #b10101100101) (= i3 #b11011110111) (= i3 #b11101110010) (= i3 #b00010110100) (= i3 #b01111000001)))

; Formula constraint
(assert (bvsle i3 i3))

(check-sat)