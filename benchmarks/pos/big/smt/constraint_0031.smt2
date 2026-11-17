(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0] -> a10_0
;   a10[1] -> a10_1
;   a10[2] -> a10_2
;   a12[0] -> a12_0
;   a12[1] -> a12_1
;   a12[2] -> a12_2
;   a12[3] -> a12_3
;   a12[4] -> a12_4
;   h1.i2 -> h1_i2
;   h1.i3 -> h1_i3
;   h1.i4 -> h1_i4
;   h5.i8 -> h5_i8
;   h5.i9 -> h5_i9

; Variable declarations
(declare-fun a10_0 () Int)
(declare-fun a10_1 () Int)
(declare-fun a10_2 () Int)
(declare-fun a12_0 () Int)
(declare-fun a12_1 () Int)
(declare-fun a12_2 () Int)
(declare-fun a12_3 () Int)
(declare-fun a12_4 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h1_i3 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h5_i8 () Int)
(declare-fun h5_i9 () Int)

; Domain constraints
(assert (and (<= 352 a10_0) (<= a10_0 834)))
(assert (and (<= 352 a10_1) (<= a10_1 834)))
(assert (and (<= 352 a10_2) (<= a10_2 834)))
(assert (and (<= 451 a12_0) (<= a12_0 552)))
(assert (and (<= 451 a12_1) (<= a12_1 552)))
(assert (and (<= 451 a12_2) (<= a12_2 552)))
(assert (and (<= 451 a12_3) (<= a12_3 552)))
(assert (and (<= 451 a12_4) (<= a12_4 552)))
(assert (and (<= 96 h1_i2) (<= h1_i2 860)))
(assert (or (= h1_i3 140) (and (<= 292 h1_i3) (<= h1_i3 409)) (and (<= 666 h1_i3) (<= h1_i3 673)) (and (<= 862 h1_i3) (<= h1_i3 884))))
(assert (and (<= 225 h1_i4) (<= h1_i4 621)))
(assert (and (<= 159 h5_i8) (<= h5_i8 599)))
(assert (or (= h5_i9 569) (= h5_i9 971)))

; Formula constraint
(assert (and (< a10_0 a12_3) (<= (- a12_0 (+ h5_i8 h1_i4)) 36)))

(check-sat)
(get-model)