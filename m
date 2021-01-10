Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2BCF2F0527
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 05:41:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbhAJElP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 23:41:15 -0500
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.22]:14064 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726283AbhAJElP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 23:41:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1610253440;
        s=strato-dkim-0002; d=clisp.org;
        h=Message-ID:Date:Subject:To:From:From:Subject:Sender;
        bh=l3Ye9GD1vrBIlpOEYVm4Q3ONlrODOIKv9tPB9Rw73fs=;
        b=IQ1K8VaI8vgWpFTKned50MNe21uWM41upoBk+3WVzYlOVUNPPYToWrY8VZAlWWEAV8
        /0JpWDqwGaW2w9w+G1pckzmGnN4QmMwqu23/LoCd/Eb7v5FWMPTaSxnRgj4jlOtIEsLX
        LxQx6IEa88+PZSRDD9xQY2D3VKOtUktUtw49V4vPVF+b89xkq4wrCZeWTwfLzhthKqXp
        RkJJb5UXZaVytUuIeFSAkUl4e27mt1otdgSl23jo9My42dsXRqwyvdfYoVF3bmmzDaJ7
        ZAgz+I8JVJYaEz8qknTE6zqI7ja+RlWM2dOKEqIkxSEEOHaSrzzZqavKgQTpm0hSNgch
        OdfA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH+AHjwLuWOHqfyyvs="
X-RZG-CLASS-ID: mo00
Received: from bruno.haible.de
        by smtp.strato.de (RZmta 47.12.1 DYNA|AUTH)
        with ESMTPSA id u0aa20x0A4bJEsf
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
        Sun, 10 Jan 2021 05:37:19 +0100 (CET)
From:   Bruno Haible <bruno@clisp.org>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: [patch] chmod.2, lchmod.3: Document lchmod()
Date:   Sun, 10 Jan 2021 05:37:13 +0100
Message-ID: <39277473.ZaUlkdM7pu@omega>
User-Agent: KMail/5.1.3 (Linux/4.4.0-197-generic; KDE/5.18.0; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart10527532.VNQRr6LPnD"
Content-Transfer-Encoding: 7Bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart10527532.VNQRr6LPnD
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

lchmod (= the effect of fchmod with flag AT_SYMLINK_NOFOLLOW)
is implemented since glibc 2.32, see
https://sourceware.org/bugzilla/show_bug.cgi?id=14578
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=752dd17443e55a4535cb9e6baa4e550ede383540

Here is a patch to update the man pages accordingly.



--nextPart10527532.VNQRr6LPnD
Content-Disposition: attachment; filename="0001-chmod.2-lchmod.3-Document-lchmod.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-chmod.2-lchmod.3-Document-lchmod.patch"

From 22cbd89a89bc26a518537739d677a5736727738f Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 10 Jan 2021 05:20:30 +0100
Subject: [PATCH] chmod.2, lchmod.3: Document lchmod().

---
 man2/chmod.2  | 25 +++++++++++++++++++++----
 man3/lchmod.3 |  1 +
 2 files changed, 22 insertions(+), 4 deletions(-)
 create mode 100644 man3/lchmod.3

diff --git a/man2/chmod.2 b/man2/chmod.2
index a54aec7..897dd87 100644
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
@@ -93,6 +100,11 @@ which is dereferenced if it is a symbolic link.
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
@@ -220,8 +232,13 @@ can either be 0, or include the following flag:
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
diff --git a/man3/lchmod.3 b/man3/lchmod.3
new file mode 100644
index 0000000..92647d2
--- /dev/null
+++ b/man3/lchmod.3
@@ -0,0 +1 @@
+.so man2/chmod.2
-- 
2.7.4


--nextPart10527532.VNQRr6LPnD--

