Return-Path: <linux-man+bounces-3279-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CD3B0A3E2
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 14:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43E0E163E57
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 12:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4072F2D9499;
	Fri, 18 Jul 2025 12:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7iVo1qB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AA9A920
	for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 12:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752840789; cv=none; b=Tva+QG5rCkvEAhj5sahYTul2+dnoxZHNAdCtG2NRNJOFQueoNYoCgM2GCighFZflJmXD2AWUEK/HCcz78sf+a7ld6SEv0toQ+1as92A6r0kuAFXH31SltyDQWI1BFjtre+EdA6WrfQ8ZAUHDYwO1RbOacw1VsMCDafZ8rsLYFDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752840789; c=relaxed/simple;
	bh=0gbJOubq2ZHz/KD0Lzk5du+vd7MQiYSvQOJejbdarQM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Q4G1qXbI9/Vre0J21aYHI4mRobTdEPCxOWRZgV/10wmsj6grFUr9dcxwp98UG2jv4YU7VSvdy1IdxVfYLLk108licnt3rgckKv41dbSIBq0sbEYI5iMS9GknDE6abmzMWiFU6TtKbkONVNIeupT9wBsqCdiART3VnE6xj9/V71s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7iVo1qB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0CA5C4CEEB;
	Fri, 18 Jul 2025 12:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752840788;
	bh=0gbJOubq2ZHz/KD0Lzk5du+vd7MQiYSvQOJejbdarQM=;
	h=Date:From:To:Cc:Subject:From;
	b=h7iVo1qBYTlu33Jl2F0WYV9nN8SX24Ndxb8VLcC7A6o5GXmBjozoQPhecFLy0LwG1
	 H9V+eg3Axsv19nSKuEHVQ3o0w8kE0s8ysLd98FU4Pq++HDi5sw5VeOWEvuJ/vd2uh6
	 wUjRiAUugKL5xrIxIi69XnSgI1KVeydki9WFUNe5MF0ziwGWdqQA938At6XuBCOmzf
	 eYLmEFMLLjxsdmmDhJEUh9Ai53JYXjvmuXiF9bru9uv8yT6GsxdxhUSr4tBzg+yZTx
	 tO720wc4q2+BninQLjpHPeWYjsuwJ1ZEVqQvD393Yu+pTg/+q5QTpP1EXO47aSU7j7
	 ktPgb+2A2IUUQ==
Date: Fri, 18 Jul 2025 14:13:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Aaron Ballman <aaron@aaronballman.com>
Subject: [PATCH] man/man3attr/gnu::format.3attr: Add page
Message-ID: <0112aa1d027bae133543efbcc2a16cfe1961ef63.1752840519.git.alx@kernel.org>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Cc: Aaron Ballman <aaron@aaronballman.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Aaron,

I've written another attribute page.  Would you mind reviewing this
page?  I often find myself needing to check documentation for
[[gnu::format()]], so I found it useful to have it as one of the first
manual pages for attributes, regardless of it being well-documented in
both GCC and Clang.

Please let me know the minimum Clang versions for clang and clang++ for
this attribute.

Here's the formatted page:

	$ MANWIDTH=64 man ./man3attr/gnu::format.3attr | cat;
	gnu::format(3attr)                           gnu::format(3attr)

	NAME
	     gnu::format - specify the style of format string

	SYNOPSIS
	     [[gnu::format(style, fmt‐idx, first‐idx)]]

	DESCRIPTION
	     This  attribute  specifies  the  style of a format string.
	     This allows checking the syntax of the format  string,  as
	     well  as  the  types of the variadic arguments.  The style
	     can be one of the following.

	     printf
	     scanf
	     strftime
	     strfmon

	     fmt‐idx is a 1‐based index that specifies the position  of
	     the format string within the parameter list.

	     first‐idx  is  a 1‐based index that specifies the position
	     of the first  argument  that  corresponds  to  the  format
	     string.   If the first argument is part of a va_list argu‐
	     ment, it should be specified as 0.

	VERSIONS
	   GNU syntax
	     __attribute__((format(style, fmt‐idx, first‐idx)))

	   Styles
	     On some targets, other styles are additionally supported.

	     MinGW
	     Microsoft Windows
		    ms_printf
		    ms_scanf
		    ms_strftime

		    These correspond to the formats  supported  by  the
		    msvcrt.dll library.

	     Solaris
		    cmn_err
	     Darwin
		    CFString

	     In  some  languages,  other  styles  are additionally sup‐
	     ported.

	     Objective‐C
		    NSString

	   Clang
	     Clang accepts the attribute on non‐variadic  functions  as
	     an extension.

	STANDARDS
	     GNU.

	HISTORY
	     gcc, g++, clang ?.?, clang++ ?.?.

	Linux man‐pages (unreleased) (date)          gnu::format(3attr)


Have a lovely day!
Alex

 man/man3attr/gnu::format.3attr | 91 ++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 man/man3attr/gnu::format.3attr

diff --git a/man/man3attr/gnu::format.3attr b/man/man3attr/gnu::format.3attr
new file mode 100644
index 000000000..bb3a7a460
--- /dev/null
+++ b/man/man3attr/gnu::format.3attr
@@ -0,0 +1,91 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH gnu::format 3attr (date) "Linux man-pages (unreleased)"
+.SH NAME
+gnu::format \- specify the style of format string
+.SH SYNOPSIS
+.nf
+.BI [[gnu::format( style ,\~ fmt-idx ,\~ first-idx )]]
+.fi
+.SH DESCRIPTION
+This attribute specifies the style of a format string.
+This allows checking the syntax of the format string,
+as well as the types of the variadic arguments.
+The
+.I style
+can be one of the following.
+.TP
+.B printf
+.TQ
+.B scanf
+.TQ
+.B strftime
+.TQ
+.B strfmon
+.P
+.I fmt-idx
+is a 1-based index that
+specifies the position of the format string within the parameter list.
+.P
+.I first-idx
+is a 1-based index that
+specifies the position of the first argument
+that corresponds to the format string.
+If the first argument is part of a
+.I va_list
+argument,
+it should be specified as
+.BR 0 .
+.SH VERSIONS
+.SS GNU syntax
+.TP
+.BI __attribute__((format( style ,\~ fmt-idx ,\~ first-idx )))
+.SS Styles
+On some targets, other styles are additionally supported.
+.TP
+MinGW
+.TQ
+Microsoft Windows
+.RS
+.TQ
+.B ms_printf
+.TQ
+.B ms_scanf
+.TQ
+.B ms_strftime
+.P
+These correspond to the formats supported by the
+.I msvcrt.dll
+library.
+.RE
+.TP
+Solaris
+.RS
+.TQ
+.B cmn_err
+.RE
+.TQ
+Darwin
+.RS
+.TQ
+.B CFString
+.RE
+.P
+In some languages, other styles are additionally supported.
+.TP
+Objective-C
+.RS
+.TQ
+.B NSString
+.RE
+.SS Clang
+Clang accepts the attribute on non-variadic functions as an extension.
+.SH STANDARDS
+GNU.
+.SH HISTORY
+gcc,
+g++,
+clang ?.?,
+clang++ ?.?.

base-commit: 2351c7c0a472e31b601855f4b4d843d3f37cbfa0
-- 
2.50.0


