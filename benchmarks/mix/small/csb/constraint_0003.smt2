(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-10285, 13420] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 15))
(declare-const h1_i3 (_ BitVec 15))

; Domain constraints
(assert (or (= h1_i2 #b111110110001101) (= h1_i2 #b000000011100110) (= h1_i2 #b000000100101111)))
(assert (or (= h1_i3 #b111111011011000) (= h1_i3 #b000001110100111)))

; Formula constraint
(assert (=> (not (= #b000000000101000 #b000000000100011)) (=> (and (bvsle #b000000000100010 #b111111111010010) (bvsgt #b111111111110110 h1_i2)) (bvslt (bvsub (bvmul #b111111111111011 h1_i2) (bvmul #b111111111110101 h1_i3)) h1_i3))))

(check-sat)