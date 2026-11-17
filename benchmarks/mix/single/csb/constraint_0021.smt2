(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-488, 664] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b11000011000) (bvsle i1 #b00110111111)))
(assert (and (bvsge i2 #b11011100011) (bvsle i2 #b01010011000)))

; Formula constraint
(assert (and (bvsle i2 i1) (and (or (bvsgt i2 #b00001011010) (bvsgt #b00001001110 #b11111001100)) (and (= i2 #b00000101001) (= i1 #b00000110101)))))

(check-sat)