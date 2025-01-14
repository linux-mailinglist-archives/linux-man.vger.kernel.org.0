Return-Path: <linux-man+bounces-2230-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F697A112B3
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 22:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43CD163971
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 21:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0EBE207643;
	Tue, 14 Jan 2025 21:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="YO4z1GaS"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F22020C47C
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 21:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736888491; cv=none; b=DRZGJ0R91T0nTeyHbe9qsNv0GfibhlLdk8u1yPjqhK5rPGCrTCexMxSaRpZ1QXzcwyXHTB7ESS0+p6g+MFs7OTCuvyJkC0Cu+X9t+3fMQxvf7qAWwUwqDeOBGmP9uNaYy1bxGfNvorl4uo3NqgFtkGSxFPEzOUqr3p+Umszj59o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736888491; c=relaxed/simple;
	bh=julx5e34AnvJhXFxSrHa9qO2zs3rD7L13TBsnZQ8x74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hdPC32s1+QD7LIDuMIM4kaglfMccvC2WvZ3pG3FLte0bcPIpVsQTlaJKEMaoAJgTnxbki/hW+ticCjMSPLkcXEx70q5sQeRTDFGEXDULJMCgR/6YzOeH5FxjM/65ZA8tl3BY/ikFnBcE4OAZzPveLISkuhQD1kZ+S1OCvo6Op4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=YO4z1GaS; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736888488;
	bh=julx5e34AnvJhXFxSrHa9qO2zs3rD7L13TBsnZQ8x74=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YO4z1GaS8H2cCrIAH20+uA+GgRvQWzSVaGMzwChIcK9nNVbkI68AL15nOm83ELIqj
	 F+gPgImWyJajHt7Nw0EANhZm1jQ9fzYFRWacA579nZNXfkf8TI00g8G25bpEPXROrb
	 wFugegwqmnsW7QDduGCtffFHcBWSzDr9hoGT5Kgu4vVy9rTbn3A+4sT0ad1m6i5+Gz
	 OgDAzqu9jzHs9NLr/0AAnaQ35hS9djarzbexwwybTKkGcmadz4uqFXABxhLUvZnplU
	 6lSR4hw6MiPkryhtJZuT4aEYkRbiTIh6lSVCuYgbXs9NP0Mn9eQNRjHO5ivzmGPjDS
	 xyBcdYx4LHiIQ==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 8E0957ED56;
	Tue, 14 Jan 2025 16:01:28 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v3] man/man7/path_format.7: Add file documenting format of pathnames
Date: Tue, 14 Jan 2025 16:01:14 -0500
Message-ID: <20250114210117.157508-1-jason@jasonyundt.email>
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
 man/man7/path_format.7 | 49 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 man/man7/path_format.7

diff --git a/man/man7/path_format.7 b/man/man7/path_format.7
new file mode 100644
index 000000000..c34d78f65
--- /dev/null
+++ b/man/man7/path_format.7
@@ -0,0 +1,49 @@
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
+Filesystems may impose additional restrictions on paths, though.
+ext4 is one example of a filesystem that does this.
+If you want to store a file on an ext4 filesystem,
+then its filename can’t be longer than 255 bytes.
+vfat is another example.
+If you want to store a file on a vfat filesystem,
+then its filename can’t contain a 0x3A byte (: in ASCII)
+unless the filesystem was mounted with iocharset set to something unusual.
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


