Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B831202B84
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 18:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730402AbgFUQFd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 12:05:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730255AbgFUQFd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 12:05:33 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF0DCC061794
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 09:05:32 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05LG5TwW011983
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 21 Jun 2020 16:05:29 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05LG5TwW011983
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05LG5Tbf003749;
        Sun, 21 Jun 2020 16:05:29 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05LG5Th3003748;
        Sun, 21 Jun 2020 16:05:29 GMT
Date:   Sun, 21 Jun 2020 16:05:29 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: srcfix, fix warnings from "mandoc -Tlint"
Message-ID: <20200621160529.GA3335@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove superfluous paragraph macros.

  Remove superfluous request ".sp" after a heading macro (.SH).

  Change one .IP macro to an equvalent ".sp \n(PDu" in "pipe.7".

  The output from "nroff" and "groff" is unchanged.

###

  Examples of warnings from "mandoc -Tlint":

mandoc: boot.7:19:2: WARNING: skipping paragraph macro: PP after SH

mandoc: bpf-helpers.7:63:2: WARNING: skipping paragraph macro: sp after SH

mandoc: credentials.7:287:2: WARNING: skipping paragraph macro: PP after SS

mandoc: man-pages.7:616:2: WARNING: skipping paragraph macro: PP empty

mandoc: pipe.7:377:2: WARNING: skipping paragraph macro: IP empty

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/boot.7                | 2 --
 man7/bpf-helpers.7         | 5 -----
 man7/capabilities.7        | 2 --
 man7/credentials.7         | 1 -
 man7/fanotify.7            | 1 -
 man7/feature_test_macros.7 | 1 -
 man7/futex.7               | 4 ----
 man7/mailaddr.7            | 3 ---
 man7/man-pages.7           | 4 ----
 man7/man.7                 | 3 ---
 man7/namespaces.7          | 1 -
 man7/netlink.7             | 1 -
 man7/packet.7              | 1 -
 man7/pipe.7                | 2 +-
 man7/pkeys.7               | 1 -
 man7/raw.7                 | 1 -
 man7/sched.7               | 1 -
 man7/sigevent.7            | 1 -
 man7/signal.7              | 1 -
 man7/time_namespaces.7     | 2 --
 man7/unicode.7             | 1 -
 man7/uri.7                 | 5 -----
 man7/user_namespaces.7     | 6 ------
 man7/uts_namespaces.7      | 1 -
 man7/vdso.7                | 1 -
 25 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/man7/boot.7 b/man7/boot.7
index cb861932c..25d7b6a7c 100644
--- a/man7/boot.7
+++ b/man7/boot.7
@@ -16,7 +16,6 @@
 .SH NAME
 boot \- System bootup process based on UNIX System V Release 4
 .SH DESCRIPTION
-.PP
 The \fBbootup process\fR (or "\fBboot sequence\fR") varies in details
 among systems, but can be roughly divided into phases controlled by
 the following components:
@@ -215,7 +214,6 @@ A boot script in \fI/etc/init.d\fR reads and includes its configuration
 file (that is, it "\fBsources\fR" its configuration file) and then uses
 the variable values.
 .SH FILES
-.PP
 .IR /etc/init.d/ ,
 .IR /etc/rc[S0\-6].d/ ,
 .I /etc/sysconfig/
diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index 114228341..f686a5cdb 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -60,7 +60,6 @@ level margin: \\n[rst2man-indent\\n[rst2man-indent-level]]
 .\" (helpers description), and from scripts/bpf_helpers_doc.py in the same
 .\" repository (header and footer).
 .SH DESCRIPTION
-.sp
 The extended Berkeley Packet Filter (eBPF) subsystem consists in programs
 written in a pseudo\-assembly language, then attached to one of the several
 kernel hooks and run in reaction of specific events. This framework differs
@@ -3430,7 +3429,6 @@ subject to CHECKSUM_UNNECESSARY.
 .UNINDENT
 .UNINDENT
 .SH EXAMPLES
-.sp
 Example usage for most of the eBPF helpers listed in this manual page are
 available within the Linux kernel sources, at the following locations:
 .INDENT 0.0
@@ -3440,7 +3438,6 @@ available within the Linux kernel sources, at the following locations:
 \fItools/testing/selftests/bpf/\fP
 .UNINDENT
 .SH LICENSE
-.sp
 eBPF programs can have an associated license, passed along with the bytecode
 instructions to the kernel when the programs are loaded. The format for that
 string is identical to the one in use for kernel modules (Dual licenses, such
@@ -3462,7 +3459,6 @@ char ____license[] __attribute__((section("license"), used)) = "GPL";
 .UNINDENT
 .UNINDENT
 .SH IMPLEMENTATION
-.sp
 This manual page is an effort to document the existing eBPF helper functions.
 But as of this writing, the BPF sub\-system is under heavy development. New eBPF
 program or map types are added, along with new helper functions. Some helpers
@@ -3511,7 +3507,6 @@ Helper functions that invalidate the checks on \fBdata\fP and \fBdata_end\fP
 pointers for network processing are listed in function
 \fBbpf_helper_changes_pkt_data\fP() in file \fInet/core/filter.c\fP\&.
 .SH SEE ALSO
-.sp
 \fBbpf\fP(2),
 \fBbpftool\fP(8),
 \fBcgroups\fP(7),
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index affa2033a..39bbd8c2c 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -1125,7 +1125,6 @@ according to the circumstances in which the extended attribute is
 created or modified.
 .\"
 .SS Transformation of capabilities during execve()
-.PP
 During an
 .BR execve (2),
 the kernel calculates the new capabilities of
@@ -1699,7 +1698,6 @@ For further information on the interaction of
 capabilities and user namespaces, see
 .BR user_namespaces (7).
 .SH CONFORMING TO
-.PP
 No standards govern capabilities, but the Linux capability implementation
 is based on the withdrawn POSIX.1e draft standard; see
 .UR https://archive.org\:/details\:/posix_1003.1e-990310
diff --git a/man7/credentials.7 b/man7/credentials.7
index 301877529..692b9a7c8 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -284,7 +284,6 @@ that the process may create (see
 .BR inotify (7)).
 .\"
 .SS Modifying process user and group IDs
-.PP
 Subject to rules described in the relevant manual pages,
 a process can use the following APIs to modify its user and group IDs:
 .TP
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 73204cf7f..986969366 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -542,7 +542,6 @@ If access is denied, the requesting application call will receive an
 .B EPERM
 error.
 .SS Closing the fanotify file descriptor
-.PP
 When all file descriptors referring to the fanotify notification group are
 closed, the fanotify group is released and its resources
 are freed for reuse by the kernel.
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index ce01f25be..186c8e27d 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -654,7 +654,6 @@ Use of this macro requires compiler support, available with
 .BR gcc (1)
 since version 4.0.
 .SS Default definitions, implicit definitions, and combining definitions
-.PP
 If no feature test macros are explicitly defined,
 then the following feature test macros are defined by default:
 .B _BSD_SOURCE
diff --git a/man7/futex.7 b/man7/futex.7
index 467a4c1b1..7047817f5 100644
--- a/man7/futex.7
+++ b/man7/futex.7
@@ -16,7 +16,6 @@ futex \- fast user-space locking
 .B #include <linux/futex.h>
 .fi
 .SH DESCRIPTION
-.PP
 The Linux kernel provides futexes ("Fast user-space mutexes")
 as a building block for fast user-space
 locking and semaphores.
@@ -49,7 +48,6 @@ Processes can share this integer using
 via shared memory segments, or because they share memory space,
 in which case the application is commonly called multithreaded.
 .SS Semantics
-.PP
 Any futex operation starts in user space,
 but it may be necessary to communicate with the kernel using the
 .BR futex (2)
@@ -90,12 +88,10 @@ for
 more details.
 The same holds for asynchronous futex waiting.
 .SH VERSIONS
-.PP
 Initial futex support was merged in Linux 2.5.7
 but with different semantics from those described above.
 Current semantics are available from Linux 2.5.40 onward.
 .SH NOTES
-.PP
 To reiterate, bare futexes are not intended as an easy-to-use
 abstraction for end users.
 Implementors are expected to be assembly literate and to have read
diff --git a/man7/mailaddr.7 b/man7/mailaddr.7
index b8542cd06..d71aba8ba 100644
--- a/man7/mailaddr.7
+++ b/man7/mailaddr.7
@@ -77,7 +77,6 @@ The name may have to be quoted using "", for example, if it contains ".":
 .PP
 	"John Q. Doe" <john.doe@monet.example.com>
 .SS Abbreviation
-.PP
 Some mail systems let users abbreviate the domain name.
 For instance,
 users at example.com may get away with "john.doe@monet" to
@@ -85,7 +84,6 @@ send mail to John Doe.
 .I "This behavior is deprecated."
 Sometimes it works, but you should not depend on it.
 .SS Route-addrs
-.PP
 In the past, sometimes one had to route a message through
 several hosts to get it to its final destination.
 Addresses which show these relays are termed "route-addrs".
@@ -102,7 +100,6 @@ They occur sometimes in old mail archives.
 It is generally possible to ignore all but the "user@hostc"
 part of the address to determine the actual address.
 .SS Postmaster
-.PP
 Every site is required to have a user or user alias designated
 "postmaster" to which problems with the mail system may be
 addressed.
diff --git a/man7/man-pages.7 b/man7/man-pages.7
index ed83889c9..296eec73f 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -46,7 +46,6 @@ of the man pages on a Linux system.
 The conventions described on this page may also be useful
 for authors writing man pages for other projects.
 .SS Sections of the manual pages
-.PP
 The manual Sections are traditionally defined as follows:
 .TP
 .B 1 User commands (Programs)
@@ -508,7 +507,6 @@ Use of "they" ("them", "themself", "their") as a gender-neutral singular
 pronoun is acceptable.
 .\"
 .SS Formatting conventions for manual pages describing commands
-.PP
 For manual pages that describe a command (typically in Sections 1 and 8),
 the arguments are always specified using italics,
 .IR "even in the SYNOPSIS section" .
@@ -552,7 +550,6 @@ makes it easier to see the effect of patches,
 which often operate at the level of individual sentences or sentence clauses.
 .\"
 .SS Formatting conventions (general)
-.PP
 Paragraphs should be separated by suitable markers (usually either
 .I .PP
 or
@@ -614,7 +611,6 @@ Thu Jul  7 13:01:27 CEST 2016
 .EE
 .in
 .PP
-.PP
 Any reference to another man page
 should be written with the name in bold,
 .I always
diff --git a/man7/man.7 b/man7/man.7
index 678d64607..95033539f 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -177,7 +177,6 @@ punctuation in Roman.
 If no arguments are given, the command is applied to the following line
 of text.
 .SS Other macros and strings
-.PP
 Below are other relevant macros and predefined strings.
 Unless noted otherwise, all macros
 cause a break (end the current line of text).
@@ -429,7 +428,6 @@ that should be added to this list.
 .br
 .I /usr/man/whatis
 .SH NOTES
-.PP
 By all means include full URLs (or URIs) in the text itself;
 some tools such as
 .BR man2html (1)
@@ -483,7 +481,6 @@ tbl(1)
 .B v
 vgrind(1)
 .SH BUGS
-.PP
 Most of the macros describe formatting (e.g., font type and spacing) instead
 of marking semantic content (e.g., this text is a reference to another page),
 compared to formats like mdoc and DocBook (even HTML has more semantic
diff --git a/man7/namespaces.7 b/man7/namespaces.7
index 4d26d7d7d..a366700a5 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -41,7 +41,6 @@ describes the associated
 files, and summarizes the APIs for working with namespaces.
 .\"
 .SS Namespace types
-.PP
 The following table shows the namespace types available on Linux.
 The second column of the table shows the flag value that is used to specify
 the namespace type in various APIs.
diff --git a/man7/netlink.7 b/man7/netlink.7
index 2b2682ff2..c3042b847 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -394,7 +394,6 @@ and
 .B NETLINK_SELINUX
 groups allow other users to receive messages.
 No groups allow other users to send messages.
-.PP
 .SS Socket options
 To set or get a netlink socket option, call
 .BR getsockopt (2)
diff --git a/man7/packet.7 b/man7/packet.7
index c689d522d..f33bb244d 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -550,7 +550,6 @@ In addition, other errors may be generated by the low-level driver.
 is a new feature in Linux 2.2.
 Earlier Linux versions supported only
 .BR SOCK_PACKET .
-.PP
 .SH NOTES
 For portable programs it is suggested to use
 .B AF_PACKET
diff --git a/man7/pipe.7 b/man7/pipe.7
index bb6ed7c5f..89d727b77 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -374,7 +374,7 @@ are performed only when increasing a pipe's capacity;
 an unprivileged user can always decrease a pipe's capacity.
 .IP (3)
 The accounting and checking against the limits were done as follows:
-.IP
+.sp \n(PDu
 .RS
 .PD 0
 .IP (a) 4
diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 5d22085e5..d722c3966 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -163,7 +163,6 @@ configured and built with the
 .B CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
 option.
 .SH EXAMPLES
-.PP
 The program below allocates a page of memory with read and write permissions.
 It then writes some data to the memory and successfully reads it
 back.
diff --git a/man7/raw.7 b/man7/raw.7
index 779437b66..6d479eb6a 100644
--- a/man7/raw.7
+++ b/man7/raw.7
@@ -67,7 +67,6 @@ Total Length:Always filled in
 .TE
 .RE
 .PP
-.PP
 If
 .B IP_HDRINCL
 is specified and the IP header has a nonzero destination address, then
diff --git a/man7/sched.7 b/man7/sched.7
index 2d1d520f2..face1d4c1 100644
--- a/man7/sched.7
+++ b/man7/sched.7
@@ -686,7 +686,6 @@ that is, no CPU time is set aside for non-real-time processes
 The default value in this file is 950,000 (0.95 seconds),
 meaning that 5% of the CPU time is reserved for processes that
 don't run under a real-time or deadline scheduling policy.
-.PP
 .SS Response time
 A blocked high priority thread waiting for I/O has a certain
 response time before it is scheduled again.
diff --git a/man7/sigevent.7 b/man7/sigevent.7
index 503982064..a7cdce102 100644
--- a/man7/sigevent.7
+++ b/man7/sigevent.7
@@ -51,7 +51,6 @@ struct sigevent {
 };
 .fi
 .SH DESCRIPTION
-.PP
 The
 .I sigevent
 structure is used by various APIs
diff --git a/man7/signal.7 b/man7/signal.7
index f6868e38b..8d80fa3d6 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -323,7 +323,6 @@ is to terminate the process without a core dump.)
 Linux 2.4 conforms to the POSIX.1-2001 requirements for these signals,
 terminating the process with a core dump.
 .PP
-.PP
 .B SIGEMT
 is not specified in POSIX.1-2001, but nevertheless appears
 on most other UNIX systems,
diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index 708906a8b..15c2b11e9 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -186,7 +186,6 @@ the contents of the
 .I timens_offsets
 file are inherited from the time namespace of the creating process.
 .SH NOTES
-.PP
 Use of time namespaces requires a kernel that is configured with the
 .B CONFIG_TIME_NS
 option.
@@ -212,7 +211,6 @@ The motivation for adding time namespaces was to allow
 the monotonic and boot-time clocks to maintain consistent values
 during container migration and checkpoint/restore.
 .SH EXAMPLES
-.PP
 The following shell session demonstrates the operation of time namespaces.
 We begin by displaying the inode number of the time namespace
 of a shell in the initial time namespace:
diff --git a/man7/unicode.7 b/man7/unicode.7
index 47f7198da..363d294ca 100644
--- a/man7/unicode.7
+++ b/man7/unicode.7
@@ -190,7 +190,6 @@ and
 .BR wcwidth (3)
 tells, how many positions (0\(en2) the cursor is advanced by the
 output of a character.
-.PP
 .SS Private Use Areas (PUA)
 In the Basic Multilingual Plane,
 the range 0xe000 to 0xf8ff will never be assigned to any characters by
diff --git a/man7/uri.7 b/man7/uri.7
index cadfad0c7..fa2f9e7c9 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -69,7 +69,6 @@ absolute_path = "/"  path_segments
 relative_path = relative_segment [ absolute_path ]
 .fi
 .SH DESCRIPTION
-.PP
 A Uniform Resource Identifier (URI) is a short string of characters
 identifying an abstract or physical resource (for example, a web page).
 A Uniform Resource Locator (URL) is a URI
@@ -487,7 +486,6 @@ URNs are to be supported by the urn: scheme, with a hierarchical name space
 URNs are not widely implemented.
 Not all tools support all schemes.
 .SS Character encoding
-.PP
 URIs use a limited number of characters so that they can be
 typed in and used in a variety of situations.
 .PP
@@ -582,7 +580,6 @@ permitted, and can be used only when there is no defined base
 Don't use abbreviated URIs as hypertext links inside a document;
 use the standard format as described here.
 .SH CONFORMING TO
-.PP
 .UR http://www.ietf.org\:/rfc\:/rfc2396.txt
 (IETF RFC\ 2396)
 .UE ,
@@ -628,7 +625,6 @@ will converge to common URI formats, and a future
 version of this man page will describe the converged result.
 Efforts to aid this convergence are encouraged.
 .SS Security
-.PP
 A URI does not in itself pose a security threat.
 There is no general guarantee that a URL, which at one time
 located a given resource, will continue to do so.
@@ -671,7 +667,6 @@ In particular, the use of a password within
 the "userinfo" component of a URI is strongly recommended against except
 in those rare cases where the "password" parameter is intended to be public.
 .SH BUGS
-.PP
 Documentation may be placed in a variety of locations, so there
 currently isn't a good URI scheme for general online documentation
 in arbitrary formats.
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index a3403f506..a95592ecb 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -496,7 +496,6 @@ confusion when using these interfaces.
 .\" ============================================================
 .\"
 .SS Defining user and group ID mappings: writing to uid_map and gid_map
-.PP
 After the creation of a new user namespace, the
 .I uid_map
 file of
@@ -813,7 +812,6 @@ by denying any pathway for an unprivileged process to drop groups with
 .\" ============================================================
 .\"
 .SS Unmapped user and group IDs
-.PP
 There are various places where an unmapped user ID (group ID)
 may be exposed to user space.
 For example, the first process in a new user namespace may call
@@ -873,7 +871,6 @@ that field is displayed as 4294967295 (\-1 as an unsigned integer).
 .\" ============================================================
 .\"
 .SS Accessing files
-.PP
 In order to determine permissions when an unprivileged process accesses a file,
 the process credentials (UID, GID) and the file credentials
 are in effect mapped back to what they would be in
@@ -885,7 +882,6 @@ permissions mask accessibility model, such as System V IPC objects
 .\" ============================================================
 .\"
 .SS Operation of file-related capabilities
-.PP
 Certain capabilities allow a process to bypass various
 kernel-enforced restrictions when performing operations on
 files owned by other users or groups.
@@ -921,7 +917,6 @@ at least the file's user ID has a mapping in the user namespace
 .\" ============================================================
 .\"
 .SS Set-user-ID and set-group-ID programs
-.PP
 When a process inside a user namespace executes
 a set-user-ID (set-group-ID) program,
 the process's effective user (group) ID inside the namespace is changed
@@ -941,7 +936,6 @@ flag, as described in
 .\" ============================================================
 .\"
 .SS Miscellaneous
-.PP
 When a process's user and group IDs are passed over a UNIX domain socket
 to a process in a different user namespace (see the description of
 .B SCM_CREDENTIALS
diff --git a/man7/uts_namespaces.7 b/man7/uts_namespaces.7
index 4db8c51e2..4c32165fc 100644
--- a/man7/uts_namespaces.7
+++ b/man7/uts_namespaces.7
@@ -42,7 +42,6 @@ Changes made to these identifiers are visible to all other
 processes in the same UTS namespace,
 but are not visible to processes in other UTS namespaces.
 .PP
-.PP
 When a process creates a new UTS namespace using
 .BR clone (2)
 or
diff --git a/man7/vdso.7 b/man7/vdso.7
index 2f7d3f6cc..4155c617c 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -254,7 +254,6 @@ it's best to refer to the public documentation:
 http://docs.blackfin.uclinux.org/doku.php?id=linux\-kernel:fixed\-code
 .SS mips functions
 .\" See linux/arch/mips/vdso/vdso.ld.S
-.PP
 The table below lists the symbols exported by the vDSO.
 .if t \{\
 .ft CW
-- 
2.27.0
