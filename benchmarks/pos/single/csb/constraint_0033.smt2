(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-75, 39668] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000000101010) (= i1 #b00000000101011100) (= i1 #b00000001010000111) (= i1 #b00000001101001100)))

; Formula constraint
(assert (and (bvsgt #b00000000000101101 (bvmul #b00000000000000001 i1)) (and (not (bvsgt (bvsub #b11111111111111111 #b00000000001001010) i1)) (=> (= i1 #b00000000000100100) (bvslt #b00000000000110010 (bvmul #b00000000000101111 i1))))))

(check-sat)