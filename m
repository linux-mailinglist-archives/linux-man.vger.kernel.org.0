Return-Path: <linux-man+bounces-2222-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D65A1072B
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 13:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DC25188748B
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 12:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412FA22DC33;
	Tue, 14 Jan 2025 12:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="ElJMe/En"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473B2236A6E
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 12:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736859375; cv=none; b=H0G/OocwixTxdOPB2x3D0IQBXr0MSk4hB9qVxSjte8Bl9E9bY9ofTfuZj9KWChtmDl4R86gaqekpQ6iz/4SObmHAnhujGmtAYAAe4pFWnRMgrE7DapF6e7oxD8QdH68xEqEgR85nvXKDXxVwW7l2ihVLilCEV0JKBATfZGS/OtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736859375; c=relaxed/simple;
	bh=ftsIwhsAybPm07xXCy7zlLHSIRmW1QXEPqIpoCileY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gUstP/bzbgjYV3Pl107vkDmJI/5Bs0QDEM+/9JHIBu84BG+l+h+uu/LhmCLannUXxSmKnkTrsD15jTsZF6hpPTs3Y7u6vOr/OTCQKWWNEN1YoyiyXsPTTGxHPEZTfCBtzYxECp5KrbpRr/gWIY+o4mWhVeV1hhLolZb48rMWSwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=ElJMe/En; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736859370;
	bh=ftsIwhsAybPm07xXCy7zlLHSIRmW1QXEPqIpoCileY0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ElJMe/EnGlUFCq4VEKsu6WunXVbGFrd/uAzcugpbHWki/I/EJpLCQZEBp5Z+JKPqN
	 ukvXw3R8hT6wCn02a4FY5AwqTctcnX3dLu9IksYRzn3XuMvimHn46oDXygxs7deUeV
	 Lo0rRUbYdDFWWQI16RdtIOwr5n8L7LEA4BW5/ZIh1T2kK3dp9v7cal9fp7XN3YRSFf
	 /2nfPrB5eyeejWZX3/NtlqIdwWwlLCq7locNnSnPQp2RMdSfbVbtStsIMSYxAyOirW
	 syCp8tATfc9KHw5k4MiOv0D/srVomWKXA3XSjxPjybn818F/EWA8mNssTZ3BU/G5VP
	 IOkrdCqq9XBeg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 6FFF17E2AF;
	Tue, 14 Jan 2025 07:56:10 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man7/path-format.7: Add file documenting format of pathnames
Date: Tue, 14 Jan 2025 07:54:45 -0500
Message-ID: <20250114125453.27520-1-jason@jasonyundt.email>
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
that I used to create this new manual page came from this Unix & Linux
Stack Exchange answer [1], this Libc-help mailing list post [2] and this
line of code from the kernel [3].

[1]: <https://unix.stackexchange.com/a/39179/316181>
[2]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>
[3]: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/fs/ext4/ext4.h?h=v6.12.9#n2288>

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
Here’s what I changed from the previous version:

• The title of the page is now “path_format”. It’s now always written in all lowercase.
• The second kernel rule now uses the suggested phrase “…need to be non-null bytes”.
• The manual page now recommends self-limiting to the POSIX Portable Filename Character Set.
• A missing word (byte) was added to the first kernel rule.
• I added a missing source to the commit message.

 man/man7/path_format.7 | 47 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 man/man7/path_format.7

diff --git a/man/man7/path_format.7 b/man/man7/path_format.7
new file mode 100644
index 000000000..0a129eeba
--- /dev/null
+++ b/man/man7/path_format.7
@@ -0,0 +1,47 @@
+.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH path_format 7 (date) "Linux man-pages (unreleased)"
+.SH NAME
+path_format \- how pathnames are encoded and interpreted
+.SH DESCRIPTION
+Some system calls allow you to pass a pathname as a parameter.
+When writing code that deals with paths,
+there are kernel space requirements that you must comply with
+and userspace requirements that you should comply with.
+.P
+The kernel stores paths as null-terminated byte sequences.
+As far as the kernel is concerned, there are only three rules for paths:
+.IP \[bu]
+The last byte in the sequence needs to be a null byte.
+.IP \[bu]
+Any other bytes in the sequence need to be non-null bytes.
+.IP \[bu]
+A 0x2F byte is always interpreted as a directory separator (/).
+.P
+This means that programs can technically do weird things
+like create paths using random character encodings
+or create paths without using any character encoding at all.
+Filesystems may impose additional restrictions on paths, though.
+For example, if you want to store a file on an ext4 filesystem,
+then its filename can’t be longer than 255 bytes.
+.P
+Userspace treats paths differently.
+Userspace applications typically expect paths to use
+a consistent character encoding.
+For maximum interoperability, programs should use
+.BR nl_langinfo (3)
+to determine the current locale’s codeset.
+Paths should be encoded and decoded using the current locale’s codeset
+in order to help prevent mojibake.
+For maximum interoperability,
+programs and users should also limit
+the characters that they use for their own paths to characters in
+.UR https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#tag_03_265
+the POSIX Portable Filename Character Set
+.UE .
+.SH SEE ALSO
+.BR open (2),
+.BR nl_langinfo (3),
+.BR path_resolution (7)
-- 
2.47.0


