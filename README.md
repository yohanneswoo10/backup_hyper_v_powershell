# backup_hyper_v_powershell
backup hyper-v vm using powershell

THIS IS HOW TO BACK UP HYPER-V VM USING POWERSHELL
Step in the code are
1. check if the hyper-v VM state is running
2. if its running then turn off the VM
3. copy the folder of the hyper-v VM to backup disk or somewhere else
4. start the VM again
   
TESTED WITH WINDOWS SERVER 2012 R2 SUCCESS

TO MAKE IT AUTO BACKUP YOU CAN ADD THIS CODE IN TASK SCHEDULER
