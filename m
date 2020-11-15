Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90B672B34F1
	for <lists+linux-man@lfdr.de>; Sun, 15 Nov 2020 13:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726771AbgKOMdF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 07:33:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726770AbgKOMdD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 07:33:03 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66501C0613D1
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 04:33:03 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c9so21224870wml.5
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 04:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kB5krERAnqdDvsRaghO3que77PX2WEsn67YBIXa035g=;
        b=EogWYR6IF7ADwaW49WEuGYg+ecqqml1KC0tBN8XJYE6IfN2g56cOnDd7k71aNOFNZM
         LNjAmu2xlfcg/0LJny3YSQCNQRKh1tMGPObK200bBhAfERDRaJaIiyTdV1tqRwGDFS41
         /9DVd2+IgKKeDh/izFI+AC4KWyrfyjAJI470RoU6CDyzj16DyOXAUjZ+lHcpCNhMKQaJ
         2qqM8f/oLlojWe6eIocOj5Vv8MDgApHlXFl0mSJS0I7oMbygzuK5W4bgkffILyrswp2v
         wljQQvN7ppAnla3FGovMkb+Opxbs/Myrn+hpzMqHaGwwoTfwHpFmJHWPyAavxtewAUHT
         7Vqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kB5krERAnqdDvsRaghO3que77PX2WEsn67YBIXa035g=;
        b=fpiuz4S/U8PahQ2Il9HjU2gaoZhhBJ14ADb01MJR02+zuZoHfclP+/3VI54CyaXyqf
         c3EIoVtz6kFv27KNI4NgE1juJJiRYRkxxLbYJFhPT/KY0Z6dAm+PmOY1UI6/VzGQle2i
         wUtVBSNVpXz0PKM51EL/Mlk/jbdFirrRcZxsC1GJs+9qpoFh4D9PawLwpEnyEP93WmLe
         ieWr9sjjO3Zgcsyx0dfijc1lNNYQHpQhrw/KKYioO4D/9A5i0fiUE1NXTPVU4h5LFvew
         TM5maUr1HjdJ+nhuYtbkcWPmMLP/XQrKrpiMnzuBKywwfeMtiIpTKfz9cfd/R4qqgCFf
         vVdw==
X-Gm-Message-State: AOAM532AX9qKydve52nu7xxvOL9C/2KuZAItjkoa4OAZOxLLcRU5BaE3
        x/i1m10BOvzM29Jwrg5F7BqJeyzsB+VX0w==
X-Google-Smtp-Source: ABdhPJxFcqFJAUqAuX24iM9+fbcsKy3ynpc6T3cmRKO0R3798I9G1rNXCKlorf7A9lITU+CqcK5KPw==
X-Received: by 2002:a1c:3d54:: with SMTP id k81mr11133465wma.144.1605443581828;
        Sun, 15 Nov 2020 04:33:01 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id q5sm14735644wrf.41.2020.11.15.04.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 04:33:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] getent.1, fanotify_mark.2, fcntl.2, futex.2, membarrier.2, mmap.2, mount.2, msgctl.2, readv.2, semctl.2, set_mempolicy.2, shmctl.2, syscalls.2, abs.3, bstring.3, btree.3, ctime.3, drand48.3, fgetc.3, fopen.3, gethostbyname.3, getnetent.3, getprotoent.3, getservent.3, INFINITY.3, __ppc_set_ppr_med.3, inet.3, j0.3, makecontext.3, printf.3, puts.3, resolver.3, sigsetops.3, elf.5, nscd.conf.5, proc.5, inotify.7, ipv6.7, spufs.7, system_data_types.7: Use Oxford comma
Date:   Sun, 15 Nov 2020 13:32:31 +0100
Message-Id: <20201115123230.108989-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Found using:
pcregrep -rnM "^\.[B|I]R .*,\n\.[B|I].*[^,]\nand" man? |grep ^man |sort

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man1/getent.1            |  2 +-
 man2/fanotify_mark.2     |  2 +-
 man2/fcntl.2             |  2 +-
 man2/futex.2             |  2 +-
 man2/membarrier.2        |  2 +-
 man2/mmap.2              |  2 +-
 man2/mount.2             |  2 +-
 man2/msgctl.2            |  2 +-
 man2/readv.2             |  4 ++--
 man2/semctl.2            |  2 +-
 man2/set_mempolicy.2     |  2 +-
 man2/shmctl.2            |  2 +-
 man2/syscalls.2          |  2 +-
 man3/INFINITY.3          |  2 +-
 man3/__ppc_set_ppr_med.3 |  2 +-
 man3/abs.3               |  2 +-
 man3/bstring.3           |  4 ++--
 man3/btree.3             |  2 +-
 man3/ctime.3             |  6 +++---
 man3/drand48.3           | 10 +++++-----
 man3/fgetc.3             |  2 +-
 man3/fopen.3             |  4 ++--
 man3/gethostbyname.3     |  2 +-
 man3/getnetent.3         |  2 +-
 man3/getprotoent.3       |  2 +-
 man3/getservent.3        |  2 +-
 man3/inet.3              |  2 +-
 man3/j0.3                |  2 +-
 man3/makecontext.3       |  2 +-
 man3/printf.3            |  2 +-
 man3/puts.3              |  2 +-
 man3/resolver.3          |  2 +-
 man3/sigsetops.3         |  2 +-
 man5/elf.5               |  4 ++--
 man5/nscd.conf.5         |  2 +-
 man5/proc.5              |  2 +-
 man7/inotify.7           |  2 +-
 man7/ipv6.7              |  2 +-
 man7/spufs.7             |  2 +-
 man7/system_data_types.7 |  4 ++--
 40 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/man1/getent.1 b/man1/getent.1
index 8f89a933b..c02a4f8db 100644
--- a/man1/getent.1
+++ b/man1/getent.1
@@ -209,7 +209,7 @@ Alternatively, three
 .I keys
 may be provided, which are interpreted as the
 .IR hostname ,
-.I username
+.IR username ,
 and
 .I domainname
 to match to a netgroup name via
diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index cb298ca3d..27a685e79 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -511,7 +511,7 @@ If
 .I flags
 contains
 .BR FAN_MARK_FLUSH ,
-.I dirfd
+.IR dirfd ,
 and
 .I pathname
 must specify a valid filesystem object, even though this object is not used.
diff --git a/man2/fcntl.2 b/man2/fcntl.2
index 874cf2826..546016617 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -700,7 +700,7 @@ asynchronous notification of lost locks.
 .BR F_SETOWN ,
 .BR F_GETOWN_EX ,
 .BR F_SETOWN_EX ,
-.BR F_GETSIG
+.BR F_GETSIG ,
 and
 .B F_SETSIG
 are used to manage I/O availability signals:
diff --git a/man2/futex.2 b/man2/futex.2
index 90ec7c1b5..76c89f16c 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -417,7 +417,7 @@ the caller will receive the signal number that was passed in
 .IP
 The arguments
 .IR timeout ,
-.I uaddr2
+.IR uaddr2 ,
 and
 .I val3
 are ignored.
diff --git a/man2/membarrier.2 b/man2/membarrier.2
index a122b1b76..c51d357a7 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -224,7 +224,7 @@ to represent explicit memory barriers forcing full memory
 ordering across the barrier, we have the following ordering table for
 each pairing of
 .IR barrier() ,
-.BR membarrier ()
+.BR membarrier (),
 and
 .IR smp_mb() .
 The pair ordering is detailed as (O: ordered, X: not ordered):
diff --git a/man2/mmap.2 b/man2/mmap.2
index 613391058..9fd27120c 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -843,7 +843,7 @@ to be a multiple of the underlying huge page size.
 .PP
 For
 .BR munmap (),
-.I addr
+.IR addr ,
 and
 .I length
 must both be a multiple of the underlying huge page size.
diff --git a/man2/mount.2 b/man2/mount.2
index 1a0ddb979..306f08e43 100644
--- a/man2/mount.2
+++ b/man2/mount.2
@@ -288,7 +288,7 @@ Symbolic links can still be created,
 and
 .BR readlink (1),
 .BR readlink (2),
-.BR realpath (1)
+.BR realpath (1),
 and
 .BR realpath (3)
 all still work properly.
diff --git a/man2/msgctl.2 b/man2/msgctl.2
index 8b3fa8eb4..fb4410989 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -421,7 +421,7 @@ to include these header files.
 .PP
 The
 .BR IPC_INFO ,
-.B MSG_STAT
+.BR MSG_STAT ,
 and
 .B MSG_INFO
 operations are used by the
diff --git a/man2/readv.2 b/man2/readv.2
index e76aef883..5a8b74168 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -267,12 +267,12 @@ argument is \-1, the current file offset is updated.
 .SH RETURN VALUE
 On success,
 .BR readv (),
-.BR preadv ()
+.BR preadv (),
 and
 .BR preadv2 ()
 return the number of bytes read;
 .BR writev (),
-.BR pwritev ()
+.BR pwritev (),
 and
 .BR pwritev2 ()
 return the number of bytes written.
diff --git a/man2/semctl.2 b/man2/semctl.2
index 8bf926b12..70b870b1f 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -551,7 +551,7 @@ to include these header files.
 .PP
 The
 .BR IPC_INFO ,
-.B SEM_STAT
+.BR SEM_STAT ,
 and
 .B SEM_INFO
 operations are used by the
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index 5ee580e3a..68011eecb 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -42,7 +42,7 @@ sets the NUMA memory policy of the calling thread,
 which consists of a policy mode and zero or more nodes,
 to the values specified by the
 .IR mode ,
-.I nodemask
+.IR nodemask ,
 and
 .I maxnode
 arguments.
diff --git a/man2/shmctl.2 b/man2/shmctl.2
index 05c371ec4..a79b35a3d 100644
--- a/man2/shmctl.2
+++ b/man2/shmctl.2
@@ -478,7 +478,7 @@ to include these header files.
 .PP
 The
 .BR IPC_INFO ,
-.B SHM_STAT
+.BR SHM_STAT ,
 and
 .B SHM_INFO
 operations are used by the
diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 887bec2c7..3156c6bd2 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -966,7 +966,7 @@ and
 .I __NR_uname
 refer to the routines
 .IR sys_olduname (),
-.IR sys_uname ()
+.IR sys_uname (),
 and
 .IR sys_newuname ().
 .IP *
diff --git a/man3/INFINITY.3 b/man3/INFINITY.3
index 7a9e85de6..154c99640 100644
--- a/man3/INFINITY.3
+++ b/man3/INFINITY.3
@@ -66,7 +66,7 @@ The macros
 .B HUGE_VALL
 expand to constants of types
 .IR double ,
-.I float
+.IR float ,
 and
 .IR "long double" ,
 respectively,
diff --git a/man3/__ppc_set_ppr_med.3 b/man3/__ppc_set_ppr_med.3
index 3d9f11868..b574e4801 100644
--- a/man3/__ppc_set_ppr_med.3
+++ b/man3/__ppc_set_ppr_med.3
@@ -82,7 +82,7 @@ priority is set to medium.
 .SH VERSIONS
 The functions
 .BR __ppc_set_ppr_med (),
-.BR __ppc_set_ppr_low ()
+.BR __ppc_set_ppr_low (),
 and
 .BR __ppc_set_ppr_med_low ()
 are provided by glibc since version 2.18.
diff --git a/man3/abs.3 b/man3/abs.3
index fdbf23794..eb25650d7 100644
--- a/man3/abs.3
+++ b/man3/abs.3
@@ -65,7 +65,7 @@ function computes the absolute value of the integer
 argument \fIj\fP.
 The
 .BR labs (),
-.BR llabs ()
+.BR llabs (),
 and
 .BR imaxabs ()
 functions compute the absolute value of the argument \fIj\fP of the
diff --git a/man3/bstring.3 b/man3/bstring.3
index 9b680119c..6b3730fa5 100644
--- a/man3/bstring.3
+++ b/man3/bstring.3
@@ -68,13 +68,13 @@ for descriptions of each function.
 .SH NOTES
 The functions
 .BR bcmp (),
-.BR bcopy ()
+.BR bcopy (),
 and
 .BR bzero ()
 are obsolete.
 Use
 .BR memcmp (),
-.BR memcpy ()
+.BR memcpy (),
 and
 .BR memset ()
 instead.
diff --git a/man3/btree.3 b/man3/btree.3
index 83a4cf95a..1ecee6cba 100644
--- a/man3/btree.3
+++ b/man3/btree.3
@@ -209,7 +209,7 @@ If the file already exists (and the
 flag is not specified), the
 values specified for the arguments
 .IR flags ,
-.I lorder
+.IR lorder ,
 and
 .I psize
 are ignored
diff --git a/man3/ctime.3 b/man3/ctime.3
index dc5bb93e7..a0a8b421f 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -73,7 +73,7 @@ _POSIX_C_SOURCE
 .SH DESCRIPTION
 The
 .BR ctime (),
-.BR gmtime ()
+.BR gmtime (),
 and
 .BR localtime ()
 functions all take
@@ -375,14 +375,14 @@ instead.
 The four functions
 .BR asctime (),
 .BR ctime (),
-.BR gmtime ()
+.BR gmtime (),
 and
 .BR localtime ()
 return a pointer to static data and hence are not thread-safe.
 The thread-safe versions,
 .BR asctime_r (),
 .BR ctime_r (),
-.BR gmtime_r ()
+.BR gmtime_r (),
 and
 .BR localtime_r (),
 are specified by SUSv2.
diff --git a/man3/drand48.3 b/man3/drand48.3
index 46ebbc705..aeeca2539 100644
--- a/man3/drand48.3
+++ b/man3/drand48.3
@@ -102,7 +102,7 @@ integers uniformly distributed over the interval [\-2^31,\ 2^31).
 .PP
 The
 .BR srand48 (),
-.BR seed48 ()
+.BR seed48 (),
 and
 .BR lcong48 ()
 functions are
@@ -113,7 +113,7 @@ or
 .BR mrand48 ().
 The functions
 .BR erand48 (),
-.BR nrand48 ()
+.BR nrand48 (),
 and
 .BR jrand48 ()
 do not require
@@ -167,7 +167,7 @@ into the returned value.
 .PP
 The functions
 .BR drand48 (),
-.BR lrand48 ()
+.BR lrand48 (),
 and
 .BR mrand48 ()
 store
@@ -176,7 +176,7 @@ the last 48-bit
 generated in an internal buffer.
 The functions
 .BR erand48 (),
-.BR nrand48 ()
+.BR nrand48 (),
 and
 .BR jrand48 ()
 require the calling
@@ -219,7 +219,7 @@ The initialization function
 allows the user to specify
 initial values for
 .IR Xi ,
-.I a
+.IR a ,
 and
 .IR c .
 Array argument
diff --git a/man3/fgetc.3 b/man3/fgetc.3
index 5794fca22..2700ce606 100644
--- a/man3/fgetc.3
+++ b/man3/fgetc.3
@@ -98,7 +98,7 @@ For nonlocking counterparts, see
 .BR unlocked_stdio (3).
 .SH RETURN VALUE
 .BR fgetc (),
-.BR getc ()
+.BR getc (),
 and
 .BR getchar ()
 return the character read as an
diff --git a/man3/fopen.3 b/man3/fopen.3
index 393f2c05f..bde6648e3 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -236,7 +236,7 @@ function is to change the file associated with a standard text stream
 .SH RETURN VALUE
 Upon successful completion
 .BR fopen (),
-.BR fdopen ()
+.BR fdopen (),
 and
 .BR freopen ()
 return a
@@ -259,7 +259,7 @@ was invalid.
 .PP
 The
 .BR fopen (),
-.BR fdopen ()
+.BR fdopen (),
 and
 .BR freopen ()
 functions may also fail and set
diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index ed7d80868..d54e72d2b 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -498,7 +498,7 @@ but permits to specify the address family to which the address must belong.
 Glibc2 also has reentrant versions
 .BR gethostent_r (),
 .BR gethostbyaddr_r (),
-.BR gethostbyname_r ()
+.BR gethostbyname_r (),
 and
 .BR gethostbyname2_r ().
 The caller supplies a
diff --git a/man3/getnetent.3 b/man3/getnetent.3
index ad4ea679e..00df3afca 100644
--- a/man3/getnetent.3
+++ b/man3/getnetent.3
@@ -130,7 +130,7 @@ The network number in host byte order.
 .SH RETURN VALUE
 The
 .BR getnetent (),
-.BR getnetbyname ()
+.BR getnetbyname (),
 and
 .BR getnetbyaddr ()
 functions return a pointer to a
diff --git a/man3/getprotoent.3 b/man3/getprotoent.3
index e6e158d82..73fed79b3 100644
--- a/man3/getprotoent.3
+++ b/man3/getprotoent.3
@@ -123,7 +123,7 @@ The protocol number.
 .SH RETURN VALUE
 The
 .BR getprotoent (),
-.BR getprotobyname ()
+.BR getprotobyname (),
 and
 .BR getprotobynumber ()
 functions return a pointer to a
diff --git a/man3/getservent.3 b/man3/getservent.3
index c09c6eecf..e65cd61cf 100644
--- a/man3/getservent.3
+++ b/man3/getservent.3
@@ -142,7 +142,7 @@ The name of the protocol to use with this service.
 .SH RETURN VALUE
 The
 .BR getservent (),
-.BR getservbyname ()
+.BR getservbyname (),
 and
 .BR getservbyport ()
 functions return a pointer to a
diff --git a/man3/inet.3 b/man3/inet.3
index 2faa8cb0b..154943cd5 100644
--- a/man3/inet.3
+++ b/man3/inet.3
@@ -204,7 +204,7 @@ host byte order.
 The structure \fIin_addr\fP as used in
 .BR inet_ntoa (),
 .BR inet_makeaddr (),
-.BR inet_lnaof ()
+.BR inet_lnaof (),
 and
 .BR inet_netof ()
 is defined in
diff --git a/man3/j0.3 b/man3/j0.3
index 6e31707f9..ff1c5fd42 100644
--- a/man3/j0.3
+++ b/man3/j0.3
@@ -182,7 +182,7 @@ The others are nonstandard functions that also exist on the BSDs.
 .SH BUGS
 There are errors of up to 2e\-16 in the values returned by
 .BR j0 (),
-.BR j1 ()
+.BR j1 (),
 and
 .BR jn ()
 for values of
diff --git a/man3/makecontext.3 b/man3/makecontext.3
index c311f49f9..791fc6ace 100644
--- a/man3/makecontext.3
+++ b/man3/makecontext.3
@@ -41,7 +41,7 @@ In a System V-like environment, one has the type \fIucontext_t\fP defined in
 and the four functions
 .BR getcontext (3),
 .BR setcontext (3),
-.BR makecontext ()
+.BR makecontext (),
 and
 .BR swapcontext ()
 that allow user-level context switching
diff --git a/man3/printf.3 b/man3/printf.3
index 66413b975..7dc563c0e 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -101,7 +101,7 @@ write output to the given output
 .IR stream ;
 .BR sprintf (),
 .BR snprintf (),
-.BR vsprintf ()
+.BR vsprintf (),
 and
 .BR vsnprintf ()
 write to the character string
diff --git a/man3/puts.3 b/man3/puts.3
index 400c248cf..ccb78f6fa 100644
--- a/man3/puts.3
+++ b/man3/puts.3
@@ -83,7 +83,7 @@ For nonlocking counterparts, see
 .BR unlocked_stdio (3).
 .SH RETURN VALUE
 .BR fputc (),
-.BR putc ()
+.BR putc (),
 and
 .BR putchar ()
 return the character written as an
diff --git a/man3/resolver.3 b/man3/resolver.3
index dc023219e..b565704c1 100644
--- a/man3/resolver.3
+++ b/man3/resolver.3
@@ -428,7 +428,7 @@ Do not look up unqualified name as a top-level domain (TLD).
 Default option which implies:
 .BR RES_RECURSE ,
 .BR RES_DEFNAMES ,
-.BR RES_DNSRCH
+.BR RES_DNSRCH ,
 and
 .BR RES_NOIP6DOTINT .
 .\"
diff --git a/man3/sigsetops.3 b/man3/sigsetops.3
index dec7f7787..78c8b3faa 100644
--- a/man3/sigsetops.3
+++ b/man3/sigsetops.3
@@ -95,7 +95,7 @@ or
 .BR sigfillset ()
 before being passed to the functions
 .BR sigaddset (),
-.BR sigdelset ()
+.BR sigdelset (),
 and
 .BR sigismember ()
 or the additional glibc functions described below
diff --git a/man5/elf.5 b/man5/elf.5
index 0bfac6572..ea1af951b 100644
--- a/man5/elf.5
+++ b/man5/elf.5
@@ -835,7 +835,7 @@ and
 .BR SHN_HIRESERVE .
 The initial entry is used in ELF extensions for
 .IR e_phnum ,
-.IR e_shnum
+.IR e_shnum ,
 and
 .IR e_shstrndx ;
 in other cases, each field in the initial entry is set to zero.
@@ -2143,7 +2143,7 @@ The ELF format is an adopted standard.
 .PP
 The extensions for
 .IR e_phnum ,
-.IR e_shnum
+.IR e_shnum ,
 and
 .IR e_shstrndx
 respectively are
diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
index 40bde4238..049805d1a 100644
--- a/man5/nscd.conf.5
+++ b/man5/nscd.conf.5
@@ -166,7 +166,7 @@ The files are
 .IR /etc/passwd ,
 .IR /etc/group ,
 .IR /etc/hosts ,
-.I /etc/services
+.IR /etc/services ,
 and
 .IR /etc/netgroup .
 The default is yes.
diff --git a/man5/proc.5 b/man5/proc.5
index 3533858ba..744ee04c9 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -6068,7 +6068,7 @@ in the idle process.
 This string identifies the kernel version that is currently running.
 It includes the contents of
 .IR /proc/sys/kernel/ostype ,
-.I /proc/sys/kernel/osrelease
+.IR /proc/sys/kernel/osrelease ,
 and
 .IR /proc/sys/kernel/version .
 For example:
diff --git a/man7/inotify.7 b/man7/inotify.7
index fbf221245..e86bdee67 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -881,7 +881,7 @@ The following program demonstrates the usage of the inotify API.
 It marks the directories passed as a command-line arguments
 and waits for events of type
 .BR IN_OPEN ,
-.BR IN_CLOSE_NOWRITE
+.BR IN_CLOSE_NOWRITE ,
 and
 .BR IN_CLOSE_WRITE .
 .PP
diff --git a/man7/ipv6.7 b/man7/ipv6.7
index b4b6a88ce..e12eeaab1 100644
--- a/man7/ipv6.7
+++ b/man7/ipv6.7
@@ -396,7 +396,7 @@ for that instead.
 .PP
 .BR SOL_IP ,
 .BR SOL_IPV6 ,
-.B SOL_ICMPV6
+.BR SOL_ICMPV6 ,
 and other
 .B SOL_*
 socket options are nonportable variants of
diff --git a/man7/spufs.7 b/man7/spufs.7
index 9197bf9f7..5761cae6d 100644
--- a/man7/spufs.7
+++ b/man7/spufs.7
@@ -550,7 +550,7 @@ If no message has been written to these mailboxes, then
 contents of these files is undefined.
 The
 .IR mbox_stat ,
-.I ibox_stat
+.IR ibox_stat ,
 and
 .I wbox_stat
 files contain the available message count.
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 0eb47d30e..284f8fa83 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1638,7 +1638,7 @@ family of functions
 is expanded by the macros
 .BR SCNuPTR,
 .BR SCNoPTR,
-.B SCNxPTR
+.BR SCNxPTR ,
 and
 .B SCNXPTR
 (defined in
@@ -1678,7 +1678,7 @@ The function must declare an object of type
 which is used by the macros
 .BR va_start (3),
 .BR va_arg (3),
-.BR va_copy (3)
+.BR va_copy (3),
 and
 .BR va_end (3)
 to traverse the list of arguments.
-- 
2.28.0

