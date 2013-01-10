# Secure Embeddable Virtual Machine for Native Code

## Petr Hosek and Bennet Yee

We propose a new type of _embedded virtual machine_ capable of running
native applications. The aim is to combine aspects of a microkernel
design with the existing software fault isolation technology to provide
a POSIX compliant execution environment. Such an execution environment
presents an alternative to hardware-based virtual machine monitors,
providing strong security assurances at fractional trusted code base
size without the necessity of running an entire operating system while
being more powerful than the existing language runtimes.  The portable
user space implementation allows native applications to be run on top of
three major operating systems with minimal overhead.  Well-defined
external interface allows the execution environment to be easily
embedded within both new and existing systems.
