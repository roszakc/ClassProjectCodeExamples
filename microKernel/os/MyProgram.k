code MyProgram

-----------------------------  main  ---------------------------------

  function main ()
    --
    -- This is a generic User-Level program.  Feel free to modify it and
    -- use it during debugging.
    --
    var pid, ppid: int = 0

      print ("\nMy user-level program is running!!!\n")
      pid = Sys_GetPid ()
      printIntVar("pid", pid)
      ppid = Sys_GetPPid ()
      printIntVar("ppid", ppid)

      Sys_Shutdown ()

    endFunction

endCode
