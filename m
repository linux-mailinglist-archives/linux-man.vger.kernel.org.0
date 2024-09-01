Return-Path: <linux-man+bounces-1755-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F38967468
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:26:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56B811C210E8
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8AF2376F5;
	Sun,  1 Sep 2024 03:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z6lkqAcp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFFE1EF1D
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161152; cv=none; b=kPv6Bd8IZAFV+mna9HynM4gsAGvGS4jgF8nBu7gKsH/GIbz85iHii9xhXU0uC6K44rws5IVxFIvNoyYJNuQXkzEQU4KgUC05/wdgSe31ycuBPoVQkX54gbXDNNN/CGGyq39mdiYdUaq7RZ8C6q1CxrFdsx+Ax7rfT7Bg67pOces=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161152; c=relaxed/simple;
	bh=PTrYTCD1w3AP21QI8k35OK9XM0WGKn5Fdy6u7d7SlrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cS327bTDzrV5F6d4YCBhZHC0fKYxKhW71xxHqM7ILwmV0xxrj3iVzZ4ME6zmnsrJS2lYoVVx4RWqWLZ5qd0j5V+I4EDhb70DmvAYQqWm0ubDHj/+jVrnxlN8kCmmjagcNj4HPcl1ynDd//VAY24/ZdVbt0Eiv/yrijD9LEmwTFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z6lkqAcp; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5df9542f3d8so2629829eaf.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161150; x=1725765950; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/eECz3bd/uXRjgWlGDbxp9CLw16jfTwWS+TAUrnCjoo=;
        b=Z6lkqAcpac6v9W8RIUsSDSyGe7dqSULkVHHrpUuPx193zakDEmAABRxddx3xXnCrGP
         6SqYtB0bpt8x7L2RTRzZ/vsK9BTOwzTYQ6J4gPR50D9qzT5Ofg1DIM27C/Nxbp315G3e
         5mPC9ywGpGAevIrfiHLPruqS/Nm3rs5TZd6n3rsfWxJngkATWqDTRITbKNCbgEiO1g91
         j4glLsx8Gk3AEsL42uJ/ryrWcoFKqONFGZCiKHa6UROwzfb+qkUW5iLIoqyU/VD0iBiX
         c3ju9Jg3CFV9uuKnITEkVc2REEp2Tr3fOIA5lW6ymifcqlwpQggx54cN7aUb3TIm9e2c
         b1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161150; x=1725765950;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/eECz3bd/uXRjgWlGDbxp9CLw16jfTwWS+TAUrnCjoo=;
        b=Rt/ITrJ+YbRzCw2neOm8AeEJOsYoL7mpOyS9VzTpLNNX9UchK53EwEj/JNxZJXpx/H
         L1DxFqp+ClgCsnPV+WrVPmnuErAl8V6fn8fRDM3hYvxhLTwXPSR/VacYCrEAHzvmtsML
         Qr+1PKoK/63fh4HPVz13MXJqAhifX/1LyrIaH09vH/ab0HRIvZJiHvlYlNXzsdP3g7zr
         BInCHi5VejVvCJkbY2KncIhp7/Ary9ecRVab/FV+P8Wnk636r+sGjh4Fu8pTLrzJWZlS
         9mRkf2+fDDtG1Kdp7KKhHHcT1FTwiAhqzLmtAVap9moIw0KiULATJY8M8felFTFdGlL+
         rQZg==
X-Gm-Message-State: AOJu0YwtIDD2tu3TrDCgQ9jsTzPPSM5aTcZh7WbQ5jT/XmulntpntLkr
	jP0nFNNhoJqI5RS6gN2K8fulo3YDJk4quccT7kQcFdQ8JEA6Dd84+9KteA==
X-Google-Smtp-Source: AGHT+IGyfwRt/71DLrNNOcfR44QX/G+utRnT1MrhdaGoFraQb9SmX1OsLNpIPqX4hJwH7feoIkCk8w==
X-Received: by 2002:a05:6820:2202:b0:5d8:6769:9d85 with SMTP id 006d021491bc7-5dfad01f5bamr7093488eaf.6.1725161150071;
        Sat, 31 Aug 2024 20:25:50 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5dfa049b4d0sm1297011eaf.11.2024.08.31.20.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:49 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:48 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 06/10] suffixes.7: srcfix
Message-ID: <20240901032548.olkeoqjwpj76h42b@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lebv4spmtymp75fz"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--lebv4spmtymp75fz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 06/10] suffixes.7: srcfix
MIME-Version: 1.0

Prepare for `MR` macro migration.

Migrate man page cross references in table rows from using font
selection escape sequences to font alternation macros to set man page
cross references.

These are a handful of cases that made a sed(1)-scripted migration
ordering-dependent with its substitution ('s') commands.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man7/suffixes.7 | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
index 657f82cde..1341066bb 100644
--- a/man/man7/suffixes.7
+++ b/man/man7/suffixes.7
@@ -94,7 +94,11 @@ .SH DESCRIPTION
 \&.def	other definition files
 \&.desc	initial part of mail message unpacked with
 \&	\fBmunpack\fP(1)
-\&.diff	file differences (\fBdiff\fP(1) command output)
+\&.diff	T{
+file differences (\c
+.BR diff (1)
+command output)
+T}
 \&.dir	dbm data base directory file
 \&.doc	documentation file
 \&.dsc	Debian Source Control (source package)
@@ -109,7 +113,10 @@ .SH DESCRIPTION
 \&.f90	Fortran 90 source
 \&.fas	precompiled Common-Lisp
 \&.fi	Fortran include files
-\&.fig	FIG image file (used by \fBxfig\fP(1))
+\&.fig	T{
+FIG image file (used by
+.BR xfig (1))
+T}
 \&.fmt	TeX format file
 \&.gif	Compuserve Graphics Image File format
 \&.gmo	GNU format message catalog
@@ -250,7 +257,12 @@ .SH DESCRIPTION
 \&.xs	Perl xsub file produced by h2xs
 \&.xsl	XSL stylesheet
 \&.y	\fByacc\fP(1) or \fBbison\fP(1) (parser generator) files
-\&.z	File compressed using \fBpack\fP(1) (or an old \fBgzip\fP(1))
+\&.z	T{
+File compressed using
+.BR pack (1)
+(or an old
+.BR gzip (1))
+T}
 \&.zip	\fBzip\fP(1) archive
 \&.zoo	\fBzoo\fP(1) archive
 \&\[ti]	Emacs or \fBpatch\fP(1) backup file
--=20
2.30.2


--lebv4spmtymp75fz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3rwACgkQ0Z6cfXEm
bc5wUg/9FsDB/dYIllLe2GEAK9vUE5gN/3SlT24oiQFxdlEwsN0lKkIO9y0Ji8+9
zUq8hgryPo2uFkiD6Uhk4/pl7T8x1S9kH0avzvgHZWujBnoqjEYESH/hE+hAWNfl
pLS7wnbDWIhOj9qREfEkss0LJBviYpZeU1zC2ZG1qrGig7t09eGPTS5otON+SAgH
OsgiVVjX7nSG3hy4z74bkK/iNdGBqP8LM3zIvuimXgNvkWjOwl77UhXASRwcl8aU
MIIlslVDWQ6nlVyqwJsdn2RLAbZzwHtje1Jwt9VzD7zCjYzBN1YYZa90FRg4YJBb
Sc8cHSzlmKieyyd/ak1aLYKxgsQnWnOvQlYqOF4kU+ewv3yQi+2itdnQuN512nTJ
Xto52pYxOlRT6wm6cAZB6M4nkySEb30xjVR6qQRK/xchNNdWcVlYJnR/4y4CQknQ
rJg4qwvAkPER+FWmpW300yYQ0HEQJufObvuzCbTvZoVxfw0OJDfDQnHWzYCXoAs5
8JUKN2pGJ6ucWMJZXoFbIp9P/KaYewesiTOWo36KHdFxU9rI020cVgRZInaox2Lo
PKWo6o9uCt553pBpUDPDE9FllUDlxa0Gr3sGgc+pca9/s7eSd0pysbNs77UiwnT+
9XEeS8afoGsyx3yKIhAx49ZVX/xawL8Yp1tmfzvKDlbadxwFfeg=
=757n
-----END PGP SIGNATURE-----

--lebv4spmtymp75fz--

