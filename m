Return-Path: <linux-man+bounces-837-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE76C8B4D7A
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 20:36:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 521D51F212AB
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 18:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 643EF64CC0;
	Sun, 28 Apr 2024 18:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGqZsGBE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F5A637;
	Sun, 28 Apr 2024 18:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714329398; cv=none; b=rnqlHshLnld/CP4TMRXQx2dUIcaZqU4NvogJeXq6WGaMwCQ0cG+8GUadcW5GQzpSoa8j5l/UCJlapx2MHsIi5k35MP3sXBMgrsrpnthGhHPyH4PjkLenxun8E6byQbensrx2h0UITndyVHTps4LOxN5w+U7gFpqKRQ0WdWmAohg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714329398; c=relaxed/simple;
	bh=p6IdQenkKGj6WpsExDtD92Qqy9PrANP2UcmTdefXe0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qNulWAA6rPCNCzy692pKwfMT0pqfuD56UhNWMl93BAi1Y09ri8R/MHcGNgLLBBHxNo67oFMYOmZVRQ13fqfzGmexAi6BrW6QtLvb7LHr6BT4k3ZwX7ZJ+DL18QSivjzitdEZDhKqb73UkV/Jmeh4Gtn7KSDjxQOdbvu6dOipMvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGqZsGBE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0A4AC113CC;
	Sun, 28 Apr 2024 18:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714329397;
	bh=p6IdQenkKGj6WpsExDtD92Qqy9PrANP2UcmTdefXe0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tGqZsGBEzrvtFFD2eh/wv2RtPc9O2B2/k/iHmWzDlyQm03/jDBjhnlX82UFBECV1D
	 A9wH4LBvOOTSbFPZewBplys5OTHb44MS5yuBLbG5zPfmS8Yun3I1aDScjGD+RzgHVf
	 7ol0U7goGDhyItg/5iE53nRBVMLHiXJh93FAG1TadewzOdIsYdGZVSbFSnbehsOvDf
	 xpG1xmQ4At+48ckX99l5q4lbV2I0htOZ8NKHyscmM0cNPH6ZMxgwDqcb5EJvlywTev
	 Xo3N58JoeOLOWYaizhFltinLF1Y9b1C6puANB6aGnzz6aQwxVHQZ1FeOCNfZt4oEYS
	 EfqDNUqs9iVxA==
Date: Sun, 28 Apr 2024 20:36:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>, liba2i@lists.linux.dev
Subject: Re: Please consider reducing build system churn
Message-ID: <Zi6XMnu-5fiBg1S2@debian>
References: <87ttjm8ero.fsf@gentoo.org>
 <Zi4KyftBnQZtr82G@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GdEa+CTp+G/eUwTR"
Content-Disposition: inline
In-Reply-To: <Zi4KyftBnQZtr82G@debian>


--GdEa+CTp+G/eUwTR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Apr 2024 20:36:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>, liba2i@lists.linux.dev
Subject: Re: Please consider reducing build system churn

Hi Sam,

On Sun, Apr 28, 2024 at 10:37:23AM +0200, Alejandro Colomar wrote:
> On Sun, Apr 28, 2024 at 02:19:55AM +0100, Sam James wrote:
> > With regard to d0d2e2f9a21e623db208b599643e7728d71e7e6f specifically, it
> > might be worth explaining: a) what liba2i is;

I forgot to explain what liba2i is.  You know, but for the list:

I've been contributing to the shadow project for some years, and
maintaining its stable branches for half a year.  While doing that, I
found consistent misuses of strto[u]l(3) and its family of functions.
And in the cases where it was correctly being used, the code was less
than desirable.

I claim that it's due to the messy interface of those functions; while
they are useful, they are very difficult to use correctly.

The first problem I fixed was that strtoul(3) doesn't reject negative
numbers, and behaves in a way most programmers wouldn't expect (unless
they know that function really well).
<https://github.com/shadow-maint/shadow/pull/875>

Then, I tried to do was use the NetBSD APIs strtoi/u(3), which are
provided by libbsd for GNU/Linux systems.  However, I realized that it
was still imperfect, since it doesn't provide type safety.  Also, since
Fedora and some other systems don't want libbsd as a dependency of
shadow, I had to implement my own strtoi(3) to work when shadow wasn't
being linked to libbsd.
<https://github.com/shadow-maint/shadow/pull/890>

When testing my implementation and libbsd's one, I realized that they
behaved different in a corner case, which results it was a bug in the
original design of the function.  Luckily, it was an undocumented
behavior, and we could fix it (and BTW, fixing it, fixed many existing
calls in both NetBSD and Debian).
<https://gnats.netbsd.org/cgi-bin/query-pr-single.pl?number=3D57828>

I found an old internal function of the shadow project, getlong(), which
seemed to have a better API, which provided type safety.  I then came up
with a design for a set of functions and macros which would be a hybrid
between shadow's getlong() and NetBSD's strtoi(3).  Those functions have
already been added to shadow recently.
<https://github.com/shadow-maint/shadow/pull/891>

And now I have a huge patch set for modifying the entire code base to
use calls to those new functions, replacing every call to older APIs.
<https://github.com/shadow-maint/shadow/pull/893>

While changing all uses to use the new APIs that I designed, I found
several bugs in the process, which are being fixed (most silently, with
no bug reports).  In some cases, I found code that is pasted from other
projects (e.g., the reproducible builds project).  That's why I thought
that writing a small library that would house these APIs would be an
improvement to many projects, not just this one.  The project is hosted
in <kernel.org>.  It has a mailing list (CCed in this message).
<https://git.kernel.org/pub/scm/libs/liba2i/liba2i.git>

I wrote a build system for it based on the one in this project, the
Linux man-pages.  I'm trying to keep both build systems as similar as
possible, to reduce the job of maintaining both.  For that, I use
diffoscope(1), to see the differences in every file.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--GdEa+CTp+G/eUwTR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYulywACgkQnowa+77/
2zLPFQ/+L04eB6bZ4IQwQNeBc4kpHJwavSDBr/vt5bwSO9zQRVgpALciAYnmKmwi
kAVfhh85bPJgLOMC/C9ktpdLO0l2VwTjGhMdnHWAFAaPFSCHh1ogfEPA9E/BjRd1
BSOou7h4wE90d/BaAdqh/GVzBFVdh+Xoy2QjEgG0skLH3nlo0wh3jYJtutR0GdjV
fEkafZCy++nssBTePPv//e3oHvnHmIZNkvRM19xEwcSm4dOS8DR5qpURwRkpaLBL
EFpjBu3EXxyTKmgsG/ZgGAo+9MVFryhdhiekLOW7InYFP7QV5FKh+WtpC6s8SqwW
ugXXq/LApyfXceJH9ZPG2wjCmM1lihTpD8Q/Eh5LpogdrHmm3Rfp5UPgeOtku7jT
m7wcnKpPM+A0TuYzYlAWYl7R6YUYjgPyiFXrSHkEdx9NIeVjAhNa47w3trPE91xL
CEJpuSELYn6K1xlfCtMTsP1CITHcHwopM/qsledB9sR/xvG8VZ77Z43jEFGPd6vv
bWe7sEfilVWbpOelw6ZrLNxtejoN4RRcU4xz3rrCcmBjyFXPNRx+xrIgweM2/Whx
90mjVsgircYJ9Pj8vMFpVhn7FU2wxZgt+WvD22/27CBH50cb8xHRk25bEA8sz7hL
a90zUI/dVrz4BfkEuqmWaRkpkIn5H/1qo12Ob6ANaPABuJ5S7GY=
=K+fL
-----END PGP SIGNATURE-----

--GdEa+CTp+G/eUwTR--

