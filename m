Return-Path: <linux-man+bounces-4142-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB07BDF65A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 17:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B5A1A34AC97
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 15:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443CC28725D;
	Wed, 15 Oct 2025 15:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrIaX+pl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031DB296BA2
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 15:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760542295; cv=none; b=HB4hJ4P8VzYziE8HZEDHaNlPXMNRHr1ivp1jTTsphcbLTnTmjYwafZc7rwuF1rsIosAC5riMJsNXtZGUHiJiMnWlkBgJCr6VvdjA9WvXqLri+ca+//Q/8qfxqsiX/I/H6GjH2sRYdjuQu8G2GoH74k5Zo2rAnsPvsg+3XLdmzPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760542295; c=relaxed/simple;
	bh=vmw8bEFtiQgKX+dAAKBCL9ejzFZpNFACdyO0m+hdLqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wd+v/H7Nu2hBLGbuKs0G/kdy216CeFVJzsuNdauN/+OiZOVfl5zT2WnPLty1qehnY0bN65PufwaKhEhxQ3fY66nRy5VwoXFddlyGRRsfRxFYEPiZpEDkuboMSkS3dBrMdXU3kzobYIH9ew9isCb2TdTxznPOo4xb8QUxioeiVjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrIaX+pl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84EF1C4CEF8;
	Wed, 15 Oct 2025 15:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760542294;
	bh=vmw8bEFtiQgKX+dAAKBCL9ejzFZpNFACdyO0m+hdLqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nrIaX+plV6/Fb0IU+vQlYl+BL4XoVgl2lzqs6flO+7fhObvN0jZOg9VtL+FYMyBMa
	 k5XHsil/crqdVhVrTOrtI7Vgei1V/sByuxU0zf3n8JKs/Kn/ezlKM62RSro0h4O/eC
	 v01UlvuZziHIAblVszZ0bMrhi0wnmNJaZ9UsQ/iueR8iv8ts6xlA4IgQQ1i6M7gUKp
	 oN2SA+BFMScEiXVSIB1Bg2CvFedXrzxEaaKLxXtEHphOa66u4Qpxn++c3wpMYYggk2
	 FG6+zA/pwHDWQEPOfP9dcFOynzccTPOvv3FJngolSe9SJfa3rryVgYhDba9yJa/Bh2
	 jzdtmGbuCN43w==
Date: Wed, 15 Oct 2025 17:31:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
 <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
 <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
 <87ikgg8bgq.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="23nut2yzb6bioxvc"
Content-Disposition: inline
In-Reply-To: <87ikgg8bgq.fsf@gentoo.org>


--23nut2yzb6bioxvc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
 <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
 <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
 <87ikgg8bgq.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87ikgg8bgq.fsf@gentoo.org>

Hi Carlos, Sam,

On Wed, Oct 15, 2025 at 03:51:33PM +0100, Sam James wrote:
> >>> Though it has been discussed on-list that this policy could be seen as
> >>> forbiding assistive technologies, but that this was not the intent of
> >>> the Gentoo Council's wording.
> >> Didn't they?  Do you have a source for that?
> >
> > https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
> > ~~~
> > As someone who was present at the initital discussion, I can assure that
> > banning accessibility helps was not the intention.
> > ~~~
> > - Andreas Huettel
>=20
> +1 (as someone else who also voted on it). We may amend it to make this
> part clear in future.

Thanks.  I find the wording to imply that it also prohibits assistive
technologies (and I like that sense).  I'd add a paragraph claifying it
in the sense of disallowing them:

	It is expressly forbidden to contribute to this project any
	content that has been created with the assistance of artificial
	intelligence tools.

	This also includes AI-based assistive tools used in the
	contributing process, even if such tools do not generate the
	contributed code.

This includes for example AI-based linters and static analyzers.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--23nut2yzb6bioxvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjvvk0ACgkQ64mZXMKQ
wqlGBRAAlZLxH08rPGW6oYkOrjSt/50zLwRHUgzTdEblp5Z+o+6MvqnvkMfyswK0
WBn2uJPkAPPsUu7rVtwhUl1EXAGE68wjdQ9lIRe3zMK8B+R/FWS5H7kimsAooWK0
6PrBOh3tEi9qOtD9tCKScdaYE3xoys0Ti3K6pZTp549EvRUS5Qa+Qc/2jaFFYo4R
2OBksGNcuQx9d29TmI4Kn7pReeJaQ9yp+rW1O3k9+2cXMB9d0lgHJr031llation
wbuXaP+R5da31DX06hu9hc6CgogTpEpNK8pPVC77ncsJyQLYx6ITZob5yB74hofA
Fp4lb7GsxoIdsOZQUQhQzOtZHmXjKI6HDP6awrM3BybEVcDPoMu+HxinROVg2xEV
QsNGXiUMg69fYSAQpKHBx7wHH33acWR0D3uEBOhL1VESYWP0N4Cz3pWf4mXy+//U
fworPRgQ5TOYRUA28wG0kZzuFbWdxknSUG+LvpPV1FqBzB55Rj8BHs887Hm8ivLS
g2BHAFUjN0qZN6VtRZyjBARV8naHwMLgVR475F+f3v/NJI7WwJCzkqmCH1pLr+qT
y1OgY2YQNWoq+BaCYJq3oFooteo2vHCNhAxzWjTnqxCHS6/JDdlbhGcJmZenN1Pd
o56vR6GuUnytwSiWfVvoZV40/tadTbgY+0y0JVTTS+Z1gGHz/xY=
=8BdC
-----END PGP SIGNATURE-----

--23nut2yzb6bioxvc--

