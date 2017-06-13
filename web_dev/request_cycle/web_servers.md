## Release 1
1. What are some of the key design philosophies of the Linux operating system?

  * Small is beautiful & Each program does 1 thing well - each program command is fairly small and each performs a specific task
  * Choose portability over efficiency - shell scripts are more portable and more efficient in the long run than the perceived efficiency of writing a program in a compiled language (bc shell scripts can run on many systems that would otherwise be incompatible)
  * Use software leverage - borrow good code rather than re-writing something that's already been done

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

  * A virtual private server (VPS) is one type of hosting environment. A VPS hosting proider uses virtualization software to provide customers access to a virtual machine (VM). Many customers can share a VM that lives on the same physical server, but they are walled off from each other so it's essentially private.

  * Advantages of using a VPS:
    * you have full access to the VPS operating system and can conigure it to meet your own requirements.
    * you can choose to host additional services on a VPS
    * you can hos multiple websites

  * Disadvantages of using a VPS
    * Performance - VPS will usually throttle the server peerformance in order to accomomodate other customers (or if it's not throttled, another customer's use of excessive resources could slow down your performance)
    * Security - not appropriate for some security requirements who would avoid multi-tenant evironments

  * Other types of hosting environments: dedicated server, shared server

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

  * it's good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.
  * protects you from transofrming trivial errors into disasters
  * this way if you create a vulnerability, the root is still protected from an attacker
  * if there's a crash, it won't wipe out your entire root directory