Return-Path: <linux-man+bounces-1757-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBC896746A
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CDAA1F21F96
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 660E417BA6;
	Sun,  1 Sep 2024 03:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="isqU75S1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B241EF1D
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161168; cv=none; b=N1Z+HOOuSR0anDaYeeIe+qo/BIWo873m42u11Npnxi3CKZeXbOXb82uJLGC6TTPbTzkeJfttb2I2/9WYmmwjZ4EXS7nTIxPXG8AsaJ9TGtKb28rxgutAhqIecaIZiElUUhBjpPaICdGRYb+Mz5h8+F68lsTUq9jD+7iljmhGtYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161168; c=relaxed/simple;
	bh=atWXuQ1XoRMO5lQebnUcPuJexSwl4fupUxRHxhVaDZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+kziDX3LkR/Unvghlya54JzgBGNvAPppX8I6Pd3bWyAISk/5KIUOXKcDkkcsfO+JtVN6+GO5jFGd2tPyBM261ouFZbMpUYOeRdzAJj9h7uTm6d/VzjdS8+mBsLtSEym4i4ds+Pi1iUJVaA8v0K5CaBjhOcbzwTNHiv+4jmUfTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=isqU75S1; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-70f6a7c4dcdso1150225a34.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161166; x=1725765966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d4PtQ4mF+dKpbDkZBEuSjiy6/uM5qX2CPO2/Be+UevQ=;
        b=isqU75S1+x1zAGyAp6RLArDYUhwANxidLF8rxGi/hxI2eroYq7702UUCK8Ifp8uT6i
         6RkOs+fnphm9hwQZZw47SyMoZMqjMhgKMVVtysDGmgpdZtP2J6IKWcmwy9f+02cFyCZx
         XV7SSwY7p8Sg8IctMGrJlHW0E/35rN41k7viG+k2uEpVz7gC3yZWvx+kzzQxNF4oZD4q
         3hHH+F0lmXuB0v5gWekBChKQh4xhsme0DUI8bo+Y2tsqiRyjvmkKaEtkdYUAb6x5NfsO
         aqkpwNW9bYT2CnldteIRbxeXg+rlT1LB/5SnG+pFZ7FOD9Nv7rbd0GD6kQLMwU+rJrrD
         BfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161166; x=1725765966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4PtQ4mF+dKpbDkZBEuSjiy6/uM5qX2CPO2/Be+UevQ=;
        b=ctfvVhAaiglGlqGJsUFeUc1UzzebGe8/rjwoci0Hpqb4QhAruOoEKqp5jDdD8f8qxY
         fg1WMOaBZgm+FLkpj2GBcBzrHsSsSX66naoWT7s0azXjwknrnsPt3zlNaRPh1oYSW6J9
         Lw7WJHRZKkCUV7ZnXMGWipMeJtq/XbXK8p9KBEYn7uXhLMzqYxkfv2aGHInDWlo63Y5a
         I66bn8KlXlXlvVpkKMKQf4vQQhze3FSM9dqNAYgclQo1tg/DWIKa6gM2pJrpS8JbcuiA
         CmmH/r38W9mGYB01M0MCPqFlJ5mFtDQrZshM69hQvk/JosXp+mMy77Py56fQlSBcSxbb
         B0JQ==
X-Gm-Message-State: AOJu0YzuzesIQTS3Psa9T+jj25lGvHc/vwJBQl/1kNxqtblIfdNml8LZ
	iSLqaCQJWXm61Ln/nLPS150Q0TPCnS6IQzFLLciUAMhm6Y0X7CVMbfpNvw==
X-Google-Smtp-Source: AGHT+IGqxatG5/NlKJZOObz9Lf/jZUrxsE9xPKdFbIHKW9SGUd9VU1juP8VtTeV2MrPUozGEgHg4rA==
X-Received: by 2002:a05:6830:4122:b0:709:30eb:dfcb with SMTP id 46e09a7af769-70f5c38f770mr9057817a34.18.1725161165577;
        Sat, 31 Aug 2024 20:26:05 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f671aa882sm1312551a34.58.2024.08.31.20.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:26:05 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:26:03 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 08/10] console_codes.4, inode.7: srcfix
Message-ID: <20240901032603.khxdcqiqc2pxooky@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a7uch2orl3wg6nkr"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--a7uch2orl3wg6nkr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 08/10] console_codes.4, inode.7: srcfix
MIME-Version: 1.0

Prepare for `MR` macro migration.

Rewrite man page cross references inside tbl(1) text blocks to use
man(7) macros instead of troff(1) font selection escape sequences.

$ cat fix-man-page-refs-in-tbl-tables-1.sed
	# Rewrite man page cross references inside tbl(1) text blocks to use
	# man(7) macros instead of troff(1) font selection escape sequences.
	/^\.\\"/b
	# Case: (handled in commit 9d21f97766, 2024-07-27)
	# T{
	# See \fBchown\fP(2) for
	# T}
	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) /\
	.BR \1 \2\
	/
	# Case:
	# T{
	# the map that is loaded by the utility \fBmapscrn\fP(8).
	# T}
	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^0-9a-z]\+\)$/\
	.BR \1 \2\3/
	# Case:
	# T{
	# by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
	# T}
	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\) \(.*\)/\
	.BR \1 \2\3\
	\4/

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 7 +++++--
 man/man7/inode.7         | 3 ++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index dfbb672ec..a12d21660 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -173,7 +173,8 @@ .SS Linux console controls
 Select null mapping \- straight to character ROM.
 T}
 ESC ( K		T{
-Select user mapping \- the map that is loaded by the utility \fBmapscrn\fP=
(8).
+Select user mapping \- the map that is loaded by the utility
+.BR mapscrn (8).
 T}
 ESC )		T{
 Start sequence defining G1 (followed by one of B, 0, U, K, as above).
@@ -709,7 +710,9 @@ .SS Comparisons with other terminals
 l l lx.
 ESC F		T{
 Cursor to lower left corner of screen (if enabled
-by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
+by
+.BR xterm (1)'s
+\fBhpLowerleftBugCompat\fP resource).
 T}
 ESC l		Memory lock (per HP terminals).
 		Locks memory above the cursor.
diff --git a/man/man7/inode.7 b/man/man7/inode.7
index 497e30e8a..1fd3de85d 100644
--- a/man/man7/inode.7
+++ b/man/man7/inode.7
@@ -347,7 +347,8 @@ .SS The file type and mode
 .TS
 lB l lx.
 S_ISUID	  04000	T{
-set-user-ID bit (see \fBexecve\fP(2))
+set-user-ID bit (see
+.BR execve (2))
 T}
 S_ISGID	  02000	T{
 set-group-ID bit (see below)
--=20
2.30.2


--a7uch2orl3wg6nkr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3ssACgkQ0Z6cfXEm
bc786hAAmNDs4Y3k/3SlEIxkmJvrBcaUJARqzIgAmI7KJXZaxZrieGx0LO1YTITf
rLy7QH28rXPxEWd64Tzb7wR1J7vFcZSvNaZDPe7Qo5hiop+ZXi7dgDXJNjLJlWxF
L09rLxv0yRfR2jv/8fHvz/6y2onXC7lSb0PLE+wzP7Rle0XR3Kjc7RQ293Yi2uPv
cDMC/npqQGSIThJZVS7NS5wA+UrOKWnrLrmBSUlgSjvcGsUsxM7MdZNFAQ52iXch
dGTb25+yQtAK5+gIq2qs3UtFxmvJTCNfGQfFXG42vUJKzA2iR6DeighfZOIAEH30
9TxuuVXTBq+6O6Wr3GJli+/Z7YWuLQrQzL0JMe6uCZ8+F7Uul3OfjZd4CRgLc9SJ
wfwDhSZ472bsycI5DaiOqGj5JmkllilEca44r9q4h9SqsmkmvSRPr69KzIQpfhTx
VYF+ybxSGvo3/bjJChCvwT2jTFsUu7xzI3lxnzeSOJazGBhBgsDeQ9Cul++3D/fn
n7korQxOiL21L/DYYgGHMHsvGUXRMo1lBQxnWR0a4Q+7k5qj+s4pMZfbEvIP6aqp
/Q0RQvI+esDcj/k5H9aBZjapS4Br1H7LfgNuy0tZ/6aRq0GOnq9m1swc4nkiiqej
hSZ3/5usT3EpFCsHHsrkfpLVnCEGEhAfqTQ6/zkOslMpX10r5iE=
=x8m8
-----END PGP SIGNATURE-----

--a7uch2orl3wg6nkr--

