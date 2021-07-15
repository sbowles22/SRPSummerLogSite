---
layout: post
title: Jul 15, 2021 - RASP Toolkit, Errors and Failures
---

Today we had another meeting, this time on the SNN hardware implementations survey discussed in the previous post. Then, I talked with my grad student about what our plans are for using Braindrop and FPAAs. Afterwards, I got to work on getting the RASP Hodgkin-Huxley demo to work, with little success.

### RASP Failures

Here is a rough recount of trying to run the hhn.xcos file (the file that contains the Hodgkin-Huxley demo). 

1. I try to open the file and run the simulation
2. I find that there are some simulation errors
3. I try to compile the file to make sure that the demo isn't broken
4. Error: no FPAA board selected
5. Go on line to find the original video where Dr. Hasler runs the code
6. Cannot find the video
7. Go to the ANT21 slack channel to find the schedule where Dr. Hasler posted the video
8. Cannot find the schedule
9. Get link from grad student, find video, and find FPAA board type
10. Error: no chip number selected
11. Go back to video only to find that the chip number is covered by a window in the video
12. Go to a different video to find chip number
13. Compiled successfully! (or so I thought; while I was told that it worked, apparently my chip number was incorrect)
14. Attempt to program design (basically run)
15. Error, no USB devices connected
16. Make sure I have the proper settings and packages to simulate USB connections on virtualbox
17. Realize I have to use an email server to communicate with the FPAA
18. Enter my email and password (which is stored as a variable and sent out in error messages)
19. Receive many, many error messages
20. Tweak things for some more tries, using different email accounts, checking to make sure my password is what I think it is
21. Read the traceback and find that I need to use a different board and chip number
22. Get a security risk email
23. Disable low-security app sign in restrictions on my email
24. Import Errors from the email code (likely the email server is down)
25. After talking to Dr. Young, decided to attempt the file as a ~~tar ball~~ zip file to run on our own FPAA (the crossed out tar ball comes from a misspeak that caused some confusion to my file searching)
26. Find the file I need to send to our FPAA, and begin trying to get it onto my own computer
27. Try to enable bidirectional drag and drop between my vm and local machine
28. Am told by stack overflow that this requires some programs that are only on windows (I use ubuntu) 
29. Try to enable bidirectional file copy and pasting
30. Same issue
31. Deciding to ssh into the vm, I set up port forwarding to the vm
32. ssh_exchange_identification: Connection closed by remote host
33. Properly open vm
34. ssh_exchange_identification: read: Connection reset by peer
35. Try to install openssh-server
36. Dependency error
37. Try to install openssh-server dependencies
38. 404: Archive not found (keep in mind that this is a ubuntu 12.04 vm, so there is no real hope of finding the proper files)

After what was a disheartening many hours trying to debug that program, I'm a bit disheartened. I'm used to this level of failure in applications, but I am nevertheless frustrated. I am now waiting on getting a USB stick, so I can transfer the file, so I can run it on our hardware. I expect a few more errors along the way but progress is progress.

## What did I learn?

Don't have your application only run in a ubuntu 12.04 vm where it can only communicate with your hardware by email, or just have your simulator work properly. 

## General happiness (1-10)	

5

## General confidence (1-10)

5

