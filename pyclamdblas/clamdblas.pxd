cdef extern from "clAmdBlas.h":

    ctypedef unsigned int cl_uint
    ctypedef unsigned long int cl_ulong
    ctypedef float cl_float
    ctypedef double cl_double
    ctypedef void* cl_context
    ctypedef void* cl_command_queue
    ctypedef void* cl_event
    ctypedef void* cl_mem

    ctypedef enum clAmdBlasOrder:
        clAmdBlasRowMajor
        clAmdBlasColMajor

    ctypedef enum clAmdBlasTranspose:
        clAmdBlasNoTrans
        clAmdBlasTrans
        clAmdBlasConjTrans

    ctypedef enum clAmdBlasUplo:
        clAmdBlasUpper
        clAmdBlasLower

    ctypedef enum clAmdBlasDiag:
        clAmdBlasUnit
        clAmdBlasNonUnit

    ctypedef enum clAmdBlasSide:
        clAmdBlasLeft
        clAmdBlasRight

    ctypedef enum clAmdBlasStatus:
        clAmdBlasSuccess              = CL_SUCCESS
        clAmdBlasInvalidValue         = CL_INVALID_VALUE
        clAmdBlasInvalidCommandQueue  = CL_INVALID_COMMAND_QUEUE
        clAmdBlasInvalidContext       = CL_INVALID_CONTEXT
        clAmdBlasInvalidMemObject     = CL_INVALID_MEM_OBJECT
        clAmdBlasInvalidDevice        = CL_INVALID_DEVICE
        clAmdBlasInvalidEventWaitList = CL_INVALID_EVENT_WAIT_LIST
        clAmdBlasOutOfResources       = CL_OUT_OF_RESOURCES
        clAmdBlasOutOfHostMemory      = CL_OUT_OF_HOST_MEMORY
        clAmdBlasInvalidOperation     = CL_INVALID_OPERATION
        clAmdBlasCompilerNotAvailable = CL_COMPILER_NOT_AVAILABLE
        clAmdBlasBuildProgramFailure  = CL_BUILD_PROGRAM_FAILURE
        clAmdBlasNotImplemented       = -1024
        clAmdBlasNotInitialized
        clAmdBlasInvalidMatA
        clAmdBlasInvalidMatB
        clAmdBlasInvalidMatC
        clAmdBlasInvalidVecX
        clAmdBlasInvalidVecY
        clAmdBlasInvalidDim
        clAmdBlasInvalidLeadDimA
        clAmdBlasInvalidLeadDimB
        clAmdBlasInvalidLeadDimC
        clAmdBlasInvalidIncX
        clAmdBlasInvalidIncY
        clAmdBlasInsufficientMemMatA
        clAmdBlasInsufficientMemMatB
        clAmdBlasInsufficientMemMatC
        clAmdBlasInsufficientMemVecX
        clAmdBlasInsufficientMemVecY

    clAmdBlasStatus clAmdBlasGetVersion(
            cl_uint* major, cl_uint* minor, cl_uint* patch)

    clAmdBlasStatus
    clAmdBlasSgemv(
        clAmdBlasOrder order,
        clAmdBlasTranspose transA,
        size_t M,
        size_t N,
        cl_float alpha,
        const cl_mem A,
        size_t lda,
        const cl_mem x,
        size_t offx,
        int incx,
        cl_float beta,
        cl_mem y,
        size_t offy,
        int incy,
        cl_uint numCommandQueues,
        cl_command_queue *commandQueues,
        cl_uint numEventsInWaitList,
        const cl_event *eventWaitList,
        cl_event *events)
