(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-929, 33] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10001011111) (= i1 #b10111101110) (= i1 #b11010111110) (= i1 #b11110111101) (= i1 #b11111101010)))
(assert (or (= i2 #b10001101110) (= i2 #b10110011110)))

; Formula constraint
(assert (bvsle (bvsub (bvsub i2 #b11111010100) #b00000100001) #b11110101011))

(check-sat)