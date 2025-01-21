Return-Path: <linux-man+bounces-2281-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BFAA17EF5
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 14:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC87A3AA52A
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 13:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41C61F2398;
	Tue, 21 Jan 2025 13:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="YURtq+yT"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DD01E4113
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737466803; cv=none; b=kZGWwRqVLI5u7OmgztWuga7dA5MQYzLDsAYiwMJP/MPt5UB49WI7VkCACZtFblH8el4y7Qb2eqwsMgB9dIZGQduN+5kac5J5KEQyJ8oN5aZO7BHCf7EwabImZpOFTvMYHkBb6zegmk/Xldf6f8xDGdL7qB+OapUBZa5EPmSM5fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737466803; c=relaxed/simple;
	bh=2H0E+FiH3F33S+uygdoyjc2DXfmaWw7fzbcqoLqCt24=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JqQFOsZ3zvtynHFu7B6tp+nDV1LipG14G3hj0zUBoL3Z32IB1zddxA+JBZ10k4ErSxVH3+lv01oWD0rKWQ1mlMQEomT9nA1NtIUTT2vsH8z44sAkrEsklAcH6WDUFreozP4mVyBGyWU7veiIDsAZwwS3/kX2IHkhaT6lJcp5SEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=YURtq+yT; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737466800;
	bh=2H0E+FiH3F33S+uygdoyjc2DXfmaWw7fzbcqoLqCt24=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YURtq+yTjqPfeS7rBDLosTrNaIdisVpfLdCG006LtrMsOIj3SvJhY9IBF/rf3nghc
	 q5rX6rVKt5Du51efFAUhgk6nzkIX5i4y0pWjNoBNPWDzHIIL7VIEsfhVYzG4eqUnHn
	 UTHBBQxe3OsrMVgawqdWw0+pyfRrpbvOIQ8oe29QFBsKWNO79V5S2QcJuIhJT5OrRc
	 L8fwaKq3/C0h/fVh6gayr+9fTi76HWQJlFpe3vnCzWzCNjc7WVO/dUHaltiXwx5VYm
	 45pEOhyQNqc6y7D4liNAX6sRMSYM7ripXbl9HKA6bKl5pykG63MM7c4RLAviZsT+TZ
	 FdbzaOGd3Cn5A==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 5DD727E308;
	Tue, 21 Jan 2025 08:40:00 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v10] man/man7/pathname.7: Add file documenting format of pathnames
Date: Tue, 21 Jan 2025 08:35:20 -0500
Message-ID: <20250121133523.24606-1-jason@jasonyundt.email>
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

• I renamed inbuf to in and outbuf to out.
• I removed the iconv_result variable.
• I aligned and merged the variable declarations as requested.
• I added parentheses to my use of sizeof.
• I removed the leftover if statement.
• I removed some unintentional spaces.

 man/man7/pathname.7 | 152 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 152 insertions(+)
 create mode 100644 man/man7/pathname.7

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
new file mode 100644
index 000000000..96e0009e1
--- /dev/null
+++ b/man/man7/pathname.7
@@ -0,0 +1,152 @@
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
+    char     *locale_pathname;
+    char     *in, *out;
+    FILE     *fp;
+    size_t   size;
+    size_t   inbytes, outbytes;
+    iconv_t  cd;
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
+    if (cd == (iconv_t)\-1)
+        err(EXIT_FAILURE, "iconv_open");
+\&
+    in = (char *) utf32_pathname;
+    inbytes = sizeof(utf32_pathname);
+    out = locale_pathname;
+    outbytes = size;
+    if (iconv(cd, &in, &inbytes, &out, &outbytes) == \-1)
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


