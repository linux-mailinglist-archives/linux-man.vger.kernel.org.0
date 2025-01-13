Return-Path: <linux-man+bounces-2219-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B0EA0C3EB
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 22:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D5287A1800
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 21:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965341D61A5;
	Mon, 13 Jan 2025 21:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="igj3rGSD"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC031C8FD4
	for <linux-man@vger.kernel.org>; Mon, 13 Jan 2025 21:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736804467; cv=none; b=WGoSD5TJcjHTKlUTbniRmezQ/cA0pr3Em1uMhGBWh1xnIAWgNWWU8z99HWYhs7GMbxg7zZL01yQIZo6Ni5yWCnxdYMh4mL2lRGQkrn14V6SH7VG96fRmyYBDP/ItUjwTZu3Sd41MZpmY60edM/aj3sSu29mjW4fdNnHsn5ptAUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736804467; c=relaxed/simple;
	bh=/SShKM/Y+2/zY7C9wJ8/faIOuSMMoSoeZzBucdKz28o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=vCxkJE2/hn54Y9h4OzpekBiXyiRpPKzy0Vds9HLJBla0W/3PGlv51MnjywdN1RrBQQ+2VTqLTnEo60hRvJE1dukpkRd9VHYrN2xfvq/B8/4jxEOzAhWTB6wJQSd1ZquillKBIdyta+suR6a9oNSYQ+BwKpgUjl5AYO/cHvPV0Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=igj3rGSD; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736804099;
	bh=/SShKM/Y+2/zY7C9wJ8/faIOuSMMoSoeZzBucdKz28o=;
	h=From:To:Cc:Subject:Date:From;
	b=igj3rGSDIEBmG5MLKK/2BJbRCET4cdIBzN3j4j7GIIrQOvmFiiBLCT1wRVgAnlYBP
	 8dcgS/znjHmD567UZ4w+y9zmOvRrfO9QK7oLgEDTcK0IGim+EKUcXQrKJUqkDiiKTk
	 Y1vHkWAoUpCasRvxI9sru47Q/Ypg6T4CodDE7cpjT0den29pwZmhujsoz0jxf5vtGq
	 /n+aXveT5sJ0ttKQwSOeOQf+y1dGjRkFuss/SF+3FIMTTOBud00DtjSxlrVPAi8IE9
	 w3TM4SxBZ81Uifj+XhpkwvEU7uRhnwOJYreJSCXytWnoMJd+xTsQgMbvk0cLC7a6V6
	 r8EWagxBmgRsA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 144047E24C;
	Mon, 13 Jan 2025 16:34:58 -0500 (EST)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man7/path-format.7: Add file documenting format of pathnames
Date: Mon, 13 Jan 2025 16:32:46 -0500
Message-ID: <20250113213301.410280-1-jason@jasonyundt.email>
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
Stack Exchange answer [1] and from this Libc-help mailing list post [2].

[1]: <https://unix.stackexchange.com/a/39179/316181>
[2]: <https://sourceware.org/pipermail/libc-help/2024-August/006737.html>

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
 man/man7/path-format.7 | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 man/man7/path-format.7

diff --git a/man/man7/path-format.7 b/man/man7/path-format.7
new file mode 100644
index 000000000..c3c01cbf5
--- /dev/null
+++ b/man/man7/path-format.7
@@ -0,0 +1,41 @@
+.\" Copyright (C) 2025 Jason Yundt (jason@jasonyundt.email)
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH PATH-FORMAT 7 (date) "Linux man-pages (unreleased)"
+.SH NAME
+path-format \- how pathnames are encoded and interpreted
+.SH DESCRIPTION
+Some system calls allow you to pass a pathname as a parameter.
+When writing code that deals with paths,
+there are kernel space requirements that you must comply with
+and userspace requirements that you should comply with.
+.P
+The kernel stores paths as null-terminated byte sequences.
+As far as the kernel is concerned, there are only three rules for paths:
+.IP \[bu]
+The last byte in the sequence needs to be a null.
+.IP \[bu]
+Any other bytes in the sequence need to not be null bytes.
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
+.SH SEE ALSO
+.BR open (2),
+.BR nl_langinfo (3),
+.BR path_resolution (7)
-- 
2.47.0


