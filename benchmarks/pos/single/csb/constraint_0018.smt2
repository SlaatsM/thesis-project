(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-81, 923] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 11))
(declare-const i3 (_ BitVec 11))

; Domain constraints
(assert (or (and (bvsge h1_i2 #b00010000110) (bvsle h1_i2 #b00010010000)) (= h1_i2 #b01110010001)))
(assert (or (= i3 #b00011111101) (and (bvsge i3 #b00100101100) (bvsle i3 #b01110011011))))

; Formula constraint
(assert (or (= h1_i2 i3) (= #b11110101111 i3)))

(check-sat)