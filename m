Return-Path: <linux-man+bounces-2258-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FBFA15A36
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 01:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 554C91669A7
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 00:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C9110F9;
	Sat, 18 Jan 2025 00:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="IaEOBdj4"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8539D4C7D
	for <linux-man@vger.kernel.org>; Sat, 18 Jan 2025 00:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737158492; cv=none; b=DATONtjq0I2gmwhKk/D7Fwbjq7f7bO2mVAxu+oeK2N4uf1CacZu0II4JlAo4MnbMFUxquqZ6Gti7WLjGwmNFKgWMHXJa4AKqQ4zBv/fxcC8JwSV85WISPZw0kJ56p56AmLJVZZm2pD3DkNSge4xqi145FrZmBfJVfaGUwoWqh2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737158492; c=relaxed/simple;
	bh=gLMEFPcM4arA1Qh+rtL+d3MM4aOz6Xf9aB8dVNjTNIw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e0RHLjZXl4rLBDQcx5idzqeUtVMhHmlozN9S0Hc7AAUWdl/8nhGkgVOZ7cK7B2kCj4+KFONd6tEEdrfgm63Gqejzude1cYr/E1coYl2yhVf4h68t75GkOjO1FP5rfeUij9saP4OTB7RCNYlHuOEkRSP2CIxR/XM5J8QYu2WftJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=IaEOBdj4; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737158487;
	bh=gLMEFPcM4arA1Qh+rtL+d3MM4aOz6Xf9aB8dVNjTNIw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IaEOBdj4rfKcp3BGBtSTUzOdhBVG7KjssvWXuRgBlHeey72PKYgiC907jGwQs8HIQ
	 RIbLRkv7fKs3hb+CSTiigNdHXOsC2573ZEd6bACIbXJYNHxVq9Pg5rlbSwA7MtdzqS
	 IbKBCfYM1vjjF45o0/kYEV07lHWkw6sjMSIzyFvb5OFXYj1PeD9sYcw4ql9HrqzLUt
	 lBMTGGlmHrwh2usqzF+q9bQ3vnoWhvQrjjh0VfWaUfjwB3y6YZhVz2YRSjZ65eE/Qz
	 GZ+uTu8FoBq3c7+AtbF9TVUpXJ8//cE/kbeNp2iZWRM/J3V+c+2XmZ4hA2pAlbrYaT
	 zO5Ei2ZL6p6YA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id AF1EC7E250;
	Fri, 17 Jan 2025 19:01:27 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v6] man/man7/pathname.7: Add file documenting format of pathnames
Date: Fri, 17 Jan 2025 18:59:34 -0500
Message-ID: <20250117235936.146714-1-jason@jasonyundt.email>
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

• The man page now says “PATH_MAX bytes” instead of “4,096 bytes”, and tells
  the user to take a look at limits.h(0p).  I had originally gotten the 4,096
  bytes number by looking at limits.h(0p), so it makes sense to direct readers
  to that header because its the source of truth.
• The man page now mentions that each filesystem has its own filename length
  limit and that you can use fpathconf(3) in order to determine that limit.
• I removed the part that mentioned ext4’s filename length limit because the
  man page now has a different part that tells you how to use fpathconf(3) to
  figure out the limit for any filesystem.
• The man page now recommends that programs and users use at most NAME_MAX
  bytes for filenames.
• I implemented Alex’s suggested changes to the example program.

 man/man7/pathname.7 | 171 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 171 insertions(+)
 create mode 100644 man/man7/pathname.7

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
new file mode 100644
index 000000000..93bc9d225
--- /dev/null
+++ b/man/man7/pathname.7
@@ -0,0 +1,171 @@
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
+    if (setlocale(LC_ALL, "") == NULL) {
+        err(EXIT_FAILURE, "setlocale");
+    }
+    char32_t utf32_pathname[] = U"example";
+    size_t pathname_len = NELEMS(utf32_pathname) \- 1;
+    size_t locale_pathname_size = pathname_len * MB_CUR_MAX + 1;
+    // We use calloc() here to make sure that the output from iconv() is
+    // null terminated.
+    char *locale_pathname = calloc(locale_pathname_size, 1);
+    if (locale_pathname == NULL) {
+	err(EXIT_FAILURE, "calloc");
+    }
+\&
+    iconv_t cd = iconv_open(nl_langinfo(CODESET), "UTF\-32");
+    if (cd == (iconv_t) \- 1) {
+        err(EXIT_FAILURE, "iconv_open");
+    }
+    char *inbuf = (char *) utf32_pathname;
+    size_t inbytesleft = pathname_len * (sizeof *utf32_pathname);
+    char *outbuf = locale_pathname;
+    size_t outbytesleft = locale_pathname_size;
+    size_t iconv_result;
+    // iconv() doesn’t necessarily convert everything all in one go, so
+    // we call it in a while loop just in case it takes multiple calls
+    // to finish converting everything.
+    while (inbytesleft > 0) {
+        iconv_result =
+            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
+        if (iconv_result == \-1) {
+            err(EXIT_FAILURE, "iconv");
+        }
+    }
+    // This ensures that the conversion is 100% complete.
+    // See iconv(3) for details.
+    iconv_result =
+        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
+    if (iconv_result == \-1) {
+        err(EXIT_FAILURE, "iconv");
+    }
+    if (iconv_close(cd) == \-1) {
+        err(EXIT_FAILURE, "iconv_close");
+    }
+\&
+    FILE *fp = fopen(locale_pathname, "w");
+    if (fp == NULL) {
+        err(EXIT_FAILURE, "fopen");
+    }
+    if (fputs("Hello, world!\\n", fp) == EOF) {
+        err(EXIT_FAILURE, "fputs");
+    }
+    if (fclose(fp) == EOF) {
+        err(EXIT_FAILURE, "fclose");
+    }
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


