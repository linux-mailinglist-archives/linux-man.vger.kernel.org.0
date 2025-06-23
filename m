Return-Path: <linux-man+bounces-3209-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E36AE4737
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 16:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6CBB445A9E
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 14:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 470842609D5;
	Mon, 23 Jun 2025 14:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWSFXAPJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072432609C7
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 14:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750689425; cv=none; b=gJNspeoQZvlUuUcfhs0qgW12H7kqONfO8uvSolifZFTH2LhSAA97jYRxvjeyTO96cG/eTlwsrJN6AvWtFAuLHwAZhfNZMHAOaByyultMXIORIWlK3edOAwBkOg9dMOVzs8I+Ki1AgbnLT8LQROKMMZ5mmmfwvaaQutKzzeUnD/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750689425; c=relaxed/simple;
	bh=edTwGCDIbiLQ3kRl0TYCKditkoKsaH+unqfLQrAYdZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cOImKR6NTTkS0QKZhQQm8eOUJkAixIP24AH78ZsoX7Zct1Mrd1g9/oravAQXECKAQF1qcnSCsGNJyZT3wpqPFpoqYcldclvqddFjQKu0mGuQj9sLO6iSlkNqkjG1ARBUe2Pw41lhndekaVv00LwWKpIArUIdDoyAATVnBYa/mD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWSFXAPJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D471C4CEEA;
	Mon, 23 Jun 2025 14:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750689424;
	bh=edTwGCDIbiLQ3kRl0TYCKditkoKsaH+unqfLQrAYdZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HWSFXAPJoxu6QJikPz+pOBfWreorWZnG1J6GtLH9x2xS1VHAdd1fqAGy0PR0DpeKG
	 W7KCC0eeur7B5/65wqg6sw6hMa2s+0eGrtadX3y5FuX9CV9Y9tiQbIO73JNBSDtq4F
	 L60mac5Y0mLMrpY10JC7RoGGBQnQGTN6ZyQJ3CKZDu+h+pRntyvmnBKfeLYskVjlD7
	 WgYzIMmlkDRbqFhgy59sSh9kMlRyVlRrZUtozgCILmnwoBYiJ/Yi7j27blxSJEdteF
	 xYIj19O5W6s3bXVNMqo41mHsUytOusTdW9/HX27hrll/5z0yHG/g3ulVzTMl/qZplG
	 rbG+phrG4OpAQ==
Date: Mon, 23 Jun 2025 16:36:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, aaron@aaronballman.com, 
	gcc@gcc.gnu.org
Subject: [PATCH v2] man/man3attr/gnu::aligned.3: Add page
Message-ID: <f5e12aca5900e46798f60749ea0c31b0ac18b74a.1750689191.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
References: <17e951d8dbf4c6a40bedb4f0831c7193aa726dc4.1750643425.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <17e951d8dbf4c6a40bedb4f0831c7193aa726dc4.1750643425.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

Here's a second revision, with some slight improvements, plus more
detailed HISTORY, thanks to Aaron's feedback.

(I took "always" as meaning since 1.0 --assuming 1.0 existed and was
 called like that--.)

The formatted page looks like this:

	$ MANWIDTH=64 diffman-git HEAD 2>/dev/null
	--- HEAD^:man/man3attr/gnu::aligned.3
	+++ HEAD:man/man3attr/gnu::aligned.3
	@@ -0,0 +1,48 @@
	+gnu::aligned(3attr)                         gnu::aligned(3attr)
	+
	+NAME
	+       gnu::aligned - set alignment of an object
	+
	+SYNOPSIS
	+       [[gnu::aligned(alignment)]]
	+       [[gnu::aligned]]
	+
	+DESCRIPTION
	+       This attribute can be applied to a type or a variable,
	+       and sets its alignment in bytes.
	+
	+       If the alignment is not specified, the maximum alignment
	+       is used.  This is equivalent to
	+
	+           [[gnu::aligned(alignof(max_align_t))]]
	+
	+VERSIONS
	+       Different dialects provide similar attributes.
	+
	+           __attribute__((aligned(alignment)))  // GNU
	+           __declspec(align(alignment))         // MSVC
	+
	+       There’s also the alignas() type specifier since C23.
	+
	+STANDARDS
	+       GNU.
	+
	+HISTORY
	+       [[gnu::aligned(alignment)]]
	+              gcc X.X, clang 11, clang++ 2.8.0.
	+
	+       __attribute__((aligned(alignment)))
	+              gcc Y.Y, clang 1.0, clang++ 1.0.
	+
	+       __declspec(align(alignment))
	+              clang Z.Z, clang++ A.A.
	+
	+CAVEATS
	+       This attribute can increase the natural alignment of a
	+       type, but it can’t decrease it.
	+
	+       The linker may limit the maximum alignment that can be
	+       applied.
	+
	+EXAMPLES
	+Linux man‐pages (unreleased) (date)         gnu::aligned(3attr)

Have a lovely day!
Alex


 man/man3attr/gnu::aligned.3 | 65 +++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 man/man3attr/gnu::aligned.3

diff --git a/man/man3attr/gnu::aligned.3 b/man/man3attr/gnu::aligned.3
new file mode 100644
index 000000000..cfdf254a2
--- /dev/null
+++ b/man/man3attr/gnu::aligned.3
@@ -0,0 +1,65 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH gnu::aligned 3attr (date) "Linux man-pages (unreleased)"
+.SH NAME
+gnu::aligned \- set alignment of an object
+.SH SYNOPSIS
+.nf
+.BI [[gnu::aligned( alignment )]]
+.BI [[gnu::aligned]]
+.fi
+.SH DESCRIPTION
+This attribute can be applied to a type or a variable,
+and sets its
+.I alignment
+in bytes.
+.P
+If the
+.I alignment
+is not specified,
+the maximum alignment is used.
+This is equivalent to
+.P
+.in +4n
+.EX
+[[gnu::aligned(alignof(max_align_t))]]
+.EE
+.in
+.SH VERSIONS
+Different dialects provide similar attributes.
+.P
+.in +4n
+.nf
+.BI __attribute__((aligned( alignment ))) "  \f[R]// GNU\f[]"
+.BI __declspec(align( alignment )) "         \f[R]// MSVC\f[]"
+.fi
+.in
+.P
+There's also the
+.BR alignas ()
+type specifier since C23.
+.SH STANDARDS
+GNU.
+.SH HISTORY
+.TP
+.BI [[gnu::aligned( alignment )]]
+gcc X.X,
+clang 11,
+clang++ 2.8.0.
+.TP
+.BI __attribute__((aligned( alignment )))
+gcc Y.Y,
+clang 1.0,
+clang++ 1.0.
+.TP
+.BI __declspec(align( alignment ))
+clang Z.Z,
+clang++ A.A.
+.SH CAVEATS
+This attribute can increase the natural alignment of a type,
+but it can't decrease it.
+.P
+The linker may limit the maximum alignment that can be applied.
+.SH EXAMPLES

base-commit: 4044e31a053f6c370b2188deba583797018f04a2
prerequisite-patch-id: 9baedc3d2399d2f8d54d96511dac415f0d0ff04f
-- 
2.49.0


