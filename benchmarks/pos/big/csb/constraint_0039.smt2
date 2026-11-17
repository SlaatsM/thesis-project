(set-logic QF_BV)

; Bit width chosen: 11 (covers range [140, 590] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a3_0 (_ BitVec 11))
(declare-const a3_1 (_ BitVec 11))
(declare-const a3_2 (_ BitVec 11))
(declare-const a3_3 (_ BitVec 11))
(declare-const a3_4 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (or (= a3_0 #b00011011110) (= a3_0 #b00100001101) (= a3_0 #b00111100011) (= a3_0 #b01001001110)))
(assert (or (= a3_1 #b00011011110) (= a3_1 #b00100001101) (= a3_1 #b00111100011) (= a3_1 #b01001001110)))
(assert (or (= a3_2 #b00011011110) (= a3_2 #b00100001101) (= a3_2 #b00111100011) (= a3_2 #b01001001110)))
(assert (or (= a3_3 #b00011011110) (= a3_3 #b00100001101) (= a3_3 #b00111100011) (= a3_3 #b01001001110)))
(assert (or (= a3_4 #b00011011110) (= a3_4 #b00100001101) (= a3_4 #b00111100011) (= a3_4 #b01001001110)))
(assert (and (bvsge i1 #b00011001001) (bvsle i1 #b00100100110)))
(assert (and (bvsge i2 #b00010001100) (bvsle i2 #b00101000000)))

; Formula constraint
(assert (bvsge i2 a3_2))

(check-sat)