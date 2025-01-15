Return-Path: <linux-man+bounces-2237-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49916A12888
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ACF71884356
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 16:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5A214A60C;
	Wed, 15 Jan 2025 16:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="dZBReBZ9"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B50B86348
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 16:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736958087; cv=none; b=ZxCS5F9RPh3I3kV9D8kpt81U+xWfieisHanQ6GtB1MSM8xChFvui9CZtXOOgtsowgulMZdqxdMr64NUnVIAMgV6qqbx/gb3mn2VvvyZF3SuaLo4EYDk05zMm+3Mqwg4eR9TD6k46l5LC0gz8qxL/f3BHmS9HUhsFL3tywBuWhkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736958087; c=relaxed/simple;
	bh=0tZPZ/paNSvFbZ2+abk8wGSplvMRDGzh/Y+jgcAI60w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ba2gzWVWpPrUh2EuABpuo3GscBynrzOzGe5anN+Ng7UireD9UW9ASFB8JmW28ss5Zyc+DaU+3vFExSjE+v47VkF93Pku4AQSm9hG+1tXhinDn0K4mUstx4+2e1fBU3eugJDEFHCeN0a5+uiH329JbbjjgEhKbG1KKw3k5ltbWFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=dZBReBZ9; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736958084;
	bh=0tZPZ/paNSvFbZ2+abk8wGSplvMRDGzh/Y+jgcAI60w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dZBReBZ9LP43hJr8mIWZHCFd21Am7ze/kGvMzylLK9l8qF11RyLwH1pbe3V3AnXne
	 VPFivqSEZq9C2+HnFfv0ktoeHGK2Nvab36DkbKFrIWKWaqsTcQqAwuc/zWB/m5sxz/
	 io5Ijrg7rxVjY6Y7ws/TmAaDpkNdG4ubD/vCtITFSOQIrkh5ADL+hJDOLf3/7+iIiN
	 ciQMWHXThkYWi/7G7jq03+jK5R5q1P7JVFsd41ieNLrwER3WIQ6+YovtlnxTn3KG/Q
	 cGY12DBXM4WuDqk72xf98Msd77yQkknNPcAivcJ/qQnf6PxI322AyyW6fXI4h/yGD+
	 fce6goSj7bwgg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 888C77E26E;
	Wed, 15 Jan 2025 11:21:24 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>
Subject: [PATCH v4] man/man7/pathname.7: Add file documenting format of pathnames
Date: Wed, 15 Jan 2025 11:20:51 -0500
Message-ID: <20250115162052.131794-1-jason@jasonyundt.email>
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
• <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/include/uapi/linux/limits.h?h=v6.12.9#n12>
• <https://docs.kernel.org/filesystems/affs.html#mount-options-for-the-affs>
• <man:unix(7)>

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
Here’s what I changed from the previous version:

• The title of the page is now “pathname(7)”.
• The list of kernel rules now mentions that paths can’t be longer than
  4,096 bytes (Thanks for mentioning this, Florian).
• The list of kernel rules now mentions that filenames can’t be longer
  than 255 bytes.
• I replaced the ext4 filename limitation example with a Amiga filename
  limitation example.  It no longer made sense to say that ext4 limited
  filenames to 255 bytes now we’re saying that all filenames are limited
  to 255 bytes.
• I added UNIX domain sockets’s sun_path as an example of a situation
  where the kernel puts additional limitations on paths (Thanks for
  mentioning this, Florian).
• I added additional sources to the commit message in order to account
  for the new information added by this version.

 man/man7/pathname.7 | 61 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 man/man7/pathname.7

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
new file mode 100644
index 000000000..15ff98e15
--- /dev/null
+++ b/man/man7/pathname.7
@@ -0,0 +1,61 @@
+.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH pathname 7 (date) "Linux man-pages (unreleased)"
+.SH NAME
+pathname \- how pathnames are encoded and interpreted
+.SH DESCRIPTION
+Some system calls allow you to pass a pathname as a parameter.
+When writing code that deals with paths,
+there are kernel space requirements that you must comply with
+and userspace requirements that you should comply with.
+.P
+The kernel stores paths as null-terminated byte sequences.
+The kernel has a few general rules that apply to all paths:
+.IP \[bu]
+The last byte in the sequence needs to be a null byte.
+.IP \[bu]
+Any other bytes in the sequence need to be non-null bytes.
+.IP \[bu]
+A 0x2F byte is always interpreted as a directory separator (/).
+.IP \[bu]
+A path can be at most 4,096 bytes long.
+A path that’s longer than 4,096 bytes can be split into multiple smaller paths
+and opened piecewise using
+.BR openat (2).
+.IP \[bu]
+Filenames can be at most 255 bytes long.
+.P
+The kernel also has some rules that only apply in certain situations.
+Here are some examples:
+.IP \[bu]
+If you want to store a file on an Amiga filesystem,
+then its filename can’t be longer than 30 bytes.
+.IP \[bu]
+If you want to store a file on a vfat filesystem,
+then its filename can’t contain a 0x3A byte (: in ASCII)
+unless the filesystem was mounted with iocharset set to something unusual.
+.IP \[bu]
+A UNIX domain socket’s sun_path can be at most 108 bytes long (see
+.BR unix (7)
+for details).
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
2.47.1


