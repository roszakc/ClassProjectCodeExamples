! Name of package being compiled: TestProgram4
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_Syscall_entSize
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_GetError
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	_P_UserSystem_Sys_GetPid
	.import	_P_UserSystem_Sys_GetPPid
	.import	_P_UserSystem_Sys_Dup
	.import	_P_UserSystem_Sys_Pipe
	.import	_P_UserSystem_Sys_Stat
	.import	_P_UserSystem_Sys_ChMode
	.import	_P_UserSystem_Sys_Link
	.import	_P_UserSystem_Sys_Unlink
	.import	_P_UserSystem_Sys_Mkdir
	.import	_P_UserSystem_Sys_Rmdir
	.import	_P_UserSystem_Sys_Chdir
	.import	_P_UserSystem_Sys_Opendir
	.import	_P_UserSystem_Sys_Readdir
	.import	_P_UserSystem_Sys_GetDiskInfo
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_UserSystem_cmdArgs
! Global variables in this package
	.data
_Global_buffer:
! Static array
	.word	30		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_buffer2:
! Static array
	.word	10		! number of elements
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.align
_Global_buffer3:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_readBuff:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_buffer4:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_checkBuffer:
! Static array
	.word	10000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_arr1:
! Static array
	.word	10000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
	.align
! String constants
_StringConst_613:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_612:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_611:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_610:
	.word	1			! length
	.ascii	"x"
	.align
_StringConst_609:
	.word	1			! length
	.ascii	"w"
	.align
_StringConst_608:
	.word	1			! length
	.ascii	"r"
	.align
_StringConst_607:
	.word	1			! length
	.ascii	"d"
	.align
_StringConst_606:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_605:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_604:
	.word	12			! length
	.ascii	", actual is "
	.align
_StringConst_603:
	.word	21			! length
	.ascii	"**** ERROR: expected "
	.align
_StringConst_602:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_601:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_600:
	.word	9			! length
	.ascii	"Checking "
	.align
_StringConst_599:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_598:
	.word	41			! length
	.ascii	"*****  ERROR: Return value from syscall ("
	.align
_StringConst_597:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_596:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_595:
	.word	44			! length
	.ascii	"ERROR: could not open newfile1 for writing.\n"
	.align
_StringConst_594:
	.word	8			! length
	.ascii	"newFile1"
	.align
_StringConst_593:
	.word	8			! length
	.ascii	"newFile1"
	.align
_StringConst_592:
	.word	40			! length
	.ascii	"Checking stat information on \'newFile1\'\n"
	.align
_StringConst_591:
	.word	46			! length
	.ascii	"ERROR: Could not stat the newly created file.\n"
	.align
_StringConst_590:
	.word	8			! length
	.ascii	"newFile1"
	.align
_StringConst_589:
	.word	8			! length
	.ascii	"newFile1"
	.align
_StringConst_588:
	.word	20			! length
	.ascii	"Creating \'newFile1\'\n"
	.align
_StringConst_587:
	.word	46			! length
	.ascii	"ERROR: could not open \'newFile\' a third time.\n"
	.align
_StringConst_586:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_585:
	.word	51			! length
	.ascii	"ERROR: Read succeded when file opened with O_WRITE\n"
	.align
_StringConst_584:
	.word	7			! length
	.ascii	"newFile"
	.align
_StringConst_583:
	.word	51			! length
	.ascii	"Checking we can not read on an O_WRITE opened file\n"
	.align
_StringConst_582:
	.word	47			! length
	.ascii	"ERROR: could not open \'newFile\' a second time.\n"
	.align
_StringConst_581:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_580:
	.word	46			! length
	.ascii	"ERROR: Write succeded when file opened O_READ\n"
	.align
_StringConst_579:
	.word	51			! length
	.ascii	"Checking we can not write on an O_READ opened file\n"
	.align
_StringConst_578:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_577:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_576:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_575:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_574:
	.word	46			! length
	.ascii	"Checking that file can be open and read again\n"
	.align
_StringConst_573:
	.word	7			! length
	.ascii	"newFile"
	.align
_StringConst_572:
	.word	39			! length
	.ascii	"Checking stat information on \'newFile\'\n"
	.align
_StringConst_571:
	.word	46			! length
	.ascii	"ERROR: Could not stat the newly created file.\n"
	.align
_StringConst_570:
	.word	7			! length
	.ascii	"newFile"
	.align
_StringConst_569:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_568:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_567:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_566:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_565:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_564:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_563:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_562:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_561:
	.word	7			! length
	.ascii	"newFile"
	.align
_StringConst_560:
	.word	62			! length
	.ascii	"Open with O_CREATE test already done, delete DISK and remake.\n"
	.align
_StringConst_559:
	.word	7			! length
	.ascii	"newFile"
	.align
_StringConst_558:
	.word	19			! length
	.ascii	"Creating \'newFile\'\n"
	.align
_StringConst_557:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_556:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_555:
	.word	52			! length
	.ascii	"\n*** Testing O_CREATE and O_MAYCREATE with Sys_Open\n"
	.align
_StringConst_554:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_553:
	.word	25			! length
	.ascii	"ERROR: Can\'t open file1.\n"
	.align
_StringConst_552:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_551:
	.word	40			! length
	.ascii	"Checking for readdir on a regular file.\n"
	.align
_StringConst_550:
	.word	1			! length
	.ascii	"."
	.align
_StringConst_549:
	.word	42			! length
	.ascii	"Checking if Sys_Open can open a diretory.\n"
	.align
_StringConst_548:
	.word	26			! length
	.ascii	"Seek tests on a directory\n"
	.align
_StringConst_547:
	.word	23			! length
	.ascii	"can\'t read a directory\n"
	.align
_StringConst_546:
	.word	25			! length
	.ascii	"Readdir read only memory\n"
	.align
_StringConst_545:
	.word	29			! length
	.ascii	"Readdir bad address argument\n"
	.align
_StringConst_544:
	.word	22			! length
	.ascii	"Readdir null argument\n"
	.align
_StringConst_543:
	.word	39			! length
	.ascii	"ERROR opening \'.\', can\'t test ReadDir.\n"
	.align
_StringConst_542:
	.word	1			! length
	.ascii	"."
	.align
_StringConst_541:
	.word	23			! length
	.ascii	"Checking ReadDir args.\n"
	.align
_StringConst_540:
	.word	22			! length
	.ascii	"Checking OpenDir arg.\n"
	.align
_StringConst_539:
	.word	45			! length
	.ascii	"\n********** Running ErrorTests ************\n\n"
	.align
_StringConst_538:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_537:
	.word	52			! length
	.ascii	"**** ERROR: Can\'t set execute permission. Aborting.\n"
	.align
_StringConst_536:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_535:
	.word	56			! length
	.ascii	"**** ERROR: Did not successfully execute TestProgram4a.\n"
	.align
_StringConst_534:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_533:
	.word	46			! length
	.ascii	"**** ERROR: Sys_Join error.  No way to check.\n"
	.align
_StringConst_532:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_531:
	.word	39			! length
	.ascii	"**** ERROR: Can\'t fork. aborting test.\n"
	.align
_StringConst_530:
	.word	52			! length
	.ascii	"**** ERROR: Can\'t set execute permission. Aborting.\n"
	.align
_StringConst_529:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_528:
	.word	50			! length
	.ascii	"Setting execute permissions only on TestProgram4a\n"
	.align
_StringConst_527:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_526:
	.word	52			! length
	.ascii	"**** ERROR: Did successfully execute TestProgram4a.\n"
	.align
_StringConst_525:
	.word	46			! length
	.ascii	"**** ERROR: Sys_Join error.  No way to check.\n"
	.align
_StringConst_524:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_523:
	.word	39			! length
	.ascii	"**** ERROR: Can\'t fork. aborting test.\n"
	.align
_StringConst_522:
	.word	55			! length
	.ascii	"**** ERROR: Can\'t remove execute permission. Aborting.\n"
	.align
_StringConst_521:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_520:
	.word	47			! length
	.ascii	"Removing execute permissions on TestProgram4a.\n"
	.align
_StringConst_519:
	.word	36			! length
	.ascii	"**** ERROR:  TestProgram4a missing.\n"
	.align
_StringConst_518:
	.word	13			! length
	.ascii	"TestProgram4a"
	.align
_StringConst_517:
	.word	52			! length
	.ascii	"\n********** Running ExecTestPermissions ***********\n"
	.align
_StringConst_516:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_515:
	.word	27			! length
	.ascii	"Checking contents of file.\n"
	.align
_StringConst_514:
	.word	16			! length
	.ascii	"blocks allocated"
	.align
_StringConst_513:
	.word	13			! length
	.ascii	"new file size"
	.align
_StringConst_512:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_511:
	.word	56			! length
	.ascii	"Writing through block 10, should use indirect pointers.\n"
	.align
_StringConst_510:
	.word	49			! length
	.ascii	"**** ERROR, couldn\'t write a page of characters.\n"
	.align
_StringConst_509:
	.word	16			! length
	.ascii	"blocks allocated"
	.align
_StringConst_508:
	.word	13			! length
	.ascii	"new file size"
	.align
_StringConst_507:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_506:
	.word	17			! length
	.ascii	"Writing block two"
	.align
_StringConst_505:
	.word	16			! length
	.ascii	"blocks allocated"
	.align
_StringConst_504:
	.word	13			! length
	.ascii	"new file size"
	.align
_StringConst_503:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_502:
	.word	19			! length
	.ascii	"Filling first block"
	.align
_StringConst_501:
	.word	55			! length
	.ascii	"This is a test string ... abcdefghijklmnopqrstuvwxyz..."
	.align
_StringConst_500:
	.word	16			! length
	.ascii	"blocks allocated"
	.align
_StringConst_499:
	.word	13			! length
	.ascii	"new file size"
	.align
_StringConst_498:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_497:
	.word	24			! length
	.ascii	"Writing past end of file"
	.align
_StringConst_496:
	.word	5			! length
	.ascii	"Test!"
	.align
_StringConst_495:
	.word	36			! length
	.ascii	"  **** Remove DISK, make and rerun.\n"
	.align
_StringConst_494:
	.word	46			! length
	.ascii	"  **** Must be a second run of this test ****\n"
	.align
_StringConst_493:
	.word	16			! length
	.ascii	". Should be 16.\n"
	.align
_StringConst_492:
	.word	26			! length
	.ascii	"File file1234abcd size is "
	.align
_StringConst_491:
	.word	31			! length
	.ascii	"Open error in WriteTestExtend.\n"
	.align
_StringConst_490:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_489:
	.word	34			! length
	.ascii	"Test writing on file file1234abcd\n"
	.align
_StringConst_488:
	.word	31			! length
	.ascii	"Can not Sys_Stat file1234abcd.\n"
	.align
_StringConst_487:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_486:
	.word	62			! length
	.ascii	"\n********** Testing Writing with extending the file. *******\n\n"
	.align
_StringConst_485:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_484:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_483:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_482:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_481:
	.word	7			! length
	.ascii	"notadir"
	.align
_StringConst_480:
	.word	39			! length
	.ascii	"\n**********  Testing Errors **********\n"
	.align
_StringConst_479:
	.word	32			! length
	.ascii	"Could not open the directory /.\n"
	.align
_StringConst_478:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_477:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_476:
	.word	52			! length
	.ascii	"There should be 16 inode numbers and 17 file names.\n"
	.align
_StringConst_475:
	.word	44			! length
	.ascii	"Listing the contents of the root directory.\n"
	.align
_StringConst_474:
	.word	53			! length
	.ascii	"\n********** Running TestOpenDirAndMore ************\n\n"
	.align
_StringConst_473:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_472:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_471:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_470:
	.word	29			! length
	.ascii	"** opening too many files **\n"
	.align
_StringConst_469:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_468:
	.word	31			! length
	.ascii	"** file open with bad flags **\n"
	.align
_StringConst_467:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_466:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_465:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_464:
	.word	39			! length
	.ascii	"** file with read/write permissions **\n"
	.align
_StringConst_463:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_462:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_461:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_460:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_459:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_458:
	.word	39			! length
	.ascii	"** file with write only permissions **\n"
	.align
_StringConst_457:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_456:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_455:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_454:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_453:
	.word	38			! length
	.ascii	"** file with read only permissions **\n"
	.align
_StringConst_452:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_451:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_450:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_449:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_448:
	.word	31			! length
	.ascii	"** file with no permissions **\n"
	.align
_StringConst_447:
	.word	41			! length
	.ascii	"**** Problems with file3.  Is there one?\n"
	.align
_StringConst_446:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_445:
	.word	53			! length
	.ascii	"\n********** Running OpenTestPermissions ***********\n\n"
	.align
_StringConst_444:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_443:
	.word	8			! length
	.ascii	"notafile"
	.align
_StringConst_442:
	.word	44			! length
	.ascii	"\n**********  Checking Errors **************\n"
	.align
_StringConst_441:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_440:
	.word	30			! length
	.ascii	"Unexpected Value after ChMode\n"
	.align
_StringConst_439:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_438:
	.word	29			! length
	.ascii	"Still same mode after close.\n"
	.align
_StringConst_437:
	.word	30			! length
	.ascii	"Unexpected Value after ChMode\n"
	.align
_StringConst_436:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_435:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_434:
	.word	29			! length
	.ascii	"ERROR: could not open file2.\n"
	.align
_StringConst_433:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_432:
	.word	33			! length
	.ascii	"Checking ChMode on an open file.\n"
	.align
_StringConst_431:
	.word	30			! length
	.ascii	"Unexpected Value after ChMode\n"
	.align
_StringConst_430:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_429:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_428:
	.word	31			! length
	.ascii	"Doing another ChMode on file1.\n"
	.align
_StringConst_427:
	.word	30			! length
	.ascii	"Unexpected Value after ChMode\n"
	.align
_StringConst_426:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_425:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_424:
	.word	25			! length
	.ascii	"Doing a ChMode on file1.\n"
	.align
_StringConst_423:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_422:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_421:
	.word	25			! length
	.ascii	"Doing Sys_Stat on file1.\n"
	.align
_StringConst_420:
	.word	39			! length
	.ascii	"\n**********  ChMode Tests  **********\n\n"
	.align
_StringConst_419:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_418:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_417:
	.word	8			! length
	.ascii	"Program2"
	.align
_StringConst_416:
	.word	40			! length
	.ascii	"Should print \'Hello, world\' 20 times...\n"
	.align
_StringConst_415:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_414:
	.word	54			! length
	.ascii	"*****  ERROR: Sys_Open returned an unexpected value ( "
	.align
_StringConst_413:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_412:
	.word	44			! length
	.ascii	"\n**********  ExecTest3 running  **********\n\n"
	.align
_StringConst_411:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_410:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_409:
	.word	31			! length
	.ascii	"Should print \'Hello, world!!!\'\n"
	.align
_StringConst_408:
	.word	82			! length
	.ascii	"Attempting to open an existing file using a string which crosses a page boundary.\n"
	.align
_StringConst_407:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_406:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_405:
	.word	61			! length
	.ascii	"Attempting to exec an existing file which is not executable.\n"
	.align
_StringConst_404:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_403:
	.word	50			! length
	.ascii	"FileWithVeryLongName012345678901234567890123456789"
	.align
_StringConst_402:
	.word	68			! length
	.ascii	"Attempting to exec an existing file whose name exceeds the maximum.\n"
	.align
_StringConst_401:
	.word	44			! length
	.ascii	"\n**********  ExecTest2 running  **********\n\n"
	.align
_StringConst_400:
	.word	8			! length
	.ascii	"Program1"
	.align
_StringConst_399:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_398:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_397:
	.word	8			! length
	.ascii	"Program1"
	.align
_StringConst_396:
	.word	31			! length
	.ascii	"Should print \'Hello, world!!!\'\n"
	.align
_StringConst_395:
	.word	44			! length
	.ascii	"\n**********  ExecTest1 running  **********\n\n"
	.align
_StringConst_394:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_393:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_392:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a an unexpected value ( "
	.align
_StringConst_391:
	.word	6			! length
	.ascii	"Okay!\n"
	.align
_StringConst_390:
	.word	82			! length
	.ascii	"Attempting to open an existing file using a string which crosses a page boundary.\n"
	.align
_StringConst_389:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_388:
	.word	50			! length
	.ascii	"*****  ERROR: Open returned an unexpected value ( "
	.align
_StringConst_387:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_386:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_385:
	.word	50			! length
	.ascii	"FileWithVeryLongName012345678901234567890123456789"
	.align
_StringConst_384:
	.word	68			! length
	.ascii	"Attempting to open an existing file whose name exceeds the maximum.\n"
	.align
_StringConst_383:
	.word	44			! length
	.ascii	"\n**********  OpenTest3 running  **********\n\n"
	.align
_StringConst_382:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_381:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_380:
	.word	37			! length
	.ascii	"Checking 10000 bytes at pos 10000...\n"
	.align
_StringConst_379:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_378:
	.word	57			! length
	.ascii	"Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n"
	.align
_StringConst_377:
	.word	33			! length
	.ascii	"Checking 10000 bytes at pos 0...\n"
	.align
_StringConst_376:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_375:
	.word	57			! length
	.ascii	"Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n"
	.align
_StringConst_374:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_373:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_372:
	.word	42			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcbazyxwvutsrqponmlk"
	.align
_StringConst_371:
	.word	68			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBAZYXWVUTSRQPONMLKzyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_370:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_369:
	.word	36			! length
	.ascii	"Writing 10000 bytes to pos 10000...\n"
	.align
_StringConst_368:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_367:
	.word	57			! length
	.ascii	"Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n"
	.align
_StringConst_366:
	.word	32			! length
	.ascii	"Writing 10000 bytes to pos 0...\n"
	.align
_StringConst_365:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_364:
	.word	57			! length
	.ascii	"Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n"
	.align
_StringConst_363:
	.word	37			! length
	.ascii	"Checking 10000 bytes at pos 10000...\n"
	.align
_StringConst_362:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_361:
	.word	57			! length
	.ascii	"Initializing data array to abcdefghijklmnopqrstuvwxyz...\n"
	.align
_StringConst_360:
	.word	33			! length
	.ascii	"Checking 10000 bytes at pos 0...\n"
	.align
_StringConst_359:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_358:
	.word	57			! length
	.ascii	"Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n"
	.align
_StringConst_357:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_356:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_355:
	.word	42			! length
	.ascii	"abcdefghijklmnopqrstuvwxyzabcdefghijklmnop"
	.align
_StringConst_354:
	.word	68			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPabcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_353:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_352:
	.word	36			! length
	.ascii	"Writing 10000 bytes to pos 10000...\n"
	.align
_StringConst_351:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_350:
	.word	57			! length
	.ascii	"Initializing data array to abcdefghijklmnopqrstuvwxyz...\n"
	.align
_StringConst_349:
	.word	32			! length
	.ascii	"Writing 10000 bytes to pos 0...\n"
	.align
_StringConst_348:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_347:
	.word	57			! length
	.ascii	"Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n"
	.align
_StringConst_346:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_345:
	.word	45			! length
	.ascii	"\n**********  WriteTest6 running  **********\n\n"
	.align
_StringConst_344:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_343:
	.word	26			! length
	.ascii	"abcdefghijklMNOPQRSTUVWXyz"
	.align
_StringConst_342:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLmnopqrstuvwxyz"
	.align
_StringConst_341:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_340:
	.word	27			! length
	.ascii	"......Child 2 ending......\n"
	.align
_StringConst_339:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_338:
	.word	1			! length
	.ascii	"L"
	.align
_StringConst_337:
	.word	1			! length
	.ascii	"J"
	.align
_StringConst_336:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_335:
	.word	1			! length
	.ascii	"V"
	.align
_StringConst_334:
	.word	1			! length
	.ascii	"T"
	.align
_StringConst_333:
	.word	1			! length
	.ascii	"R"
	.align
_StringConst_332:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_331:
	.word	1			! length
	.ascii	"P"
	.align
_StringConst_330:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_329:
	.word	1			! length
	.ascii	"N"
	.align
_StringConst_328:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_327:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_326:
	.word	30			! length
	.ascii	"......Child 2 beginning......\n"
	.align
_StringConst_325:
	.word	27			! length
	.ascii	"......Child 1 ending......\n"
	.align
_StringConst_324:
	.word	1			! length
	.ascii	"W"
	.align
_StringConst_323:
	.word	1			! length
	.ascii	"U"
	.align
_StringConst_322:
	.word	1			! length
	.ascii	"S"
	.align
_StringConst_321:
	.word	1			! length
	.ascii	"K"
	.align
_StringConst_320:
	.word	1			! length
	.ascii	"I"
	.align
_StringConst_319:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_318:
	.word	1			! length
	.ascii	"Q"
	.align
_StringConst_317:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_316:
	.word	1			! length
	.ascii	"O"
	.align
_StringConst_315:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_314:
	.word	1			! length
	.ascii	"M"
	.align
_StringConst_313:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_312:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_311:
	.word	30			! length
	.ascii	"......Child 1 beginning......\n"
	.align
_StringConst_310:
	.word	67			! length
	.ascii	"Make sure that the activity of child 1 and child 2 is interleaved.\n"
	.align
_StringConst_309:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_308:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_307:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_306:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_305:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_304:
	.word	45			! length
	.ascii	"\n**********  WriteTest5 running  **********\n\n"
	.align
_StringConst_303:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_302:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_301:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_300:
	.word	25			! length
	.ascii	"\" to current position...\n"
	.align
_StringConst_299:
	.word	9			! length
	.ascii	"Writing \""
	.align
_StringConst_298:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_297:
	.word	26			! length
	.ascii	"abc0123ABC4567DEF89GHIwxyz"
	.align
_StringConst_296:
	.word	3			! length
	.ascii	"GHI"
	.align
_StringConst_295:
	.word	2			! length
	.ascii	"89"
	.align
_StringConst_294:
	.word	3			! length
	.ascii	"DEF"
	.align
_StringConst_293:
	.word	4			! length
	.ascii	"4567"
	.align
_StringConst_292:
	.word	3			! length
	.ascii	"ABC"
	.align
_StringConst_291:
	.word	4			! length
	.ascii	"0123"
	.align
_StringConst_290:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_289:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_288:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_287:
	.word	45			! length
	.ascii	"\n**********  WriteTest4 running  **********\n\n"
	.align
_StringConst_286:
	.word	40			! length
	.ascii	"*****  ERROR: Data read is not correct.\n"
	.align
_StringConst_285:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_284:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_283:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_282:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_281:
	.word	40			! length
	.ascii	"**** ERROR: return value from Sys_Seek ("
	.align
_StringConst_280:
	.word	23			! length
	.ascii	"\") is incorrect  *****\n"
	.align
_StringConst_279:
	.word	30			! length
	.ascii	"*****  ERROR: The data read (\""
	.align
_StringConst_278:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_277:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_276:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_275:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_274:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_273:
	.word	4			! length
	.ascii	"...\n"
	.align
_StringConst_272:
	.word	14			! length
	.ascii	"\" at position "
	.align
_StringConst_271:
	.word	33			! length
	.ascii	"Checking that the file contains \""
	.align
_StringConst_270:
	.word	60			! length
	.ascii	"LOGIC ERROR: data should not be larger than our buffer size\n"
	.align
_StringConst_269:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_268:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_267:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_266:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_265:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_264:
	.word	12			! length
	.ascii	" in file...\n"
	.align
_StringConst_263:
	.word	14			! length
	.ascii	"\" to position "
	.align
_StringConst_262:
	.word	9			! length
	.ascii	"Writing \""
	.align
_StringConst_261:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_260:
	.word	26			! length
	.ascii	"HHHHIIIIJJJJKKKKLLLLMMMMNN"
	.align
_StringConst_259:
	.word	26			! length
	.ascii	"AAAABBBBCCCCDDDDEEEEFFFFGG"
	.align
_StringConst_258:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_257:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_256:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_255:
	.word	26			! length
	.ascii	"HHHHIIIIJJJJKKKKLLLLMMMMNN"
	.align
_StringConst_254:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_253:
	.word	26			! length
	.ascii	"AAAABBBBCCCCDDDDEEEEFFFFGG"
	.align
_StringConst_252:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_251:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_250:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_249:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_248:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_247:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_246:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_245:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_244:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_243:
	.word	45			! length
	.ascii	"\n**********  WriteTest3 running  **********\n\n"
	.align
_StringConst_242:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_241:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_240:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_239:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_238:
	.word	36			! length
	.ascii	"Make sure file size is unchanged...\n"
	.align
_StringConst_237:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_236:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_235:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_234:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_233:
	.word	42			! length
	.ascii	"Writing to a file opened only for READ...\n"
	.align
_StringConst_232:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_231:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_230:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_229:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_228:
	.word	36			! length
	.ascii	"Make sure file size is unchanged...\n"
	.align
_StringConst_227:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_226:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_225:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_224:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_223:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_222:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_221:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_220:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_219:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_218:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_217:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_216:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_215:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_214:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_213:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_212:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_211:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_210:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_209:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_208:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_207:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_206:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_205:
	.word	47			! length
	.ascii	"Writing files with invalid file descriptors...\n"
	.align
_StringConst_204:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_203:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_202:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_201:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_200:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_199:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_198:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_197:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_196:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_195:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_194:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_193:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_192:
	.word	36			! length
	.ascii	"Writing files which are not open...\n"
	.align
_StringConst_191:
	.word	45			! length
	.ascii	"\n**********  WriteTest2 running  **********\n\n"
	.align
_StringConst_190:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_189:
	.word	20			! length
	.ascii	"abcdePONMLklmZYXWVst"
	.align
_StringConst_188:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_187:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_186:
	.word	43			! length
	.ascii	"\nShould print \'>>>abcdePONMLklmZYXWVst<<<\'\n"
	.align
_StringConst_185:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_184:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_183:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_182:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_181:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_180:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_179:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_178:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_177:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_176:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_175:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_174:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_173:
	.word	20			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHG"
	.align
_StringConst_172:
	.word	20			! length
	.ascii	"abcdefghijklmnopqrst"
	.align
_StringConst_171:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_170:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_169:
	.word	43			! length
	.ascii	"\nShould print \'>>>abcdefghijklmnopqrst<<<\'\n"
	.align
_StringConst_168:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_167:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_166:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_165:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_164:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_163:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_162:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_161:
	.word	20			! length
	.ascii	"abcdefghijklmnopqrst"
	.align
_StringConst_160:
	.word	45			! length
	.ascii	"\n**********  WriteTest1 running  **********\n\n"
	.align
_StringConst_159:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_158:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_157:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_156:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_155:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_154:
	.word	53			! length
	.ascii	"\nShould print \'>>>he time for all good men to co<<<\'\n"
	.align
_StringConst_153:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_152:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_151:
	.word	19			! length
	.ascii	"\nShould print 8...\n"
	.align
_StringConst_150:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_149:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_148:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_147:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_146:
	.word	53			! length
	.ascii	"\nShould print \'>>> come to the aid of their part<<<\'\n"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_144:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_143:
	.word	19			! length
	.ascii	"Should print 35...\n"
	.align
_StringConst_142:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_140:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_139:
	.word	41			! length
	.ascii	"Should print -1 (bad file descriptor)...\n"
	.align
_StringConst_138:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_136:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_135:
	.word	35			! length
	.ascii	"Should print -1 (file not open)...\n"
	.align
_StringConst_134:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_132:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_131:
	.word	43			! length
	.ascii	"Should print -1 (newCurrentPos is < -1)...\n"
	.align
_StringConst_130:
	.word	23			! length
	.ascii	"Checking error value:  "
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_128:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_127:
	.word	50			! length
	.ascii	"Should print -1 (newCurrentPos is > file size)...\n"
	.align
_StringConst_126:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_125:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_124:
	.word	19			! length
	.ascii	"Should print 72...\n"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_122:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_121:
	.word	18			! length
	.ascii	"Should print 0...\n"
	.align
_StringConst_120:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_119:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_118:
	.word	18			! length
	.ascii	"Should print 4...\n"
	.align
_StringConst_117:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_116:
	.word	43			! length
	.ascii	"\n**********  SeekTest running  **********\n\n"
	.align
_StringConst_115:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_113:
	.word	71			! length
	.ascii	"*****  ERROR: Return code is -1 but did change the last 4 bytes  *****\n"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_111:
	.word	71			! length
	.ascii	"*****  ERROR: Return code is 4, but did not change last 4 bytes  *****\n"
	.align
_StringConst_110:
	.word	63			! length
	.ascii	"*****  ERROR: Current position is not what is expected!  *****\n"
	.align
_StringConst_109:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_108:
	.word	10			! length
	.ascii	"is the tim"
	.align
_StringConst_107:
	.word	49			! length
	.ascii	"*****  ERROR: Did not change last 4 bytes  *****\n"
	.align
_StringConst_106:
	.word	16			! length
	.ascii	"Error checks...\n"
	.align
_StringConst_105:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_104:
	.word	44			! length
	.ascii	"\n**********  ReadTest4 running  **********\n\n"
	.align
_StringConst_103:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_102:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_101:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_100:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_99:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'r all goo\'.\n"
	.align
_StringConst_98:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_97:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_96:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_95:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'e time fo\'.\n"
	.align
_StringConst_94:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_93:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_92:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_91:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'Now is th\'.\n"
	.align
_StringConst_90:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_89:
	.word	44			! length
	.ascii	"\n**********  ReadTest3 running  **********\n\n"
	.align
_StringConst_88:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_87:
	.word	26			! length
	.ascii	"Error: did not open file1\n"
	.align
_StringConst_86:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_85:
	.word	46			! length
	.ascii	"Reading from a file not opened with O_READ...\n"
	.align
_StringConst_84:
	.word	26			! length
	.ascii	"Error: did not open file1\n"
	.align
_StringConst_83:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_82:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_81:
	.word	65			! length
	.ascii	"Reading files which are not open and invalid file descriptors...\n"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"\n**********  ReadTest2 running  **********\n\n"
	.align
_StringConst_79:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_78:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_77:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_76:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_75:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_74:
	.word	53			! length
	.ascii	"\nShould print \'>>> parties!!!\no the aid of their<<<\'\n"
	.align
_StringConst_73:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_72:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_71:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_70:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_69:
	.word	53			! length
	.ascii	"\nShould print \'>>> parties!!!\no the aid of their<<<\'\n"
	.align
_StringConst_68:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_67:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_66:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_65:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_64:
	.word	53			! length
	.ascii	"\nShould print \'>>>en to come to the aid of their<<<\'\n"
	.align
_StringConst_63:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_62:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_61:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_60:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_59:
	.word	53			! length
	.ascii	"\nShould print \'>>>Now is the time for all good m<<<\'\n"
	.align
_StringConst_58:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_57:
	.word	44			! length
	.ascii	"\n**********  ReadTest1 running  **********\n\n"
	.align
_StringConst_56:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_55:
	.word	81			! length
	.ascii	"Closing files which are not open and invalid file descriptors; should be nops...\n"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"\n**********  CloseTest running  **********\n\n"
	.align
_StringConst_53:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_52:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_51:
	.word	18			! length
	.ascii	"No OpenFile index "
	.align
_StringConst_50:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_49:
	.word	58			! length
	.ascii	"\n************Testing if files are closed in FinishProcess\n"
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Closing all 10 files...\n"
	.align
_StringConst_47:
	.word	55			! length
	.ascii	", which is an unexpected (but possibly correct) fd ***\n"
	.align
_StringConst_46:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_45:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_43:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_42:
	.word	20			! length
	.ascii	"Opening 10 files...\n"
	.align
_StringConst_41:
	.word	48			! length
	.ascii	"\n**********  OpenCloseTest running  **********\n\n"
	.align
_StringConst_40:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_39:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_38:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_37:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_36:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_35:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_34:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_33:
	.word	67			! length
	.ascii	"Attempting to open the file one more time, which should return -1.\n"
	.align
_StringConst_32:
	.word	55			! length
	.ascii	", which is an unexpected (but possibly correct) fd ***\n"
	.align
_StringConst_31:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_30:
	.word	11			! length
	.ascii	" succeeded\n"
	.align
_StringConst_29:
	.word	5			! length
	.ascii	"Open "
	.align
_StringConst_28:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_27:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_26:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_25:
	.word	43			! length
	.ascii	"Attempting to open the same file 10 times.\n"
	.align
_StringConst_24:
	.word	44			! length
	.ascii	"\n**********  OpenTest2 running  **********\n\n"
	.align
_StringConst_23:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_22:
	.word	75			! length
	.ascii	", which is perhaps correct but I was expecting 0 for the first open fd ***\n"
	.align
_StringConst_21:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_19:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_18:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_16:
	.word	59			! length
	.ascii	"Attempting to open an existing file, which should succeed.\n"
	.align
_StringConst_15:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_14:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_13:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_12:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_11:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_10:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_9:
	.word	77			! length
	.ascii	"Attempting to open a file with a bad flags argument, which should return -1.\n"
	.align
_StringConst_8:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_7:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_6:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_4:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	"NotThere"
	.align
_StringConst_2:
	.word	63			! length
	.ascii	"Attempting to open a nonexistent file, which should return -1.\n"
	.align
_StringConst_1:
	.word	44			! length
	.ascii	"\n**********  OpenTest1 running  **********\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x74666da8,r3		! .  hashVal = 1952869800
	call	_CheckVersion_P_TestProgram4_	! .
	cmp	r1,0			! .
	be	_Label_649		! .
	ret				! .
_Label_649:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram4.k\0"
_packageName:
	.ascii	"TestProgram4\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_TestProgram4_:
	.export	_CheckVersion_P_TestProgram4_
	set	0x74666da8,r4		! myHashVal = 1952869800
	cmp	r3,r4
	be	_Label_650
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_650:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_651
! Make sure _P_UserSystem_ has hash value 0x339c138e (decimal 865866638)
	set	_packageName,r2
	set	0x339c138e,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_651
_Label_651:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	1,r1
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	13,r13		! source line 13
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_652
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_652:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION OpenTest1  ===============
! 
_function_648_OpenTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_648_OpenTest1,r1
	push	r1
	mov	28,r1
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	61,r13		! source line 61
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_653 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_654 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   _temp_655 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_657		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_657
!	_Label_656	jmp	_Label_656
_Label_656:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=ec  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ec  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_659
_Label_657:
! ELSE...
	mov	75,r13		! source line 75
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_661		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_661
!	_Label_660	jmp	_Label_660
_Label_660:
! THEN...
	mov	76,r13		! source line 76
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_662 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_663 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_664
_Label_661:
! ELSE...
	mov	80,r13		! source line 80
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_665 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_666 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_664:
! END IF...
_Label_659:
! CALL STATEMENT...
!   _temp_667 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   _temp_668 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_670		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_670
!	_Label_669	jmp	_Label_669
_Label_669:
! THEN...
	mov	88,r13		! source line 88
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_671 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=ec  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ec  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_672
_Label_670:
! ELSE...
	mov	91,r13		! source line 91
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_674		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_674
!	_Label_673	jmp	_Label_673
_Label_673:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_675 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_676 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_677
_Label_674:
! ELSE...
	mov	96,r13		! source line 96
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_678 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_679 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_677:
! END IF...
_Label_672:
! CALL STATEMENT...
!   _temp_680 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   _temp_681 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_683		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_683
!	_Label_682	jmp	_Label_682
_Label_682:
! THEN...
	mov	104,r13		! source line 104
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_684 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_685 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_686
_Label_683:
! ELSE...
	mov	107,r13		! source line 107
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0IF",r10
!   if intIsZero (fd) then goto _Label_687
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_687
	jmp	_Label_688
_Label_687:
! THEN...
	mov	108,r13		! source line 108
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_690
_Label_688:
! ELSE...
	mov	110,r13		! source line 110
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_692 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_690:
! END IF...
_Label_686:
! CALL STATEMENT...
!   _temp_693 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_648_OpenTest1:
	.word	_sourceFileName
	.word	_Label_694
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_695
	.word	-12
	.word	4
	.word	_Label_696
	.word	-16
	.word	4
	.word	_Label_697
	.word	-20
	.word	4
	.word	_Label_698
	.word	-24
	.word	4
	.word	_Label_699
	.word	-28
	.word	4
	.word	_Label_700
	.word	-32
	.word	4
	.word	_Label_701
	.word	-36
	.word	4
	.word	_Label_702
	.word	-40
	.word	4
	.word	_Label_703
	.word	-44
	.word	4
	.word	_Label_704
	.word	-48
	.word	4
	.word	_Label_705
	.word	-52
	.word	4
	.word	_Label_706
	.word	-56
	.word	4
	.word	_Label_707
	.word	-60
	.word	4
	.word	_Label_708
	.word	-64
	.word	4
	.word	_Label_709
	.word	-68
	.word	4
	.word	_Label_710
	.word	-72
	.word	4
	.word	_Label_711
	.word	-76
	.word	4
	.word	_Label_712
	.word	-80
	.word	4
	.word	_Label_713
	.word	-84
	.word	4
	.word	_Label_714
	.word	-88
	.word	4
	.word	_Label_715
	.word	-92
	.word	4
	.word	_Label_716
	.word	-96
	.word	4
	.word	_Label_717
	.word	-100
	.word	4
	.word	_Label_718
	.word	-104
	.word	4
	.word	_Label_719
	.word	-108
	.word	4
	.word	0
_Label_694:
	.ascii	"OpenTest1\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"ec\0"
	.align
! 
! ===============  FUNCTION OpenTest2  ===============
! 
_function_647_OpenTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_647_OpenTest2,r1
	push	r1
	mov	24,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	121,r13		! source line 121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_720 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_721 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_726 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_727 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_726  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-88]
_Label_722:
!   Perform the FOR-LOOP termination test
!   if i > _temp_727 then goto _Label_725		
	load	[r14+-88],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_725
_Label_723:
	mov	130,r13		! source line 130
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
!   _temp_728 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_730		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_730
!	_Label_729	jmp	_Label_729
_Label_729:
! THEN...
	mov	133,r13		! source line 133
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_731 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_732 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_733
_Label_730:
! ELSE...
	mov	136,r13		! source line 136
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0IF",r10
!   if fd != i then goto _Label_735		(int)
	load	[r14+-92],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_735
!	_Label_734	jmp	_Label_734
_Label_734:
! THEN...
	mov	137,r13		! source line 137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_736 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_737 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_738
_Label_735:
! ELSE...
	mov	141,r13		! source line 141
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_739 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_740 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_738:
! END IF...
_Label_733:
!   Increment the FOR-LOOP index variable and jump back
_Label_724:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_722
! END FOR
_Label_725:
! CALL STATEMENT...
!   _temp_741 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   _temp_742 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_744		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_744
!	_Label_743	jmp	_Label_743
_Label_743:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_745 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_746
_Label_744:
! ELSE...
	mov	153,r13		! source line 153
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_748		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_748
!	_Label_747	jmp	_Label_747
_Label_747:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_750 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_751
_Label_748:
! ELSE...
	mov	158,r13		! source line 158
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_752 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_753 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_751:
! END IF...
_Label_746:
! CALL STATEMENT...
!   _temp_754 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_647_OpenTest2:
	.word	_sourceFileName
	.word	_Label_755
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_756
	.word	-12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	_Label_758
	.word	-20
	.word	4
	.word	_Label_759
	.word	-24
	.word	4
	.word	_Label_760
	.word	-28
	.word	4
	.word	_Label_761
	.word	-32
	.word	4
	.word	_Label_762
	.word	-36
	.word	4
	.word	_Label_763
	.word	-40
	.word	4
	.word	_Label_764
	.word	-44
	.word	4
	.word	_Label_765
	.word	-48
	.word	4
	.word	_Label_766
	.word	-52
	.word	4
	.word	_Label_767
	.word	-56
	.word	4
	.word	_Label_768
	.word	-60
	.word	4
	.word	_Label_769
	.word	-64
	.word	4
	.word	_Label_770
	.word	-68
	.word	4
	.word	_Label_771
	.word	-72
	.word	4
	.word	_Label_772
	.word	-76
	.word	4
	.word	_Label_773
	.word	-80
	.word	4
	.word	_Label_774
	.word	-84
	.word	4
	.word	_Label_775
	.word	-88
	.word	4
	.word	_Label_776
	.word	-92
	.word	4
	.word	0
_Label_755:
	.ascii	"OpenTest2\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION OpenCloseTest  ===============
! 
_function_646_OpenCloseTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_646_OpenCloseTest,r1
	push	r1
	mov	28,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	169,r13		! source line 169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_777 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_782 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_783 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_782  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-100]
_Label_778:
!   Perform the FOR-LOOP termination test
!   if j > _temp_783 then goto _Label_781		
	load	[r14+-100],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_781
_Label_779:
	mov	176,r13		! source line 176
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_784 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_789 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_790 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_789  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-96]
_Label_785:
!   Perform the FOR-LOOP termination test
!   if i > _temp_790 then goto _Label_788		
	load	[r14+-96],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_788
_Label_786:
	mov	178,r13		! source line 178
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0AS",r10
!   _temp_791 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_793		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_793
!	_Label_792	jmp	_Label_792
_Label_792:
! THEN...
	mov	181,r13		! source line 181
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_795 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_796
_Label_793:
! ELSE...
	mov	184,r13		! source line 184
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0IF",r10
!   if fd != i then goto _Label_798		(int)
	load	[r14+-104],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bne	_Label_798
!	_Label_797	jmp	_Label_797
_Label_797:
	jmp	_Label_799
_Label_798:
! ELSE...
	mov	189,r13		! source line 189
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_800 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	189,r13		! source line 189
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_801 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	191,r13		! source line 191
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_799:
! END IF...
_Label_796:
!   Increment the FOR-LOOP index variable and jump back
_Label_787:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_785
! END FOR
_Label_788:
! CALL STATEMENT...
!   _temp_802 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_807 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_808 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_807  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-96]
_Label_803:
!   Perform the FOR-LOOP termination test
!   if i > _temp_808 then goto _Label_806		
	load	[r14+-96],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_806
_Label_804:
	mov	197,r13		! source line 197
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_805:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_803
! END FOR
_Label_806:
!   Increment the FOR-LOOP index variable and jump back
_Label_780:
!   j = j + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_778
! END FOR
_Label_781:
! CALL STATEMENT...
!   _temp_809 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_814 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_815 = 15		(4 bytes)
	mov	15,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_814  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-96]
_Label_810:
!   Perform the FOR-LOOP termination test
!   if i > _temp_815 then goto _Label_813		
	load	[r14+-96],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_813
_Label_811:
	mov	205,r13		! source line 205
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0AS",r10
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0IF",r10
!   if intIsZero (retVal) then goto _Label_816
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_816
	jmp	_Label_817
_Label_816:
! THEN...
	mov	209,r13		! source line 209
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0AS",r10
!   _temp_818 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_820		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_820
!	_Label_819	jmp	_Label_819
_Label_819:
! THEN...
	mov	211,r13		! source line 211
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_821 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_820:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_817:
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   Increment the FOR-LOOP index variable and jump back
_Label_812:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_810
! END FOR
_Label_813:
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   _temp_822 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_823 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_646_OpenCloseTest:
	.word	_sourceFileName
	.word	_Label_824
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_825
	.word	-12
	.word	4
	.word	_Label_826
	.word	-16
	.word	4
	.word	_Label_827
	.word	-20
	.word	4
	.word	_Label_828
	.word	-24
	.word	4
	.word	_Label_829
	.word	-28
	.word	4
	.word	_Label_830
	.word	-32
	.word	4
	.word	_Label_831
	.word	-36
	.word	4
	.word	_Label_832
	.word	-40
	.word	4
	.word	_Label_833
	.word	-44
	.word	4
	.word	_Label_834
	.word	-48
	.word	4
	.word	_Label_835
	.word	-52
	.word	4
	.word	_Label_836
	.word	-56
	.word	4
	.word	_Label_837
	.word	-60
	.word	4
	.word	_Label_838
	.word	-64
	.word	4
	.word	_Label_839
	.word	-68
	.word	4
	.word	_Label_840
	.word	-72
	.word	4
	.word	_Label_841
	.word	-76
	.word	4
	.word	_Label_842
	.word	-80
	.word	4
	.word	_Label_843
	.word	-84
	.word	4
	.word	_Label_844
	.word	-88
	.word	4
	.word	_Label_845
	.word	-92
	.word	4
	.word	_Label_846
	.word	-96
	.word	4
	.word	_Label_847
	.word	-100
	.word	4
	.word	_Label_848
	.word	-104
	.word	4
	.word	_Label_849
	.word	-108
	.word	4
	.word	0
_Label_824:
	.ascii	"OpenCloseTest\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_847:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_848:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_849:
	.byte	'I'
	.ascii	"retVal\0"
	.align
! 
! ===============  FUNCTION CloseTest  ===============
! 
_function_645_CloseTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_645_CloseTest,r1
	push	r1
	mov	6,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	229,r13		! source line 229
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_850 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_851 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=er  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=er  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_852 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_645_CloseTest:
	.word	_sourceFileName
	.word	_Label_853
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_854
	.word	-12
	.word	4
	.word	_Label_855
	.word	-16
	.word	4
	.word	_Label_856
	.word	-20
	.word	4
	.word	_Label_857
	.word	-24
	.word	4
	.word	0
_Label_853:
	.ascii	"CloseTest\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_857:
	.byte	'I'
	.ascii	"er\0"
	.align
! 
! ===============  FUNCTION ReadTest1  ===============
! 
_function_644_ReadTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_644_ReadTest1,r1
	push	r1
	mov	35,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	265,r13		! source line 265
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! charPtr
!   _temp_858 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-124]
!   Move address of _temp_858 [0 ] into _temp_859
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   charPtr = _temp_859		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_860 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   _temp_861 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_862 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_863 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_864 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_865 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_867		(int)
	load	[r14+-132],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_867
!	_Label_866	jmp	_Label_866
_Label_866:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_868 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_869 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_867:
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_870 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_871 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_872 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_873 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_875		(int)
	load	[r14+-132],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_875
!	_Label_874	jmp	_Label_874
_Label_874:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_876 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_877 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_875:
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_878 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_879 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_880 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	300,r13		! source line 300
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_881 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if i == 12 then goto _Label_883		(int)
	load	[r14+-132],r1
	mov	12,r2
	cmp	r1,r2
	be	_Label_883
!	_Label_882	jmp	_Label_882
_Label_882:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_884 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_885 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_883:
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_886 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_887 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_888 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_889 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_889  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_891
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_891
!	_Label_890	jmp	_Label_890
_Label_890:
! THEN...
	mov	316,r13		! source line 316
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_892 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_892  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_893 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_893  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_891:
! CALL STATEMENT...
!   _temp_894 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_644_ReadTest1:
	.word	_sourceFileName
	.word	_Label_895
	.word	0		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_896
	.word	-12
	.word	4
	.word	_Label_897
	.word	-16
	.word	4
	.word	_Label_898
	.word	-20
	.word	4
	.word	_Label_899
	.word	-24
	.word	4
	.word	_Label_900
	.word	-28
	.word	4
	.word	_Label_901
	.word	-32
	.word	4
	.word	_Label_902
	.word	-36
	.word	4
	.word	_Label_903
	.word	-40
	.word	4
	.word	_Label_904
	.word	-44
	.word	4
	.word	_Label_905
	.word	-48
	.word	4
	.word	_Label_906
	.word	-52
	.word	4
	.word	_Label_907
	.word	-56
	.word	4
	.word	_Label_908
	.word	-60
	.word	4
	.word	_Label_909
	.word	-64
	.word	4
	.word	_Label_910
	.word	-68
	.word	4
	.word	_Label_911
	.word	-72
	.word	4
	.word	_Label_912
	.word	-76
	.word	4
	.word	_Label_913
	.word	-80
	.word	4
	.word	_Label_914
	.word	-84
	.word	4
	.word	_Label_915
	.word	-88
	.word	4
	.word	_Label_916
	.word	-92
	.word	4
	.word	_Label_917
	.word	-96
	.word	4
	.word	_Label_918
	.word	-100
	.word	4
	.word	_Label_919
	.word	-104
	.word	4
	.word	_Label_920
	.word	-108
	.word	4
	.word	_Label_921
	.word	-112
	.word	4
	.word	_Label_922
	.word	-116
	.word	4
	.word	_Label_923
	.word	-120
	.word	4
	.word	_Label_924
	.word	-124
	.word	4
	.word	_Label_925
	.word	-128
	.word	4
	.word	_Label_926
	.word	-132
	.word	4
	.word	_Label_927
	.word	-136
	.word	4
	.word	0
_Label_895:
	.ascii	"ReadTest1\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_925:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_927:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest2  ===============
! 
_function_643_ReadTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_643_ReadTest2,r1
	push	r1
	mov	17,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	329,r13		! source line 329
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! charPtr
!   _temp_928 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-52]
!   Move address of _temp_928 [0 ] into _temp_929
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   charPtr = _temp_929		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   _temp_930 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_931 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0AS",r10
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
!   Call the function
	mov	367,r13		! source line 367
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_932 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	370,r13		! source line 370
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   _temp_933 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_935		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_935
!	_Label_934	jmp	_Label_934
_Label_934:
! THEN...
	mov	373,r13		! source line 373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_936 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_937
_Label_935:
! ELSE...
	mov	375,r13		! source line 375
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	375,r13		! source line 375
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   Call the function
	mov	377,r13		! source line 377
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	378,r13		! source line 378
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_937:
! CALL STATEMENT...
!   _temp_938 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_938  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   _temp_939 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_941		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_941
!	_Label_940	jmp	_Label_940
_Label_940:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_942 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_943
_Label_941:
! ELSE...
	mov	392,r13		! source line 392
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_943:
! CALL STATEMENT...
!   _temp_944 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_643_ReadTest2:
	.word	_sourceFileName
	.word	_Label_945
	.word	0		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_946
	.word	-12
	.word	4
	.word	_Label_947
	.word	-16
	.word	4
	.word	_Label_948
	.word	-20
	.word	4
	.word	_Label_949
	.word	-24
	.word	4
	.word	_Label_950
	.word	-28
	.word	4
	.word	_Label_951
	.word	-32
	.word	4
	.word	_Label_952
	.word	-36
	.word	4
	.word	_Label_953
	.word	-40
	.word	4
	.word	_Label_954
	.word	-44
	.word	4
	.word	_Label_955
	.word	-48
	.word	4
	.word	_Label_956
	.word	-52
	.word	4
	.word	_Label_957
	.word	-56
	.word	4
	.word	_Label_958
	.word	-60
	.word	4
	.word	_Label_959
	.word	-64
	.word	4
	.word	0
_Label_945:
	.ascii	"ReadTest2\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_958:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_959:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest3  ===============
! 
_function_642_ReadTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_642_ReadTest3,r1
	push	r1
	mov	63,r1
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	406,r13		! source line 406
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_960 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   _temp_961 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   _temp_962 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-220]
!   Move address of _temp_962 [9 ] into _temp_963
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Data Move: *_temp_963 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-216],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_964 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_965 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_965  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_970 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-204]
!   Calculate and save the FOR-LOOP ending value
!   _temp_971 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-200]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_970  (sizeInBytes=4)
	load	[r14+-204],r1
	store	r1,[r14+-236]
_Label_966:
!   Perform the FOR-LOOP termination test
!   if i > _temp_971 then goto _Label_969		
	load	[r14+-236],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_969
_Label_967:
	mov	422,r13		! source line 422
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0AS",r10
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_972
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_972
	jmp	_Label_973
_Label_972:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
!   _temp_974 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-196]
!   _temp_975 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   Move address of _temp_974 [_temp_975 ] into _temp_976
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   charPtr = _temp_976		(4 bytes)
	load	[r14+-188],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_978		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_978
!	_Label_977	jmp	_Label_977
_Label_977:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_979 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_980 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_978:
! CALL STATEMENT...
!   _temp_981 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_973:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_968:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_966
! END FOR
_Label_969:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   _temp_982 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-172]
!   NEW ARRAY Constructor...
!   _temp_984 = &_temp_983
	add	r14,-168,r1
	store	r1,[r14+-152]
!   _temp_984 = _temp_984 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Next value...
	mov	10,r1
	store	r1,[r14+-148]
_Label_986:
!   Data Move: *_temp_984 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-152],r2
	storeb	r1,[r2]
!   _temp_984 = _temp_984 + 1
	load	[r14+-152],r1
	add	r1,1,r1
	store	r1,[r14+-152]
!   _temp_985 = _temp_985 + -1
	load	[r14+-148],r1
	add	r1,-1,r1
	store	r1,[r14+-148]
!   if intNotZero (_temp_985) then goto _Label_986
	load	[r14+-148],r1
	cmp	r1,r0
	bne	_Label_986
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-168]
!   _temp_987 = &_temp_983
	add	r14,-168,r1
	store	r1,[r14+-144]
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3235
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3235:
!   make sure array has size 10
	load	[r14+-144],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_982 = *_temp_987  (sizeInBytes=16)
	load	[r14+-144],r5
	load	[r14+-172],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   _temp_988 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-140]
!   Move address of _temp_988 [9 ] into _temp_989
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   Data Move: *_temp_989 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-136],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_990 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_991 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_996 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-124]
!   Calculate and save the FOR-LOOP ending value
!   _temp_997 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-120]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_996  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+-236]
_Label_992:
!   Perform the FOR-LOOP termination test
!   if i > _temp_997 then goto _Label_995		
	load	[r14+-236],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_995
_Label_993:
	mov	448,r13		! source line 448
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0AS",r10
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_998
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_998
	jmp	_Label_999
_Label_998:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   _temp_1000 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-116]
!   _temp_1001 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Move address of _temp_1000 [_temp_1001 ] into _temp_1002
!     make sure index expr is >= 0
	load	[r14+-112],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   charPtr = _temp_1002		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_1004		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1004
!	_Label_1003	jmp	_Label_1003
_Label_1003:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1005 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1005  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1006 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1004:
! CALL STATEMENT...
!   _temp_1007 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_999:
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_994:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_992
! END FOR
_Label_995:
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   _temp_1008 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-92]
!   NEW ARRAY Constructor...
!   _temp_1010 = &_temp_1009
	add	r14,-88,r1
	store	r1,[r14+-72]
!   _temp_1010 = _temp_1010 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	10,r1
	store	r1,[r14+-68]
_Label_1012:
!   Data Move: *_temp_1010 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_1010 = _temp_1010 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_1011 = _temp_1011 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_1011) then goto _Label_1012
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_1012
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-88]
!   _temp_1013 = &_temp_1009
	add	r14,-88,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	load	[r14+-92],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3236
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3236:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1008 = *_temp_1013  (sizeInBytes=16)
	load	[r14+-64],r5
	load	[r14+-92],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   _temp_1014 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-60]
!   Move address of _temp_1014 [9 ] into _temp_1015
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_1015 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1016 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1017 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1017  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1022 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1023 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1022  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-236]
_Label_1018:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1023 then goto _Label_1021		
	load	[r14+-236],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1021
_Label_1019:
	mov	474,r13		! source line 474
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1024
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_1024
	jmp	_Label_1025
_Label_1024:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   _temp_1026 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-36]
!   _temp_1027 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Move address of _temp_1026 [_temp_1027 ] into _temp_1028
!     make sure index expr is >= 0
	load	[r14+-32],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   charPtr = _temp_1028		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_1030		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1030
!	_Label_1029	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	482,r13		! source line 482
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1032 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1030:
! CALL STATEMENT...
!   _temp_1033 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1025:
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_1020:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_1018
! END FOR
_Label_1021:
! CALL STATEMENT...
!   _temp_1034 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_642_ReadTest3:
	.word	_sourceFileName
	.word	_Label_1035
	.word	0		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_1036
	.word	-12
	.word	4
	.word	_Label_1037
	.word	-16
	.word	4
	.word	_Label_1038
	.word	-20
	.word	4
	.word	_Label_1039
	.word	-24
	.word	4
	.word	_Label_1040
	.word	-28
	.word	4
	.word	_Label_1041
	.word	-32
	.word	4
	.word	_Label_1042
	.word	-36
	.word	4
	.word	_Label_1043
	.word	-40
	.word	4
	.word	_Label_1044
	.word	-44
	.word	4
	.word	_Label_1045
	.word	-48
	.word	4
	.word	_Label_1046
	.word	-52
	.word	4
	.word	_Label_1047
	.word	-56
	.word	4
	.word	_Label_1048
	.word	-60
	.word	4
	.word	_Label_1049
	.word	-64
	.word	4
	.word	_Label_1050
	.word	-68
	.word	4
	.word	_Label_1051
	.word	-72
	.word	4
	.word	_Label_1052
	.word	-88
	.word	16
	.word	_Label_1053
	.word	-92
	.word	4
	.word	_Label_1054
	.word	-96
	.word	4
	.word	_Label_1055
	.word	-100
	.word	4
	.word	_Label_1056
	.word	-104
	.word	4
	.word	_Label_1057
	.word	-108
	.word	4
	.word	_Label_1058
	.word	-112
	.word	4
	.word	_Label_1059
	.word	-116
	.word	4
	.word	_Label_1060
	.word	-120
	.word	4
	.word	_Label_1061
	.word	-124
	.word	4
	.word	_Label_1062
	.word	-128
	.word	4
	.word	_Label_1063
	.word	-132
	.word	4
	.word	_Label_1064
	.word	-136
	.word	4
	.word	_Label_1065
	.word	-140
	.word	4
	.word	_Label_1066
	.word	-144
	.word	4
	.word	_Label_1067
	.word	-148
	.word	4
	.word	_Label_1068
	.word	-152
	.word	4
	.word	_Label_1069
	.word	-168
	.word	16
	.word	_Label_1070
	.word	-172
	.word	4
	.word	_Label_1071
	.word	-176
	.word	4
	.word	_Label_1072
	.word	-180
	.word	4
	.word	_Label_1073
	.word	-184
	.word	4
	.word	_Label_1074
	.word	-188
	.word	4
	.word	_Label_1075
	.word	-192
	.word	4
	.word	_Label_1076
	.word	-196
	.word	4
	.word	_Label_1077
	.word	-200
	.word	4
	.word	_Label_1078
	.word	-204
	.word	4
	.word	_Label_1079
	.word	-208
	.word	4
	.word	_Label_1080
	.word	-212
	.word	4
	.word	_Label_1081
	.word	-216
	.word	4
	.word	_Label_1082
	.word	-220
	.word	4
	.word	_Label_1083
	.word	-224
	.word	4
	.word	_Label_1084
	.word	-228
	.word	4
	.word	_Label_1085
	.word	-232
	.word	4
	.word	_Label_1086
	.word	-236
	.word	4
	.word	_Label_1087
	.word	-240
	.word	4
	.word	_Label_1088
	.word	-244
	.word	4
	.word	_Label_1089
	.word	-248
	.word	4
	.word	0
_Label_1035:
	.ascii	"ReadTest3\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1085:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1086:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1087:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_1088:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1089:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest4  ===============
! 
_function_641_ReadTest4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_641_ReadTest4,r1
	push	r1
	mov	49,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	501,r13		! source line 501
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1090 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   _temp_1091 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=72  sizeInBytes=4
	mov	72,r1
	store	r1,[r15+4]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   _temp_1093 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-164]
!   Move address of _temp_1093 [0 ] into _temp_1094
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   _temp_1092 = _temp_1094		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1092  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   _temp_1096 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-152]
!   Move address of _temp_1096 [0 ] into _temp_1097
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   _temp_1095 = _temp_1097		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1095  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   _temp_1099 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-140]
!   Move address of _temp_1099 [0 ] into _temp_1100
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1098 = _temp_1100		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1098  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_1101 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	531,r13		! source line 531
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   _temp_1103 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-124]
!   Move address of _temp_1103 [0 ] into _temp_1104
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_1102 = _temp_1104		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1102  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	535,r13		! source line 535
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   Call the function
	mov	536,r13		! source line 536
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	537,r13		! source line 537
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   _temp_1106 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-112]
!   Move address of _temp_1106 [0 ] into _temp_1107
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_1105 = _temp_1107		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1105  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-5  sizeInBytes=4
	mov	-5,r1
	store	r1,[r15+8]
!   Call the function
	mov	540,r13		! source line 540
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	547,r13		! source line 547
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   _temp_1108 = main
	set	main,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1108  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   Call the function
	mov	554,r13		! source line 554
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	559,r13		! source line 559
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   _temp_1110 = &fd
	add	r14,-180,r1
	store	r1,[r14+-96]
!   _temp_1109 = _temp_1110 AND -8192		(int)
	load	[r14+-96],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-100]
!   p = _temp_1109 OR 8188		(int)
	load	[r14+-100],r1
	mov	8188,r2
	or	r1,r2,r1
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	571,r13		! source line 571
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1113 = *p  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if save != _temp_1113 then goto _Label_1112		(int)
	load	[r14+-192],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bne	_Label_1112
!	_Label_1111	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1114 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1112:
! ASSIGNMENT STATEMENT...
	mov	575,r13		! source line 575
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-188],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0AS",r10
!   _temp_1116 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-80]
!   Move address of _temp_1116 [0 ] into _temp_1117
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_1115 = _temp_1117		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1115  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0IF",r10
!   _temp_1121 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-68]
!   Move address of _temp_1121 [0 ] into _temp_1122
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   _temp_1120 = _temp_1122		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1124 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1124) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1124 [0 ] into _temp_1125
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1123 = _temp_1125		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1123  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   if result==true then goto _Label_1118 else goto _Label_1119
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1119
	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	584,r13		! source line 584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1126 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1126  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1127
_Label_1119:
! ELSE...
	mov	586,r13		! source line 586
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1128 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1129 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! END IF...
_Label_1127:
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if i != 4 then goto _Label_1131		(int)
	load	[r14+-184],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1131
!	_Label_1130	jmp	_Label_1130
_Label_1130:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1134 = *p  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if save != _temp_1134 then goto _Label_1133		(int)
	load	[r14+-192],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bne	_Label_1133
!	_Label_1132	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1135 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1136
_Label_1133:
! ELSE...
	mov	603,r13		! source line 603
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1136:
	jmp	_Label_1138
_Label_1131:
! ELSE...
	mov	605,r13		! source line 605
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1140		(int)
	load	[r14+-184],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1140
!	_Label_1139	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	606,r13		! source line 606
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1143 = *p  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if save == _temp_1143 then goto _Label_1142		(int)
	load	[r14+-192],r1
	load	[r14+-24],r2
	cmp	r1,r2
	be	_Label_1142
!	_Label_1141	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1144 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1145
_Label_1142:
! ELSE...
	mov	609,r13		! source line 609
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1145:
	jmp	_Label_1147
_Label_1140:
! ELSE...
	mov	612,r13		! source line 612
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_1147:
! END IF...
_Label_1138:
! ASSIGNMENT STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-188],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1148 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_641_ReadTest4:
	.word	_sourceFileName
	.word	_Label_1149
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1150
	.word	-12
	.word	4
	.word	_Label_1151
	.word	-16
	.word	4
	.word	_Label_1152
	.word	-20
	.word	4
	.word	_Label_1153
	.word	-24
	.word	4
	.word	_Label_1154
	.word	-28
	.word	4
	.word	_Label_1155
	.word	-32
	.word	4
	.word	_Label_1156
	.word	-36
	.word	4
	.word	_Label_1157
	.word	-40
	.word	4
	.word	_Label_1158
	.word	-44
	.word	4
	.word	_Label_1159
	.word	-48
	.word	4
	.word	_Label_1160
	.word	-52
	.word	4
	.word	_Label_1161
	.word	-56
	.word	4
	.word	_Label_1162
	.word	-60
	.word	4
	.word	_Label_1163
	.word	-64
	.word	4
	.word	_Label_1164
	.word	-68
	.word	4
	.word	_Label_1165
	.word	-72
	.word	4
	.word	_Label_1166
	.word	-76
	.word	4
	.word	_Label_1167
	.word	-80
	.word	4
	.word	_Label_1168
	.word	-84
	.word	4
	.word	_Label_1169
	.word	-88
	.word	4
	.word	_Label_1170
	.word	-92
	.word	4
	.word	_Label_1171
	.word	-96
	.word	4
	.word	_Label_1172
	.word	-100
	.word	4
	.word	_Label_1173
	.word	-104
	.word	4
	.word	_Label_1174
	.word	-108
	.word	4
	.word	_Label_1175
	.word	-112
	.word	4
	.word	_Label_1176
	.word	-116
	.word	4
	.word	_Label_1177
	.word	-120
	.word	4
	.word	_Label_1178
	.word	-124
	.word	4
	.word	_Label_1179
	.word	-128
	.word	4
	.word	_Label_1180
	.word	-132
	.word	4
	.word	_Label_1181
	.word	-136
	.word	4
	.word	_Label_1182
	.word	-140
	.word	4
	.word	_Label_1183
	.word	-144
	.word	4
	.word	_Label_1184
	.word	-148
	.word	4
	.word	_Label_1185
	.word	-152
	.word	4
	.word	_Label_1186
	.word	-156
	.word	4
	.word	_Label_1187
	.word	-160
	.word	4
	.word	_Label_1188
	.word	-164
	.word	4
	.word	_Label_1189
	.word	-168
	.word	4
	.word	_Label_1190
	.word	-172
	.word	4
	.word	_Label_1191
	.word	-176
	.word	4
	.word	_Label_1192
	.word	-180
	.word	4
	.word	_Label_1193
	.word	-184
	.word	4
	.word	_Label_1194
	.word	-188
	.word	4
	.word	_Label_1195
	.word	-192
	.word	4
	.word	0
_Label_1149:
	.ascii	"ReadTest4\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1194:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"save\0"
	.align
! 
! ===============  FUNCTION SeekTest  ===============
! 
_function_640_SeekTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_640_SeekTest,r1
	push	r1
	mov	58,r1
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	622,r13		! source line 622
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1196 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   _temp_1197 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! CALL STATEMENT...
!   _temp_1198 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0IF",r10
!   if retval == 4 then goto _Label_1200		(int)
	load	[r14+-228],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_1200
!	_Label_1199	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	635,r13		! source line 635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1201 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1200:
! CALL STATEMENT...
!   _temp_1202 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1203 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	640,r13		! source line 640
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0IF",r10
!   if intIsZero (retval) then goto _Label_1205
	load	[r14+-228],r1
	cmp	r1,r0
	be	_Label_1205
!	_Label_1204	jmp	_Label_1204
_Label_1204:
! THEN...
	mov	642,r13		! source line 642
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1206 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1205:
! CALL STATEMENT...
!   _temp_1207 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1208 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if retval == 72 then goto _Label_1210		(int)
	load	[r14+-228],r1
	mov	72,r2
	cmp	r1,r2
	be	_Label_1210
!	_Label_1209	jmp	_Label_1209
_Label_1209:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1211 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1210:
! CALL STATEMENT...
!   _temp_1212 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1213 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=73  sizeInBytes=4
	mov	73,r1
	store	r1,[r15+4]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1215		(int)
	load	[r14+-228],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1215
!	_Label_1214	jmp	_Label_1214
_Label_1214:
! THEN...
	mov	656,r13		! source line 656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1216 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1215:
! CALL STATEMENT...
!   _temp_1217 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0AS",r10
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   _temp_1218 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_1219 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-2  sizeInBytes=4
	mov	-2,r1
	store	r1,[r15+4]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1221		(int)
	load	[r14+-228],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1221
!	_Label_1220	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	665,r13		! source line 665
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1222 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1221:
! CALL STATEMENT...
!   _temp_1223 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   _temp_1224 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_1225 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1227		(int)
	load	[r14+-228],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1227
!	_Label_1226	jmp	_Label_1226
_Label_1226:
! THEN...
	mov	674,r13		! source line 674
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1227:
! CALL STATEMENT...
!   _temp_1229 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0AS",r10
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   _temp_1230 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1230  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_1231 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1233		(int)
	load	[r14+-228],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1233
!	_Label_1232	jmp	_Label_1232
_Label_1232:
! THEN...
	mov	683,r13		! source line 683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1234 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1234  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1233:
! CALL STATEMENT...
!   _temp_1235 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1235  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0AS",r10
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   _temp_1236 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_1237 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=35  sizeInBytes=4
	mov	35,r1
	store	r1,[r15+4]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0IF",r10
!   if retval == 35 then goto _Label_1239		(int)
	load	[r14+-228],r1
	mov	35,r2
	cmp	r1,r2
	be	_Label_1239
!	_Label_1238	jmp	_Label_1238
_Label_1238:
! THEN...
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1240 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1239:
! CALL STATEMENT...
!   _temp_1241 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0AS",r10
!   _temp_1243 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-92]
!   Move address of _temp_1243 [0 ] into _temp_1244
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   _temp_1242 = _temp_1244		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1242  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! CALL STATEMENT...
!   _temp_1245 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1246 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1247 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1248 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_1250		(int)
	load	[r14+-224],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_1250
!	_Label_1249	jmp	_Label_1249
_Label_1249:
! THEN...
	mov	703,r13		! source line 703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1251 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1252 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1250:
! CALL STATEMENT...
!   _temp_1253 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0IF",r10
!   if retval == 8 then goto _Label_1255		(int)
	load	[r14+-228],r1
	mov	8,r2
	cmp	r1,r2
	be	_Label_1255
!	_Label_1254	jmp	_Label_1254
_Label_1254:
! THEN...
	mov	711,r13		! source line 711
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1256 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1255:
! CALL STATEMENT...
!   _temp_1257 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0AS",r10
!   _temp_1259 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-44]
!   Move address of _temp_1259 [0 ] into _temp_1260
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1258 = _temp_1260		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1258  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! CALL STATEMENT...
!   _temp_1261 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1262 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1263 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1264 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_1266		(int)
	load	[r14+-224],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_1266
!	_Label_1265	jmp	_Label_1265
_Label_1265:
! THEN...
	mov	721,r13		! source line 721
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1267 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1268 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1266:
! CALL STATEMENT...
!   _temp_1269 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_640_SeekTest:
	.word	_sourceFileName
	.word	_Label_1270
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_1271
	.word	-12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	_Label_1273
	.word	-20
	.word	4
	.word	_Label_1274
	.word	-24
	.word	4
	.word	_Label_1275
	.word	-28
	.word	4
	.word	_Label_1276
	.word	-32
	.word	4
	.word	_Label_1277
	.word	-36
	.word	4
	.word	_Label_1278
	.word	-40
	.word	4
	.word	_Label_1279
	.word	-44
	.word	4
	.word	_Label_1280
	.word	-48
	.word	4
	.word	_Label_1281
	.word	-52
	.word	4
	.word	_Label_1282
	.word	-56
	.word	4
	.word	_Label_1283
	.word	-60
	.word	4
	.word	_Label_1284
	.word	-64
	.word	4
	.word	_Label_1285
	.word	-68
	.word	4
	.word	_Label_1286
	.word	-72
	.word	4
	.word	_Label_1287
	.word	-76
	.word	4
	.word	_Label_1288
	.word	-80
	.word	4
	.word	_Label_1289
	.word	-84
	.word	4
	.word	_Label_1290
	.word	-88
	.word	4
	.word	_Label_1291
	.word	-92
	.word	4
	.word	_Label_1292
	.word	-96
	.word	4
	.word	_Label_1293
	.word	-100
	.word	4
	.word	_Label_1294
	.word	-104
	.word	4
	.word	_Label_1295
	.word	-108
	.word	4
	.word	_Label_1296
	.word	-112
	.word	4
	.word	_Label_1297
	.word	-116
	.word	4
	.word	_Label_1298
	.word	-120
	.word	4
	.word	_Label_1299
	.word	-124
	.word	4
	.word	_Label_1300
	.word	-128
	.word	4
	.word	_Label_1301
	.word	-132
	.word	4
	.word	_Label_1302
	.word	-136
	.word	4
	.word	_Label_1303
	.word	-140
	.word	4
	.word	_Label_1304
	.word	-144
	.word	4
	.word	_Label_1305
	.word	-148
	.word	4
	.word	_Label_1306
	.word	-152
	.word	4
	.word	_Label_1307
	.word	-156
	.word	4
	.word	_Label_1308
	.word	-160
	.word	4
	.word	_Label_1309
	.word	-164
	.word	4
	.word	_Label_1310
	.word	-168
	.word	4
	.word	_Label_1311
	.word	-172
	.word	4
	.word	_Label_1312
	.word	-176
	.word	4
	.word	_Label_1313
	.word	-180
	.word	4
	.word	_Label_1314
	.word	-184
	.word	4
	.word	_Label_1315
	.word	-188
	.word	4
	.word	_Label_1316
	.word	-192
	.word	4
	.word	_Label_1317
	.word	-196
	.word	4
	.word	_Label_1318
	.word	-200
	.word	4
	.word	_Label_1319
	.word	-204
	.word	4
	.word	_Label_1320
	.word	-208
	.word	4
	.word	_Label_1321
	.word	-212
	.word	4
	.word	_Label_1322
	.word	-216
	.word	4
	.word	_Label_1323
	.word	-220
	.word	4
	.word	_Label_1324
	.word	-224
	.word	4
	.word	_Label_1325
	.word	-228
	.word	4
	.word	0
_Label_1270:
	.ascii	"SeekTest\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1324:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"retval\0"
	.align
! 
! ===============  FUNCTION WriteTest1  ===============
! 
_function_639_WriteTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_639_WriteTest1,r1
	push	r1
	mov	56,r1
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	736,r13		! source line 736
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1326 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   _temp_1327 = &_Global_buffer3
	set	_Global_buffer3,r1
	store	r1,[r14+-204]
!   _temp_1328 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1328) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   make sure array has size 20
	load	[r14+-204],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3240
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3240:
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1327 = *_temp_1328  (sizeInBytes=24)
	load	[r14+-200],r5
	load	[r14+-204],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   _temp_1329 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   _temp_1331 = &_Global_buffer3
	set	_Global_buffer3,r1
	store	r1,[r14+-188]
!   Move address of _temp_1331 [0 ] into _temp_1332
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-184]
!   _temp_1330 = _temp_1332		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1330  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1334		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1334
!	_Label_1333	jmp	_Label_1333
_Label_1333:
! THEN...
	mov	748,r13		! source line 748
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1335 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1335  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1336 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1334:
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_1338
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_1338
!	_Label_1337	jmp	_Label_1337
_Label_1337:
! THEN...
	mov	756,r13		! source line 756
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1339 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1339  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1340 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1338:
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   _temp_1342 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-160]
!   Move address of _temp_1342 [0 ] into _temp_1343
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_1341 = _temp_1343		(4 bytes)
	load	[r14+-156],r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1341  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1345		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1345
!	_Label_1344	jmp	_Label_1344
_Label_1344:
! THEN...
	mov	762,r13		! source line 762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1346 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1347 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1345:
! CALL STATEMENT...
!   _temp_1348 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1349 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1350 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1350  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1351 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1351  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1352 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1352  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+12]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! ASSIGNMENT STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0AS",r10
!   _temp_1353 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-124]
!   _temp_1354 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1354) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   make sure array has size 20
	load	[r14+-124],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3241
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3241:
!   make sure array has size 20
	load	[r14+-120],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1353 = *_temp_1354  (sizeInBytes=24)
	load	[r14+-120],r5
	load	[r14+-124],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+4]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0IF",r10
!   if i == 13 then goto _Label_1356		(int)
	load	[r14+-216],r1
	mov	13,r2
	cmp	r1,r2
	be	_Label_1356
!	_Label_1355	jmp	_Label_1355
_Label_1355:
! THEN...
	mov	779,r13		! source line 779
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1357 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1357  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1358 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1358  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1356:
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   _temp_1360 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-104]
!   Move address of _temp_1360 [0 ] into _temp_1361
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_1359 = _temp_1361		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1359  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1363		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1363
!	_Label_1362	jmp	_Label_1362
_Label_1362:
! THEN...
	mov	785,r13		! source line 785
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1364 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1365 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1365  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1363:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1367		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1367
!	_Label_1366	jmp	_Label_1366
_Label_1366:
! THEN...
	mov	793,r13		! source line 793
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1368 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1368  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1369 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1369  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1367:
! ASSIGNMENT STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0AS",r10
!   _temp_1371 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1371 [10 ] into _temp_1372
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_1370 = _temp_1372		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1374		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1374
!	_Label_1373	jmp	_Label_1373
_Label_1373:
! THEN...
	mov	799,r13		! source line 799
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1375 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1375  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1376 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1376  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1374:
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_1378
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_1378
!	_Label_1377	jmp	_Label_1377
_Label_1377:
! THEN...
	mov	807,r13		! source line 807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1379 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1380 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1378:
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   _temp_1382 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-48]
!   Move address of _temp_1382 [0 ] into _temp_1383
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_1381 = _temp_1383		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1381  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1385		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1385
!	_Label_1384	jmp	_Label_1384
_Label_1384:
! THEN...
	mov	813,r13		! source line 813
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1386 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1387 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1387  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1385:
! CALL STATEMENT...
!   _temp_1388 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1389 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1390 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1391 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1392 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1392  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1393 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	add	r15,228,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_639_WriteTest1:
	.word	_sourceFileName
	.word	_Label_1394
	.word	0		! total size of parameters
	.word	224		! frame size = 224
	.word	_Label_1395
	.word	-12
	.word	4
	.word	_Label_1396
	.word	-16
	.word	4
	.word	_Label_1397
	.word	-20
	.word	4
	.word	_Label_1398
	.word	-24
	.word	4
	.word	_Label_1399
	.word	-28
	.word	4
	.word	_Label_1400
	.word	-32
	.word	4
	.word	_Label_1401
	.word	-36
	.word	4
	.word	_Label_1402
	.word	-40
	.word	4
	.word	_Label_1403
	.word	-44
	.word	4
	.word	_Label_1404
	.word	-48
	.word	4
	.word	_Label_1405
	.word	-52
	.word	4
	.word	_Label_1406
	.word	-56
	.word	4
	.word	_Label_1407
	.word	-60
	.word	4
	.word	_Label_1408
	.word	-64
	.word	4
	.word	_Label_1409
	.word	-68
	.word	4
	.word	_Label_1410
	.word	-72
	.word	4
	.word	_Label_1411
	.word	-76
	.word	4
	.word	_Label_1412
	.word	-80
	.word	4
	.word	_Label_1413
	.word	-84
	.word	4
	.word	_Label_1414
	.word	-88
	.word	4
	.word	_Label_1415
	.word	-92
	.word	4
	.word	_Label_1416
	.word	-96
	.word	4
	.word	_Label_1417
	.word	-100
	.word	4
	.word	_Label_1418
	.word	-104
	.word	4
	.word	_Label_1419
	.word	-108
	.word	4
	.word	_Label_1420
	.word	-112
	.word	4
	.word	_Label_1421
	.word	-116
	.word	4
	.word	_Label_1422
	.word	-120
	.word	4
	.word	_Label_1423
	.word	-124
	.word	4
	.word	_Label_1424
	.word	-128
	.word	4
	.word	_Label_1425
	.word	-132
	.word	4
	.word	_Label_1426
	.word	-136
	.word	4
	.word	_Label_1427
	.word	-140
	.word	4
	.word	_Label_1428
	.word	-144
	.word	4
	.word	_Label_1429
	.word	-148
	.word	4
	.word	_Label_1430
	.word	-152
	.word	4
	.word	_Label_1431
	.word	-156
	.word	4
	.word	_Label_1432
	.word	-160
	.word	4
	.word	_Label_1433
	.word	-164
	.word	4
	.word	_Label_1434
	.word	-168
	.word	4
	.word	_Label_1435
	.word	-172
	.word	4
	.word	_Label_1436
	.word	-176
	.word	4
	.word	_Label_1437
	.word	-180
	.word	4
	.word	_Label_1438
	.word	-184
	.word	4
	.word	_Label_1439
	.word	-188
	.word	4
	.word	_Label_1440
	.word	-192
	.word	4
	.word	_Label_1441
	.word	-196
	.word	4
	.word	_Label_1442
	.word	-200
	.word	4
	.word	_Label_1443
	.word	-204
	.word	4
	.word	_Label_1444
	.word	-208
	.word	4
	.word	_Label_1445
	.word	-212
	.word	4
	.word	_Label_1446
	.word	-216
	.word	4
	.word	0
_Label_1394:
	.ascii	"WriteTest1\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1446:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest2  ===============
! 
_function_638_WriteTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_638_WriteTest2,r1
	push	r1
	mov	84,r1
_Label_3242:
	push	r0
	sub	r1,1,r1
	bne	_Label_3242
	mov	831,r13		! source line 831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1447 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1448 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-320]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-320],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0AS",r10
!   _temp_1450 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-312]
!   Move address of _temp_1450 [0 ] into _temp_1451
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-312],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-308]
!   _temp_1449 = _temp_1451		(4 bytes)
	load	[r14+-308],r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1449  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1453		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1453
!	_Label_1452	jmp	_Label_1452
_Label_1452:
! THEN...
	mov	843,r13		! source line 843
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1454 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_1454  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0AS",r10
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1455 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_1455  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1456
_Label_1453:
! ELSE...
	mov	847,r13		! source line 847
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1457 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1458 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1456:
! ASSIGNMENT STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0AS",r10
!   _temp_1460 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-284]
!   Move address of _temp_1460 [0 ] into _temp_1461
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-284],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-280]
!   _temp_1459 = _temp_1461		(4 bytes)
	load	[r14+-280],r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1459  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1463		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1463
!	_Label_1462	jmp	_Label_1462
_Label_1462:
! THEN...
	mov	854,r13		! source line 854
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1464 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0AS",r10
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1465 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1466
_Label_1463:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1467 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1468 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1466:
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   _temp_1470 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-256]
!   Move address of _temp_1470 [0 ] into _temp_1471
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-256],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-252]
!   _temp_1469 = _temp_1471		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1469  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1473		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1473
!	_Label_1472	jmp	_Label_1472
_Label_1472:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1474 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1475 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1476
_Label_1473:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1477 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1478 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1476:
! CALL STATEMENT...
!   _temp_1479 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	876,r13		! source line 876
	mov	"\0\0AS",r10
!   _temp_1481 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-224]
!   Move address of _temp_1481 [0 ] into _temp_1482
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-220]
!   _temp_1480 = _temp_1482		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1480  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1484		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1484
!	_Label_1483	jmp	_Label_1483
_Label_1483:
! THEN...
	mov	878,r13		! source line 878
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1485 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1486 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1487
_Label_1484:
! ELSE...
	mov	882,r13		! source line 882
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1488 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1489 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1487:
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   _temp_1491 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-196]
!   Move address of _temp_1491 [0 ] into _temp_1492
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   _temp_1490 = _temp_1492		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1490  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1494		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1494
!	_Label_1493	jmp	_Label_1493
_Label_1493:
! THEN...
	mov	889,r13		! source line 889
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1495 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1496 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1497
_Label_1494:
! ELSE...
	mov	893,r13		! source line 893
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1499 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1497:
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1501 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-168]
!   Move address of _temp_1501 [0 ] into _temp_1502
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   _temp_1500 = _temp_1502		(4 bytes)
	load	[r14+-164],r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1504		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1504
!	_Label_1503	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	900,r13		! source line 900
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1506 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1507
_Label_1504:
! ELSE...
	mov	904,r13		! source line 904
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1509 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1507:
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
!   _temp_1510 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! CALL STATEMENT...
!   _temp_1511 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   _temp_1513 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-132]
!   Move address of _temp_1513 [0 ] into _temp_1514
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   _temp_1512 = _temp_1514		(4 bytes)
	load	[r14+-128],r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1512  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1516		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1516
!	_Label_1515	jmp	_Label_1515
_Label_1515:
! THEN...
	mov	915,r13		! source line 915
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1517 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1518 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1519
_Label_1516:
! ELSE...
	mov	919,r13		! source line 919
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1521 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1519:
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
!   _temp_1523 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-104]
!   Move address of _temp_1523 [0 ] into _temp_1524
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_1522 = _temp_1524		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1522  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1526		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1526
!	_Label_1525	jmp	_Label_1525
_Label_1525:
! THEN...
	mov	926,r13		! source line 926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1527 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1528 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1529
_Label_1526:
! ELSE...
	mov	930,r13		! source line 930
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1530 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1530  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1531 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1529:
! CALL STATEMENT...
!   _temp_1532 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1532  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0IF",r10
!   if i != 21 then goto _Label_1534		(int)
	load	[r14+-332],r1
	mov	21,r2
	cmp	r1,r2
	bne	_Label_1534
!	_Label_1533	jmp	_Label_1533
_Label_1533:
! THEN...
	mov	939,r13		! source line 939
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1535 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1536
_Label_1534:
! ELSE...
	mov	941,r13		! source line 941
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1537 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1537  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1538 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1538  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1536:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   _temp_1539 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! CALL STATEMENT...
!   _temp_1540 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1540  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   _temp_1542 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-52]
!   Move address of _temp_1542 [0 ] into _temp_1543
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1541 = _temp_1543		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1541  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1545		(int)
	load	[r14+-332],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1545
!	_Label_1544	jmp	_Label_1544
_Label_1544:
! THEN...
	mov	953,r13		! source line 953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1546 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! CALL STATEMENT...
!   _temp_1547 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_1548
_Label_1545:
! ELSE...
	mov	957,r13		! source line 957
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1549 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1550 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1548:
! CALL STATEMENT...
!   _temp_1551 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	962,r13		! source line 962
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	964,r13		! source line 964
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   if i != 21 then goto _Label_1553		(int)
	load	[r14+-332],r1
	mov	21,r2
	cmp	r1,r2
	bne	_Label_1553
!	_Label_1552	jmp	_Label_1552
_Label_1552:
! THEN...
	mov	966,r13		! source line 966
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1554 = _StringConst_239
	set	_StringConst_239,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1555
_Label_1553:
! ELSE...
	mov	968,r13		! source line 968
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1556 = _StringConst_240
	set	_StringConst_240,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1557 = _StringConst_241
	set	_StringConst_241,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	970,r13		! source line 970
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1555:
! CALL STATEMENT...
!   _temp_1558 = _StringConst_242
	set	_StringConst_242,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0RE",r10
	add	r15,340,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_638_WriteTest2:
	.word	_sourceFileName
	.word	_Label_1559
	.word	0		! total size of parameters
	.word	336		! frame size = 336
	.word	_Label_1560
	.word	-12
	.word	4
	.word	_Label_1561
	.word	-16
	.word	4
	.word	_Label_1562
	.word	-20
	.word	4
	.word	_Label_1563
	.word	-24
	.word	4
	.word	_Label_1564
	.word	-28
	.word	4
	.word	_Label_1565
	.word	-32
	.word	4
	.word	_Label_1566
	.word	-36
	.word	4
	.word	_Label_1567
	.word	-40
	.word	4
	.word	_Label_1568
	.word	-44
	.word	4
	.word	_Label_1569
	.word	-48
	.word	4
	.word	_Label_1570
	.word	-52
	.word	4
	.word	_Label_1571
	.word	-56
	.word	4
	.word	_Label_1572
	.word	-60
	.word	4
	.word	_Label_1573
	.word	-64
	.word	4
	.word	_Label_1574
	.word	-68
	.word	4
	.word	_Label_1575
	.word	-72
	.word	4
	.word	_Label_1576
	.word	-76
	.word	4
	.word	_Label_1577
	.word	-80
	.word	4
	.word	_Label_1578
	.word	-84
	.word	4
	.word	_Label_1579
	.word	-88
	.word	4
	.word	_Label_1580
	.word	-92
	.word	4
	.word	_Label_1581
	.word	-96
	.word	4
	.word	_Label_1582
	.word	-100
	.word	4
	.word	_Label_1583
	.word	-104
	.word	4
	.word	_Label_1584
	.word	-108
	.word	4
	.word	_Label_1585
	.word	-112
	.word	4
	.word	_Label_1586
	.word	-116
	.word	4
	.word	_Label_1587
	.word	-120
	.word	4
	.word	_Label_1588
	.word	-124
	.word	4
	.word	_Label_1589
	.word	-128
	.word	4
	.word	_Label_1590
	.word	-132
	.word	4
	.word	_Label_1591
	.word	-136
	.word	4
	.word	_Label_1592
	.word	-140
	.word	4
	.word	_Label_1593
	.word	-144
	.word	4
	.word	_Label_1594
	.word	-148
	.word	4
	.word	_Label_1595
	.word	-152
	.word	4
	.word	_Label_1596
	.word	-156
	.word	4
	.word	_Label_1597
	.word	-160
	.word	4
	.word	_Label_1598
	.word	-164
	.word	4
	.word	_Label_1599
	.word	-168
	.word	4
	.word	_Label_1600
	.word	-172
	.word	4
	.word	_Label_1601
	.word	-176
	.word	4
	.word	_Label_1602
	.word	-180
	.word	4
	.word	_Label_1603
	.word	-184
	.word	4
	.word	_Label_1604
	.word	-188
	.word	4
	.word	_Label_1605
	.word	-192
	.word	4
	.word	_Label_1606
	.word	-196
	.word	4
	.word	_Label_1607
	.word	-200
	.word	4
	.word	_Label_1608
	.word	-204
	.word	4
	.word	_Label_1609
	.word	-208
	.word	4
	.word	_Label_1610
	.word	-212
	.word	4
	.word	_Label_1611
	.word	-216
	.word	4
	.word	_Label_1612
	.word	-220
	.word	4
	.word	_Label_1613
	.word	-224
	.word	4
	.word	_Label_1614
	.word	-228
	.word	4
	.word	_Label_1615
	.word	-232
	.word	4
	.word	_Label_1616
	.word	-236
	.word	4
	.word	_Label_1617
	.word	-240
	.word	4
	.word	_Label_1618
	.word	-244
	.word	4
	.word	_Label_1619
	.word	-248
	.word	4
	.word	_Label_1620
	.word	-252
	.word	4
	.word	_Label_1621
	.word	-256
	.word	4
	.word	_Label_1622
	.word	-260
	.word	4
	.word	_Label_1623
	.word	-264
	.word	4
	.word	_Label_1624
	.word	-268
	.word	4
	.word	_Label_1625
	.word	-272
	.word	4
	.word	_Label_1626
	.word	-276
	.word	4
	.word	_Label_1627
	.word	-280
	.word	4
	.word	_Label_1628
	.word	-284
	.word	4
	.word	_Label_1629
	.word	-288
	.word	4
	.word	_Label_1630
	.word	-292
	.word	4
	.word	_Label_1631
	.word	-296
	.word	4
	.word	_Label_1632
	.word	-300
	.word	4
	.word	_Label_1633
	.word	-304
	.word	4
	.word	_Label_1634
	.word	-308
	.word	4
	.word	_Label_1635
	.word	-312
	.word	4
	.word	_Label_1636
	.word	-316
	.word	4
	.word	_Label_1637
	.word	-320
	.word	4
	.word	_Label_1638
	.word	-324
	.word	4
	.word	_Label_1639
	.word	-328
	.word	4
	.word	_Label_1640
	.word	-332
	.word	4
	.word	0
_Label_1559:
	.ascii	"WriteTest2\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1639:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest3  ===============
! 
_function_637_WriteTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_637_WriteTest3,r1
	push	r1
	mov	24,r1
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
	mov	980,r13		! source line 980
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1641 = _StringConst_243
	set	_StringConst_243,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   _temp_1642 = _StringConst_244
	set	_StringConst_244,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   _temp_1643 = _StringConst_245
	set	_StringConst_245,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1643  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1644 = _StringConst_246
	set	_StringConst_246,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1644  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1645 = _StringConst_247
	set	_StringConst_247,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1645  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	995,r13		! source line 995
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1646 = _StringConst_248
	set	_StringConst_248,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1646  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1647 = _StringConst_249
	set	_StringConst_249,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1647  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1648 = _StringConst_250
	set	_StringConst_250,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1648  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1649 = _StringConst_251
	set	_StringConst_251,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1649  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1650 = _StringConst_252
	set	_StringConst_252,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1650  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1651 = _StringConst_253
	set	_StringConst_253,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1651  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1652 = _StringConst_254
	set	_StringConst_254,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1652  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Call the function
	mov	1004,r13		! source line 1004
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1653 = _StringConst_255
	set	_StringConst_255,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1653  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	1005,r13		! source line 1005
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1654 = _StringConst_256
	set	_StringConst_256,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1654  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+12]
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1655 = _StringConst_257
	set	_StringConst_257,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1655  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1656 = _StringConst_258
	set	_StringConst_258,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1656  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+12]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1657 = _StringConst_259
	set	_StringConst_259,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1657  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1658 = _StringConst_260
	set	_StringConst_260,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1658  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1659 = _StringConst_261
	set	_StringConst_261,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_637_WriteTest3:
	.word	_sourceFileName
	.word	_Label_1660
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1661
	.word	-12
	.word	4
	.word	_Label_1662
	.word	-16
	.word	4
	.word	_Label_1663
	.word	-20
	.word	4
	.word	_Label_1664
	.word	-24
	.word	4
	.word	_Label_1665
	.word	-28
	.word	4
	.word	_Label_1666
	.word	-32
	.word	4
	.word	_Label_1667
	.word	-36
	.word	4
	.word	_Label_1668
	.word	-40
	.word	4
	.word	_Label_1669
	.word	-44
	.word	4
	.word	_Label_1670
	.word	-48
	.word	4
	.word	_Label_1671
	.word	-52
	.word	4
	.word	_Label_1672
	.word	-56
	.word	4
	.word	_Label_1673
	.word	-60
	.word	4
	.word	_Label_1674
	.word	-64
	.word	4
	.word	_Label_1675
	.word	-68
	.word	4
	.word	_Label_1676
	.word	-72
	.word	4
	.word	_Label_1677
	.word	-76
	.word	4
	.word	_Label_1678
	.word	-80
	.word	4
	.word	_Label_1679
	.word	-84
	.word	4
	.word	_Label_1680
	.word	-88
	.word	4
	.word	0
_Label_1660:
	.ascii	"WriteTest3\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION DoWrite  ===============
! 
_function_636_DoWrite:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_636_DoWrite,r1
	push	r1
	mov	16,r1
_Label_3244:
	push	r0
	sub	r1,1,r1
	bne	_Label_3244
	mov	1019,r13		! source line 1019
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1681 else goto _Label_1682
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1682
	jmp	_Label_1681
_Label_1681:
! THEN...
	mov	1027,r13		! source line 1027
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1683 = _StringConst_262
	set	_StringConst_262,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1684 = _StringConst_263
	set	_StringConst_263,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1685 = _StringConst_264
	set	_StringConst_264,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1682:
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0IF",r10
!   if i == positionInFile then goto _Label_1687		(int)
	load	[r14+-60],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1687
!	_Label_1686	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	1035,r13		! source line 1035
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1688 = _StringConst_265
	set	_StringConst_265,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1689 = _StringConst_266
	set	_StringConst_266,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1687:
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1691
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1690 = _temp_1691		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-36]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1692 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1690  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1692  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1695 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if i != _temp_1695 then goto _Label_1694		(int)
	load	[r14+-60],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bne	_Label_1694
!	_Label_1693	jmp	_Label_1693
_Label_1693:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1696 else goto _Label_1697
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1697
	jmp	_Label_1696
_Label_1696:
! THEN...
	mov	1042,r13		! source line 1042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1698 = _StringConst_267
	set	_StringConst_267,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1042,r13		! source line 1042
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1697:
	jmp	_Label_1699
_Label_1694:
! ELSE...
	mov	1045,r13		! source line 1045
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_268
	set	_StringConst_268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1701 = _StringConst_269
	set	_StringConst_269,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1701  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1699:
! RETURN STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_636_DoWrite:
	.word	_sourceFileName
	.word	_Label_1702
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1703
	.word	8
	.word	4
	.word	_Label_1704
	.word	12
	.word	1
	.word	_Label_1705
	.word	16
	.word	4
	.word	_Label_1706
	.word	20
	.word	4
	.word	_Label_1707
	.word	-12
	.word	4
	.word	_Label_1708
	.word	-16
	.word	4
	.word	_Label_1709
	.word	-20
	.word	4
	.word	_Label_1710
	.word	-24
	.word	4
	.word	_Label_1711
	.word	-28
	.word	4
	.word	_Label_1712
	.word	-32
	.word	4
	.word	_Label_1713
	.word	-36
	.word	4
	.word	_Label_1714
	.word	-40
	.word	4
	.word	_Label_1715
	.word	-44
	.word	4
	.word	_Label_1716
	.word	-48
	.word	4
	.word	_Label_1717
	.word	-52
	.word	4
	.word	_Label_1718
	.word	-56
	.word	4
	.word	_Label_1719
	.word	-60
	.word	4
	.word	0
_Label_1702:
	.ascii	"DoWrite\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1704:
	.byte	'B'
	.ascii	"wantPrinting\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"positionInFile\0"
	.align
_Label_1706:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1719:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION CheckFile  ===============
! 
_function_635_CheckFile:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_635_CheckFile,r1
	push	r1
	mov	35,r1
_Label_3245:
	push	r0
	sub	r1,1,r1
	bne	_Label_3245
	mov	1055,r13		! source line 1055
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0IF",r10
!   _temp_1723 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1722 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1724 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_1722 >= _temp_1724 then goto _Label_1721		(int)
	load	[r14+-132],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1721
!	_Label_1720	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1065,r13		! source line 1065
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1725 = _StringConst_270
	set	_StringConst_270,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1721:
! IF STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1726 else goto _Label_1727
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1727
	jmp	_Label_1726
_Label_1726:
! THEN...
	mov	1068,r13		! source line 1068
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1728 = _StringConst_271
	set	_StringConst_271,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1729 = _StringConst_272
	set	_StringConst_272,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1730 = _StringConst_273
	set	_StringConst_273,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1072,r13		! source line 1072
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1727:
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0IF",r10
!   if i == positionInFile then goto _Label_1732		(int)
	load	[r14+-136],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1732
!	_Label_1731	jmp	_Label_1731
_Label_1731:
! THEN...
	mov	1076,r13		! source line 1076
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1733 = _StringConst_274
	set	_StringConst_274,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1734 = _StringConst_275
	set	_StringConst_275,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1732:
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   _temp_1736 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-92]
!   Move address of _temp_1736 [0 ] into _temp_1737
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   _temp_1735 = _temp_1737		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-96]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1738 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1735  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1738  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1741 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if i == _temp_1741 then goto _Label_1740		(int)
	load	[r14+-136],r1
	load	[r14+-80],r2
	cmp	r1,r2
	be	_Label_1740
!	_Label_1739	jmp	_Label_1739
_Label_1739:
! THEN...
	mov	1082,r13		! source line 1082
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1742 = _StringConst_276
	set	_StringConst_276,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1082,r13		! source line 1082
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1743 = _StringConst_277
	set	_StringConst_277,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1743  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1740:
! IF STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0IF",r10
!   _temp_1747 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-64]
!   Move address of _temp_1747 [0 ] into _temp_1748
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_1746 = _temp_1748		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1750
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1749 = _temp_1750		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1751 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1749  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1751  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   if result==true then goto _Label_1744 else goto _Label_1745
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1745
	jmp	_Label_1744
_Label_1744:
! THEN...
	mov	1087,r13		! source line 1087
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1752 else goto _Label_1753
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1753
	jmp	_Label_1752
_Label_1752:
! THEN...
	mov	1088,r13		! source line 1088
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1754 = _StringConst_278
	set	_StringConst_278,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1088,r13		! source line 1088
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1753:
	jmp	_Label_1755
_Label_1745:
! ELSE...
	mov	1091,r13		! source line 1091
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1756 = _StringConst_279
	set	_StringConst_279,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1761 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1763 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1762 = _temp_1763 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1761  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-136]
_Label_1757:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1762 then goto _Label_1760		
	load	[r14+-136],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1760
_Label_1758:
	mov	1092,r13		! source line 1092
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1765 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-24]
!   Move address of _temp_1765 [i ] into _temp_1766
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_1764 = *_temp_1766  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_1764  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1093,r13		! source line 1093
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_1759:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_1757
! END FOR
_Label_1760:
! CALL STATEMENT...
!   _temp_1767 = _StringConst_280
	set	_StringConst_280,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1095,r13		! source line 1095
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1755:
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_635_CheckFile:
	.word	_sourceFileName
	.word	_Label_1768
	.word	16		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_1769
	.word	8
	.word	4
	.word	_Label_1770
	.word	12
	.word	1
	.word	_Label_1771
	.word	16
	.word	4
	.word	_Label_1772
	.word	20
	.word	4
	.word	_Label_1773
	.word	-16
	.word	4
	.word	_Label_1774
	.word	-20
	.word	4
	.word	_Label_1775
	.word	-24
	.word	4
	.word	_Label_1776
	.word	-9
	.word	1
	.word	_Label_1777
	.word	-28
	.word	4
	.word	_Label_1778
	.word	-32
	.word	4
	.word	_Label_1779
	.word	-36
	.word	4
	.word	_Label_1780
	.word	-40
	.word	4
	.word	_Label_1781
	.word	-44
	.word	4
	.word	_Label_1782
	.word	-48
	.word	4
	.word	_Label_1783
	.word	-52
	.word	4
	.word	_Label_1784
	.word	-56
	.word	4
	.word	_Label_1785
	.word	-60
	.word	4
	.word	_Label_1786
	.word	-64
	.word	4
	.word	_Label_1787
	.word	-68
	.word	4
	.word	_Label_1788
	.word	-72
	.word	4
	.word	_Label_1789
	.word	-76
	.word	4
	.word	_Label_1790
	.word	-80
	.word	4
	.word	_Label_1791
	.word	-84
	.word	4
	.word	_Label_1792
	.word	-88
	.word	4
	.word	_Label_1793
	.word	-92
	.word	4
	.word	_Label_1794
	.word	-96
	.word	4
	.word	_Label_1795
	.word	-100
	.word	4
	.word	_Label_1796
	.word	-104
	.word	4
	.word	_Label_1797
	.word	-108
	.word	4
	.word	_Label_1798
	.word	-112
	.word	4
	.word	_Label_1799
	.word	-116
	.word	4
	.word	_Label_1800
	.word	-120
	.word	4
	.word	_Label_1801
	.word	-124
	.word	4
	.word	_Label_1802
	.word	-128
	.word	4
	.word	_Label_1803
	.word	-132
	.word	4
	.word	_Label_1804
	.word	-136
	.word	4
	.word	0
_Label_1768:
	.ascii	"CheckFile\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1770:
	.byte	'B'
	.ascii	"wantPrinting\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"positionInFile\0"
	.align
_Label_1772:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1776:
	.byte	'C'
	.ascii	"_temp_1764\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1804:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION CheckFile2  ===============
! 
_function_634_CheckFile2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_634_CheckFile2,r1
	push	r1
	mov	18,r1
_Label_3246:
	push	r0
	sub	r1,1,r1
	bne	_Label_3246
	mov	1100,r13		! source line 1100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=positionInFile  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1102,r13		! source line 1102
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0IF",r10
!   if i == positionInFile then goto _Label_1806		(int)
	load	[r14+-68],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_1806
!	_Label_1805	jmp	_Label_1805
_Label_1805:
! THEN...
	mov	1104,r13		! source line 1104
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1807 = _StringConst_281
	set	_StringConst_281,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1808 = _StringConst_282
	set	_StringConst_282,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1806:
! ASSIGNMENT STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0AS",r10
!   _temp_1810 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-52]
!   Move address of _temp_1810 [0 ] into _temp_1811
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1809 = _temp_1811		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1809  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=size  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0IF",r10
!   if i == size then goto _Label_1813		(int)
	load	[r14+-68],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1813
!	_Label_1812	jmp	_Label_1812
_Label_1812:
! THEN...
	mov	1110,r13		! source line 1110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1814 = _StringConst_283
	set	_StringConst_283,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1815 = _StringConst_284
	set	_StringConst_284,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1813:
! IF STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0IF",r10
!   _temp_1819 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-32]
!   Move address of _temp_1819 [0 ] into _temp_1820
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1818 = _temp_1820		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1822
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   _temp_1821 = _temp_1822		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1821  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=size  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   if result==true then goto _Label_1816 else goto _Label_1817
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1817
	jmp	_Label_1816
_Label_1816:
! THEN...
	mov	1115,r13		! source line 1115
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1823 = _StringConst_285
	set	_StringConst_285,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1823  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1824
_Label_1817:
! ELSE...
	mov	1117,r13		! source line 1117
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1825 = _StringConst_286
	set	_StringConst_286,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1824:
! RETURN STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_634_CheckFile2:
	.word	_sourceFileName
	.word	_Label_1826
	.word	16		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1827
	.word	8
	.word	4
	.word	_Label_1828
	.word	12
	.word	4
	.word	_Label_1829
	.word	16
	.word	4
	.word	_Label_1830
	.word	20
	.word	4
	.word	_Label_1831
	.word	-12
	.word	4
	.word	_Label_1832
	.word	-16
	.word	4
	.word	_Label_1833
	.word	-20
	.word	4
	.word	_Label_1834
	.word	-24
	.word	4
	.word	_Label_1835
	.word	-28
	.word	4
	.word	_Label_1836
	.word	-32
	.word	4
	.word	_Label_1837
	.word	-36
	.word	4
	.word	_Label_1838
	.word	-40
	.word	4
	.word	_Label_1839
	.word	-44
	.word	4
	.word	_Label_1840
	.word	-48
	.word	4
	.word	_Label_1841
	.word	-52
	.word	4
	.word	_Label_1842
	.word	-56
	.word	4
	.word	_Label_1843
	.word	-60
	.word	4
	.word	_Label_1844
	.word	-64
	.word	4
	.word	_Label_1845
	.word	-68
	.word	4
	.word	0
_Label_1826:
	.ascii	"CheckFile2\0"
	.align
_Label_1827:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"positionInFile\0"
	.align
_Label_1829:
	.byte	'I'
	.ascii	"size\0"
	.align
_Label_1830:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1845:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest4  ===============
! 
_function_633_WriteTest4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_633_WriteTest4,r1
	push	r1
	mov	19,r1
_Label_3247:
	push	r0
	sub	r1,1,r1
	bne	_Label_3247
	mov	1123,r13		! source line 1123
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1846 = _StringConst_287
	set	_StringConst_287,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   _temp_1847 = _StringConst_288
	set	_StringConst_288,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1847  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1848 = _StringConst_289
	set	_StringConst_289,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1848  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1849 = _StringConst_290
	set	_StringConst_290,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1849  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! ASSIGNMENT STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	1142,r13		! source line 1142
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1850
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1850
	jmp	_Label_1851
_Label_1850:
! THEN...
	mov	1147,r13		! source line 1147
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1852 = _StringConst_291
	set	_StringConst_291,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1852  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1853
_Label_1851:
! ELSE...
	mov	1150,r13		! source line 1150
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1853:
! CALL STATEMENT...
!   _temp_1854 = _StringConst_292
	set	_StringConst_292,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1854  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Call the function
	mov	1153,r13		! source line 1153
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1855
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1855
	jmp	_Label_1856
_Label_1855:
! THEN...
	mov	1158,r13		! source line 1158
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1857 = _StringConst_293
	set	_StringConst_293,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1857  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1858
_Label_1856:
! ELSE...
	mov	1161,r13		! source line 1161
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1858:
! CALL STATEMENT...
!   _temp_1859 = _StringConst_294
	set	_StringConst_294,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1859  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1860
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1860
	jmp	_Label_1861
_Label_1860:
! THEN...
	mov	1169,r13		! source line 1169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1862 = _StringConst_295
	set	_StringConst_295,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1862  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1863
_Label_1861:
! ELSE...
	mov	1172,r13		! source line 1172
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1863:
! CALL STATEMENT...
!   _temp_1864 = _StringConst_296
	set	_StringConst_296,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1864  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CA",r10
	call	_function_632_DoWrite2
! CALL STATEMENT...
!   _temp_1865 = _StringConst_297
	set	_StringConst_297,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1865  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1866 = _StringConst_298
	set	_StringConst_298,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_633_WriteTest4:
	.word	_sourceFileName
	.word	_Label_1867
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1868
	.word	-12
	.word	4
	.word	_Label_1869
	.word	-16
	.word	4
	.word	_Label_1870
	.word	-20
	.word	4
	.word	_Label_1871
	.word	-24
	.word	4
	.word	_Label_1872
	.word	-28
	.word	4
	.word	_Label_1873
	.word	-32
	.word	4
	.word	_Label_1874
	.word	-36
	.word	4
	.word	_Label_1875
	.word	-40
	.word	4
	.word	_Label_1876
	.word	-44
	.word	4
	.word	_Label_1877
	.word	-48
	.word	4
	.word	_Label_1878
	.word	-52
	.word	4
	.word	_Label_1879
	.word	-56
	.word	4
	.word	_Label_1880
	.word	-60
	.word	4
	.word	_Label_1881
	.word	-64
	.word	4
	.word	_Label_1882
	.word	-68
	.word	4
	.word	0
_Label_1867:
	.ascii	"WriteTest4\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1882:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION DoWrite2  ===============
! 
_function_632_DoWrite2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_632_DoWrite2,r1
	push	r1
	mov	13,r1
_Label_3248:
	push	r0
	sub	r1,1,r1
	bne	_Label_3248
	mov	1186,r13		! source line 1186
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1883 = _StringConst_299
	set	_StringConst_299,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1884 = _StringConst_300
	set	_StringConst_300,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1886
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1885 = _temp_1886		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-36]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1887 = *data  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1885  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1887  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Call the function
	mov	1194,r13		! source line 1194
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1890 = *data  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if i != _temp_1890 then goto _Label_1889		(int)
	load	[r14+-48],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bne	_Label_1889
!	_Label_1888	jmp	_Label_1888
_Label_1888:
! THEN...
	mov	1196,r13		! source line 1196
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1891 = _StringConst_301
	set	_StringConst_301,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1892
_Label_1889:
! ELSE...
	mov	1198,r13		! source line 1198
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1893 = _StringConst_302
	set	_StringConst_302,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1894 = _StringConst_303
	set	_StringConst_303,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1894  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1892:
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_632_DoWrite2:
	.word	_sourceFileName
	.word	_Label_1895
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1896
	.word	8
	.word	4
	.word	_Label_1897
	.word	12
	.word	4
	.word	_Label_1898
	.word	-12
	.word	4
	.word	_Label_1899
	.word	-16
	.word	4
	.word	_Label_1900
	.word	-20
	.word	4
	.word	_Label_1901
	.word	-24
	.word	4
	.word	_Label_1902
	.word	-28
	.word	4
	.word	_Label_1903
	.word	-32
	.word	4
	.word	_Label_1904
	.word	-36
	.word	4
	.word	_Label_1905
	.word	-40
	.word	4
	.word	_Label_1906
	.word	-44
	.word	4
	.word	_Label_1907
	.word	-48
	.word	4
	.word	0
_Label_1895:
	.ascii	"DoWrite2\0"
	.align
_Label_1896:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1897:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1907:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest5  ===============
! 
_function_631_WriteTest5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_631_WriteTest5,r1
	push	r1
	mov	51,r1
_Label_3249:
	push	r0
	sub	r1,1,r1
	bne	_Label_3249
	mov	1207,r13		! source line 1207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1908 = _StringConst_304
	set	_StringConst_304,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   _temp_1909 = _StringConst_305
	set	_StringConst_305,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1910 = _StringConst_306
	set	_StringConst_306,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1910  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+12]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1911 = _StringConst_307
	set	_StringConst_307,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1911  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+12]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1912 = _StringConst_308
	set	_StringConst_308,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1912  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+12]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1913 = _StringConst_309
	set	_StringConst_309,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1913  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+12]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1914 = _StringConst_310
	set	_StringConst_310,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1914  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_1915
	load	[r14+-188],r1
	cmp	r1,r0
	be	_Label_1915
	jmp	_Label_1916
_Label_1915:
! THEN...
	mov	1235,r13		! source line 1235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1917 = _StringConst_311
	set	_StringConst_311,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1922 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-148]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1923 = 140		(4 bytes)
	mov	140,r1
	store	r1,[r14+-144]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1922  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+-196]
_Label_1918:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1923 then goto _Label_1921		
	load	[r14+-196],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1921
_Label_1919:
	mov	1237,r13		! source line 1237
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_1920:
!   i = i + 1
	load	[r14+-196],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
	jmp	_Label_1918
! END FOR
_Label_1921:
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   _temp_1924 = _StringConst_312
	set	_StringConst_312,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1924  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1925 = _StringConst_313
	set	_StringConst_313,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1925  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1926 = _StringConst_314
	set	_StringConst_314,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8204  sizeInBytes=4
	mov	8204,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1926  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+12]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1927 = _StringConst_315
	set	_StringConst_315,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1927  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+12]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1928 = _StringConst_316
	set	_StringConst_316,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8206  sizeInBytes=4
	mov	8206,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1928  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+12]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1929 = _StringConst_317
	set	_StringConst_317,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1929  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+12]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1930 = _StringConst_318
	set	_StringConst_318,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8208  sizeInBytes=4
	mov	8208,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1930  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+12]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1931 = _StringConst_319
	set	_StringConst_319,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1931  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+12]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1932 = _StringConst_320
	set	_StringConst_320,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1932  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+12]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1933 = _StringConst_321
	set	_StringConst_321,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1933  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+12]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1934 = _StringConst_322
	set	_StringConst_322,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8210  sizeInBytes=4
	mov	8210,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1934  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+12]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1935 = _StringConst_323
	set	_StringConst_323,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8212  sizeInBytes=4
	mov	8212,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1935  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+12]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1936 = _StringConst_324
	set	_StringConst_324,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8214  sizeInBytes=4
	mov	8214,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1936  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+12]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1937 = _StringConst_325
	set	_StringConst_325,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1937  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1916:
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_1938
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_1938
	jmp	_Label_1939
_Label_1938:
! THEN...
	mov	1278,r13		! source line 1278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1940 = _StringConst_326
	set	_StringConst_326,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1940  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0AS",r10
!   _temp_1941 = _StringConst_327
	set	_StringConst_327,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1941  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1942 = _StringConst_328
	set	_StringConst_328,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1942  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1943 = _StringConst_329
	set	_StringConst_329,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8205  sizeInBytes=4
	mov	8205,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1943  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1944 = _StringConst_330
	set	_StringConst_330,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1944  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1945 = _StringConst_331
	set	_StringConst_331,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8207  sizeInBytes=4
	mov	8207,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1945  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1946 = _StringConst_332
	set	_StringConst_332,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1946  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1947 = _StringConst_333
	set	_StringConst_333,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8209  sizeInBytes=4
	mov	8209,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1947  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1948 = _StringConst_334
	set	_StringConst_334,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8211  sizeInBytes=4
	mov	8211,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1948  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1949 = _StringConst_335
	set	_StringConst_335,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8213  sizeInBytes=4
	mov	8213,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1949  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1950 = _StringConst_336
	set	_StringConst_336,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1950  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1951 = _StringConst_337
	set	_StringConst_337,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1951  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1952 = _StringConst_338
	set	_StringConst_338,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1952  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1953 = _StringConst_339
	set	_StringConst_339,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8215  sizeInBytes=4
	mov	8215,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1953  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+12]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_1954 = _StringConst_340
	set	_StringConst_340,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1939:
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid2  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	1308,r13		! source line 1308
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0AS",r10
!   _temp_1955 = _StringConst_341
	set	_StringConst_341,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1955  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1956 = _StringConst_342
	set	_StringConst_342,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1956  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	1312,r13		! source line 1312
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1957 = _StringConst_343
	set	_StringConst_343,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1957  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_1958 = _StringConst_344
	set	_StringConst_344,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
	add	r15,208,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_631_WriteTest5:
	.word	_sourceFileName
	.word	_Label_1959
	.word	0		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_1960
	.word	-12
	.word	4
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-24
	.word	4
	.word	_Label_1964
	.word	-28
	.word	4
	.word	_Label_1965
	.word	-32
	.word	4
	.word	_Label_1966
	.word	-36
	.word	4
	.word	_Label_1967
	.word	-40
	.word	4
	.word	_Label_1968
	.word	-44
	.word	4
	.word	_Label_1969
	.word	-48
	.word	4
	.word	_Label_1970
	.word	-52
	.word	4
	.word	_Label_1971
	.word	-56
	.word	4
	.word	_Label_1972
	.word	-60
	.word	4
	.word	_Label_1973
	.word	-64
	.word	4
	.word	_Label_1974
	.word	-68
	.word	4
	.word	_Label_1975
	.word	-72
	.word	4
	.word	_Label_1976
	.word	-76
	.word	4
	.word	_Label_1977
	.word	-80
	.word	4
	.word	_Label_1978
	.word	-84
	.word	4
	.word	_Label_1979
	.word	-88
	.word	4
	.word	_Label_1980
	.word	-92
	.word	4
	.word	_Label_1981
	.word	-96
	.word	4
	.word	_Label_1982
	.word	-100
	.word	4
	.word	_Label_1983
	.word	-104
	.word	4
	.word	_Label_1984
	.word	-108
	.word	4
	.word	_Label_1985
	.word	-112
	.word	4
	.word	_Label_1986
	.word	-116
	.word	4
	.word	_Label_1987
	.word	-120
	.word	4
	.word	_Label_1988
	.word	-124
	.word	4
	.word	_Label_1989
	.word	-128
	.word	4
	.word	_Label_1990
	.word	-132
	.word	4
	.word	_Label_1991
	.word	-136
	.word	4
	.word	_Label_1992
	.word	-140
	.word	4
	.word	_Label_1993
	.word	-144
	.word	4
	.word	_Label_1994
	.word	-148
	.word	4
	.word	_Label_1995
	.word	-152
	.word	4
	.word	_Label_1996
	.word	-156
	.word	4
	.word	_Label_1997
	.word	-160
	.word	4
	.word	_Label_1998
	.word	-164
	.word	4
	.word	_Label_1999
	.word	-168
	.word	4
	.word	_Label_2000
	.word	-172
	.word	4
	.word	_Label_2001
	.word	-176
	.word	4
	.word	_Label_2002
	.word	-180
	.word	4
	.word	_Label_2003
	.word	-184
	.word	4
	.word	_Label_2004
	.word	-188
	.word	4
	.word	_Label_2005
	.word	-192
	.word	4
	.word	_Label_2006
	.word	-196
	.word	4
	.word	0
_Label_1959:
	.ascii	"WriteTest5\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"pid1\0"
	.align
_Label_2005:
	.byte	'I'
	.ascii	"pid2\0"
	.align
_Label_2006:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest6  ===============
! 
_function_630_WriteTest6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_630_WriteTest6,r1
	push	r1
	mov	58,r1
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
	mov	1323,r13		! source line 1323
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2007 = _StringConst_345
	set	_StringConst_345,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	1332,r13		! source line 1332
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2008 = _StringConst_346
	set	_StringConst_346,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1334,r13		! source line 1334
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! CALL STATEMENT...
!   _temp_2009 = _StringConst_347
	set	_StringConst_347,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2010 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-208]
!   _temp_2011 = _StringConst_348
	set	_StringConst_348,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2011  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Call the function
	mov	1337,r13		! source line 1337
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2012 = _StringConst_349
	set	_StringConst_349,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	1339,r13		! source line 1339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2013 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2013  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+12]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2014 = _StringConst_350
	set	_StringConst_350,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	1342,r13		! source line 1342
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2015 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-188]
!   _temp_2016 = _StringConst_351
	set	_StringConst_351,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2016  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	1343,r13		! source line 1343
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2017 = _StringConst_352
	set	_StringConst_352,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	1345,r13		! source line 1345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2018 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2018  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+12]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2019 = _StringConst_353
	set	_StringConst_353,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2019  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+12]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2020 = _StringConst_354
	set	_StringConst_354,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9958  sizeInBytes=4
	mov	9958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2020  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+12]
!   Call the function
	mov	1349,r13		! source line 1349
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2021 = _StringConst_355
	set	_StringConst_355,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=19958  sizeInBytes=4
	mov	19958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2021  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+12]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2022 = _StringConst_356
	set	_StringConst_356,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3900  sizeInBytes=4
	mov	3900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2022  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+12]
!   Call the function
	mov	1351,r13		! source line 1351
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2023 = _StringConst_357
	set	_StringConst_357,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=13900  sizeInBytes=4
	mov	13900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2023  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+12]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2024 = _StringConst_358
	set	_StringConst_358,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2025 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-148]
!   _temp_2026 = _StringConst_359
	set	_StringConst_359,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2025  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2026  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2027 = _StringConst_360
	set	_StringConst_360,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2028 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2028  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2029 = _StringConst_361
	set	_StringConst_361,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2029  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2030 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-128]
!   _temp_2031 = _StringConst_362
	set	_StringConst_362,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2031  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2032 = _StringConst_363
	set	_StringConst_363,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2033 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2033  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+12]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2034 = _StringConst_364
	set	_StringConst_364,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2035 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-108]
!   _temp_2036 = _StringConst_365
	set	_StringConst_365,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2035  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2036  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	1369,r13		! source line 1369
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2037 = _StringConst_366
	set	_StringConst_366,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1371,r13		! source line 1371
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2038 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2038  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+12]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2039 = _StringConst_367
	set	_StringConst_367,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2040 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-88]
!   _temp_2041 = _StringConst_368
	set	_StringConst_368,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2041  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Call the function
	mov	1375,r13		! source line 1375
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2042 = _StringConst_369
	set	_StringConst_369,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2043 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2043  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2044 = _StringConst_370
	set	_StringConst_370,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2044  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2045 = _StringConst_371
	set	_StringConst_371,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9958  sizeInBytes=4
	mov	9958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2045  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2046 = _StringConst_372
	set	_StringConst_372,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=19958  sizeInBytes=4
	mov	19958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2046  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2047 = _StringConst_373
	set	_StringConst_373,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3900  sizeInBytes=4
	mov	3900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2047  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2048 = _StringConst_374
	set	_StringConst_374,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=13900  sizeInBytes=4
	mov	13900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2048  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	1385,r13		! source line 1385
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2049 = _StringConst_375
	set	_StringConst_375,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2050 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-48]
!   _temp_2051 = _StringConst_376
	set	_StringConst_376,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2051  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2052 = _StringConst_377
	set	_StringConst_377,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2052  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2053 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2053  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2054 = _StringConst_378
	set	_StringConst_378,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2055 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-28]
!   _temp_2056 = _StringConst_379
	set	_StringConst_379,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2056  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! CALL STATEMENT...
!   _temp_2057 = _StringConst_380
	set	_StringConst_380,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2058 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2058  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CA",r10
	call	_function_635_CheckFile
! CALL STATEMENT...
!   _temp_2059 = _StringConst_381
	set	_StringConst_381,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_630_WriteTest6:
	.word	_sourceFileName
	.word	_Label_2060
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_2061
	.word	-12
	.word	4
	.word	_Label_2062
	.word	-16
	.word	4
	.word	_Label_2063
	.word	-20
	.word	4
	.word	_Label_2064
	.word	-24
	.word	4
	.word	_Label_2065
	.word	-28
	.word	4
	.word	_Label_2066
	.word	-32
	.word	4
	.word	_Label_2067
	.word	-36
	.word	4
	.word	_Label_2068
	.word	-40
	.word	4
	.word	_Label_2069
	.word	-44
	.word	4
	.word	_Label_2070
	.word	-48
	.word	4
	.word	_Label_2071
	.word	-52
	.word	4
	.word	_Label_2072
	.word	-56
	.word	4
	.word	_Label_2073
	.word	-60
	.word	4
	.word	_Label_2074
	.word	-64
	.word	4
	.word	_Label_2075
	.word	-68
	.word	4
	.word	_Label_2076
	.word	-72
	.word	4
	.word	_Label_2077
	.word	-76
	.word	4
	.word	_Label_2078
	.word	-80
	.word	4
	.word	_Label_2079
	.word	-84
	.word	4
	.word	_Label_2080
	.word	-88
	.word	4
	.word	_Label_2081
	.word	-92
	.word	4
	.word	_Label_2082
	.word	-96
	.word	4
	.word	_Label_2083
	.word	-100
	.word	4
	.word	_Label_2084
	.word	-104
	.word	4
	.word	_Label_2085
	.word	-108
	.word	4
	.word	_Label_2086
	.word	-112
	.word	4
	.word	_Label_2087
	.word	-116
	.word	4
	.word	_Label_2088
	.word	-120
	.word	4
	.word	_Label_2089
	.word	-124
	.word	4
	.word	_Label_2090
	.word	-128
	.word	4
	.word	_Label_2091
	.word	-132
	.word	4
	.word	_Label_2092
	.word	-136
	.word	4
	.word	_Label_2093
	.word	-140
	.word	4
	.word	_Label_2094
	.word	-144
	.word	4
	.word	_Label_2095
	.word	-148
	.word	4
	.word	_Label_2096
	.word	-152
	.word	4
	.word	_Label_2097
	.word	-156
	.word	4
	.word	_Label_2098
	.word	-160
	.word	4
	.word	_Label_2099
	.word	-164
	.word	4
	.word	_Label_2100
	.word	-168
	.word	4
	.word	_Label_2101
	.word	-172
	.word	4
	.word	_Label_2102
	.word	-176
	.word	4
	.word	_Label_2103
	.word	-180
	.word	4
	.word	_Label_2104
	.word	-184
	.word	4
	.word	_Label_2105
	.word	-188
	.word	4
	.word	_Label_2106
	.word	-192
	.word	4
	.word	_Label_2107
	.word	-196
	.word	4
	.word	_Label_2108
	.word	-200
	.word	4
	.word	_Label_2109
	.word	-204
	.word	4
	.word	_Label_2110
	.word	-208
	.word	4
	.word	_Label_2111
	.word	-212
	.word	4
	.word	_Label_2112
	.word	-216
	.word	4
	.word	_Label_2113
	.word	-220
	.word	4
	.word	_Label_2114
	.word	-224
	.word	4
	.word	0
_Label_2060:
	.ascii	"WriteTest6\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION FillArray  ===============
! 
_function_629_FillArray:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_629_FillArray,r1
	push	r1
	mov	20,r1
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
	mov	1405,r13		! source line 1405
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! toPtr
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of a [0 ] into _temp_2115
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   toPtr = _temp_2115		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
! fromPtr
!   if intIsZero (s) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s [0 ] into _temp_2116
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   fromPtr = _temp_2116		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-64]
! sizeOfS
!   if intIsZero (s) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: sizeOfS = *s  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2120 = *a  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2119 = _temp_2120 - 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Move address of a [_temp_2119 ] into _temp_2121
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2118 = _temp_2121		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-44]
!   _temp_2117 = _temp_2118 - sizeOfS		(int)
	load	[r14+-44],r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   lastFullCopy = _temp_2117 + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! WHILE STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0WH",r10
_Label_2122:
!   if toPtr > lastFullCopy then goto _Label_2124		(int)
	load	[r14+-60],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2124
!	_Label_2123	jmp	_Label_2123
_Label_2123:
	mov	1415,r13		! source line 1415
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=toPtr  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fromPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeOfS  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   toPtr = toPtr + sizeOfS		(int)
	load	[r14+-60],r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! END WHILE...
	jmp	_Label_2122
_Label_2124:
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2128 = *a  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   _temp_2127 = _temp_2128 - 1		(int)
	load	[r14+-16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Move address of a [_temp_2127 ] into _temp_2129
!     make sure index expr is >= 0
	load	[r14+-20],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_2126 = _temp_2129		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-24]
!   _temp_2125 = _temp_2126 - toPtr		(int)
	load	[r14+-24],r1
	load	[r14+-60],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   remaining = _temp_2125 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0IF",r10
!   if remaining <= 0 then goto _Label_2131		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2131
!	_Label_2130	jmp	_Label_2130
_Label_2130:
! THEN...
	mov	1421,r13		! source line 1421
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=toPtr  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fromPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=remaining  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	MemoryCopy
! END IF...
_Label_2131:
! RETURN STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_629_FillArray:
	.word	_sourceFileName
	.word	_Label_2132
	.word	8		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_2133
	.word	8
	.word	4
	.word	_Label_2134
	.word	12
	.word	4
	.word	_Label_2135
	.word	-12
	.word	4
	.word	_Label_2136
	.word	-16
	.word	4
	.word	_Label_2137
	.word	-20
	.word	4
	.word	_Label_2138
	.word	-24
	.word	4
	.word	_Label_2139
	.word	-28
	.word	4
	.word	_Label_2140
	.word	-32
	.word	4
	.word	_Label_2141
	.word	-36
	.word	4
	.word	_Label_2142
	.word	-40
	.word	4
	.word	_Label_2143
	.word	-44
	.word	4
	.word	_Label_2144
	.word	-48
	.word	4
	.word	_Label_2145
	.word	-52
	.word	4
	.word	_Label_2146
	.word	-56
	.word	4
	.word	_Label_2147
	.word	-60
	.word	4
	.word	_Label_2148
	.word	-64
	.word	4
	.word	_Label_2149
	.word	-68
	.word	4
	.word	_Label_2150
	.word	-72
	.word	4
	.word	_Label_2151
	.word	-76
	.word	4
	.word	0
_Label_2132:
	.ascii	"FillArray\0"
	.align
_Label_2133:
	.byte	'P'
	.ascii	"a\0"
	.align
_Label_2134:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2147:
	.byte	'I'
	.ascii	"toPtr\0"
	.align
_Label_2148:
	.byte	'I'
	.ascii	"fromPtr\0"
	.align
_Label_2149:
	.byte	'I'
	.ascii	"lastFullCopy\0"
	.align
_Label_2150:
	.byte	'I'
	.ascii	"remaining\0"
	.align
_Label_2151:
	.byte	'I'
	.ascii	"sizeOfS\0"
	.align
! 
! ===============  FUNCTION OpenTest3  ===============
! 
_function_628_OpenTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_628_OpenTest3,r1
	push	r1
	mov	25,r1
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
	mov	1428,r13		! source line 1428
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! name
!   name = _StringConst_382
	set	_StringConst_382,r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   _temp_2152 = _StringConst_383
	set	_StringConst_383,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2152  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1438,r13		! source line 1438
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2153 = _StringConst_384
	set	_StringConst_384,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2153  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1440,r13		! source line 1440
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   _temp_2154 = _StringConst_385
	set	_StringConst_385,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_2156		(int)
	load	[r14+-84],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2156
!	_Label_2155	jmp	_Label_2155
_Label_2155:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2157 = _StringConst_386
	set	_StringConst_386,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   Call the function
	mov	1444,r13		! source line 1444
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   _temp_2158 = _StringConst_387
	set	_StringConst_387,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2158  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_2159
_Label_2156:
! ELSE...
	mov	1447,r13		! source line 1447
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2160 = _StringConst_388
	set	_StringConst_388,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2160  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1448,r13		! source line 1448
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2161 = _StringConst_389
	set	_StringConst_389,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2161  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2159:
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   _temp_2162 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-52]
!   Move address of _temp_2162 [9999 ] into _temp_2163
!     make sure index expr is >= 0
	mov	9999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   p = _temp_2163		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   _temp_2164 = p AND -8192		(int)
	load	[r14+-88],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   p = _temp_2164 - 8		(int)
	load	[r14+-44],r1
	mov	8,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! CALL STATEMENT...
!   _temp_2165 = name		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-40]
!   if intIsZero (name) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2167 = *name  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_2166 = _temp_2167 + 4		(int)
	load	[r14+-32],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2165  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2166  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Call the function
	mov	1455,r13		! source line 1455
	mov	"\0\0CE",r10
	call	MemoryCopy
! CALL STATEMENT...
!   _temp_2168 = _StringConst_390
	set	_StringConst_390,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1458,r13		! source line 1458
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0IF",r10
!   if fd == -1 then goto _Label_2170		(int)
	load	[r14+-84],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_2170
!	_Label_2169	jmp	_Label_2169
_Label_2169:
! THEN...
	mov	1460,r13		! source line 1460
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2171 = _StringConst_391
	set	_StringConst_391,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2171  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1460,r13		! source line 1460
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2172
_Label_2170:
! ELSE...
	mov	1462,r13		! source line 1462
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2173 = _StringConst_392
	set	_StringConst_392,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1462,r13		! source line 1462
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1463,r13		! source line 1463
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2174 = _StringConst_393
	set	_StringConst_393,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2172:
! CALL STATEMENT...
!   _temp_2175 = _StringConst_394
	set	_StringConst_394,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1467,r13		! source line 1467
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_628_OpenTest3:
	.word	_sourceFileName
	.word	_Label_2176
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2177
	.word	-12
	.word	4
	.word	_Label_2178
	.word	-16
	.word	4
	.word	_Label_2179
	.word	-20
	.word	4
	.word	_Label_2180
	.word	-24
	.word	4
	.word	_Label_2181
	.word	-28
	.word	4
	.word	_Label_2182
	.word	-32
	.word	4
	.word	_Label_2183
	.word	-36
	.word	4
	.word	_Label_2184
	.word	-40
	.word	4
	.word	_Label_2185
	.word	-44
	.word	4
	.word	_Label_2186
	.word	-48
	.word	4
	.word	_Label_2187
	.word	-52
	.word	4
	.word	_Label_2188
	.word	-56
	.word	4
	.word	_Label_2189
	.word	-60
	.word	4
	.word	_Label_2190
	.word	-64
	.word	4
	.word	_Label_2191
	.word	-68
	.word	4
	.word	_Label_2192
	.word	-72
	.word	4
	.word	_Label_2193
	.word	-76
	.word	4
	.word	_Label_2194
	.word	-80
	.word	4
	.word	_Label_2195
	.word	-84
	.word	4
	.word	_Label_2196
	.word	-88
	.word	4
	.word	_Label_2197
	.word	-92
	.word	4
	.word	_Label_2198
	.word	-96
	.word	4
	.word	0
_Label_2176:
	.ascii	"OpenTest3\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2195:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_2197:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_2198:
	.byte	'P'
	.ascii	"name\0"
	.align
! 
! ===============  FUNCTION ExecTest1  ===============
! 
_function_627_ExecTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_627_ExecTest1,r1
	push	r1
	mov	8,r1
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
	mov	1473,r13		! source line 1473
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2199 = _StringConst_395
	set	_StringConst_395,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1479,r13		! source line 1479
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2200 = _StringConst_396
	set	_StringConst_396,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1481,r13		! source line 1481
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   _temp_2201 = _StringConst_397
	set	_StringConst_397,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2201  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   _temp_2202 = _StringConst_398
	set	_StringConst_398,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1483,r13		! source line 1483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2203 = _StringConst_399
	set	_StringConst_399,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2203  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1485,r13		! source line 1485
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_627_ExecTest1:
	.word	_sourceFileName
	.word	_Label_2204
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2205
	.word	-12
	.word	4
	.word	_Label_2206
	.word	-16
	.word	4
	.word	_Label_2207
	.word	-20
	.word	4
	.word	_Label_2208
	.word	-24
	.word	4
	.word	_Label_2209
	.word	-28
	.word	4
	.word	_Label_2210
	.word	-32
	.word	4
	.word	0
_Label_2204:
	.ascii	"ExecTest1\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2210:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ExecTest2  ===============
! 
_function_626_ExecTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_626_ExecTest2,r1
	push	r1
	mov	23,r1
_Label_3254:
	push	r0
	sub	r1,1,r1
	bne	_Label_3254
	mov	1491,r13		! source line 1491
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! name
!   name = _StringConst_400
	set	_StringConst_400,r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   _temp_2211 = _StringConst_401
	set	_StringConst_401,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1499,r13		! source line 1499
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2212 = _StringConst_402
	set	_StringConst_402,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1501,r13		! source line 1501
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   _temp_2213 = _StringConst_403
	set	_StringConst_403,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2213  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1502,r13		! source line 1502
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1503,r13		! source line 1503
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   Call the function
	mov	1504,r13		! source line 1504
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   _temp_2214 = _StringConst_404
	set	_StringConst_404,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2214  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1505,r13		! source line 1505
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	1505,r13		! source line 1505
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2215 = _StringConst_405
	set	_StringConst_405,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2215  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1507,r13		! source line 1507
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   _temp_2216 = _StringConst_406
	set	_StringConst_406,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1508,r13		! source line 1508
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   Call the function
	mov	1510,r13		! source line 1510
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   _temp_2217 = _StringConst_407
	set	_StringConst_407,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2217  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1511,r13		! source line 1511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1511,r13		! source line 1511
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   _temp_2218 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-48]
!   Move address of _temp_2218 [9999 ] into _temp_2219
!     make sure index expr is >= 0
	mov	9999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   p = _temp_2219		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   _temp_2220 = p AND -8192		(int)
	load	[r14+-84],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-40]
!   p = _temp_2220 - 8		(int)
	load	[r14+-40],r1
	mov	8,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! CALL STATEMENT...
!   _temp_2221 = name		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-36]
!   if intIsZero (name) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2223 = *name  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2222 = _temp_2223 + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2221  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2222  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Call the function
	mov	1516,r13		! source line 1516
	mov	"\0\0CE",r10
	call	MemoryCopy
! CALL STATEMENT...
!   _temp_2224 = _StringConst_408
	set	_StringConst_408,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2224  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1518,r13		! source line 1518
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2225 = _StringConst_409
	set	_StringConst_409,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2225  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1519,r13		! source line 1519
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1520,r13		! source line 1520
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   _temp_2226 = _StringConst_410
	set	_StringConst_410,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2226  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1521,r13		! source line 1521
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1522,r13		! source line 1522
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2227 = _StringConst_411
	set	_StringConst_411,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2227  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1523,r13		! source line 1523
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_626_ExecTest2:
	.word	_sourceFileName
	.word	_Label_2228
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2229
	.word	-12
	.word	4
	.word	_Label_2230
	.word	-16
	.word	4
	.word	_Label_2231
	.word	-20
	.word	4
	.word	_Label_2232
	.word	-24
	.word	4
	.word	_Label_2233
	.word	-28
	.word	4
	.word	_Label_2234
	.word	-32
	.word	4
	.word	_Label_2235
	.word	-36
	.word	4
	.word	_Label_2236
	.word	-40
	.word	4
	.word	_Label_2237
	.word	-44
	.word	4
	.word	_Label_2238
	.word	-48
	.word	4
	.word	_Label_2239
	.word	-52
	.word	4
	.word	_Label_2240
	.word	-56
	.word	4
	.word	_Label_2241
	.word	-60
	.word	4
	.word	_Label_2242
	.word	-64
	.word	4
	.word	_Label_2243
	.word	-68
	.word	4
	.word	_Label_2244
	.word	-72
	.word	4
	.word	_Label_2245
	.word	-76
	.word	4
	.word	_Label_2246
	.word	-80
	.word	4
	.word	_Label_2247
	.word	-84
	.word	4
	.word	_Label_2248
	.word	-88
	.word	4
	.word	0
_Label_2228:
	.ascii	"ExecTest2\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2246:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2247:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_2248:
	.byte	'P'
	.ascii	"name\0"
	.align
! 
! ===============  FUNCTION ExecTest3  ===============
! 
_function_625_ExecTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_625_ExecTest3,r1
	push	r1
	mov	15,r1
_Label_3255:
	push	r0
	sub	r1,1,r1
	bne	_Label_3255
	mov	1529,r13		! source line 1529
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2249 = _StringConst_412
	set	_StringConst_412,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2249  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1535,r13		! source line 1535
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2250 = _StringConst_413
	set	_StringConst_413,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2250  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1536,r13		! source line 1536
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0IF",r10
!   if intIsZero (fd) then goto _Label_2252
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_2252
!	_Label_2251	jmp	_Label_2251
_Label_2251:
! THEN...
	mov	1538,r13		! source line 1538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2253 = _StringConst_414
	set	_StringConst_414,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2253  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1538,r13		! source line 1538
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1539,r13		! source line 1539
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2254 = _StringConst_415
	set	_StringConst_415,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1540,r13		! source line 1540
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2252:
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0AS",r10
!   counter = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   _temp_2255 = &counter
	add	r14,-56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2255  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	1544,r13		! source line 1544
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2256 = _StringConst_416
	set	_StringConst_416,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2256  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1546,r13		! source line 1546
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   _temp_2257 = _StringConst_417
	set	_StringConst_417,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2257  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1547,r13		! source line 1547
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2258 = _StringConst_418
	set	_StringConst_418,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2258  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1548,r13		! source line 1548
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1549,r13		! source line 1549
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2259 = _StringConst_419
	set	_StringConst_419,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1550,r13		! source line 1550
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_625_ExecTest3:
	.word	_sourceFileName
	.word	_Label_2260
	.word	0		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2261
	.word	-12
	.word	4
	.word	_Label_2262
	.word	-16
	.word	4
	.word	_Label_2263
	.word	-20
	.word	4
	.word	_Label_2264
	.word	-24
	.word	4
	.word	_Label_2265
	.word	-28
	.word	4
	.word	_Label_2266
	.word	-32
	.word	4
	.word	_Label_2267
	.word	-36
	.word	4
	.word	_Label_2268
	.word	-40
	.word	4
	.word	_Label_2269
	.word	-44
	.word	4
	.word	_Label_2270
	.word	-48
	.word	4
	.word	_Label_2271
	.word	-52
	.word	4
	.word	_Label_2272
	.word	-56
	.word	4
	.word	0
_Label_2260:
	.ascii	"ExecTest3\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2270:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2272:
	.byte	'I'
	.ascii	"counter\0"
	.align
! 
! ===============  FUNCTION TestChMode  ===============
! 
_function_624_TestChMode:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_624_TestChMode,r1
	push	r1
	mov	59,r1
_Label_3256:
	push	r0
	sub	r1,1,r1
	bne	_Label_3256
	mov	1557,r13		! source line 1557
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2273 = _StringConst_420
	set	_StringConst_420,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	1563,r13		! source line 1563
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2274 = _StringConst_421
	set	_StringConst_421,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2274  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   _temp_2275 = _StringConst_422
	set	_StringConst_422,r1
	store	r1,[r14+-184]
!   _temp_2276 = &stat
	add	r14,-212,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2275  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2276  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Call the function
	mov	1566,r13		! source line 1566
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1567,r13		! source line 1567
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0IF",r10
!   if intIsZero (retVal) then goto _Label_2277
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_2277
	jmp	_Label_2278
_Label_2277:
! THEN...
	mov	1569,r13		! source line 1569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2279 = _StringConst_423
	set	_StringConst_423,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2279  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=stat  sizeInBytes=20
	mov	5,r3
	add	r15,4,r4
	add	r14,-212,r5
_Label_3257:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3257
!   Call the function
	mov	1569,r13		! source line 1569
	mov	"\0\0CA",r10
	call	_function_614_printStatLine
! END IF...
_Label_2278:
! CALL STATEMENT...
!   _temp_2280 = _StringConst_424
	set	_StringConst_424,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	1572,r13		! source line 1572
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _temp_2281 = _StringConst_425
	set	_StringConst_425,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2281  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1574,r13		! source line 1574
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   _temp_2282 = _StringConst_426
	set	_StringConst_426,r1
	store	r1,[r14+-164]
!   _temp_2283 = &stat
	add	r14,-212,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2282  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2283  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	1575,r13		! source line 1575
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1576,r13		! source line 1576
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
!   _temp_2288 = &stat
	add	r14,-212,r1
	store	r1,[r14+-148]
!   _temp_2289 = _temp_2288 + 8
	load	[r14+-148],r1
	add	r1,8,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2287 = *_temp_2289  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   _temp_2286 = _temp_2287 AND 7		(int)
	load	[r14+-152],r1
	mov	7,r2
	and	r1,r2,r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_2286) then goto _Label_2285
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_2285
!	_Label_2284	jmp	_Label_2284
_Label_2284:
! THEN...
	mov	1578,r13		! source line 1578
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2290 = _StringConst_427
	set	_StringConst_427,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2290  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1578,r13		! source line 1578
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2285:
! CALL STATEMENT...
!   _temp_2291 = _StringConst_428
	set	_StringConst_428,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1581,r13		! source line 1581
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   _temp_2292 = _StringConst_429
	set	_StringConst_429,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	1582,r13		! source line 1582
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0AS",r10
!   _temp_2293 = _StringConst_430
	set	_StringConst_430,r1
	store	r1,[r14+-128]
!   _temp_2294 = &stat
	add	r14,-212,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2294  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Call the function
	mov	1584,r13		! source line 1584
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1585,r13		! source line 1585
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0IF",r10
!   _temp_2299 = &stat
	add	r14,-212,r1
	store	r1,[r14+-112]
!   _temp_2300 = _temp_2299 + 8
	load	[r14+-112],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2298 = *_temp_2300  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_2297 = _temp_2298 AND 7		(int)
	load	[r14+-116],r1
	mov	7,r2
	and	r1,r2,r1
	store	r1,[r14+-120]
!   if _temp_2297 == 7 then goto _Label_2296		(int)
	load	[r14+-120],r1
	mov	7,r2
	cmp	r1,r2
	be	_Label_2296
!	_Label_2295	jmp	_Label_2295
_Label_2295:
! THEN...
	mov	1587,r13		! source line 1587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2301 = _StringConst_431
	set	_StringConst_431,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2301  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1587,r13		! source line 1587
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2296:
! CALL STATEMENT...
!   _temp_2302 = _StringConst_432
	set	_StringConst_432,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1590,r13		! source line 1590
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   _temp_2303 = _StringConst_433
	set	_StringConst_433,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1591,r13		! source line 1591
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_2305		(int)
	load	[r14+-220],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2305
!	_Label_2304	jmp	_Label_2304
_Label_2304:
! THEN...
	mov	1593,r13		! source line 1593
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2306 = _StringConst_434
	set	_StringConst_434,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1593,r13		! source line 1593
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2307
_Label_2305:
! ELSE...
	mov	1595,r13		! source line 1595
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _temp_2308 = _StringConst_435
	set	_StringConst_435,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2308  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	1595,r13		! source line 1595
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1596,r13		! source line 1596
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0AS",r10
!   _temp_2309 = _StringConst_436
	set	_StringConst_436,r1
	store	r1,[r14+-84]
!   _temp_2310 = &stat
	add	r14,-212,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2309  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2310  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Call the function
	mov	1597,r13		! source line 1597
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0IF",r10
!   _temp_2315 = &stat
	add	r14,-212,r1
	store	r1,[r14+-68]
!   _temp_2316 = _temp_2315 + 8
	load	[r14+-68],r1
	add	r1,8,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2314 = *_temp_2316  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_2313 = _temp_2314 AND 7		(int)
	load	[r14+-72],r1
	mov	7,r2
	and	r1,r2,r1
	store	r1,[r14+-76]
!   if _temp_2313 == 4 then goto _Label_2312		(int)
	load	[r14+-76],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_2312
!	_Label_2311	jmp	_Label_2311
_Label_2311:
! THEN...
	mov	1599,r13		! source line 1599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2317 = _StringConst_437
	set	_StringConst_437,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2317  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2312:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_2318 = _StringConst_438
	set	_StringConst_438,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1602,r13		! source line 1602
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _temp_2319 = _StringConst_439
	set	_StringConst_439,r1
	store	r1,[r14+-52]
!   _temp_2320 = &stat
	add	r14,-212,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2319  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2320  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0IF",r10
!   _temp_2325 = &stat
	add	r14,-212,r1
	store	r1,[r14+-36]
!   _temp_2326 = _temp_2325 + 8
	load	[r14+-36],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2324 = *_temp_2326  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2323 = _temp_2324 AND 7		(int)
	load	[r14+-40],r1
	mov	7,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_2323 == 4 then goto _Label_2322		(int)
	load	[r14+-44],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_2322
!	_Label_2321	jmp	_Label_2321
_Label_2321:
! THEN...
	mov	1605,r13		! source line 1605
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2327 = _StringConst_440
	set	_StringConst_440,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1605,r13		! source line 1605
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2328
_Label_2322:
! ELSE...
	mov	1607,r13		! source line 1607
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2329 = _StringConst_441
	set	_StringConst_441,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1607,r13		! source line 1607
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2328:
! END IF...
_Label_2307:
! CALL STATEMENT...
!   _temp_2330 = _StringConst_442
	set	_StringConst_442,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1611,r13		! source line 1611
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _temp_2331 = _StringConst_443
	set	_StringConst_443,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1617,r13		! source line 1617
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
!   Call the function
	mov	1619,r13		! source line 1619
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	1620,r13		! source line 1620
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2332 = _StringConst_444
	set	_StringConst_444,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0RE",r10
	add	r15,240,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_624_TestChMode:
	.word	_sourceFileName
	.word	_Label_2333
	.word	0		! total size of parameters
	.word	236		! frame size = 236
	.word	_Label_2334
	.word	-12
	.word	4
	.word	_Label_2335
	.word	-16
	.word	4
	.word	_Label_2336
	.word	-20
	.word	4
	.word	_Label_2337
	.word	-24
	.word	4
	.word	_Label_2338
	.word	-28
	.word	4
	.word	_Label_2339
	.word	-32
	.word	4
	.word	_Label_2340
	.word	-36
	.word	4
	.word	_Label_2341
	.word	-40
	.word	4
	.word	_Label_2342
	.word	-44
	.word	4
	.word	_Label_2343
	.word	-48
	.word	4
	.word	_Label_2344
	.word	-52
	.word	4
	.word	_Label_2345
	.word	-56
	.word	4
	.word	_Label_2346
	.word	-60
	.word	4
	.word	_Label_2347
	.word	-64
	.word	4
	.word	_Label_2348
	.word	-68
	.word	4
	.word	_Label_2349
	.word	-72
	.word	4
	.word	_Label_2350
	.word	-76
	.word	4
	.word	_Label_2351
	.word	-80
	.word	4
	.word	_Label_2352
	.word	-84
	.word	4
	.word	_Label_2353
	.word	-88
	.word	4
	.word	_Label_2354
	.word	-92
	.word	4
	.word	_Label_2355
	.word	-96
	.word	4
	.word	_Label_2356
	.word	-100
	.word	4
	.word	_Label_2357
	.word	-104
	.word	4
	.word	_Label_2358
	.word	-108
	.word	4
	.word	_Label_2359
	.word	-112
	.word	4
	.word	_Label_2360
	.word	-116
	.word	4
	.word	_Label_2361
	.word	-120
	.word	4
	.word	_Label_2362
	.word	-124
	.word	4
	.word	_Label_2363
	.word	-128
	.word	4
	.word	_Label_2364
	.word	-132
	.word	4
	.word	_Label_2365
	.word	-136
	.word	4
	.word	_Label_2366
	.word	-140
	.word	4
	.word	_Label_2367
	.word	-144
	.word	4
	.word	_Label_2368
	.word	-148
	.word	4
	.word	_Label_2369
	.word	-152
	.word	4
	.word	_Label_2370
	.word	-156
	.word	4
	.word	_Label_2371
	.word	-160
	.word	4
	.word	_Label_2372
	.word	-164
	.word	4
	.word	_Label_2373
	.word	-168
	.word	4
	.word	_Label_2374
	.word	-172
	.word	4
	.word	_Label_2375
	.word	-176
	.word	4
	.word	_Label_2376
	.word	-180
	.word	4
	.word	_Label_2377
	.word	-184
	.word	4
	.word	_Label_2378
	.word	-188
	.word	4
	.word	_Label_2379
	.word	-192
	.word	4
	.word	_Label_2380
	.word	-212
	.word	20
	.word	_Label_2381
	.word	-216
	.word	4
	.word	_Label_2382
	.word	-220
	.word	4
	.word	0
_Label_2333:
	.ascii	"TestChMode\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2380:
	.byte	'R'
	.ascii	"stat\0"
	.align
_Label_2381:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_2382:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION OpenTestPermissions  ===============
! 
_function_623_OpenTestPermissions:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_623_OpenTestPermissions,r1
	push	r1
	mov	43,r1
_Label_3258:
	push	r0
	sub	r1,1,r1
	bne	_Label_3258
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2383 = _StringConst_445
	set	_StringConst_445,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2383  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1635,r13		! source line 1635
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0AS",r10
!   _temp_2384 = _StringConst_446
	set	_StringConst_446,r1
	store	r1,[r14+-132]
!   _temp_2385 = &stat
	add	r14,-156,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2384  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2385  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_2387
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2387
!	_Label_2386	jmp	_Label_2386
_Label_2386:
! THEN...
	mov	1639,r13		! source line 1639
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2388 = _StringConst_447
	set	_StringConst_447,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2388  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0RE",r10
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2387:
! ASSIGNMENT STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0AS",r10
!   _temp_2389 = &stat
	add	r14,-156,r1
	store	r1,[r14+-120]
!   _temp_2390 = _temp_2389 + 8
	load	[r14+-120],r1
	add	r1,8,r1
	store	r1,[r14+-116]
!   Data Move: saveMode = *_temp_2390  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-168]
! CALL STATEMENT...
!   _temp_2391 = _StringConst_448
	set	_StringConst_448,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2391  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   _temp_2392 = _StringConst_449
	set	_StringConst_449,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1647,r13		! source line 1647
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   _temp_2393 = _StringConst_450
	set	_StringConst_450,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2393  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1651,r13		! source line 1651
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2395		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2395
!	_Label_2394	jmp	_Label_2394
_Label_2394:
! THEN...
	mov	1653,r13		! source line 1653
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2396
_Label_2395:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0AS",r10
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1656,r13		! source line 1656
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2396:
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _temp_2397 = _StringConst_451
	set	_StringConst_451,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_2397  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1659,r13		! source line 1659
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2399		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2399
!	_Label_2398	jmp	_Label_2398
_Label_2398:
! THEN...
	mov	1662,r13		! source line 1662
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1662,r13		! source line 1662
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2400
_Label_2399:
! ELSE...
	mov	1664,r13		! source line 1664
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2400:
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   _temp_2401 = _StringConst_452
	set	_StringConst_452,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2401  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2403		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2403
!	_Label_2402	jmp	_Label_2402
_Label_2402:
! THEN...
	mov	1671,r13		! source line 1671
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1671,r13		! source line 1671
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2404
_Label_2403:
! ELSE...
	mov	1673,r13		! source line 1673
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0AS",r10
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2404:
! CALL STATEMENT...
!   _temp_2405 = _StringConst_453
	set	_StringConst_453,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2405  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _temp_2406 = _StringConst_454
	set	_StringConst_454,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2406  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0AS",r10
!   _temp_2407 = _StringConst_455
	set	_StringConst_455,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2409		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2409
!	_Label_2408	jmp	_Label_2408
_Label_2408:
! THEN...
	mov	1685,r13		! source line 1685
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   _temp_2410 = _StringConst_456
	set	_StringConst_456,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2410  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2412		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2412
!	_Label_2411	jmp	_Label_2411
_Label_2411:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2413
_Label_2412:
! ELSE...
	mov	1693,r13		! source line 1693
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2413:
! ASSIGNMENT STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0AS",r10
!   _temp_2414 = _StringConst_457
	set	_StringConst_457,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2414  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2416		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2416
!	_Label_2415	jmp	_Label_2415
_Label_2415:
! THEN...
	mov	1700,r13		! source line 1700
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2417
_Label_2416:
! ELSE...
	mov	1702,r13		! source line 1702
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2417:
! CALL STATEMENT...
!   _temp_2418 = _StringConst_458
	set	_StringConst_458,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _temp_2419 = _StringConst_459
	set	_StringConst_459,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0AS",r10
!   _temp_2420 = _StringConst_460
	set	_StringConst_460,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2420  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2422		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2422
!	_Label_2421	jmp	_Label_2421
_Label_2421:
! THEN...
	mov	1714,r13		! source line 1714
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2423
_Label_2422:
! ELSE...
	mov	1716,r13		! source line 1716
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1717,r13		! source line 1717
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2423:
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _temp_2424 = _StringConst_461
	set	_StringConst_461,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2424  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2426		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2426
!	_Label_2425	jmp	_Label_2425
_Label_2425:
! THEN...
	mov	1723,r13		! source line 1723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1723,r13		! source line 1723
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2426:
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _temp_2427 = _StringConst_462
	set	_StringConst_462,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2427  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2429		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2429
!	_Label_2428	jmp	_Label_2428
_Label_2428:
! THEN...
	mov	1729,r13		! source line 1729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2430
_Label_2429:
! ELSE...
	mov	1731,r13		! source line 1731
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0AS",r10
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2430:
! ASSIGNMENT STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0AS",r10
!   _temp_2431 = _StringConst_463
	set	_StringConst_463,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2431  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2432 = _StringConst_464
	set	_StringConst_464,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2432  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   _temp_2433 = _StringConst_465
	set	_StringConst_465,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2433  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2435		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2435
!	_Label_2434	jmp	_Label_2434
_Label_2434:
! THEN...
	mov	1743,r13		! source line 1743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2435:
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0AS",r10
!   _temp_2436 = _StringConst_466
	set	_StringConst_466,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2438		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2438
!	_Label_2437	jmp	_Label_2437
_Label_2437:
! THEN...
	mov	1749,r13		! source line 1749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2438:
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   _temp_2439 = _StringConst_467
	set	_StringConst_467,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2439  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2441		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2441
!	_Label_2440	jmp	_Label_2440
_Label_2440:
! THEN...
	mov	1755,r13		! source line 1755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2441:
! CALL STATEMENT...
!   _temp_2442 = _StringConst_468
	set	_StringConst_468,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2442  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
!   _temp_2443 = _StringConst_469
	set	_StringConst_469,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2443  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2445		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2445
!	_Label_2444	jmp	_Label_2444
_Label_2444:
! THEN...
	mov	1763,r13		! source line 1763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_2446
_Label_2445:
! ELSE...
	mov	1765,r13		! source line 1765
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0AS",r10
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2446:
! CALL STATEMENT...
!   _temp_2447 = _StringConst_470
	set	_StringConst_470,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2447  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   _temp_2448 = _StringConst_471
	set	_StringConst_471,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2448  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! WHILE STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0WH",r10
_Label_2449:
!   if fd < 0 then goto _Label_2451		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2451
!	_Label_2450	jmp	_Label_2450
_Label_2450:
	mov	1772,r13		! source line 1772
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0AS",r10
!   _temp_2452 = _StringConst_472
	set	_StringConst_472,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! END WHILE...
	jmp	_Label_2449
_Label_2451:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2453 = _StringConst_473
	set	_StringConst_473,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1779,r13		! source line 1779
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_623_OpenTestPermissions:
	.word	_sourceFileName
	.word	_Label_2454
	.word	0		! total size of parameters
	.word	172		! frame size = 172
	.word	_Label_2455
	.word	-12
	.word	4
	.word	_Label_2456
	.word	-16
	.word	4
	.word	_Label_2457
	.word	-20
	.word	4
	.word	_Label_2458
	.word	-24
	.word	4
	.word	_Label_2459
	.word	-28
	.word	4
	.word	_Label_2460
	.word	-32
	.word	4
	.word	_Label_2461
	.word	-36
	.word	4
	.word	_Label_2462
	.word	-40
	.word	4
	.word	_Label_2463
	.word	-44
	.word	4
	.word	_Label_2464
	.word	-48
	.word	4
	.word	_Label_2465
	.word	-52
	.word	4
	.word	_Label_2466
	.word	-56
	.word	4
	.word	_Label_2467
	.word	-60
	.word	4
	.word	_Label_2468
	.word	-64
	.word	4
	.word	_Label_2469
	.word	-68
	.word	4
	.word	_Label_2470
	.word	-72
	.word	4
	.word	_Label_2471
	.word	-76
	.word	4
	.word	_Label_2472
	.word	-80
	.word	4
	.word	_Label_2473
	.word	-84
	.word	4
	.word	_Label_2474
	.word	-88
	.word	4
	.word	_Label_2475
	.word	-92
	.word	4
	.word	_Label_2476
	.word	-96
	.word	4
	.word	_Label_2477
	.word	-100
	.word	4
	.word	_Label_2478
	.word	-104
	.word	4
	.word	_Label_2479
	.word	-108
	.word	4
	.word	_Label_2480
	.word	-112
	.word	4
	.word	_Label_2481
	.word	-116
	.word	4
	.word	_Label_2482
	.word	-120
	.word	4
	.word	_Label_2483
	.word	-124
	.word	4
	.word	_Label_2484
	.word	-128
	.word	4
	.word	_Label_2485
	.word	-132
	.word	4
	.word	_Label_2486
	.word	-136
	.word	4
	.word	_Label_2487
	.word	-156
	.word	20
	.word	_Label_2488
	.word	-160
	.word	4
	.word	_Label_2489
	.word	-164
	.word	4
	.word	_Label_2490
	.word	-168
	.word	4
	.word	0
_Label_2454:
	.ascii	"OpenTestPermissions\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2487:
	.byte	'R'
	.ascii	"stat\0"
	.align
_Label_2488:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"saveMode\0"
	.align
! 
! ===============  FUNCTION TestOpenDirAndMore  ===============
! 
_function_622_TestOpenDirAndMore:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_622_TestOpenDirAndMore,r1
	push	r1
	mov	90,r1
_Label_3259:
	push	r0
	sub	r1,1,r1
	bne	_Label_3259
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2491 = _StringConst_474
	set	_StringConst_474,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2492 = _StringConst_475
	set	_StringConst_475,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2492  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2493 = _StringConst_476
	set	_StringConst_476,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0AS",r10
!   _temp_2494 = _StringConst_477
	set	_StringConst_477,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2494  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0IF",r10
!   if fd < 0 then goto _Label_2496		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2496
!	_Label_2495	jmp	_Label_2495
_Label_2495:
! THEN...
	mov	1794,r13		! source line 1794
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0WH",r10
_Label_2497:
!   _temp_2501 = &dir
	add	r14,-360,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2501  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=_temp_2500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2500) then goto _Label_2498
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_2498
	jmp	_Label_2499
_Label_2498:
	mov	1794,r13		! source line 1794
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2503 = &dir
	add	r14,-360,r1
	store	r1,[r14+-60]
!   _temp_2504 = _temp_2503 + 0
	load	[r14+-60],r1
	add	r1,0,r1
	store	r1,[r14+-56]
!   Data Move: _temp_2502 = *_temp_2504  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2505 = _StringConst_478
	set	_StringConst_478,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2507 = &dir
	add	r14,-360,r1
	store	r1,[r14+-44]
!   _temp_2508 = _temp_2507 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   _temp_2506 = _temp_2508		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! END WHILE...
	jmp	_Label_2497
_Label_2499:
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_function_617_Check
	jmp	_Label_2509
_Label_2496:
! ELSE...
	mov	1803,r13		! source line 1803
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2510 = _StringConst_479
	set	_StringConst_479,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2509:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_2511 = _StringConst_480
	set	_StringConst_480,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   _temp_2512 = _StringConst_481
	set	_StringConst_481,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   _temp_2513 = _StringConst_482
	set	_StringConst_482,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   _temp_2514 = _StringConst_483
	set	_StringConst_483,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! WHILE STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0WH",r10
_Label_2515:
!   if fd < 0 then goto _Label_2517		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2517
!	_Label_2516	jmp	_Label_2516
_Label_2516:
	mov	1825,r13		! source line 1825
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   _temp_2518 = _StringConst_484
	set	_StringConst_484,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! END WHILE...
	jmp	_Label_2515
_Label_2517:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=retVal  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2519 = _StringConst_485
	set	_StringConst_485,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
	add	r15,364,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_622_TestOpenDirAndMore:
	.word	_sourceFileName
	.word	_Label_2520
	.word	0		! total size of parameters
	.word	360		! frame size = 360
	.word	_Label_2521
	.word	-12
	.word	4
	.word	_Label_2522
	.word	-16
	.word	4
	.word	_Label_2523
	.word	-20
	.word	4
	.word	_Label_2524
	.word	-24
	.word	4
	.word	_Label_2525
	.word	-28
	.word	4
	.word	_Label_2526
	.word	-32
	.word	4
	.word	_Label_2527
	.word	-36
	.word	4
	.word	_Label_2528
	.word	-40
	.word	4
	.word	_Label_2529
	.word	-44
	.word	4
	.word	_Label_2530
	.word	-48
	.word	4
	.word	_Label_2531
	.word	-52
	.word	4
	.word	_Label_2532
	.word	-56
	.word	4
	.word	_Label_2533
	.word	-60
	.word	4
	.word	_Label_2534
	.word	-64
	.word	4
	.word	_Label_2535
	.word	-68
	.word	4
	.word	_Label_2536
	.word	-72
	.word	4
	.word	_Label_2537
	.word	-76
	.word	4
	.word	_Label_2538
	.word	-80
	.word	4
	.word	_Label_2539
	.word	-84
	.word	4
	.word	_Label_2540
	.word	-88
	.word	4
	.word	_Label_2541
	.word	-92
	.word	4
	.word	_Label_2542
	.word	-96
	.word	4
	.word	_Label_2543
	.word	-360
	.word	264
	.word	0
_Label_2520:
	.ascii	"TestOpenDirAndMore\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2542:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_2543:
	.byte	'R'
	.ascii	"dir\0"
	.align
! 
! ===============  FUNCTION WriteTestExtend  ===============
! 
_function_621_WriteTestExtend:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_621_WriteTestExtend,r1
	push	r1
	mov	101,r1
_Label_3260:
	push	r0
	sub	r1,1,r1
	bne	_Label_3260
	mov	1839,r13		! source line 1839
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2544 = _StringConst_486
	set	_StringConst_486,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_2544  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   _temp_2545 = _StringConst_487
	set	_StringConst_487,r1
	store	r1,[r14+-344]
!   _temp_2546 = &stat
	add	r14,-392,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2546  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+4]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_2548
	load	[r14+-368],r1
	cmp	r1,r0
	be	_Label_2548
!	_Label_2547	jmp	_Label_2547
_Label_2547:
! THEN...
	mov	1852,r13		! source line 1852
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2549 = _StringConst_488
	set	_StringConst_488,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2548:
! ASSIGNMENT STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0AS",r10
!   _temp_2550 = &stat
	add	r14,-392,r1
	store	r1,[r14+-332]
!   _temp_2551 = _temp_2550 + 12
	load	[r14+-332],r1
	add	r1,12,r1
	store	r1,[r14+-328]
!   Data Move: fsize = *_temp_2551  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-356]
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
!   _temp_2552 = &stat
	add	r14,-392,r1
	store	r1,[r14+-324]
!   _temp_2553 = _temp_2552 + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-320]
!   Data Move: balloc = *_temp_2553  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-364]
! CALL STATEMENT...
!   _temp_2554 = _StringConst_489
	set	_StringConst_489,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   _temp_2555 = _StringConst_490
	set	_StringConst_490,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_2555  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-352]
! IF STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_2557		(int)
	load	[r14+-352],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2557
!	_Label_2556	jmp	_Label_2556
_Label_2556:
! THEN...
	mov	1860,r13		! source line 1860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2558 = _StringConst_491
	set	_StringConst_491,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
	add	r15,408,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2557:
! ASSIGNMENT STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=endF  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-360]
! IF STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0IF",r10
!   if endF == 16 then goto _Label_2560		(int)
	load	[r14+-360],r1
	mov	16,r2
	cmp	r1,r2
	be	_Label_2560
!	_Label_2559	jmp	_Label_2559
_Label_2559:
! THEN...
	mov	1866,r13		! source line 1866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2561 = _StringConst_492
	set	_StringConst_492,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_2561  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fsize  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2562 = _StringConst_493
	set	_StringConst_493,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0IF",r10
!   if endF <= 16 then goto _Label_2564		(int)
	load	[r14+-360],r1
	mov	16,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2564
!	_Label_2563	jmp	_Label_2563
_Label_2563:
! THEN...
	mov	1869,r13		! source line 1869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2565 = _StringConst_494
	set	_StringConst_494,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_2565  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2566 = _StringConst_495
	set	_StringConst_495,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
	add	r15,408,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2564:
! END IF...
_Label_2560:
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=endF  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=fsize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-356]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   str = _StringConst_496
	set	_StringConst_496,r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+-396],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [0 ] into _temp_2568
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-396],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-284]
!   _temp_2567 = _temp_2568		(4 bytes)
	load	[r14+-284],r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2567  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2569 = _StringConst_497
	set	_StringConst_497,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=rv  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   _temp_2570 = _StringConst_498
	set	_StringConst_498,r1
	store	r1,[r14+-276]
!   _temp_2571 = &stat
	add	r14,-392,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2571  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2572 = _StringConst_499
	set	_StringConst_499,r1
	store	r1,[r14+-268]
!   _temp_2574 = &stat
	add	r14,-392,r1
	store	r1,[r14+-260]
!   _temp_2575 = _temp_2574 + 12
	load	[r14+-260],r1
	add	r1,12,r1
	store	r1,[r14+-256]
!   Data Move: _temp_2573 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   _temp_2576 = fsize + 5		(int)
	load	[r14+-356],r1
	mov	5,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_2572  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2573  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2576  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+8]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! ASSIGNMENT STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   fsize = fsize + 5		(int)
	load	[r14+-356],r1
	mov	5,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-356]
! CALL STATEMENT...
!   _temp_2577 = _StringConst_500
	set	_StringConst_500,r1
	store	r1,[r14+-248]
!   _temp_2579 = &stat
	add	r14,-392,r1
	store	r1,[r14+-240]
!   _temp_2580 = _temp_2579 + 16
	load	[r14+-240],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: _temp_2578 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2578  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=balloc  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+8]
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! CALL STATEMENT...
!   _temp_2581 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-232]
!   _temp_2582 = _StringConst_501
	set	_StringConst_501,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2582  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_function_629_FillArray
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
!   _temp_2584 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-220]
!   Move address of _temp_2584 [0 ] into _temp_2585
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_2583 = _temp_2585		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-224]
!   _temp_2587 = fsize rem 8192		(int)
	load	[r14+-356],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   _temp_2586 = 8192 - _temp_2587		(int)
	mov	8192,r1
	load	[r14+-208],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2583  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2586  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+8]
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2588 = _StringConst_502
	set	_StringConst_502,r1
	store	r1,[r14+-204]
!   _temp_2590 = fsize rem 8192		(int)
	load	[r14+-356],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   _temp_2589 = 8192 - _temp_2590		(int)
	mov	8192,r1
	load	[r14+-196],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2588  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=rv  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2589  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+8]
!   Call the function
	mov	1892,r13		! source line 1892
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   _temp_2591 = _StringConst_503
	set	_StringConst_503,r1
	store	r1,[r14+-192]
!   _temp_2592 = &stat
	add	r14,-392,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2591  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2592  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2593 = _StringConst_504
	set	_StringConst_504,r1
	store	r1,[r14+-184]
!   _temp_2595 = &stat
	add	r14,-392,r1
	store	r1,[r14+-176]
!   _temp_2596 = _temp_2595 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2594 = *_temp_2596  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2594  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! CALL STATEMENT...
!   _temp_2597 = _StringConst_505
	set	_StringConst_505,r1
	store	r1,[r14+-168]
!   _temp_2599 = &stat
	add	r14,-392,r1
	store	r1,[r14+-160]
!   _temp_2600 = _temp_2599 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2598 = *_temp_2600  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2598  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=balloc  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+8]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   _temp_2602 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-148]
!   Move address of _temp_2602 [0 ] into _temp_2603
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   _temp_2601 = _temp_2603		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2601  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2604 = _StringConst_506
	set	_StringConst_506,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=rv  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   _temp_2605 = _StringConst_507
	set	_StringConst_507,r1
	store	r1,[r14+-136]
!   _temp_2606 = &stat
	add	r14,-392,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2605  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2606  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2607 = _StringConst_508
	set	_StringConst_508,r1
	store	r1,[r14+-128]
!   _temp_2609 = &stat
	add	r14,-392,r1
	store	r1,[r14+-120]
!   _temp_2610 = _temp_2609 + 12
	load	[r14+-120],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2608 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2608  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=16384  sizeInBytes=4
	mov	16384,r1
	store	r1,[r15+8]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! CALL STATEMENT...
!   _temp_2611 = _StringConst_509
	set	_StringConst_509,r1
	store	r1,[r14+-112]
!   _temp_2613 = &stat
	add	r14,-392,r1
	store	r1,[r14+-104]
!   _temp_2614 = _temp_2613 + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2612 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2611  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2612  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! FOR STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2619 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2620 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_2619  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-372]
_Label_2615:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_2620 then goto _Label_2618		
	load	[r14+-372],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2618
_Label_2616:
	mov	1905,r13		! source line 1905
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0AS",r10
!   _temp_2622 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-84]
!   Move address of _temp_2622 [0 ] into _temp_2623
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   _temp_2621 = _temp_2623		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2621  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! IF STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0IF",r10
!   if rv == 8192 then goto _Label_2625		(int)
	load	[r14+-368],r1
	mov	8192,r2
	cmp	r1,r2
	be	_Label_2625
!	_Label_2624	jmp	_Label_2624
_Label_2624:
! THEN...
	mov	1908,r13		! source line 1908
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2626 = _StringConst_510
	set	_StringConst_510,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2625:
!   Increment the FOR-LOOP index variable and jump back
_Label_2617:
!   ix = ix + 1
	load	[r14+-372],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
	jmp	_Label_2615
! END FOR
_Label_2618:
! CALL STATEMENT...
!   _temp_2627 = _StringConst_511
	set	_StringConst_511,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
!   _temp_2628 = _StringConst_512
	set	_StringConst_512,r1
	store	r1,[r14+-68]
!   _temp_2629 = &stat
	add	r14,-392,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2628  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2629  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! CALL STATEMENT...
!   _temp_2630 = _StringConst_513
	set	_StringConst_513,r1
	store	r1,[r14+-60]
!   _temp_2632 = &stat
	add	r14,-392,r1
	store	r1,[r14+-52]
!   _temp_2633 = _temp_2632 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2631 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2631  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=90112  sizeInBytes=4
	set	90112,r1
	store	r1,[r15+8]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! CALL STATEMENT...
!   _temp_2634 = _StringConst_514
	set	_StringConst_514,r1
	store	r1,[r14+-44]
!   _temp_2636 = &stat
	add	r14,-392,r1
	store	r1,[r14+-36]
!   _temp_2637 = _temp_2636 + 16
	load	[r14+-36],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2635 = *_temp_2637  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2635  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+8]
!   Call the function
	mov	1914,r13		! source line 1914
	mov	"\0\0CA",r10
	call	_function_616_CheckVal
! CALL STATEMENT...
!   _temp_2638 = _StringConst_515
	set	_StringConst_515,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2639 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=24576  sizeInBytes=4
	mov	24576,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+12]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_function_634_CheckFile2
! CALL STATEMENT...
!   _temp_2640 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=49152  sizeInBytes=4
	set	49152,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2640  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_function_634_CheckFile2
! CALL STATEMENT...
!   _temp_2641 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=81920  sizeInBytes=4
	set	81920,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2641  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_function_634_CheckFile2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_2642 = _StringConst_516
	set	_StringConst_516,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2642  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0RE",r10
	add	r15,408,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_621_WriteTestExtend:
	.word	_sourceFileName
	.word	_Label_2643
	.word	0		! total size of parameters
	.word	404		! frame size = 404
	.word	_Label_2644
	.word	-12
	.word	4
	.word	_Label_2645
	.word	-16
	.word	4
	.word	_Label_2646
	.word	-20
	.word	4
	.word	_Label_2647
	.word	-24
	.word	4
	.word	_Label_2648
	.word	-28
	.word	4
	.word	_Label_2649
	.word	-32
	.word	4
	.word	_Label_2650
	.word	-36
	.word	4
	.word	_Label_2651
	.word	-40
	.word	4
	.word	_Label_2652
	.word	-44
	.word	4
	.word	_Label_2653
	.word	-48
	.word	4
	.word	_Label_2654
	.word	-52
	.word	4
	.word	_Label_2655
	.word	-56
	.word	4
	.word	_Label_2656
	.word	-60
	.word	4
	.word	_Label_2657
	.word	-64
	.word	4
	.word	_Label_2658
	.word	-68
	.word	4
	.word	_Label_2659
	.word	-72
	.word	4
	.word	_Label_2660
	.word	-76
	.word	4
	.word	_Label_2661
	.word	-80
	.word	4
	.word	_Label_2662
	.word	-84
	.word	4
	.word	_Label_2663
	.word	-88
	.word	4
	.word	_Label_2664
	.word	-92
	.word	4
	.word	_Label_2665
	.word	-96
	.word	4
	.word	_Label_2666
	.word	-100
	.word	4
	.word	_Label_2667
	.word	-104
	.word	4
	.word	_Label_2668
	.word	-108
	.word	4
	.word	_Label_2669
	.word	-112
	.word	4
	.word	_Label_2670
	.word	-116
	.word	4
	.word	_Label_2671
	.word	-120
	.word	4
	.word	_Label_2672
	.word	-124
	.word	4
	.word	_Label_2673
	.word	-128
	.word	4
	.word	_Label_2674
	.word	-132
	.word	4
	.word	_Label_2675
	.word	-136
	.word	4
	.word	_Label_2676
	.word	-140
	.word	4
	.word	_Label_2677
	.word	-144
	.word	4
	.word	_Label_2678
	.word	-148
	.word	4
	.word	_Label_2679
	.word	-152
	.word	4
	.word	_Label_2680
	.word	-156
	.word	4
	.word	_Label_2681
	.word	-160
	.word	4
	.word	_Label_2682
	.word	-164
	.word	4
	.word	_Label_2683
	.word	-168
	.word	4
	.word	_Label_2684
	.word	-172
	.word	4
	.word	_Label_2685
	.word	-176
	.word	4
	.word	_Label_2686
	.word	-180
	.word	4
	.word	_Label_2687
	.word	-184
	.word	4
	.word	_Label_2688
	.word	-188
	.word	4
	.word	_Label_2689
	.word	-192
	.word	4
	.word	_Label_2690
	.word	-196
	.word	4
	.word	_Label_2691
	.word	-200
	.word	4
	.word	_Label_2692
	.word	-204
	.word	4
	.word	_Label_2693
	.word	-208
	.word	4
	.word	_Label_2694
	.word	-212
	.word	4
	.word	_Label_2695
	.word	-216
	.word	4
	.word	_Label_2696
	.word	-220
	.word	4
	.word	_Label_2697
	.word	-224
	.word	4
	.word	_Label_2698
	.word	-228
	.word	4
	.word	_Label_2699
	.word	-232
	.word	4
	.word	_Label_2700
	.word	-236
	.word	4
	.word	_Label_2701
	.word	-240
	.word	4
	.word	_Label_2702
	.word	-244
	.word	4
	.word	_Label_2703
	.word	-248
	.word	4
	.word	_Label_2704
	.word	-252
	.word	4
	.word	_Label_2705
	.word	-256
	.word	4
	.word	_Label_2706
	.word	-260
	.word	4
	.word	_Label_2707
	.word	-264
	.word	4
	.word	_Label_2708
	.word	-268
	.word	4
	.word	_Label_2709
	.word	-272
	.word	4
	.word	_Label_2710
	.word	-276
	.word	4
	.word	_Label_2711
	.word	-280
	.word	4
	.word	_Label_2712
	.word	-284
	.word	4
	.word	_Label_2713
	.word	-288
	.word	4
	.word	_Label_2714
	.word	-292
	.word	4
	.word	_Label_2715
	.word	-296
	.word	4
	.word	_Label_2716
	.word	-300
	.word	4
	.word	_Label_2717
	.word	-304
	.word	4
	.word	_Label_2718
	.word	-308
	.word	4
	.word	_Label_2719
	.word	-312
	.word	4
	.word	_Label_2720
	.word	-316
	.word	4
	.word	_Label_2721
	.word	-320
	.word	4
	.word	_Label_2722
	.word	-324
	.word	4
	.word	_Label_2723
	.word	-328
	.word	4
	.word	_Label_2724
	.word	-332
	.word	4
	.word	_Label_2725
	.word	-336
	.word	4
	.word	_Label_2726
	.word	-340
	.word	4
	.word	_Label_2727
	.word	-344
	.word	4
	.word	_Label_2728
	.word	-348
	.word	4
	.word	_Label_2729
	.word	-352
	.word	4
	.word	_Label_2730
	.word	-356
	.word	4
	.word	_Label_2731
	.word	-360
	.word	4
	.word	_Label_2732
	.word	-364
	.word	4
	.word	_Label_2733
	.word	-368
	.word	4
	.word	_Label_2734
	.word	-372
	.word	4
	.word	_Label_2735
	.word	-392
	.word	20
	.word	_Label_2736
	.word	-396
	.word	4
	.word	0
_Label_2643:
	.ascii	"WriteTestExtend\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2729:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2730:
	.byte	'I'
	.ascii	"fsize\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"endF\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"balloc\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_2734:
	.byte	'I'
	.ascii	"ix\0"
	.align
_Label_2735:
	.byte	'R'
	.ascii	"stat\0"
	.align
_Label_2736:
	.byte	'P'
	.ascii	"str\0"
	.align
! 
! ===============  FUNCTION ExecTestPermissions  ===============
! 
_function_620_ExecTestPermissions:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_620_ExecTestPermissions,r1
	push	r1
	mov	36,r1
_Label_3261:
	push	r0
	sub	r1,1,r1
	bne	_Label_3261
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2737 = _StringConst_517
	set	_StringConst_517,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2737  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
!   _temp_2738 = _StringConst_518
	set	_StringConst_518,r1
	store	r1,[r14+-112]
!   _temp_2739 = &stat
	add	r14,-136,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2738  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2739  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0IF",r10
!   if rv >= 0 then goto _Label_2741		(int)
	load	[r14+-140],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2741
!	_Label_2740	jmp	_Label_2740
_Label_2740:
! THEN...
	mov	1940,r13		! source line 1940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2742 = _StringConst_519
	set	_StringConst_519,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2742  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2741:
! IF STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0IF",r10
!   _temp_2747 = &stat
	add	r14,-136,r1
	store	r1,[r14+-92]
!   _temp_2748 = _temp_2747 + 8
	load	[r14+-92],r1
	add	r1,8,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2746 = *_temp_2748  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_2745 = _temp_2746 AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-100]
!   if _temp_2745 != 1 then goto _Label_2744		(int)
	load	[r14+-100],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2744
!	_Label_2743	jmp	_Label_2743
_Label_2743:
! THEN...
	mov	1945,r13		! source line 1945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2749 = _StringConst_520
	set	_StringConst_520,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   _temp_2750 = _StringConst_521
	set	_StringConst_521,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2750  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_2752
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_2752
!	_Label_2751	jmp	_Label_2751
_Label_2751:
! THEN...
	mov	1948,r13		! source line 1948
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2753 = _StringConst_522
	set	_StringConst_522,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2752:
! END IF...
_Label_2744:
! ASSIGNMENT STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0AS",r10
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0IF",r10
!   if pid != -1 then goto _Label_2755		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2755
!	_Label_2754	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	1956,r13		! source line 1956
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2756 = _StringConst_523
	set	_StringConst_523,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2756  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2755:
! IF STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_2757
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2757
	jmp	_Label_2758
_Label_2757:
! THEN...
	mov	1961,r13		! source line 1961
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   _temp_2759 = _StringConst_524
	set	_StringConst_524,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2759  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=200  sizeInBytes=4
	mov	200,r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_2758:
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0IF",r10
!   if rv != -1 then goto _Label_2761		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2761
!	_Label_2760	jmp	_Label_2760
_Label_2760:
! THEN...
	mov	1967,r13		! source line 1967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2762 = _StringConst_525
	set	_StringConst_525,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2763
_Label_2761:
! ELSE...
	mov	1968,r13		! source line 1968
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if rv != 100 then goto _Label_2765		(int)
	load	[r14+-140],r1
	mov	100,r2
	cmp	r1,r2
	bne	_Label_2765
!	_Label_2764	jmp	_Label_2764
_Label_2764:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2766 = _StringConst_526
	set	_StringConst_526,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2766  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2767
_Label_2765:
! ELSE...
	mov	1971,r13		! source line 1971
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2768 = _StringConst_527
	set	_StringConst_527,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2767:
! END IF...
_Label_2763:
! CALL STATEMENT...
!   _temp_2769 = _StringConst_528
	set	_StringConst_528,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   _temp_2770 = _StringConst_529
	set	_StringConst_529,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_2772
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_2772
!	_Label_2771	jmp	_Label_2771
_Label_2771:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2773 = _StringConst_530
	set	_StringConst_530,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2773  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2772:
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if pid != -1 then goto _Label_2775		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2775
!	_Label_2774	jmp	_Label_2774
_Label_2774:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2776 = _StringConst_531
	set	_StringConst_531,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2775:
! IF STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_2777
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2777
	jmp	_Label_2778
_Label_2777:
! THEN...
	mov	1989,r13		! source line 1989
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   _temp_2779 = _StringConst_532
	set	_StringConst_532,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2779  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=200  sizeInBytes=4
	mov	200,r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_2778:
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0IF",r10
!   if rv != -1 then goto _Label_2781		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2781
!	_Label_2780	jmp	_Label_2780
_Label_2780:
! THEN...
	mov	1995,r13		! source line 1995
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2782 = _StringConst_533
	set	_StringConst_533,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2782  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2783
_Label_2781:
! ELSE...
	mov	1996,r13		! source line 1996
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0IF",r10
!   if rv != 100 then goto _Label_2785		(int)
	load	[r14+-140],r1
	mov	100,r2
	cmp	r1,r2
	bne	_Label_2785
!	_Label_2784	jmp	_Label_2784
_Label_2784:
! THEN...
	mov	1997,r13		! source line 1997
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2786 = _StringConst_534
	set	_StringConst_534,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2786  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2787
_Label_2785:
! ELSE...
	mov	1999,r13		! source line 1999
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2788 = _StringConst_535
	set	_StringConst_535,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2787:
! END IF...
_Label_2783:
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   _temp_2789 = _StringConst_536
	set	_StringConst_536,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_ChMode
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_2791
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_2791
!	_Label_2790	jmp	_Label_2790
_Label_2790:
! THEN...
	mov	2004,r13		! source line 2004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2792 = _StringConst_537
	set	_StringConst_537,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2791:
! CALL STATEMENT...
!   _temp_2793 = _StringConst_538
	set	_StringConst_538,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_620_ExecTestPermissions:
	.word	_sourceFileName
	.word	_Label_2794
	.word	0		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2795
	.word	-12
	.word	4
	.word	_Label_2796
	.word	-16
	.word	4
	.word	_Label_2797
	.word	-20
	.word	4
	.word	_Label_2798
	.word	-24
	.word	4
	.word	_Label_2799
	.word	-28
	.word	4
	.word	_Label_2800
	.word	-32
	.word	4
	.word	_Label_2801
	.word	-36
	.word	4
	.word	_Label_2802
	.word	-40
	.word	4
	.word	_Label_2803
	.word	-44
	.word	4
	.word	_Label_2804
	.word	-48
	.word	4
	.word	_Label_2805
	.word	-52
	.word	4
	.word	_Label_2806
	.word	-56
	.word	4
	.word	_Label_2807
	.word	-60
	.word	4
	.word	_Label_2808
	.word	-64
	.word	4
	.word	_Label_2809
	.word	-68
	.word	4
	.word	_Label_2810
	.word	-72
	.word	4
	.word	_Label_2811
	.word	-76
	.word	4
	.word	_Label_2812
	.word	-80
	.word	4
	.word	_Label_2813
	.word	-84
	.word	4
	.word	_Label_2814
	.word	-88
	.word	4
	.word	_Label_2815
	.word	-92
	.word	4
	.word	_Label_2816
	.word	-96
	.word	4
	.word	_Label_2817
	.word	-100
	.word	4
	.word	_Label_2818
	.word	-104
	.word	4
	.word	_Label_2819
	.word	-108
	.word	4
	.word	_Label_2820
	.word	-112
	.word	4
	.word	_Label_2821
	.word	-116
	.word	4
	.word	_Label_2822
	.word	-136
	.word	20
	.word	_Label_2823
	.word	-140
	.word	4
	.word	_Label_2824
	.word	-144
	.word	4
	.word	0
_Label_2794:
	.ascii	"ExecTestPermissions\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2822:
	.byte	'R'
	.ascii	"stat\0"
	.align
_Label_2823:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_2824:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION ErrorTests  ===============
! 
_function_619_ErrorTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_619_ErrorTests,r1
	push	r1
	mov	116,r1
_Label_3262:
	push	r0
	sub	r1,1,r1
	bne	_Label_3262
	mov	2014,r13		! source line 2014
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buff
!   NEW ARRAY Constructor...
!   _temp_2826 = &_temp_2825
	add	r14,-148,r1
	store	r1,[r14+-112]
!   _temp_2826 = _temp_2826 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Next value...
	mov	30,r1
	store	r1,[r14+-108]
_Label_2828:
!   Data Move: *_temp_2826 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-112],r2
	storeb	r1,[r2]
!   _temp_2826 = _temp_2826 + 1
	load	[r14+-112],r1
	add	r1,1,r1
	store	r1,[r14+-112]
!   _temp_2827 = _temp_2827 + -1
	load	[r14+-108],r1
	add	r1,-1,r1
	store	r1,[r14+-108]
!   if intNotZero (_temp_2827) then goto _Label_2828
	load	[r14+-108],r1
	cmp	r1,r0
	bne	_Label_2828
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-148]
!   _temp_2829 = &_temp_2825
	add	r14,-148,r1
	store	r1,[r14+-104]
!   make sure array has size 30
	load	[r14+-104],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buff = *_temp_2829  (sizeInBytes=36)
	load	[r14+-104],r5
	add	r14,-460,r4
	mov	9,r3
_Label_3263:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3263
! CALL STATEMENT...
!   _temp_2830 = _StringConst_539
	set	_StringConst_539,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2831 = _StringConst_540
	set	_StringConst_540,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2832 = _StringConst_541
	set	_StringConst_541,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   _temp_2833 = _StringConst_542
	set	_StringConst_542,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Opendir
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_2835		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2835
!	_Label_2834	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2037,r13		! source line 2037
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2836 = _StringConst_543
	set	_StringConst_543,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2836  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2837
_Label_2835:
! ELSE...
	mov	2040,r13		! source line 2040
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_544
	set	_StringConst_544,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2839 = _StringConst_545
	set	_StringConst_545,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2839  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   _temp_2842 = &ent
	add	r14,-420,r1
	store	r1,[r14+-64]
!   _temp_2841 = _temp_2842 div 8192		(int)
	load	[r14+-64],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   _temp_2840 = _temp_2841 * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   p = _temp_2840 + 8000		(int)
	load	[r14+-72],r1
	mov	8000,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Call the function
	mov	2049,r13		! source line 2049
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2843 = _StringConst_546
	set	_StringConst_546,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2843  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2844 = _StringConst_547
	set	_StringConst_547,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   _temp_2846 = &buff
	add	r14,-460,r1
	store	r1,[r14+-48]
!   Move address of _temp_2846 [0 ] into _temp_2847
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_2845 = _temp_2847		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2845  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2064,r13		! source line 2064
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   Call the function
	mov	2065,r13		! source line 2065
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	2066,r13		! source line 2066
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2848 = _StringConst_548
	set	_StringConst_548,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2848  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2069,r13		! source line 2069
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2071,r13		! source line 2071
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_2837:
! CALL STATEMENT...
!   _temp_2849 = _StringConst_549
	set	_StringConst_549,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2080,r13		! source line 2080
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   _temp_2850 = _StringConst_550
	set	_StringConst_550,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2082,r13		! source line 2082
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   Call the function
	mov	2083,r13		! source line 2083
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   _temp_2851 = _StringConst_551
	set	_StringConst_551,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2086,r13		! source line 2086
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   _temp_2852 = _StringConst_552
	set	_StringConst_552,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_2854		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2854
!	_Label_2853	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	2089,r13		! source line 2089
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2855 = _StringConst_553
	set	_StringConst_553,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2856
_Label_2854:
! ELSE...
	mov	2091,r13		! source line 2091
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   _temp_2857 = &ent
	add	r14,-420,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2857  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Readdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2092,r13		! source line 2092
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   Call the function
	mov	2093,r13		! source line 2093
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Call the function
	mov	2094,r13		! source line 2094
	mov	"\0\0CA",r10
	call	_function_617_Check
! END IF...
_Label_2856:
! CALL STATEMENT...
!   _temp_2858 = _StringConst_554
	set	_StringConst_554,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2858  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2097,r13		! source line 2097
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0RE",r10
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_619_ErrorTests:
	.word	_sourceFileName
	.word	_Label_2859
	.word	0		! total size of parameters
	.word	464		! frame size = 464
	.word	_Label_2860
	.word	-12
	.word	4
	.word	_Label_2861
	.word	-16
	.word	4
	.word	_Label_2862
	.word	-20
	.word	4
	.word	_Label_2863
	.word	-24
	.word	4
	.word	_Label_2864
	.word	-28
	.word	4
	.word	_Label_2865
	.word	-32
	.word	4
	.word	_Label_2866
	.word	-36
	.word	4
	.word	_Label_2867
	.word	-40
	.word	4
	.word	_Label_2868
	.word	-44
	.word	4
	.word	_Label_2869
	.word	-48
	.word	4
	.word	_Label_2870
	.word	-52
	.word	4
	.word	_Label_2871
	.word	-56
	.word	4
	.word	_Label_2872
	.word	-60
	.word	4
	.word	_Label_2873
	.word	-64
	.word	4
	.word	_Label_2874
	.word	-68
	.word	4
	.word	_Label_2875
	.word	-72
	.word	4
	.word	_Label_2876
	.word	-76
	.word	4
	.word	_Label_2877
	.word	-80
	.word	4
	.word	_Label_2878
	.word	-84
	.word	4
	.word	_Label_2879
	.word	-88
	.word	4
	.word	_Label_2880
	.word	-92
	.word	4
	.word	_Label_2881
	.word	-96
	.word	4
	.word	_Label_2882
	.word	-100
	.word	4
	.word	_Label_2883
	.word	-104
	.word	4
	.word	_Label_2884
	.word	-108
	.word	4
	.word	_Label_2885
	.word	-112
	.word	4
	.word	_Label_2886
	.word	-148
	.word	36
	.word	_Label_2887
	.word	-152
	.word	4
	.word	_Label_2888
	.word	-156
	.word	4
	.word	_Label_2889
	.word	-420
	.word	264
	.word	_Label_2890
	.word	-424
	.word	4
	.word	_Label_2891
	.word	-460
	.word	36
	.word	0
_Label_2859:
	.ascii	"ErrorTests\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2887:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_2888:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_2889:
	.byte	'R'
	.ascii	"ent\0"
	.align
_Label_2890:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_2891:
	.byte	'A'
	.ascii	"buff\0"
	.align
! 
! ===============  FUNCTION OpenTestCreateFile  ===============
! 
_function_618_OpenTestCreateFile:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_618_OpenTestCreateFile,r1
	push	r1
	mov	126,r1
_Label_3264:
	push	r0
	sub	r1,1,r1
	bne	_Label_3264
	mov	2103,r13		! source line 2103
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buff
!   NEW ARRAY Constructor...
!   _temp_2893 = &_temp_2892
	add	r14,-428,r1
	store	r1,[r14+-392]
!   _temp_2893 = _temp_2893 + 4
	load	[r14+-392],r1
	add	r1,4,r1
	store	r1,[r14+-392]
!   Next value...
	mov	30,r1
	store	r1,[r14+-388]
_Label_2895:
!   Data Move: *_temp_2893 = 120  (sizeInBytes=1)
	mov	120,r1
	load	[r14+-392],r2
	storeb	r1,[r2]
!   _temp_2893 = _temp_2893 + 1
	load	[r14+-392],r1
	add	r1,1,r1
	store	r1,[r14+-392]
!   _temp_2894 = _temp_2894 + -1
	load	[r14+-388],r1
	add	r1,-1,r1
	store	r1,[r14+-388]
!   if intNotZero (_temp_2894) then goto _Label_2895
	load	[r14+-388],r1
	cmp	r1,r0
	bne	_Label_2895
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-428]
!   _temp_2896 = &_temp_2892
	add	r14,-428,r1
	store	r1,[r14+-384]
!   make sure array has size 30
	load	[r14+-384],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buff = *_temp_2896  (sizeInBytes=36)
	load	[r14+-384],r5
	add	r14,-496,r4
	mov	9,r3
_Label_3265:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3265
! CALL STATEMENT...
!   _temp_2897 = _StringConst_555
	set	_StringConst_555,r1
	store	r1,[r14+-380]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	2111,r13		! source line 2111
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   _temp_2898 = _StringConst_556
	set	_StringConst_556,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=8  value=_temp_2898  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	2114,r13		! source line 2114
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-432]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2115,r13		! source line 2115
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Call the function
	mov	2116,r13		! source line 2116
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   _temp_2899 = _StringConst_557
	set	_StringConst_557,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_2899  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	2119,r13		! source line 2119
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-432]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	2120,r13		! source line 2120
	mov	"\0\0CA",r10
	call	_function_617_Check
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   Call the function
	mov	2121,r13		! source line 2121
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-436]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Call the function
	mov	2122,r13		! source line 2122
	mov	"\0\0CA",r10
	call	_function_617_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Call the function
	mov	2123,r13		! source line 2123
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_2900 = _StringConst_558
	set	_StringConst_558,r1
	store	r1,[r14+-368]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+0]
!   Call the function
	mov	2126,r13		! source line 2126
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   _temp_2901 = _StringConst_559
	set	_StringConst_559,r1
	store	r1,[r14+-364]
!   _temp_2902 = &sb
	add	r14,-460,r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2902  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Call the function
	mov	2127,r13		! source line 2127
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-436]
! IF STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0IF",r10
!   if rv <= -1 then goto _Label_2904		(int)
	load	[r14+-436],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2904
!	_Label_2903	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2129,r13		! source line 2129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2905 = _StringConst_560
	set	_StringConst_560,r1
	store	r1,[r14+-356]
!   Prepare Argument: offset=8  value=_temp_2905  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+0]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0RE",r10
	add	r15,508,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   _temp_2906 = _StringConst_561
	set	_StringConst_561,r1
	store	r1,[r14+-352]
!   Prepare Argument: offset=8  value=_temp_2906  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-432]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	2134,r13		! source line 2134
	mov	"\0\0CA",r10
	call	_function_617_Check
! IF STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0IF",r10
!   if intIsZero (fd) then goto _Label_2907
	load	[r14+-432],r1
	cmp	r1,r0
	be	_Label_2907
	jmp	_Label_2908
_Label_2907:
! THEN...
	mov	2137,r13		! source line 2137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2909 = _StringConst_562
	set	_StringConst_562,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2909  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+12]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2910 = _StringConst_563
	set	_StringConst_563,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=26  sizeInBytes=4
	mov	26,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2910  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+12]
!   Call the function
	mov	2138,r13		! source line 2138
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2911 = _StringConst_564
	set	_StringConst_564,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=52  sizeInBytes=4
	mov	52,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2911  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+12]
!   Call the function
	mov	2139,r13		! source line 2139
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2912 = _StringConst_565
	set	_StringConst_565,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=78  sizeInBytes=4
	mov	78,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2912  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+12]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CA",r10
	call	_function_636_DoWrite
! CALL STATEMENT...
!   _temp_2913 = _StringConst_566
	set	_StringConst_566,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=78  sizeInBytes=4
	mov	78,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2913  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+12]
	mov	1,r1