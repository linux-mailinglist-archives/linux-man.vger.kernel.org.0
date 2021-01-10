Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E22742F0649
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 11:09:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbhAJKJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 05:09:12 -0500
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.23]:30032 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726267AbhAJKJL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 05:09:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1610273118;
        s=strato-dkim-0002; d=clisp.org;
        h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:From:
        Subject:Sender;
        bh=RtUf9Cq2fLmdQV5Sf2Ld7Cp97MTkDcl0QklCijzmH68=;
        b=nmHcgFow1VgodfIA+ciOzIewn64iyduKWc0z6orL3p6wkuPTI0WOt0HEhPS9PSJRCS
        9gRYTAaGKZqggUn3RulfSRjd1gyALep9VuRPazch5+d+lHwW9o59gmJmHw+mYTraeSo2
        MbPAk40Z6Ti+IxA1h+FGwpvG9idPMMxzsXS7OpTt2KbsSQFKDpfIQfWHe0q3CYHKaH6J
        PSt5I8wOiH95ahuuaMSO7BrXWA1T+fTtV1j8b3BiWi9zQ/KypAghqfn0wdRmApTwuWiS
        i7sZK0rfh9XtdlCNYuIJQ6CZ+qVPVrdYawLN5UpUhCFF6fMWPEd5pf1kxLDF+rZdvADl
        VPDw==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH+AHjwLuWOHqfyyvs="
X-RZG-CLASS-ID: mo00
Received: from bruno.haible.de
        by smtp.strato.de (RZmta 47.12.1 DYNA|AUTH)
        with ESMTPSA id u0aa20x0AA5HF8f
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
        Sun, 10 Jan 2021 11:05:17 +0100 (CET)
From:   Bruno Haible <bruno@clisp.org>
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] chmod.2, lchmod.3: Document lchmod()
Date:   Sun, 10 Jan 2021 11:05:16 +0100
Message-ID: <1945428.G7aTUhjore@omega>
User-Agent: KMail/5.1.3 (Linux/4.4.0-197-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <20210110074159.GA20991@altlinux.org>
References: <39277473.ZaUlkdM7pu@omega> <20210110074159.GA20991@altlinux.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart8260810.i6EoRtNtPx"
Content-Transfer-Encoding: 7Bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart8260810.i6EoRtNtPx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dmitry V. Levin wrote:
> > Here is a patch to update the man pages accordingly.
> 
> Please note the important limitation of that implementation:
> it doesn't work when /proc is not mounted, see
> https://sourceware.org/bugzilla/show_bug.cgi?id=26401

Thanks for the pointer. Revised patch attached.


--nextPart8260810.i6EoRtNtPx
Content-Disposition: attachment; filename="0001-chmod.2-lchmod.3-Document-lchmod.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-chmod.2-lchmod.3-Document-lchmod.patch"

From 56ce64325fa9a9184b820eac908ecc5d53a5154b Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 10 Jan 2021 05:20:30 +0100
Subject: [PATCH] chmod.2, lchmod.3: Document lchmod().

---
 man2/chmod.2  | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 man3/lchmod.3 |  1 +
 2 files changed, 65 insertions(+), 6 deletions(-)
 create mode 100644 man3/lchmod.3

diff --git a/man2/chmod.2 b/man2/chmod.2
index a54aec7..f1709ef 100644
--- a/man2/chmod.2
+++ b/man2/chmod.2
@@ -29,15 +29,16 @@
 .\"   <michael@cantor.informatik.rwth-aachen.de>: NFS details
 .\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
-.TH CHMOD 2 2017-09-15 "Linux" "Linux Programmer's Manual"
+.TH CHMOD 2 2021-01-10 "Linux" "Linux Programmer's Manual"
 .SH NAME
-chmod, fchmod, fchmodat \- change permissions of a file
+chmod, fchmod, lchmod, fchmodat \- change permissions of a file
 .SH SYNOPSIS
 .nf
 .B #include <sys/stat.h>
 .PP
 .BI "int chmod(const char *" pathname ", mode_t " mode );
 .BI "int fchmod(int " fd ", mode_t " mode );
+.BI "int lchmod(const char *" pathname ", mode_t " mode );
 .PP
 .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
 .B #include <sys/stat.h>
@@ -68,6 +69,12 @@ Feature Test Macro Requirements for glibc (see
 .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
 .fi
 .PP
+.BR lchmod ():
+.nf
+    Since glibc 2.32:
+        _DEFAULT_SOURCE
+.fi
+.PP
 .BR fchmodat ():
 .nf
     Since glibc 2.10:
@@ -80,10 +87,12 @@ The
 .BR chmod ()
 and
 .BR fchmod ()
-system calls change a files mode bits.
+system calls and the
+.BR lchmod ()
+function change a file's mode bits.
 (The file mode consists of the file permission bits plus the set-user-ID,
 set-group-ID, and sticky bits.)
-These system calls differ only in how the file is specified:
+These functions differ only in how the file is specified:
 .IP * 2
 .BR chmod ()
 changes the mode of the file specified whose pathname is given in
@@ -93,6 +102,11 @@ which is dereferenced if it is a symbolic link.
 .BR fchmod ()
 changes the mode of the file referred to by the open file descriptor
 .IR fd .
+.IP *
+.BR lchmod ()
+is like
+.BR chmod (),
+but does not dereference symbolic links.
 .PP
 The new file mode is specified in
 .IR mode ,
@@ -220,8 +234,13 @@ can either be 0, or include the following flag:
 If
 .I pathname
 is a symbolic link, do not dereference it:
-instead operate on the link itself.
-This flag is not currently implemented.
+instead operate on the link itself, like
+.BR lchmod ().
+(By default,
+.BR fchmodat ()
+dereferences symbolic links, like
+.BR chmod ().)
+This flag is implemented since glibc 2.32.
 .PP
 See
 .BR openat (2)
@@ -304,6 +323,17 @@ See above.
 The same errors that occur for
 .BR chmod ()
 can also occur for
+.BR lchmod ().
+The following additional errors can occur for
+.BR lchmod ():
+.TP
+.B EOPNOTSUPP
+.B /proc
+is not mounted.
+.PP
+The same errors that occur for
+.BR chmod ()
+can also occur for
 .BR fchmodat ().
 The following additional errors can occur for
 .BR fchmodat ():
@@ -323,14 +353,31 @@ is relative and
 is a file descriptor referring to a file other than a directory.
 .TP
 .B ENOTSUP
+(Before glibc 2.32.)
 .I flags
 specified
 .BR AT_SYMLINK_NOFOLLOW ,
 which is not supported.
+.TP
+.B EOPNOTSUPP
+(Since glibc 2.32.)
+.I flags
+specified
+.BR AT_SYMLINK_NOFOLLOW ,
+and
+.B /proc
+is not mounted.
 .SH VERSIONS
 .BR fchmodat ()
 was added to Linux in kernel 2.6.16;
 library support was added to glibc in version 2.4.
+.PP
+.BR lchmod ()
+and the handling of
+.B AT_SYMLINK_NOFOLLOW
+in
+.BR fchmodat ()
+were added in glibc version 2.32.
 .SH CONFORMING TO
 .BR chmod (),
 .BR fchmod ():
@@ -362,6 +409,17 @@ glibc constructs a pathname based on the symbolic link in
 that corresponds to the
 .IR dirfd
 argument.
+.SH BUGS
+.BR lchmod ()
+and
+.BR fchmodat ()
+with
+.B AT_SYMLINK_NOFOLLOW
+flag fail with error
+.B EOPNOTSUPP
+when the
+.B /proc
+file system is not mounted.
 .SH SEE ALSO
 .BR chmod (1),
 .BR chown (2),
diff --git a/man3/lchmod.3 b/man3/lchmod.3
new file mode 100644
index 0000000..92647d2
--- /dev/null
+++ b/man3/lchmod.3
@@ -0,0 +1 @@
+.so man2/chmod.2
-- 
2.7.4


--nextPart8260810.i6EoRtNtPx--

