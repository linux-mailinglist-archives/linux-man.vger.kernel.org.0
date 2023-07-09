Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61CB174C135
	for <lists+linux-man@lfdr.de>; Sun,  9 Jul 2023 08:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjGIGKu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jul 2023 02:10:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbjGIGKt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jul 2023 02:10:49 -0400
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0EDFD
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 23:10:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id F08993C011BD7;
        Sat,  8 Jul 2023 23:10:46 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id KIEvYb1ZmbcO; Sat,  8 Jul 2023 23:10:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id C4B813C011BD6;
        Sat,  8 Jul 2023 23:10:45 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu C4B813C011BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1688883045;
        bh=cgPuasBwtiMV/C1s/9eiqlempgm38wvmiPIbje1R1qs=;
        h=From:To:Date:Message-ID:MIME-Version;
        b=W/BFlU3EJZPBMRdA6D1SfimfISJyJQ4Kd9iJZ1S0Y4dMfjzQadeob3bZXFtNeki97
         WjP1DE3CnE0NWkpTLmCuix2SlICqtTuWvL1+7ZYGSp5iKPi3EiqOTpOPC3SdYgmz3L
         +0BMSgAska19skoXc6qB4yA6W6YBOYkb+mNsDqONwgz4Dz956iccgGqT3jQV3c01lc
         tHI6CnbqB1zV4mNaxlalVKs4lZojPlchtVMDn9ITY/esTxa/qrVfvTCfBaPVLzkaRj
         8XkZTZOkZ6mqQ0td+C3ekJT4CYtO8Sdz1eQTHD3lj1z1qmpAgQUrlciYpF+psKxRDj
         Q+l6u8/AfkFoQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id Cit4dn2a-k7d; Sat,  8 Jul 2023 23:10:45 -0700 (PDT)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 959053C011BD4;
        Sat,  8 Jul 2023 23:10:45 -0700 (PDT)
From:   Paul Eggert <eggert@cs.ucla.edu>
To:     Alejandro Colomar <alx@kernel.org>,
        "A . Wilcox" <AWilcox@wilcox-tech.com>,
        libc-coord@lists.openwall.com,
        Jonathan Wakely <jwakely@redhat.com>,
        Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Sam James <sam@gentoo.org>, Szabolcs Nagy <nsz@port70.net>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v4] off64_t: prefer off_t for splice, etc.
Date:   Sat,  8 Jul 2023 23:07:55 -0700
Message-ID: <20230709061011.1885809-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For the few functions that come only in 64-bit off_t flavors,
document their APIs as using off_t instead of off64_t,
and say also that code should #define _FILE_OFFSET_BITS 64.
This documents what user code is (and should be) doing anyway,
if it needs to work on traditional x86 and ARM Linux.
---
 man2/copy_file_range.2     | 20 +++++++++++++++++---
 man2/readahead.2           | 11 ++++++++++-
 man2/splice.2              | 17 +++++++++++++++--
 man2/sync_file_range.2     | 12 ++++++++++--
 man3/fopencookie.3         | 17 ++++++++++++++---
 man7/feature_test_macros.7 | 12 ++++++++----
 6 files changed, 74 insertions(+), 15 deletions(-)

diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index 6f3aa4971..42b950d66 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -11,10 +11,11 @@ Standard C library
 .SH SYNOPSIS
 .nf
 .B #define _GNU_SOURCE
+.B #define _FILE_OFFSET_BITS 64
 .B #include <unistd.h>
 .PP
-.BI "ssize_t copy_file_range(int " fd_in ", off64_t *_Nullable " off_in =
,
-.BI "                        int " fd_out ", off64_t *_Nullable " off_ou=
t ,
+.BI "ssize_t copy_file_range(int " fd_in ", off_t *_Nullable " off_in ,
+.BI "                        int " fd_out ", off_t *_Nullable " off_out =
,
 .BI "                        size_t " len ", unsigned int " flags );
 .fi
 .SH DESCRIPTION
@@ -224,6 +225,18 @@ gives filesystems an opportunity to implement "copy =
acceleration" techniques,
 such as the use of reflinks (i.e., two or more inodes that share
 pointers to the same copy-on-write disk blocks)
 or server-side-copy (in the case of NFS).
+.PP
+.B _FILE_OFFSET_BITS
+should be defined to be 64 in code that uses non-null
+.I off_in
+or
+.I off_out
+or that takes the address of
+.BR copy_file_range ,
+if the code is intended to be portable
+to traditional 32-bit x86 and ARM platforms where
+.BR off_t 's
+width defaults to 32 bits.
 .SH BUGS
 In Linux 5.3 to Linux 5.18,
 cross-filesystem copies were implemented by the kernel,
@@ -234,6 +247,7 @@ the call failed to copy, while still reporting succes=
s.
 .\" SRC BEGIN (copy_file_range.c)
 .EX
 #define _GNU_SOURCE
+#define _FILE_OFFSET_BITS 64
 #include <fcntl.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -244,7 +258,7 @@ int
 main(int argc, char *argv[])
 {
     int          fd_in, fd_out;
-    off64_t      len, ret;
+    off_t        len, ret;
     struct stat  stat;
 \&
     if (argc !=3D 3) {
diff --git a/man2/readahead.2 b/man2/readahead.2
index d69795979..64e57cdca 100644
--- a/man2/readahead.2
+++ b/man2/readahead.2
@@ -14,9 +14,10 @@ Standard C library
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */=
"
+.B #define _FILE_OFFSET_BITS 64
 .B #include <fcntl.h>
 .PP
-.BI "ssize_t readahead(int " fd ", off64_t " offset ", size_t " count );
+.BI "ssize_t readahead(int " fd ", off_t " offset ", size_t " count );
 .fi
 .SH DESCRIPTION
 .BR readahead ()
@@ -73,6 +74,14 @@ Linux.
 .SH HISTORY
 Linux 2.4.13,
 glibc 2.3.
+.SH NOTES
+.B _FILE_OFFSET_BITS
+should be defined to be 64 in code that uses a pointer to
+.BR readahead ,
+if the code is intended to be portable
+to traditional 32-bit x86 and ARM platforms where
+.BR off_t 's
+width defaults to 32 bits.
 .SH BUGS
 .BR readahead ()
 attempts to schedule the reads in the background and return immediately.
diff --git a/man2/splice.2 b/man2/splice.2
index dd78e8cd4..cd4ed35cb 100644
--- a/man2/splice.2
+++ b/man2/splice.2
@@ -12,10 +12,11 @@ Standard C library
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
+.B "#define _FILE_OFFSET_BITS 64
 .B #include <fcntl.h>
 .PP
-.BI "ssize_t splice(int " fd_in ", off64_t *_Nullable " off_in ,
-.BI "               int " fd_out ", off64_t *_Nullable " off_out ,
+.BI "ssize_t splice(int " fd_in ", off_t *_Nullable " off_in ,
+.BI "               int " fd_out ", off_t *_Nullable " off_out ,
 .BI "               size_t " len ", unsigned int " flags );
 .\" Return type was long before glibc 2.7
 .fi
@@ -242,6 +243,18 @@ only pointers are copied, not the pages of the buffe=
r.
 .\" the data and choose to forward it to two or more different
 .\" users - for things like logging etc.).
 .\"
+.PP
+.B _FILE_OFFSET_BITS
+should be defined to be 64 in code that uses non-null
+.I off_in
+or
+.I off_out
+or that takes the address of
+.BR splice ,
+if the code is intended to be portable
+to traditional 32-bit x86 and ARM platforms where
+.BR off_t 's
+width defaults to 32 bits.
 .SH EXAMPLES
 See
 .BR tee (2).
diff --git a/man2/sync_file_range.2 b/man2/sync_file_range.2
index d633b08ff..31d7e5112 100644
--- a/man2/sync_file_range.2
+++ b/man2/sync_file_range.2
@@ -16,9 +16,10 @@ Standard C library
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
+.B #define _FILE_OFFSET_BITS 64
 .B #include <fcntl.h>
 .PP
-.BI "int sync_file_range(int " fd ", off64_t " offset ", off64_t " nbyte=
s ,
+.BI "int sync_file_range(int " fd ", off_t " offset ", off_t " nbytes ,
 .BI "                    unsigned int " flags );
 .fi
 .SH DESCRIPTION
@@ -176,7 +177,7 @@ system call that orders the arguments suitably:
 .in +4n
 .EX
 .BI "int sync_file_range2(int " fd ", unsigned int " flags ,
-.BI "                     off64_t " offset ", off64_t " nbytes );
+.BI "                     off_t " offset ", off_t " nbytes );
 .EE
 .in
 .PP
@@ -198,6 +199,13 @@ glibc transparently wraps
 under the name
 .BR sync_file_range ().
 .SH NOTES
+.B _FILE_OFFSET_BITS
+should be defined to be 64 in code that takes the address of
+.BR sync_file_range ,
+if the code is intended to be portable
+to traditional 32-bit x86 and ARM platforms where
+.BR off_t 's
+width defaults to 32 bits.
 .SH SEE ALSO
 .BR fdatasync (2),
 .BR fsync (2),
diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index 409a3c81a..3a68746cc 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -13,6 +13,7 @@ Standard C library
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
+.B #define _FILE_OFFSET_BITS 64
 .B #include <stdio.h>
 .PP
 .BI "FILE *fopencookie(void *restrict " cookie ", const char *restrict "=
 mode ,
@@ -169,7 +170,7 @@ When called, it receives three arguments:
 .IP
 .in +4n
 .EX
-int seek(void *cookie, off64_t *offset, int whence);
+int seek(void *cookie, off_t *offset, int whence);
 .EE
 .in
 .IP
@@ -351,9 +352,9 @@ memfile_read(void *c, char *buf, size_t size)
 }
 \&
 int
-memfile_seek(void *c, off64_t *offset, int whence)
+memfile_seek(void *c, off_t *offset, int whence)
 {
-    off64_t new_offset;
+    off_t new_offset;
     struct memfile_cookie *cookie =3D c;
 \&
     if (whence =3D=3D SEEK_SET)
@@ -451,6 +452,16 @@ main(int argc, char *argv[])
 }
 .EE
 .\" SRC END
+.SH NOTES
+.B _FILE_OFFSET_BITS
+should be defined to be 64 in code that uses non-null
+.I seek
+or that takes the address of
+.BR fopencookie ,
+if the code is intended to be portable
+to traditional 32-bit x86 and ARM platforms where
+.BR off_t 's
+width defaults to 32 bits.
 .SH SEE ALSO
 .BR fclose (3),
 .BR fmemopen (3),
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index f1620611c..10e973dbc 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -113,15 +113,16 @@ feature test macro requirements (this example from
 .RS +4
 .EX
 .B #define _GNU_SOURCE
+.B #define _FILE_OFFSET_BITS 64
 .B #include <fcntl.h>
 .PP
-.BI "ssize_t readahead(int " fd ", off64_t *" offset ", size_t " count )=
;
+.BI "ssize_t readahead(int " fd ", off_t *" offset ", size_t " count );
 .EE
 .RE
 .PP
-This format is employed in cases where only a single
-feature test macro can be used to expose the function
-declaration, and that macro is not defined by default.
+This format is employed when the feature test macros ensure
+that the proper function declarations are visible,
+and the macros are not defined by default.
 .SS Feature test macros understood by glibc
 The paragraphs below explain how feature test macros are handled
 in glibc 2.\fIx\fP,
@@ -406,6 +407,9 @@ related to file I/O and filesystem operations into re=
ferences to
 their 64-bit counterparts.
 This is useful for performing I/O on large files (> 2 Gigabytes)
 on 32-bit systems.
+It is also useful when calling functions like
+.BR copy_file_range (2)
+that were added more recently and that come only in 64-bit flavors.
 (Defining this macro permits correctly written programs to use
 large files with only a recompilation being required.)
 .IP
--=20
2.41.0

