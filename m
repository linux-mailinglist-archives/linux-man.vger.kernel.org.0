Return-Path: <linux-man+bounces-649-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D3F87DDC6
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C4371F2127A
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3A61C28F;
	Sun, 17 Mar 2024 15:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxHVhaLA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7B21C687
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710688242; cv=none; b=pgemWdW/TbPBA2z4v2lfgnT6ZCQ7g4WtLySoC3Mpcq1d/IjfokO2naVxQ7tKeffWQBi5g7ZUT8/0g8fFPdl56OIw4swlPBSUQ0CTWL2rqqAdlzKOqxSOyLmTHDsT09fXG/KwfL+dKj9MnQMvycUc1oNtSXQNYXiBPS5XnEdOQUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710688242; c=relaxed/simple;
	bh=PVzcjv6cTF94E0F0uNxQMidHL/R/rLjyvYA9h+YBluA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=quIkZNyzEvcwIgPuEgo5W7MixoRicnwGLKU6tEyIn6rShwSYVC7Xghm/ooEa4toT6bw2K+MugDWaWFuPgLiLsBvK5+mDnsDsZgxEwaFGsWZuZt1AI62cf5t5taWeZXKuVvitEkAN2/nq1a0DS0mGbe2PfVHxxbAgdX4GUDmSG3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxHVhaLA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43DA7C433C7;
	Sun, 17 Mar 2024 15:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710688241;
	bh=PVzcjv6cTF94E0F0uNxQMidHL/R/rLjyvYA9h+YBluA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PxHVhaLAQVgSLsmpGXBsNTjzBdEaBWelFOjnHM+Uz8QWUemHNw1+SstzMeBFkFuVx
	 U8gc7QsIvFIEWiar/mvgCtsw43/utdM48wVJJiZuCqMoxPjPEk6FgglCB5/WortX+l
	 tZ9/vV/ah5zgEcHCQEOv/4cTp3EFja5sFM0P2rVKZiimjfw4f+nD8/Ev2F9wtyJdwr
	 S6hOhDP0Wp2GydhKHrIxeKaWWdea3utcaYka1xYyUTVc88E2Otgd/3yJ5iuJ/Pa/0u
	 xa6klc7uV/QBfZ5uFmHpQA6o9vLfIuIblRcqzak1tMotnscCAMLUQEBsFf1IBlFhzr
	 wPA6gYpROnZVg==
Date: Sun, 17 Mar 2024 16:10:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 6/6] intro.1: Revise paragraph documenting GNU texinfo
Message-ID: <ZfcH732MgRtXdojj@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-9-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PvxhLVf/nbMQcLxN"
Content-Disposition: inline
In-Reply-To: <20240317080850.28564-9-jtbx@disroot.org>


--PvxhLVf/nbMQcLxN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 16:10:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 6/6] intro.1: Revise paragraph documenting GNU texinfo

Hi Jeremy,

On Sun, Mar 17, 2024 at 09:08:34PM +1300, Jeremy Baxter wrote:
> ---
>  man1/intro.1 | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/man1/intro.1 b/man1/intro.1
> index 72f28bc2e..5aad9d4e7 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -314,15 +314,17 @@ the previous page, and "q" to quit.
>  In documentation it is customary to refer to man pages
>  by using the name followed by the section number in brackets, as in
>  .BR man (1).
> -Man pages are terse, and allow you to find quickly some forgotten
> -detail.
> -For newcomers an introductory text with more examples
> -and explanations is useful.
>  .P
> -A lot of GNU/FSF software is provided with info files.
> -Type "info info"
> -for an introduction on the use of the program
> -.IR info .
> +Man pages are concise, and allow you to quickly find a forgotten detail.
> +They're designed to be a complete reference manual for a program.
> +Usually you'd want a guide/tutorial when learning how to use software,
> +rather than a long exhaustive reference manual.
> +For this purpose a lot of GNU software comes with
> +.I info
> +manuals, which are designed to be more of an introduction for newcomers.
> +Use the command "info info" for a first introduction on using the

Redundant: introductions are first, of course.  :)

Have a lovely day!
Alex

> +.I info
> +program.
>  .P
>  Some topics can be documented in HOWTO files.
>  To find these, look for HTML files in
> --=20
> 2.44.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--PvxhLVf/nbMQcLxN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3B+4ACgkQnowa+77/
2zIUmhAAnhXJh4okjIA0IefA1mVurJc8ZGtFpVtjIwH/ME/uPrkh0u8EZdVxqwjq
Ezpe3vsQfoIj19R08CzIEosqDV21SDI10IKqsyN3fWUz9WHlYiTEvmwmOVZlrUs7
V2i5YlvaWIFSb6A/XmiIBeYeMHBZij/P9iwgJi1FErQvW/P034WDsjDo1uNNH3xh
e+y3bl/vz9GeQHrzVqYjkIiXimTMOjM/JK89gEzLuM9djnPN2r9ITrGe7SUmkwnx
9ESiA5T9rsTzWCifhNu43SBeLCq5KdDBZqInbmfhNCN6kMPaBfEcPhhVJA4ZSx+Z
k/YOMkARFLzaYWMhEtcXHcAUd/5+3/rVIjikhV40lg3iO8NbdA33DAZeggRUFyR+
f2POxfDmJ/5/E4fSo6Zea9m7qnUUapxQ/KMHly1IOjFQp0sK7uQCR59aiT8it6CF
lKofwOYj5x7wwQz/UmJYUEI7fIx/zaYSGzgZkz7qNr1qs7DhbJhzfOgA/3mNIZXB
wyxRU9Rg6FkcoQgQV0WulXMEYr884ccmtau7B5xTomJxOoa1SkQREXQ0HuwrUpcy
CvzBj8+EEL8COQiB6QoKFLm3XCe10IgRxWldeSDG/61cm4/y4iwEzX6KQKK4TBoX
/7h+pQDvW0IoFm6T+ULOBr5vQZk0VvVkjb4DW5BQjMAd4hVp4AM=
=05mA
-----END PGP SIGNATURE-----

--PvxhLVf/nbMQcLxN--

