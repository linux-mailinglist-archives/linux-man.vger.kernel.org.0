Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFB87202673
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 22:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728821AbgFTUoA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 16:44:00 -0400
Received: from inpost.hi.is ([130.208.165.62]:38956 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728807AbgFTUn7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 20 Jun 2020 16:43:59 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KKhn5N021655
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 20 Jun 2020 20:43:49 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KKhn5N021655
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KKhnRl000484;
        Sat, 20 Jun 2020 20:43:49 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KKhnoh000483;
        Sat, 20 Jun 2020 20:43:49 GMT
Date:   Sat, 20 Jun 2020 20:43:49 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: srcfx, fix warnings from "mandoc -Tlint"
Message-ID: <20200620204349.GA449@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove superfluous paragraph macros.

  Remove request ".br" if it precedes a line, that begins with a space,
as such lines automatically cause a break.

  There is no change in the output from "nroff" and "groff".

###

  Examples of warnings from "mandoc -Tlint":

mandoc: bindresvport.3:41:2: WARNING: skipping paragraph macro: PP after SH

mandoc: crypt.3:228:2: WARNING: skipping paragraph macro: PP empty

mandoc: dlinfo.3:151:2: WARNING: skipping paragraph macro: IP empty

mandoc: exec.3:86:2: WARNING: skipping paragraph macro: PP after SS

mandoc: getsubopt.3:45:2: WARNING: skipping paragraph macro: br before text line with leading blank

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/__setfpucw.3                  | 3 ---
 man3/bindresvport.3                | 1 -
 man3/catgets.3                     | 1 -
 man3/crypt.3                       | 4 ++--
 man3/dl_iterate_phdr.3             | 1 -
 man3/dlinfo.3                      | 1 -
 man3/dlsym.3                       | 1 -
 man3/errno.3                       | 2 +-
 man3/exec.3                        | 4 ----
 man3/exit.3                        | 1 -
 man3/fdim.3                        | 1 -
 man3/fmtmsg.3                      | 1 -
 man3/ftime.3                       | 1 -
 man3/getaddrinfo.3                 | 1 -
 man3/getgrouplist.3                | 1 -
 man3/gethostbyname.3               | 1 -
 man3/gethostid.3                   | 1 -
 man3/getnameinfo.3                 | 1 -
 man3/getpass.3                     | 2 +-
 man3/getrpcent.3                   | 1 -
 man3/getsubopt.3                   | 2 --
 man3/hsearch.3                     | 2 --
 man3/ilogb.3                       | 1 -
 man3/makecontext.3                 | 1 -
 man3/malloc.3                      | 1 -
 man3/memcmp.3                      | 1 -
 man3/mq_open.3                     | 1 -
 man3/ntp_gettime.3                 | 1 -
 man3/posix_spawn.3                 | 2 --
 man3/pthread_atfork.3              | 1 -
 man3/pthread_getattr_default_np.3  | 1 -
 man3/pthread_mutexattr_setrobust.3 | 1 -
 man3/pthread_setname_np.3          | 1 -
 man3/rcmd.3                        | 3 ---
 man3/realpath.3                    | 2 +-
 man3/sem_wait.3                    | 1 -
 man3/setbuf.3                      | 2 +-
 man3/setjmp.3                      | 2 --
 man3/shm_open.3                    | 6 ------
 man3/strptime.3                    | 1 -
 man3/system.3                      | 1 -
 man3/termios.3                     | 5 -----
 man3/tzset.3                       | 1 -
 man3/undocumented.3                | 1 -
 man3/xdr.3                         | 1 -
 man3/y0.3                          | 1 -
 46 files changed, 6 insertions(+), 67 deletions(-)

diff --git a/man3/__setfpucw.3 b/man3/__setfpucw.3
index f130be4d7..be546d6b9 100644
--- a/man3/__setfpucw.3
+++ b/man3/__setfpucw.3
@@ -52,11 +52,8 @@ can be used.
 .B __setfpucw(0x1372)
 .PP
 Set FPU control word on the i386 architecture to
-.br
      \- extended precision
-.br
      \- rounding to nearest
-.br
      \- exceptions on overflow, zero divide and NaN
 .SH SEE ALSO
 .BR feclearexcept (3)
diff --git a/man3/bindresvport.3 b/man3/bindresvport.3
index fafe9624d..024113df4 100644
--- a/man3/bindresvport.3
+++ b/man3/bindresvport.3
@@ -38,7 +38,6 @@ bindresvport \- bind a socket to a privileged IP port
 .BI "int bindresvport(int " sockfd ", struct sockaddr_in *" sin );
 .fi
 .SH DESCRIPTION
-.PP
 .BR bindresvport ()
 is used to bind the socket referred to by the
 file descriptor
diff --git a/man3/catgets.3 b/man3/catgets.3
index e509a3ffa..495db8f35 100644
--- a/man3/catgets.3
+++ b/man3/catgets.3
@@ -57,7 +57,6 @@ the application if it is to be saved or modified.
 The return string is
 always terminated with a null byte (\(aq\e0\(aq).
 .SH RETURN VALUE
-.PP
 On success,
 .BR catgets ()
 returns a pointer to an internal buffer area
diff --git a/man3/crypt.3 b/man3/crypt.3
index 393a95a80..060aadd90 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -225,8 +225,8 @@ then the result has the form:
 .RS
 .PP
 $\fIid\fP$\fIsalt\fP$\fIencrypted\fP
-.PP
 .RE
+.PP
 .I id
 identifies the encryption method used instead of DES and this
 then determines how the rest of the password string is interpreted.
@@ -285,8 +285,8 @@ result has the form
 .RS
 .PP
 $\fIid\fP$\fIrounds=yyy\fP$\fIsalt\fP$\fIencrypted\fP
-.PP
 .RE
+.PP
 where \fIyyy\fP is the number of hashing rounds actually used.
 The number of rounds actually used is 1000 if
 .I xxx
diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index de6036f65..2cd16cf2e 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -295,7 +295,6 @@ Name: "/lib64/ld-linux-x86-64.so.2" (7 segments)
      6: [0x7f55718afba0; memsz:    460] flags: 0x4; PT_GNU_RELRO
 .EE
 .in
-.PP
 .SS Program source
 \&
 .EX
diff --git a/man3/dlinfo.3 b/man3/dlinfo.3
index 2d8e854ad..1587a5b0e 100644
--- a/man3/dlinfo.3
+++ b/man3/dlinfo.3
@@ -148,7 +148,6 @@ fields of the buffer allocated in the previous step.
 Use a
 .B RTLD_DI_SERINFO
 to obtain the library search paths.
-.IP
 .RE
 .IP
 The
diff --git a/man3/dlsym.3 b/man3/dlsym.3
index 5feb54add..2abb0b1d0 100644
--- a/man3/dlsym.3
+++ b/man3/dlsym.3
@@ -105,7 +105,6 @@ and
 from
 .IR <dlfcn.h> .
 .PP
-.PP
 The function
 .BR dlvsym ()
 does the same as
diff --git a/man3/errno.3 b/man3/errno.3
index 2456af555..f557ad2cf 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -145,7 +145,7 @@ $ \fBerrno \-s permission\fP
 EACCES 13 Permission denied
 .EE
 .in
-.PP
+.\".PP
 .\" POSIX.1 (2001 edition) lists the following symbolic error names.  Of
 .\" these, \fBEDOM\fP and \fBERANGE\fP are in the ISO C standard.  ISO C
 .\" Amendment 1 defines the additional error number \fBEILSEQ\fP for
diff --git a/man3/exec.3 b/man3/exec.3
index 21d47f1dd..c52ae10f8 100644
--- a/man3/exec.3
+++ b/man3/exec.3
@@ -83,7 +83,6 @@ to be executed.
 The functions can be grouped based on the letters following the "exec" prefix.
 .\"
 .SS l - execl(), execlp(), execle()
-.PP
 The
 .I "const char\ *arg"
 and subsequent ellipses can be thought of as
@@ -105,7 +104,6 @@ By contrast with the 'l' functions, the 'v' functions (below) specify the
 command-line arguments of the executed program as a vector.
 .\"
 .SS v - execv(), execvp(), execvpe()
-.PP
 The
 .I "char\ *const argv[]"
 argument is an array of pointers to null-terminated strings that
@@ -116,7 +114,6 @@ The array of pointers
 .I must
 be terminated by a null pointer.
 .SS e - execle(), execvpe()
-.PP
 The environment of the caller is specified via the argument
 .IR envp .
 The
@@ -133,7 +130,6 @@ image from the external variable
 .I environ
 in the calling process.
 .SS p - execlp(), execvp(), execvpe()
-.PP
 These functions duplicate the actions of the shell in
 searching for an executable file
 if the specified filename does not contain a slash (/) character.
diff --git a/man3/exit.3 b/man3/exit.3
index a06c8cf3d..0193accfa 100644
--- a/man3/exit.3
+++ b/man3/exit.3
@@ -107,7 +107,6 @@ so it is not thread-safe.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
-.PP
 The behavior is undefined if one of the functions registered using
 .BR atexit (3)
 and
diff --git a/man3/fdim.3 b/man3/fdim.3
index dc138e0c1..2477dd0f0 100644
--- a/man3/fdim.3
+++ b/man3/fdim.3
@@ -67,7 +67,6 @@ is set to
 An overflow floating-point exception
 .RB ( FE_OVERFLOW )
 is raised.
-.PP
 .SH VERSIONS
 These functions first appeared in glibc in version 2.1.
 .SH ATTRIBUTES
diff --git a/man3/fmtmsg.3 b/man3/fmtmsg.3
index 174f61757..70dbd6788 100644
--- a/man3/fmtmsg.3
+++ b/man3/fmtmsg.3
@@ -325,7 +325,6 @@ unknown mount option
 TO FIX: See mount(8).
 .EE
 .in
-.PP
 .SH SEE ALSO
 .BR addseverity (3),
 .BR perror (3)
diff --git a/man3/ftime.3 b/man3/ftime.3
index d24893bb1..cb11110eb 100644
--- a/man3/ftime.3
+++ b/man3/ftime.3
@@ -102,7 +102,6 @@ gives microseconds;
 .BR clock_gettime (2)
 gives nanoseconds but is not as widely available.
 .SH BUGS
-.PP
 Early glibc2 is buggy and returns 0 in the
 .I millitm
 field;
diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 1e3a524b7..f3757d194 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -424,7 +424,6 @@ function frees the memory that was allocated
 for the dynamically allocated linked list
 .IR res .
 .SS Extensions to getaddrinfo() for Internationalized Domain Names
-.PP
 Starting with glibc 2.3.4,
 .BR getaddrinfo ()
 has been extended to selectively allow the incoming and outgoing
diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index cfb0676a5..ebb61a5fe 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -122,7 +122,6 @@ in the array
 even when the number of groups exceeds
 .IR *ngroups .
 .SH EXAMPLES
-.PP
 The program below displays the group list for the user named in its
 first command-line argument.
 The second command-line argument specifies the
diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index 41d4359b4..776ada84e 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -254,7 +254,6 @@ keyword was used to control the order of host lookups as defined in
 .I /etc/host.conf
 .RB ( host.conf (5)).
 .PP
-.PP
 The \fIhostent\fP structure is defined in \fI<netdb.h>\fP as follows:
 .PP
 .in +4n
diff --git a/man3/gethostid.3 b/man3/gethostid.3
index 4fef906cb..b355b0ffa 100644
--- a/man3/gethostid.3
+++ b/man3/gethostid.3
@@ -42,7 +42,6 @@ Feature Test Macro Requirements for glibc (see
 .in
 .PP
 .ad l
-.br
 .BR gethostid ():
 .RS 4
 _BSD_SOURCE || _XOPEN_SOURCE\ >=\ 500
diff --git a/man3/getnameinfo.3 b/man3/getnameinfo.3
index 65dd1528d..9f38bef74 100644
--- a/man3/getnameinfo.3
+++ b/man3/getnameinfo.3
@@ -116,7 +116,6 @@ If set, then the numeric form of the service address is returned.
 (When not set, this will still happen in case the service's name
 cannot be determined.)
 .SS Extensions to getnameinfo() for Internationalized Domain Names
-.PP
 Starting with glibc 2.3.4,
 .BR getnameinfo ()
 has been extended to selectively allow
diff --git a/man3/getpass.3 b/man3/getpass.3
index eb2c2e864..c3aa806de 100644
--- a/man3/getpass.3
+++ b/man3/getpass.3
@@ -128,7 +128,7 @@ Removed in POSIX.1-2001.
 .\" are transmitted as part of the password.
 .\" Since libc 5.4.19 also line editing is disabled, so that also
 .\" backspace and the like will be seen as part of the password.
-.PP
+.
 In the GNU C library implementation, if
 .I /dev/tty
 cannot be opened, the prompt is written to
diff --git a/man3/getrpcent.3 b/man3/getrpcent.3
index e113fc039..cb8d5cab5 100644
--- a/man3/getrpcent.3
+++ b/man3/getrpcent.3
@@ -24,7 +24,6 @@ RPC entry
 .B "void endrpcent(void);"
 .fi
 .SH DESCRIPTION
-.PP
 The
 .BR getrpcent (),
 .BR getrpcbyname (),
diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
index 27cd708e0..6cf2d7a82 100644
--- a/man3/getsubopt.3
+++ b/man3/getsubopt.3
@@ -42,7 +42,6 @@ Feature Test Macro Requirements for glibc (see
 .PD 0
 _XOPEN_SOURCE\ >= 500
 .\"    || _XOPEN_SOURCE\ &&\ _XOPEN_SOURCE_EXTENDED
-.br
     || /* Since glibc 2.12: */ _POSIX_C_SOURCE\ >=\ 200809L
 .PD
 .RE
@@ -143,7 +142,6 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
 .SH NOTES
-.PP
 Since
 .BR getsubopt ()
 overwrites any commas it finds in the string
diff --git a/man3/hsearch.3 b/man3/hsearch.3
index 85454c500..80545f851 100644
--- a/man3/hsearch.3
+++ b/man3/hsearch.3
@@ -193,7 +193,6 @@ In the event of an error, these two functions set
 .I errno
 to indicate the cause of the error.
 .SH ERRORS
-.PP
 .BR hcreate_r ()
 and
 .BR hdestroy_r ()
@@ -298,7 +297,6 @@ updating the \fIdata\fP for the given \fIkey\fP in this case.
 .PP
 Individual hash table entries can be added, but not deleted.
 .SH EXAMPLES
-.PP
 The following program inserts 24 items into a hash table, then prints
 some of them.
 .PP
diff --git a/man3/ilogb.3 b/man3/ilogb.3
index 56685295f..22b68a91c 100644
--- a/man3/ilogb.3
+++ b/man3/ilogb.3
@@ -119,7 +119,6 @@ is raised, and
 is set to
 .B EDOM
 (but see BUGS).
-.IP
 .TP
 Domain error: \fIx\fP is an infinity
 An invalid floating-point exception
diff --git a/man3/makecontext.3 b/man3/makecontext.3
index c3d6a78f9..1d8429fa4 100644
--- a/man3/makecontext.3
+++ b/man3/makecontext.3
@@ -150,7 +150,6 @@ Nevertheless, starting with version 2.8, glibc makes some changes to
 .BR makecontext (),
 to permit this on some 64-bit architectures (e.g., x86-64).
 .SH EXAMPLES
-.PP
 The example program below demonstrates the use of
 .BR getcontext (3),
 .BR makecontext (),
diff --git a/man3/malloc.3 b/man3/malloc.3
index d0270ea98..91b411e70 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -58,7 +58,6 @@ Feature Test Macro Requirements for glibc (see
         _GNU_SOURCE
 .ad
 .SH DESCRIPTION
-.PP
 The
 .BR malloc ()
 function allocates
diff --git a/man3/memcmp.3 b/man3/memcmp.3
index 247eed223..d0676201f 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -76,7 +76,6 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
-.PP
 Do not use
 .BR memcmp ()
 to compare security critical data, such as cryptographic secrets,
diff --git a/man3/mq_open.3 b/man3/mq_open.3
index ac6eb3ff2..9c3e8b4fc 100644
--- a/man3/mq_open.3
+++ b/man3/mq_open.3
@@ -126,7 +126,6 @@ specify the maximum number of messages and
 the maximum size of messages that the queue will allow.
 This structure is defined as follows:
 .PP
-.PP
 .in +4n
 .EX
 struct mq_attr {
diff --git a/man3/ntp_gettime.3 b/man3/ntp_gettime.3
index 0b4798990..725f7939e 100644
--- a/man3/ntp_gettime.3
+++ b/man3/ntp_gettime.3
@@ -66,7 +66,6 @@ struct timeval {
 };
 .EE
 .in
-.IP
 .TP
 .I maxerror
 Maximum error, in microseconds.
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 43d736c04..54fe775cc 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -217,7 +217,6 @@ is used if the caller requests it,
 or if there is no cleanup expected in the child before it
 .BR exec (3)s
 the requested file.
-.PP
 .SS pre-exec() step: housekeeping
 In between the
 .B fork()
@@ -536,7 +535,6 @@ and
 .BR posix_spawnp ()
 functions are available since glibc 2.2.
 .SH CONFORMING TO
-.PP
 POSIX.1-2001, POSIX.1-2008.
 .\" FIXME . This piece belongs in spawnattr_setflags(3)
 .\" The
diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
index faf9a2fca..c91abb8f7 100644
--- a/man3/pthread_atfork.3
+++ b/man3/pthread_atfork.3
@@ -65,7 +65,6 @@ Any of the three arguments may be NULL if no handler is needed
 in the corresponding phase of
 .BR fork (2)
 processing.
-.PP
 .SH RETURN VALUE
 On success,
 .BR pthread_atfork ()
diff --git a/man3/pthread_getattr_default_np.3 b/man3/pthread_getattr_default_np.3
index f668c9bff..c550fdb2d 100644
--- a/man3/pthread_getattr_default_np.3
+++ b/man3/pthread_getattr_default_np.3
@@ -114,7 +114,6 @@ Detach state:        JOINABLE
 Inherit scheduler:   INHERIT
 .EE
 .in
-.PP
 .SS Program source
 \&
 .EX
diff --git a/man3/pthread_mutexattr_setrobust.3 b/man3/pthread_mutexattr_setrobust.3
index 58c145383..6151abca4 100644
--- a/man3/pthread_mutexattr_setrobust.3
+++ b/man3/pthread_mutexattr_setrobust.3
@@ -186,7 +186,6 @@ were also defined.
 These GNU-specific APIs, which first appeared in glibc 2.4,
 are nowadays obsolete and should not be used in new programs.
 .SH EXAMPLES
-.PP
 The program below demonstrates the use of the robustness attribute of a
 mutex attributes object.
 In this program, a thread holding the mutex
diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
index 5f5afa9ac..acea0b468 100644
--- a/man3/pthread_setname_np.3
+++ b/man3/pthread_setname_np.3
@@ -127,7 +127,6 @@ filesystem:
 .BR pthread_getname_np ()
 retrieves it from the same location.
 .SH EXAMPLES
-.PP
 The program below demonstrates the use of
 .BR pthread_setname_np ()
 and
diff --git a/man3/rcmd.3 b/man3/rcmd.3
index 70f3f510b..c883580e4 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -114,7 +114,6 @@ All four functions are used by the
 .BR rshd (8)
 server (among others).
 .SS rcmd()
-.PP
 The
 .BR rcmd ()
 function
@@ -162,7 +161,6 @@ although you may be able to get its attention by using out-of-band data.
 The protocol is described in detail in
 .BR rshd (8).
 .SS rresvport()
-.PP
 The
 .BR rresvport ()
 function is used to obtain a socket with a privileged
@@ -186,7 +184,6 @@ for a circular search of the port range;
 on (successful) return, it contains the port number that was bound to.
 .\"
 .SS iruserok() and ruserok()
-.PP
 The
 .BR iruserok ()
 and
diff --git a/man3/realpath.3 b/man3/realpath.3
index 28917a9f9..de43eccf3 100644
--- a/man3/realpath.3
+++ b/man3/realpath.3
@@ -182,7 +182,7 @@ A typical source fragment would be
 .in
 .PP
 (But see the BUGS section.)
-.PP
+.\".PP
 .\"     2012-05-05, According to Casper Dik, the statement about
 .\"     Solaris was not true at least as far back as 1997, and
 .\"     may never have been true.
diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
index 156971eba..ccd631419 100644
--- a/man3/sem_wait.3
+++ b/man3/sem_wait.3
@@ -157,7 +157,6 @@ T}	Thread safety	MT-Safe
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
 .SH EXAMPLES
-.PP
 The (somewhat trivial) program shown below operates on an
 unnamed semaphore.
 The program expects two command-line arguments.
diff --git a/man3/setbuf.3 b/man3/setbuf.3
index 50dccff0b..18f756703 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -194,7 +194,7 @@ functions conform to C89 and C99.
 .\" On 4.2BSD and 4.3BSD systems,
 .\" .BR setbuf ()
 .\" always uses a suboptimal buffer size and should be avoided.
-.PP
+.\".PP
 You must make sure that the space that
 .I buf
 points to still exists by the time
diff --git a/man3/setjmp.3 b/man3/setjmp.3
index 0e58bde97..e6a6c9bb0 100644
--- a/man3/setjmp.3
+++ b/man3/setjmp.3
@@ -96,7 +96,6 @@ call because the "fake" return returns the value provided in
 If the programmer mistakenly passes the value 0 in
 .IR val ,
 the "fake" return will instead return 1.
-.PP
 .SS sigsetjmp() and siglongjmp()
 .BR sigsetjmp ()
 and
@@ -149,7 +148,6 @@ T{
 .BR siglongjmp ()
 T}	Thread safety	MT-Safe
 .TE
-.PP
 .SH CONFORMING TO
 .BR setjmp (),
 .BR longjmp ():
diff --git a/man3/shm_open.3 b/man3/shm_open.3
index c04fa455b..3ee91fab2 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -271,7 +271,6 @@ may be set to either the calling process's effective group ID
 or, if the object is visible in the filesystem,
 the group ID of the parent directory.
 .SH NOTES
-.PP
 POSIX leaves the behavior of the combination of
 .B O_RDONLY
 and
@@ -336,10 +335,8 @@ struct shmbuf {
 };
 .EE
 .in
-.PP
 .\"
 .SS Program source: pshm_ucase_bounce.c
-.PP
 The "bounce" program creates a new shared memory object with the name
 given in its command-line argument and sizes the object to
 match the size of the
@@ -425,10 +422,8 @@ main(int argc, char *argv[])
 }
 .EE
 .in
-.PP
 .\"
 .SS Program source: pshm_ucase_send.c
-.PP
 The "send" program takes two command-line arguments:
 the pathname of a shared memory object previously created by the "bounce"
 program and a string that is to be copied into that object.
@@ -507,7 +502,6 @@ main(int argc, char *argv[])
 }
 .EE
 .in
-.PP
 .SH SEE ALSO
 .BR close (2),
 .BR fchmod (2),
diff --git a/man3/strptime.3 b/man3/strptime.3
index a04f2531c..9403df2e1 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -313,7 +313,6 @@ T}	Thread safety	MT-Safe env locale
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SUSv2.
 .SH NOTES
-.PP
 In principle, this function does not initialize
 .I tm
 but
diff --git a/man3/system.3 b/man3/system.3
index 621a3e8da..997b1a3de 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -211,7 +211,6 @@ return value that is indistinguishable from the case
 where a shell could not be executed in the child process.
 .\"
 .SS Caveats
-.PP
 Do not use
 .BR system ()
 from a privileged program
diff --git a/man3/termios.3 b/man3/termios.3
index f0a690d2b..b05f13a1b 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -88,7 +88,6 @@ Feature Test Macro Requirements for glibc (see
 The termios functions describe a general terminal interface that is
 provided to control asynchronous communications ports.
 .SS The termios structure
-.PP
 Many of the functions described here have a \fItermios_p\fP argument
 that is a pointer to a \fItermios\fP structure.
 This structure contains at least the following members:
@@ -670,7 +669,6 @@ and
 see the description of
 noncanonical mode below.
 .SS Retrieving and changing terminal settings
-.PP
 .BR tcgetattr ()
 gets the parameters associated with the object referred by \fIfd\fP and
 stores them in the \fItermios\fP structure referenced by
@@ -837,7 +835,6 @@ in noncanonical mode to return either 0, or \-1 with
 set to
 .BR EAGAIN .
 .SS Raw mode
-.PP
 .BR cfmakeraw ()
 sets the terminal to something like the
 "raw" mode of the old Version 7 terminal driver:
@@ -858,7 +855,6 @@ termios_p\->c_cflag |= CS8;
 .in
 .\"
 .SS Line control
-.PP
 .BR tcsendbreak ()
 transmits a continuous stream of zero-valued bits for a specific
 duration, if the terminal is using asynchronous serial data
@@ -982,7 +978,6 @@ It takes the same arguments as
 .BR cfsetispeed (),
 and sets both input and output speed.
 .SH RETURN VALUE
-.PP
 .BR cfgetispeed ()
 returns the input baud rate stored in the
 \fItermios\fP
diff --git a/man3/tzset.3 b/man3/tzset.3
index 845f6283e..e64854bc1 100644
--- a/man3/tzset.3
+++ b/man3/tzset.3
@@ -234,7 +234,6 @@ T}	Thread safety	MT-Safe env locale
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4, 4.3BSD.
 .SH NOTES
-.PP
 4.3BSD had a function
 .BI "char *timezone(" zone ", " dst )
 that returned the
diff --git a/man3/undocumented.3 b/man3/undocumented.3
index e240ef294..6e4fb4339 100644
--- a/man3/undocumented.3
+++ b/man3/undocumented.3
@@ -42,7 +42,6 @@ similar to that of the other Linux section 3 man pages), and send it to
 .B mtk.manpages@gmail.com
 for inclusion in the next man page release.
 .SS The list
-.PP
 .BR authdes_create (3),
 .BR authdes_getucred (3),
 .BR authdes_pk_create (3),
diff --git a/man3/xdr.3 b/man3/xdr.3
index b6da59d3e..7ba5d1153 100644
--- a/man3/xdr.3
+++ b/man3/xdr.3
@@ -12,7 +12,6 @@
 .SH NAME
 xdr \- library routines for external data representation
 .SH SYNOPSIS AND DESCRIPTION
-.PP
 These routines allow C programmers to describe
 arbitrary data structures in a machine-independent fashion.
 Data for remote procedure calls are transmitted using these
diff --git a/man3/y0.3 b/man3/y0.3
index ad39a002f..5c4f0a678 100644
--- a/man3/y0.3
+++ b/man3/y0.3
@@ -85,7 +85,6 @@ _XOPEN_SOURCE \ >=\ 600
 .RE
 .ad b
 .SH DESCRIPTION
-.PP
 The
 .BR y0 ()
 and
-- 
2.27.0
