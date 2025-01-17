Return-Path: <linux-man+bounces-2256-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3832A15001
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 14:03:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D299A161372
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 13:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366DF1FECBA;
	Fri, 17 Jan 2025 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="MDeklgYl"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431051FDE1B
	for <linux-man@vger.kernel.org>; Fri, 17 Jan 2025 13:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737118943; cv=none; b=P+KwS4lRtUv+UxA2m7rPJsFCi2yeK8+oQoKwgF3BV5xu2wIzicolRvy8je5RCLX4mFY++0sz8lMR5DUW+YOSJgKSZNS1BDgyyWobpgLboIcCQouxmuoDKzVdTgRWGfOW58PFvVoi6DVcjrzD97hQjR9Sjaz1FmXQOGiXmglTezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737118943; c=relaxed/simple;
	bh=Ex7ql8efagih64c7EEnk17Hgr2sYzRrbSE1QP/eVVSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RD/OqY8jN0EDi87cywZRsFh0TAS1wd+vlvJVEOjTtiyyD/mXRoMw7i/9ZT4altald33cHBWSxRF6Xrz4IxWCHnZxXCgzi4FipxDn5k3zP8Bb21cn6gXdhby0q5kKzt2N8M8hdhrECLWcmp/pooKSefuVkG9nWyJ2PLzAN2Mc7PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=MDeklgYl; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737118933;
	bh=Ex7ql8efagih64c7EEnk17Hgr2sYzRrbSE1QP/eVVSQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MDeklgYlcVJb4wMXWU5pmuSMr6PGnCepYWFopvArs0ob8S0VAZHU/YN7lu8K82myY
	 8E/Mvk2XMdfFnqbr0j/6w4OwqMUl/nF6RdErvo0GkltJRz3l8oN/HudNQIDWNkYupP
	 Te9yHpcj9JMWXrADIaRwLC8HMwOnwq1gfAOe7LRYlymMcpMJNWQ6SF5UoeLxuZkXyo
	 ZA/5ZWzSA2GrNFGqwiEeSTf/t0wWVhl+xRrDhmHkFjUGuuz1pC6jBwhSPa8xDokEOT
	 XnuDtwSGQUuycx/gottzrZ5R0XIW9PF2tmMEhT8KKJmcUkFdQkTFLyTmad1AD/nfbd
	 QruIUDq1xNIpg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 252D67E247;
	Fri, 17 Jan 2025 08:02:12 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v5] man/man7/pathname.7: Add file documenting format of pathnames
Date: Fri, 17 Jan 2025 08:02:03 -0500
Message-ID: <20250117130205.33119-1-jason@jasonyundt.email>
In-Reply-To: <20250113213301.410280-1-jason@jasonyundt.email>
References: <20250113213301.410280-1-jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The goal of this new manual page is to help people create programs that
do the right thing even in the face of unusual paths.  The information
that I used to create this new manual page came from these sources:

• <https://unix.stackexchange.com/a/39179/316181>
• <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>
• <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/fs/ext4/ext4.h?h=v6.12.9#n2288>
• <man:unix(7)>
• <https://unix.stackexchange.com/q/92426/316181>

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
Here’s what I changed from the previous version:

• I stopped saying that the kernel has a 255-byte limit on filenames.
  Florian was right, you can create files with names longer than 255
  characters.  I tried it, and I was able to create a file with a 355-character
  long name on both tmpfs and bcachefs.  This leaves us with one problem,
  though.  In <linux/limits.h>, NAME_MAX is defined as 255 and has a comment
  that says “chars in a file name” [1].  POSIX says that NAME_MAX is the
  “Maximum number of bytes in a filename (not including the terminating null of
  a filename string).”  Why is NAME_MAX set to 255 if you can have longer
  filenames?
• I from the Amiga filesystem back to the ext4 filesystem example.  The only
  reason why I had used the Amiga filesystem example was because I had
  previously thought that 255 bytes was the maximum for any filename,
  regardless of the filesystem.  I think that ext4 is better example because
  people are more likely to use an ext4 filesystem than an Amiga filesystem.
• I implemented all of Alex suggestions, except for the ones that
  no longer apply because they were suggestions for text that was deleted for
  other reasons.
• I added an example program.

[1]: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/include/uapi/linux/limits.h?h=v6.12.9#n12>
[2]: <https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/limits.h.html#tag_14_26_03_02>

 man/man7/pathname.7 | 151 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 151 insertions(+)
 create mode 100644 man/man7/pathname.7

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
new file mode 100644
index 000000000..9545c3b07
--- /dev/null
+++ b/man/man7/pathname.7
@@ -0,0 +1,151 @@
+.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH pathname 7 (date) "Linux man-pages (unreleased)"
+.SH NAME
+pathname,
+filename
+\-
+how pathnames are encoded and interpreted
+.SH DESCRIPTION
+Some system calls allow you to pass a pathname as a parameter.
+When writing code that deals with pathnames,
+there are kernel-space requirements that you must comply with,
+and user-space requirements that you should comply with.
+.P
+The kernel stores pathnames as null-terminated byte sequences.
+The kernel has a few general rules that apply to all pathnames:
+.IP \[bu] 3
+The last byte in the sequence needs to be a null byte.
+.IP \[bu]
+Any other bytes in the sequence need to be non-null bytes.
+.IP \[bu]
+A 0x2F byte is always interpreted as a directory separator (/)
+and cannot be part of a filename.
+.IP \[bu]
+A pathname can be at most 4,096 bytes long.
+A pathname that’s longer than 4,096 bytes
+can be split into multiple smaller pathnames and opened piecewise using
+.BR openat (2).
+.P
+The kernel also has some rules that only apply in certain situations.
+Here are some examples:
+.IP \[bu] 3
+Filenames on the ext4 filesystem can be at most 30 bytes long.
+.IP \[bu]
+Filenames on the vfat filesystem cannot a
+0x22, 0x2A, 0x3A, 0x3C, 0x3E, 0x3F, 0x5C or 0x7C byte
+(", *, :, <, >, ?, \ or | in ASCII)
+unless the filesystem was mounted with iocharset set to something unusual.
+.IP \[bu]
+A UNIX domain socket’s sun_path can be at most 108 bytes long (see
+.BR unix (7)
+for details).
+.P
+User space treats pathnames differently.
+User space applications typically expect pathnames to use
+a consistent character encoding.
+For maximum interoperability, programs should use
+.BR nl_langinfo (3)
+to determine the current locale’s codeset.
+Paths should be encoded and decoded using the current locale’s codeset
+in order to help prevent mojibake.
+For maximum interoperability,
+programs and users should also limit
+the characters that they use for their own pathnames to characters in
+.UR https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#tag_03_265
+the POSIX Portable Filename Character Set
+.UE .
+.SH EXAMPLES
+The following program demonstrates
+how to ensure that a pathname uses the proper encoding.
+The program starts with a UTF-32 encoded pathname.
+It then calls
+.BR nl_langinfo (3)
+in order to determine what the current locale’s codeset is.
+After that, it uses
+.BR iconv (3)
+to convert the UTF-32 encoded pathname into a locale codeset encoded pathname.
+Finally, the program uses the locale codeset encoded pathname to create
+a file that contains the message “Hello, world!”
+.SS Program source
+.\" SRC BEGIN (pathname_encoding_example.c)
+.EX
+#include <iconv.h>
+#include <langinfo.h>
+#include <locale.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <uchar.h>
+\&
+int
+main(void)
+{
+    if (setlocale(LC_ALL, "") == NULL) {
+        exit(EXIT_FAILURE);
+    }
+    char32_t *utf32_pathname = U"example";
+    size_t characters_in_pathname = (sizeof utf32_pathname) \- 1;
+    size_t bytes_in_locale_pathname =
+        characters_in_pathname * MB_CUR_MAX + 1;
+    // We use calloc() here to make sure that the output from iconv() is null
+    // terminated.
+    char *locale_pathname = calloc(1, bytes_in_locale_pathname);
+    if (locale_pathname == NULL) {
+        exit(EXIT_FAILURE);
+    }
+\&
+    iconv_t cd = iconv_open(nl_langinfo(CODESET), "UTF\-32");
+    if (cd == (iconv_t) \- 1) {
+        exit(EXIT_FAILURE);
+    }
+    char *inbuf = (char *) utf32_pathname;
+    size_t inbytesleft =
+        characters_in_pathname * (sizeof *utf32_pathname);
+    char *outbuf = locale_pathname;
+    size_t outbytesleft = bytes_in_locale_pathname;
+    size_t iconv_result;
+    // iconv() doesn’t necessarily convert everything all in one go, so we call
+    // it in a while loop just in case it takes multiple calls to finish
+    // converting everything.
+    while (inbytesleft > 0) {
+        iconv_result =
+            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
+        if (iconv_result == \-1) {
+            exit(EXIT_FAILURE);
+        }
+    }
+    // This ensures that the conversion is 100% complete.  See iconv(3) for
+    // details.
+    iconv_result =
+        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
+    if (iconv_result == \-1) {
+        exit(EXIT_FAILURE);
+    }
+    if (iconv_close(cd) == \-1) {
+        exit(EXIT_FAILURE);
+    }
+\&
+    FILE *fp = fopen(locale_pathname, "w");
+    if (fp == NULL) {
+        exit(EXIT_FAILURE);
+    }
+    if (fputs("Hello, world!\\n", fp) == EOF) {
+        exit(EXIT_FAILURE);
+    }
+    if (fclose(fp) == EOF) {
+        exit(EXIT_FAILURE);
+    }
+\&
+    free(locale_pathname);
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR open (2),
+.BR iconv (3),
+.BR nl_langinfo (3),
+.BR path_resolution (7),
+.BR mount (8)
-- 
2.47.1


