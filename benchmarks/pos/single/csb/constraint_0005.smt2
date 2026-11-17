(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-12626, 21186] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h1_i2 (_ BitVec 16))

; Domain constraints
(assert (and (bvsge h1_i2 #b0000000000000000) (bvsle h1_i2 #b0000000011010110)))

; Formula constraint
(assert (and (=> (not (bvsle (bvadd (bvmul #b1111111111001100 h1_i2) (bvadd (bvmul #b0000000001100011 h1_i2) (bvmul #b1111111111111001 h1_i2))) (bvmul #b0000000000011100 h1_i2))) (and (bvsgt #b0000000000101011 h1_i2) (bvsgt (bvmul #b0000000001001010 h1_i2) h1_i2))) (bvsge h1_i2 (bvadd (bvsub (bvmul #b0000000001000111 h1_i2) #b0000000000111111) h1_i2))))

(check-sat)