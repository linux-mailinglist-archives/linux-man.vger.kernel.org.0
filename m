Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 810006BEDD0
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 17:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjCQQO7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 12:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231519AbjCQQO6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 12:14:58 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CADE31BE1
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 09:14:52 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id o7so4938589wrg.5
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 09:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679069691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VJYTETTgdTjdXWVgCuPiYgtGos0DbckgK5oldm+XHfc=;
        b=Kw1cQePg11UwoGk0tOclyexuYAOw4OsCjj6XTA8BovWoGFEWyvFz83QlVwL5IAzJMr
         sNMt/PoK7imdQ5lzKHOBprZy5eIGj+2y67HuUc5gU7aqRDD2p0G4AsGAje6iN3dAUfVC
         j/Dfo7xsV0v+lubVUAJ+0BhxJEXooyhgTxXWeEQOYKIQCJKIFN8Hw0Bf4BLQPuyksVeD
         BUEQwP1AAQYivwrkmev7P3jHvYyDu4Ej3sDND9bPN+/f+uhmAGwbwyYeNeUm8kDIrXxK
         DggnRCP3DP9kSuGsAY+fkzIKDurE/+OsXBNa5GuLg9wL0Cdw+u9XL67/zeIJKL8X4RGh
         Y13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679069691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJYTETTgdTjdXWVgCuPiYgtGos0DbckgK5oldm+XHfc=;
        b=53aEMFeeAo3XsvC3kpbTEW3aCo1XFZUJU7a+G+Z3QVMBpBZbEUhXslFHqQCWktEuXb
         5//dlCq4wtNqwaM/mgAJQ5Ja5LRKvN6L47eAyI7V20UMKTQbT6ka5yoimbv9h3vLq/tL
         rJOrzNcvsNKi5Eg96pj2IG3rLyqFNHKVDQfX0/Lm0zP4u54oAuZLUeGqwwtTnR5k3gs1
         V8x+kJD1PsMUeBg0O6Ojx/HBzjsxMhh976CdyIUFGP4WUeYJ9j6Hdh4oPkJNgonPF1/o
         +kA146BOdtciK3ci6xHFj6UkwWgz0w7YkQs4Tcf94V98H+6+59uFC61n8+RfdoLcmJ/t
         ygqg==
X-Gm-Message-State: AO0yUKWmLlTqQqP+frqITpgs3mj0jqacOQ5sGb4ryjXWfhhXEQn8jEHQ
        AiEWehJpOT0TxBqsJGAjQOtjDupibKk=
X-Google-Smtp-Source: AK7set+3Jdfra8q5jaorCiPw6yQOXU5xAkRO8g9ylYJ6IZse0mJX6fs10vJi4nlfyx9jIJo9o5k49A==
X-Received: by 2002:a5d:4c81:0:b0:2cd:e0a8:f2dc with SMTP id z1-20020a5d4c81000000b002cde0a8f2dcmr8189570wrs.7.1679069690552;
        Fri, 17 Mar 2023 09:14:50 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id o17-20020a056000011100b002d30fe0d2fcsm2316338wrx.13.2023.03.17.09.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 09:14:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] man7/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections
Date:   Fri, 17 Mar 2023 17:13:29 +0100
Message-Id: <20230317161328.33878-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-  Add a new HISTORY section that covers the history of an API, both
   regarding implementations and regarding old standards.  This was
   previously covered in VERSIONS, and in some cases in STANDARDS.

-  Repurpose VERSIONS to cover differing implementations in other
   systems.

-  STANDARDS is reduced to only cover current versions of standards.
   That basically means only C11 (C99 has been superseeded by C11; C17
   is just a bugfix of C11, so not really a new version), and
   POSIX.1-2008 (*-2001 was superseeded by *-2008; *-2017 was just a
   bugfix for *-2008).  The section also mentions for example 'Linux' or
   'BSD' when a non-standard API is Linux-only or if it's standard in
   the BSDs.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi,

This is a preview of what I'm preparing.  I've modified only man7/, but
I plan to do the same in the rest of the pages.  Please have a look at
the patch.

Thanks,

Alex

 man7/aio.7                 |  7 ++---
 man7/cgroup_namespaces.7   |  2 +-
 man7/credentials.7         |  1 +
 man7/epoll.7               | 20 +++++++-------
 man7/fanotify.7            |  8 +++---
 man7/feature_test_macros.7 |  6 +++--
 man7/inode.7               |  9 ++++---
 man7/inotify.7             |  6 ++---
 man7/man-pages.7           | 55 ++++++++++++++++++++------------------
 man7/mount_namespaces.7    |  6 ++---
 man7/numa.7                |  2 +-
 man7/pid_namespaces.7      |  2 +-
 man7/queue.7               |  5 ++--
 man7/rtld-audit.7          |  6 +++--
 man7/sock_diag.7           |  2 +-
 man7/user_namespaces.7     |  2 +-
 16 files changed, 74 insertions(+), 65 deletions(-)

diff --git a/man7/aio.7 b/man7/aio.7
index 5a9dc4ff1..84613b622 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -139,10 +139,11 @@ .SH ERRORS
 structure was less than 0,
 or was greater than the limit returned by the call
 .IR sysconf(_SC_AIO_PRIO_DELTA_MAX) .
-.SH VERSIONS
-The POSIX AIO interfaces are provided by glibc since glibc 2.1.
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008.
+POSIX.1-2008.
+.SH HISTORY
+POSIX.1-2001.
+glibc 2.1.
 .SH NOTES
 It is a good idea to zero out the control block buffer before use (see
 .BR memset (3)).
diff --git a/man7/cgroup_namespaces.7 b/man7/cgroup_namespaces.7
index b1b0c4129..cb7778695 100644
--- a/man7/cgroup_namespaces.7
+++ b/man7/cgroup_namespaces.7
@@ -161,7 +161,7 @@ .SH DESCRIPTION
 .in
 .\"
 .SH STANDARDS
-Namespaces are a Linux-specific feature.
+Linux.
 .SH NOTES
 Use of cgroup namespaces requires a kernel that is configured with the
 .B CONFIG_CGROUPS
diff --git a/man7/credentials.7 b/man7/credentials.7
index 02f8f8aa3..77cb5e0ef 100644
--- a/man7/credentials.7
+++ b/man7/credentials.7
@@ -302,6 +302,7 @@ .SH STANDARDS
 are specified in POSIX.1.
 The real, effective, and saved set user and groups IDs,
 and the supplementary group IDs, are specified in POSIX.1.
+.PP
 The filesystem user and group IDs are a Linux extension.
 .SH NOTES
 Various fields in the
diff --git a/man7/epoll.7 b/man7/epoll.7
index ffb409a51..1e8679946 100644
--- a/man7/epoll.7
+++ b/man7/epoll.7
@@ -574,20 +574,18 @@ .SS Possible pitfalls and ways to avoid them
 you will discover the file descriptor had been
 previously removed and there will be no confusion.
 .SH VERSIONS
-The
-.B epoll
-API was introduced in Linux kernel 2.5.44.
-.\" Its interface should be finalized in Linux kernel 2.5.66.
-Support was added in glibc 2.3.2.
-.SH STANDARDS
-The
-.B epoll
-API is Linux-specific.
-Some other systems provide similar
-mechanisms, for example, FreeBSD has
+Some other systems provide similar mechanisms;
+for example,
+FreeBSD has
 .IR kqueue ,
 and Solaris has
 .IR /dev/poll .
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 2.5.44.
+.\" Its interface should be finalized in Linux 2.5.66.
+glibc 2.3.2.
 .SH NOTES
 The set of file descriptors that is being monitored via
 an epoll file descriptor can be viewed via the entry for
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 6ebb98ada..3963e7420 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -906,12 +906,12 @@ .SH ERRORS
 in the response structure is not valid.
 This may occur when a response for the permission event has already been
 written.
-.SH VERSIONS
+.SH STANDARDS
+Linux.
+.SH HISTORY
 The fanotify API was introduced in Linux 2.6.36 and
 enabled in Linux 2.6.37.
-Fdinfo support was added in Linux 3.8.
-.SH STANDARDS
-The fanotify API is Linux-specific.
+fdinfo support was added in Linux 3.8.
 .SH NOTES
 The fanotify API is available only if the kernel was built with the
 .B CONFIG_FANOTIFY
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 4dc9b9594..344c7e47a 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -765,8 +765,6 @@ .SH STANDARDS
 and
 .BR _XOPEN_SOURCE .
 .PP
-.B _XOPEN_SOURCE_EXTENDED
-was specified by XPG4v2 (aka SUSv1), but is not present in SUSv2 and later.
 .B _FILE_OFFSET_BITS
 is not specified by any standard,
 but is employed on some other implementations.
@@ -781,6 +779,10 @@ .SH STANDARDS
 and
 .B _THREAD_SAFE
 are specific to glibc.
+.SH HISTORY
+.PP
+.B _XOPEN_SOURCE_EXTENDED
+was specified by XPG4v2 (aka SUSv1), but is not present in SUSv2 and later.
 .SH NOTES
 .I <features.h>
 is a Linux/glibc-specific header file.
diff --git a/man7/inode.7 b/man7/inode.7
index c97fb6ab3..dc2c38d1d 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -426,6 +426,10 @@ .SS The file type and mode
 of the file, by the owner of the directory, and by a privileged
 process.
 .SH STANDARDS
+POSIX.1-2008.
+.SH HISTORY
+POSIX.1-2001.
+.PP
 POSIX.1-1990 did not describe the
 .BR S_IFMT ,
 .BR S_IFSOCK ,
@@ -441,16 +445,13 @@ .SH STANDARDS
 the macros
 .BR S_ISDIR ()
 and so on.
-The
-.B S_IF*
-constants are present in POSIX.1-2001 and later.
 .PP
 The
 .BR S_ISLNK ()
 and
 .BR S_ISSOCK ()
 macros were not in
-POSIX.1-1996, but both are present in POSIX.1-2001;
+POSIX.1-1996;
 the former is from SVID 4, the latter from SUSv2.
 .PP
 UNIX\ V7 (and later systems) had
diff --git a/man7/inotify.7 b/man7/inotify.7
index 92f833afa..3bac72c4b 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -575,7 +575,9 @@ .SS /proc interfaces
 .I /proc/sys/fs/inotify/max_user_watches
 This specifies an upper limit on the number of watches
 that can be created per real user ID.
-.SH VERSIONS
+.SH STANDARDS
+Linux.
+.SH HISTORY
 Inotify was merged into Linux 2.6.13.
 The required library interfaces were added in glibc 2.4.
 .RB ( IN_DONT_FOLLOW ,
@@ -583,8 +585,6 @@ .SH VERSIONS
 and
 .B IN_ONLYDIR
 were added in glibc 2.5.)
-.SH STANDARDS
-The inotify API is Linux-specific.
 .SH NOTES
 Inotify file descriptors can be monitored using
 .BR select (2),
diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 610171e4b..3bdceda67 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -151,6 +151,7 @@ .SS Sections within a manual page
 ATTRIBUTES	[Normally only in Sections 2, 3]
 VERSIONS	[Normally only in Sections 2, 3]
 STANDARDS
+HISTORY
 NOTES
 CAVEATS
 BUGS
@@ -341,12 +342,34 @@ .SS Sections within a manual page
 for further details.
 .TP
 .B VERSIONS
+A summary of systems where the API performs differently,
+or where there's a similar API.
+.TP
+.B STANDARDS
+A description of any standards or conventions that relate to the function
+or command described by the manual page.
+.IP
+The preferred terms to use for the various standards are listed as
+headings in
+.BR standards (7).
+.IP
+This section should note the current standards to which the API conforms to.
+.IP
+If the API is not governed by any standards but commonly
+exists on other systems, note them.
+If the call is Linux-specific, note this.
+.IP
+If this section consists of just a list of standards
+(which it commonly does),
+terminate the list with a period (\[aq].\[aq]).
+.TP
+.B HISTORY
 A brief summary of the Linux kernel or glibc versions where a
 system call or library function appeared,
 or changed significantly in its operation.
 .IP
 As a general rule, every new interface should
-include a VERSIONS section in its manual page.
+include a HISTORY section in its manual page.
 Unfortunately,
 many existing manual pages don't include this information
 (since there was no policy to do so when they were written).
@@ -362,31 +385,11 @@ .SS Sections within a manual page
 .BR syscalls (2)
 manual page also provides information about kernel versions
 in which various system calls first appeared.
-.TP
-.B STANDARDS
-A description of any standards or conventions that relate to the function
-or command described by the manual page.
-.IP
-The preferred terms to use for the various standards are listed as
-headings in
-.BR standards (7).
-.IP
-For a page in Section 2 or 3,
-this section should note the POSIX.1
-version(s) that the call conforms to,
-and also whether the call is specified in C99.
-(Don't worry too much about other standards like SUS, SUSv2, and XPG,
-or the SVr4 and 4.xBSD implementation standards,
-unless the call was specified in those standards,
-but isn't in the current version of POSIX.1.)
-.IP
-If the call is not governed by any standards but commonly
-exists on other systems, note them.
-If the call is Linux-specific, note this.
-.IP
-If this section consists of just a list of standards
-(which it commonly does),
-terminate the list with a period (\[aq].\[aq]).
+.PP
+Old versions of standards should be mentioned here,
+rather than in STANDARDS,
+for example,
+SUS, SUSv2, and XPG, or the SVr4 and 4.xBSD implementation standards.
 .TP
 .B NOTES
 Miscellaneous notes.
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index c40aae96b..b17f86a4c 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -977,10 +977,10 @@ .SS The /proc/ pid /mountinfo "propagate_from" tag
 .BR chroot (1)
 was performed).
 .\"
-.SH VERSIONS
-Mount namespaces first appeared in Linux 2.4.19.
 .SH STANDARDS
-Namespaces are a Linux-specific feature.
+Linux.
+.SH HISTORY
+Linux 2.4.19.
 .\"
 .SH NOTES
 The propagation type assigned to a new mount depends
diff --git a/man7/numa.7 b/man7/numa.7
index f5a314b56..c6ea67514 100644
--- a/man7/numa.7
+++ b/man7/numa.7
@@ -126,7 +126,7 @@ .SS /proc/[number]/numa_maps  (since Linux 2.6.14)
 .I writeback=<pages>
 Number of pages that are currently being written out to disk.
 .SH STANDARDS
-No standards govern NUMA interfaces.
+None.
 .SH NOTES
 The Linux NUMA system calls and
 .I /proc
diff --git a/man7/pid_namespaces.7 b/man7/pid_namespaces.7
index d32985485..78d0e0986 100644
--- a/man7/pid_namespaces.7
+++ b/man7/pid_namespaces.7
@@ -370,7 +370,7 @@ .SS Miscellaneous
 it is translated into the corresponding PID value in
 the receiving process's PID namespace.
 .SH STANDARDS
-Namespaces are a Linux-specific feature.
+Linux.
 .SH EXAMPLES
 See
 .BR user_namespaces (7).
diff --git a/man7/queue.7 b/man7/queue.7
index 83851c7a1..086d13d25 100644
--- a/man7/queue.7
+++ b/man7/queue.7
@@ -115,8 +115,9 @@ .SS Doubly linked circular queues (CIRCLEQ)
 .IP \[bu] 3
 The termination condition for traversal is more complex.
 .SH STANDARDS
-Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
-Present on the BSDs.
+BSD.
+Not in POSIX.1.
+.SH HISTORY
 .I <sys/queue.h>
 macros first appeared in 4.4BSD.
 .SH NOTES
diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index ca47427c3..c5d4fdddc 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -455,12 +455,14 @@ .SS la_pltexit()
 .\" symbol binding should return the value of the 'retval' argument
 .\" (not provided by GNU, but equivalent to returning outregs->lrv_eax
 .\" on (say) x86-32).
-.SH STANDARDS
-This API is nonstandard, but very similar to the Solaris API,
+.SH VERSIONS
+This API is very similar to the Solaris API
 described in the Solaris
 .IR "Linker and Libraries Guide" ,
 in the chapter
 .IR "Runtime Linker Auditing Interface" .
+.SH STANDARDS
+None.
 .SH NOTES
 Note the following differences from the Solaris dynamic linker
 auditing API:
diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
index e75dc4d1a..6dfed2c35 100644
--- a/man7/sock_diag.7
+++ b/man7/sock_diag.7
@@ -617,7 +617,7 @@ .SH VERSIONS
 .B INET_DIAG_SKMEMINFO
 were introduced in Linux 3.6.
 .SH STANDARDS
-The NETLINK_SOCK_DIAG API is Linux-specific.
+Linux.
 .SH EXAMPLES
 The following example program prints inode number, peer's inode number,
 and name of all UNIX domain sockets in the current namespace.
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 737dd54ad..3c376a9f0 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1013,7 +1013,7 @@ .SS Miscellaneous
 receiving process's user and group ID mappings.
 .\"
 .SH STANDARDS
-Namespaces are a Linux-specific feature.
+Linux.
 .\"
 .SH NOTES
 Over the years, there have been a lot of features that have been added
-- 
2.39.2

