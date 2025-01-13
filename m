Return-Path: <linux-man+bounces-2217-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB10DA0BCB6
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 16:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BB7B3A1604
	for <lists+linux-man@lfdr.de>; Mon, 13 Jan 2025 15:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571951C5D5A;
	Mon, 13 Jan 2025 15:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmyzhQ+X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A9C240225
	for <linux-man@vger.kernel.org>; Mon, 13 Jan 2025 15:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736783940; cv=none; b=oylvDh+0AdNaEIZAdFzFxk5AK+PouZDR9VZX8CGi/cV6La6ulsP9HQCW7Jhtww7zzonxydbDVRsoR6jZ7bcDnxQwCVf+8OlvSK87wNJVFrzBH1l9oQldn/ZzfdQq60F2zCUTEBbpOobF9RVbyQec8k4puV7SoTmbcXU/OhspjJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736783940; c=relaxed/simple;
	bh=iPhs5/2rDbJqswsJQEdNR1VTCTD9zbkbqNsalj7Y+0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=paIE09NeZoPGWx+iCtLJrKx6dUhrrcJfKGGh8UFCh0hT32XAY1bdT4rQ8xtz+RykxAdJWhb60mxVkZQ6x5iKnbeLCTBng3XW87yrYNmmIynT6dcS5pBQJwOl3XpKn6KrZp1YWssr7O4hLlSc4o3EyGDwWEzqnmaEViAhbBziOpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmyzhQ+X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A76A2C4CED6;
	Mon, 13 Jan 2025 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736783939;
	bh=iPhs5/2rDbJqswsJQEdNR1VTCTD9zbkbqNsalj7Y+0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tmyzhQ+Xi73vJ8PcUt92lN+0BdW1yhh4W1jqUHZz4WJtGtUCgIsR+BJISDEGTaVFL
	 WJVJMEAyfMvxbE6k0n3ihxF2FCM6TjWA/GEjaIrO1c9h81b6Fny49onKHNAQ4UpiQA
	 wRTcjISUcgcjWKydkdSqBtOM8KZdSjiTRBXK28mDmxbN4M2TuTHyd18ZwfRF/MrCzw
	 AuPQD5U/EH3axXnrZ5oQWlDG/blmX8IYFYasU8IS+0EahmIg5LDmnrC2g176WN2Rvs
	 4yRmDixp+wnJ1rVtossQv0Dhnl/KlAntyC4IaI8do6JGIJk4aOXGMhxHNjm5ZjUbDt
	 NML1Ya90IF9Gg==
Date: Mon, 13 Jan 2025 16:59:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ellis Wilson <elliswilson@microsoft.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	man-pages@man7.org
Subject: Re: Inclusion of Lustre manpages on man7.org?
Message-ID: <q5iw7oufm7acyszknu2twvxymjtbor3yqixhmcwwznj3smtfzg@rejjdsepozfl>
References: <BN7PR21MB16208CC1B9372206DA7539C9BE1F2@BN7PR21MB1620.namprd21.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cbe6fl77f5z7syre"
Content-Disposition: inline
In-Reply-To: <BN7PR21MB16208CC1B9372206DA7539C9BE1F2@BN7PR21MB1620.namprd21.prod.outlook.com>


--cbe6fl77f5z7syre
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ellis Wilson <elliswilson@microsoft.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	man-pages@man7.org
Subject: Re: Inclusion of Lustre manpages on man7.org?
References: <BN7PR21MB16208CC1B9372206DA7539C9BE1F2@BN7PR21MB1620.namprd21.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN7PR21MB16208CC1B9372206DA7539C9BE1F2@BN7PR21MB1620.namprd21.prod.outlook.com>

Hi Ellis,

On Mon, Jan 13, 2025 at 03:33:07PM +0000, Ellis Wilson wrote:
> Hi Alejandro,
>=20
> I am assisting with updating Lustre documentation within the Lustre
> community.  Lustre is an HPC filesystem used at >50% of the top 500
> supercomputers in the world.  It is not presently in-tree in the
> kernel, but was in staging some years ago, and there is on-going work
> to try to get it back in-tree someday.  I'm reaching out to see if
> there is any interest in including Lustre manpages on man7.org?  If
> there is no interest or I should discuss this with someone else please
> don't hesitate to say so.

man7.org is Michael Kerrisk's server.  You should contact him at
<man-pages@man7.org>.  I've CCd him in this email.

> The manpages for Lustre can be found here if you would like to review
> their count or contents:
> https://github.com/lustre/lustre-release/tree/master/lustre/doc

A few suggestions:

-  Use subdirectories (man1/, man3/, man5/, man7/, man8/) for the
   different chapters.  That allows reading the link (.so) pages within
   the source repository.

-  I found some warnings when linting those pages with the build system
   of the Linux man-pages project.  Here's a fraction of the logs:

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/main$ make MANDIR=3D/tmp=
/man/lustre/lustre-release/lustre/doc lint-man -k
	MANDOC		.tmp/man/lfs-changelog.1.lint-man.mandoc.touch
	mandoc: .tmp/man/lfs-changelog.1:3:88: STYLE: input text line longer than =
80 bytes: lfs-changelog, lfs-c...
	make: *** [/srv/alx/src/linux/man-pages/man-pages/main/share/mk/lint/man/m=
andoc.mk:36: .tmp/man/lfs-changelog.1.lint-man.mandoc.touch] Error 1
	MANDOC		.tmp/man/lfs-find.1.lint-man.mandoc.touch
	mandoc: .tmp/man/lfs-find.1:610:2: ERROR: skipping end of block that is no=
t open: RE
	mandoc: .tmp/man/lfs-find.1:794:35: STYLE: unterminated quoted argument
	mandoc: .tmp/man/lfs-find.1:1:16: WARNING: cannot parse date, using it ver=
batim: TH 2024-08-15"
	make: *** [/srv/alx/src/linux/man-pages/man-pages/main/share/mk/lint/man/m=
andoc.mk:36: .tmp/man/lfs-find.1.lint-man.mandoc.touch] Error 1
	MANDOC		.tmp/man/lfs-getsom.1.lint-man.mandoc.touch
	mandoc: .tmp/man/lfs-getsom.1:23:2: ERROR: skipping unknown macro: .Ex
	mandoc: .tmp/man/lfs-getsom.1:30:2: STYLE: fill mode already enabled, skip=
ping: EE
	make: *** [/srv/alx/src/linux/man-pages/man-pages/main/share/mk/lint/man/m=
andoc.mk:36: .tmp/man/lfs-getsom.1.lint-man.mandoc.touch] Error 1
	MANDOC		.tmp/man/lfs-hsm.1.lint-man.mandoc.touch
	mandoc: .tmp/man/lfs-hsm.1:3:92: STYLE: input text line longer than 80 byt=
es: hsm_state, hsm_actio...
	mandoc: .tmp/man/lfs-hsm.1:27:81: STYLE: input text line longer than 80 by=
tes: These are a set of l...
	make: *** [/srv/alx/src/linux/man-pages/man-pages/main/share/mk/lint/man/m=
andoc.mk:36: .tmp/man/lfs-hsm.1.lint-man.mandoc.touch] Error 1
	MANDOC		.tmp/man/lfs-migrate.1.lint-man.mandoc.touch
	mandoc: .tmp/man/lfs-migrate.1:153:84: STYLE: input text line longer than =
80 bytes: Do not set LMV_HASH_...
	mandoc: .tmp/man/lfs-migrate.1:13:2: WARNING: skipping paragraph macro: br=
 at the end of SH
	mandoc: .tmp/man/lfs-migrate.1:21:2: WARNING: skipping paragraph macro: PP=
 after SH
	mandoc: .tmp/man/lfs-migrate.1:178:2: WARNING: skipping paragraph macro: P=
P empty
	mandoc: .tmp/man/lfs-migrate.1:202:2: WARNING: skipping paragraph macro: P=
P empty
	[...]

   You probably want to address most of those.  If you have any doubts
   using the build system of the Linux man-pages project to lint your
   own pages, feel free to ask, CCing the mailing list.

> Thank you for your consideration!
>=20
> Best,
>=20
> ellis

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cbe6fl77f5z7syre
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeFOEQACgkQnowa+77/
2zISihAAhzXcRlxUcLpuT8MkPMKopjwTtqB9nrVQEZeRgNuT8o8+KkjfqDhXQIwk
8uKcfoYVF9uL/y5K54nS+oicr5N4AIGUvMpIWW+ayWUIeX5mFiTONO5pO6jIegus
7PKbGhBxr1F5z6p4yTtUFxnBT+4LMJV+J8C2wdZJeJmdtoopLzqkgaT9yNYnlpwY
Nla7mL4rm8sNvW4QfwMoD+2WT+zrSa6KBjxMXUISbzIMFzsibc8xb9sa3yAl0NwV
utiFDzXLANLfry8ErplO7Zo6YqCitcisEBHDSUG49pu6k5fEIXxPtm6X/Eh1cKvR
JV9MDQtcqFvSf7HK3ZWmqGjyBnb6HJ7D+KHrSxKSIBuHTVpvOkw2uYEFepf6sgAm
A2PjZnrF2sfJhceInAlsv/3YyX0r7P5/p3K/SupIKwWTpU9r5oTSg9mcLM4sSN6D
OxBF2Jnr/ejEUAw69qsjZxSh7OKoFuStbFhT1CUGZQJ4df5WAuRQc3EfcJQO8cCT
UB0eytcVvmytk2uLixvWlx0uOYKNWnTgYkkFQk0auPnTqQdOYguJVkf07pVJ1aQ2
TyiDy9iik6fLNkMCR+i003CtFIA3QxRdbZLdQf/HVtpBMxBmhAxYp2wu1pCZD8YO
yN5X1LZIMEk2PgtGRMLdy3NpvwkyBzhDJRVqfA21jQG0SzBGBEM=
=4L+F
-----END PGP SIGNATURE-----

--cbe6fl77f5z7syre--

