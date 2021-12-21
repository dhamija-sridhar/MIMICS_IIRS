C***********************************************************************
C23456789012345678901234567890123456789012345678901234567890123456789012

C
        SUBROUTINE INITIALIZE(COMPUTE)
        save
C

C
C----------------------------
c%include 'parameters.include'
        INCLUDE 'parameters.include'
C----------------------------
C
        INTEGER I, LOOP_NUM(N_VARIABLES), LOOP_COUNT(N_VARIABLES)
C
        LOGICAL OPEN, STEP_VARIABLE(N_VARIABLES)
        LOGICAL STEP_THIS_TIME(N_VARIABLES)
        LOGICAL CALL_SUB(N_CALLS,N_SUB_CALLS)
        LOGICAL COMPUTE
C
        COMMON /I_COUNT/ LOOP_NUM, LOOP_COUNT
        COMMON /L_FLAGS/ STEP_VARIABLE, STEP_THIS_TIME, CALL_SUB, OPEN
C
C***********************************************************************
C
        OPEN = .FALSE.
        COMPUTE = .TRUE.
C
        DO 10 I=1,N_VARIABLES
            LOOP_COUNT(I) = 1
            STEP_VARIABLE(I) = .FALSE.
            STEP_THIS_TIME(I) = .FALSE.
10      CONTINUE
C
        RETURN
        END
C
C***********************************************************************
