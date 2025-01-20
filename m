Return-Path: <linux-man+bounces-2275-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AD8A17303
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 20:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34F371887F56
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 19:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E161DFE0B;
	Mon, 20 Jan 2025 19:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="RAG/MZ5p"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5E28479
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 19:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737400081; cv=none; b=crkuZFmIlDkeDBR9R2XTkIZQ6ljwyzngNuSrpkNsVOGPzN0Df220vxTGXBZs2ty7+ClGtfyM37UnfCIKDLUfUx1SNGVgVXUlwjLh7+MyJ32UtHDstWDLL3CfJAWCi1sbdPHQqJ/vih8jtjZcNWxlpTVHatTqFiz3l5FpC2OuZo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737400081; c=relaxed/simple;
	bh=Gux21ZIZ51Nfo/zgeFtOeNDZ2dNhpakg8E7++bXo87s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UgTY7JHJfpU0yD2CSrqrKRPR6+MP7zIa+nahRpS2QZL4ar5a1dnjcjZPbK1JC2YojbPR0BbImvxbvSArbhOcM2Ybmy+TAG7p0So3vkAuRdakUzcz5BtSoYaBzeFgVjdAhqcA6IPUJXP3RSlXOpGCbpUIl/ELg1FBuWSrLqU7vDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=RAG/MZ5p; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737400078;
	bh=Gux21ZIZ51Nfo/zgeFtOeNDZ2dNhpakg8E7++bXo87s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RAG/MZ5p/T2O3EH2YiIDP3pfaw/ka0vWEhAKL9Nqqo1H6dnJbeboNWbdYzzEnWrDM
	 zqjORsc+t6gdPaSn9nqOY9C7ludl0sK5A/KO1QPm196hZ84zKCxZGLsNp5ADtGl/Yq
	 dE4/aSMaLCMdJcwwGnT7aoJKT7pN0LsqQHxXG5JTfTvBo+ukcXZHKMgVNBaPjofKG3
	 pZVcBH8UjAwItr9ZGdUmhaYy627+/D43eEZklYF2ClB/TyT/96pYHOJw3SVz3uVIfQ
	 L7vFWLmFEGxG04ExuDbiPbS0n7Jkqbjz9IWhAUwEDsNT5TulMLGxZlowKGrAtKGNMr
	 agkh/byocWVJQ==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 015C07E285;
	Mon, 20 Jan 2025 14:07:57 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v9] man/man7/pathname.7: Add file documenting format of pathnames
Date: Mon, 20 Jan 2025 14:06:26 -0500
Message-ID: <20250120190632.127206-1-jason@jasonyundt.email>
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

• I removed the second iconv() call.
• I made utf32_pathname const.  I think that that was the only one that could
  be made const, but correct me if I’m wrong.
• I changed the order of the variable declarations.  I think that they’re in
  the correct order now, but correct me if I’m wrong.
• I removed the curly brackets from all of the if statements.
• I renamed inbytesleft to inbytes and outbytesleft to outbytes.
• I replaced the \\ with \[rs].

 man/man7/pathname.7 | 160 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 160 insertions(+)
 create mode 100644 man/man7/pathname.7

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
new file mode 100644
index 000000000..5864f230d
--- /dev/null
+++ b/man/man7/pathname.7
@@ -0,0 +1,160 @@
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
+A pathname can be at most PATH_MAX bytes long.
+PATH_MAX is defined in
+.BR limits.h (0p)\
+\.
+A pathname that’s longer than PATH_MAX bytes
+can be split into multiple smaller pathnames and opened piecewise using
+.BR openat (2).
+.IP \[bu]
+A filename can be at most a certain number of bytes long.
+The number is filesystem-specific.
+You can get the filename length limit for a currently mounted filesystem
+by passing _PC_NAME_MAX to
+.BR fpathconf (3)\
+\.
+For maximum portability, programs should be able to handle filenames
+that are as long as the relevant filesystems will allow.
+For maximum portability, programs and users should limit the length
+of their own pathnames to NAME_MAX bytes.
+NAME_MAX is defined in
+.BR limits.h (0p)\
+\.
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
+#include <err.h>
+#include <iconv.h>
+#include <langinfo.h>
+#include <locale.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <uchar.h>
+\&
+#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))
+\&
+int
+main(void)
+{
+    char *inbuf;
+    char *locale_pathname;
+    char *outbuf;
+    FILE *fp;
+    size_t iconv_result;
+    size_t inbytes;
+    size_t outbytes;
+    size_t size;
+    iconv_t cd;
+    const char32_t utf32_pathname[] = U"example";
+\&
+    if (setlocale(LC_ALL, "") == NULL)
+        err(EXIT_FAILURE, "setlocale");
+\&
+    size = NELEMS(utf32_pathname) * MB_CUR_MAX;
+    locale_pathname = malloc(size);
+    if (locale_pathname == NULL)
+      err(EXIT_FAILURE, "malloc");
+\&
+    cd = iconv_open(nl_langinfo(CODESET), "UTF\-32");
+    if (cd == (iconv_t) \- 1)
+        err(EXIT_FAILURE, "iconv_open");
+\&
+    inbuf = (char *) utf32_pathname;
+    inbytes = sizeof utf32_pathname;
+    outbuf = locale_pathname;
+    outbytes = size;
+    iconv_result =
+        iconv(cd, &inbuf, &inbytes, &outbuf, &outbytes);
+    if (iconv_result == \-1)
+        err(EXIT_FAILURE, "iconv");
+\&
+    if (iconv_result == \-1)
+        err(EXIT_FAILURE, "iconv");
+\&
+    if (iconv_close(cd) == \-1)
+        err(EXIT_FAILURE, "iconv_close");
+\&
+    fp = fopen(locale_pathname, "w");
+    fputs("Hello, world!\[rs]n", fp);
+    if (fclose(fp) == EOF)
+        err(EXIT_FAILURE, "fclose");
+\&
+    free(locale_pathname);
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR limits.h (0p),
+.BR open (2),
+.BR fpathconf (3),
+.BR iconv (3),
+.BR nl_langinfo (3),
+.BR path_resolution (7),
+.BR mount (8)
-- 
2.47.1


