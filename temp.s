    .data
dat:    .space 30000
    .text
    .globl main
main:
    la    $t0, dat
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
lab8:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab20
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab8
lab20:
    addi   $t0, 1
lab22:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab30
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab22
lab30:
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
lab33:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab154
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    addi   $t0, -1
lab37:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab45
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab37
lab45:
    addi   $t0, 1
lab47:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab59
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab47
lab59:
    addi   $t0, -1
lab61:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab73
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab61
lab73:
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
lab76:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab114
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
lab88:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab97
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab88
lab97:
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
lab103:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab105
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab103
lab105:
    addi   $t0, -1
    addi   $t0, -1
lab108:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab110
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab108
lab110:
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    bne    $t1, $zero, lab76
lab114:
    addi   $t0, -1
lab116:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab153
    addi   $t0, 1
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
lab126:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab137
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab126
lab137:
    addi   $t0, 1
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
lab146:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab148
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab146
lab148:
    addi   $t0, -1
    addi   $t0, -1
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab116
lab153:
    lb     $t1, ($t0)
    bne    $t1, $zero, lab33
lab154:
    addi   $t0, 1
lab156:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab186
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
lab166:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab177
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab166
lab177:
    addi   $t0, 1
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
lab180:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab182
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab180
lab182:
    addi   $t0, -1
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab156
lab186:
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
lab199:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab231
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    addi   $t0, -1
    addi   $t0, -1
    addi   $t0, -1
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab199
lab231:
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    addi   $t0, -1
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    addi   $t0, 1
    addi   $t0, 1
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    addi   $t1, 1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    addi   $t0, -1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
    addi   $t0, 1
    addi   $t0, 1
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    li     $v0, 11
    lb     $t1, ($t0)
    move   $a0, $t1
    syscall
lab282:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab287
lab283:
    lb     $t1, ($t0)
    beq    $t1, $zero, lab285
    lb     $t1, ($t0)
    addi   $t1, -1
    sb     $t1, ($t0)
    lb     $t1, ($t0)
    bne    $t1, $zero, lab283
lab285:
    addi   $t0, -1
    lb     $t1, ($t0)
    bne    $t1, $zero, lab282
lab287:
    li     $v0, 10
    syscall
