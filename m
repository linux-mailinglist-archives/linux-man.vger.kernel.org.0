Return-Path: <linux-man+bounces-963-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C6E8CAD56
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 13:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E71552829C4
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 11:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410A061664;
	Tue, 21 May 2024 11:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOs+Pjjo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0150173173
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 11:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716290873; cv=none; b=RH7LQgw2Si805ku8IyZNN0PTYOe6mIzsehYBB8X/x0ruiJCl9ZoXBoDXsgvPgrBhSKzK/1Qte6xaw5b95wGTzkpFgfDeylpUgKYp9wfajrS1zpTAwrLwiHoixCsmrhuVkXmC0W/jMFIwLHVnv1Vbk5KalQsczTMmBNlQt3nDWM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716290873; c=relaxed/simple;
	bh=jZvUJ36HNpWeIotUCqnGfjpTcKq+BZ6tz83HWRkJARU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tnZQw4zFa4w6XRQXwt99ztTB6kr8uhRfaYDOKu/qZiqjHE/N7NtSXFzl/UmNnk9kxOOX+KpZzUH8ddmFidkwRjQhNCiuu1QGNKPb6o/EvlG3/5jSZY4V260Qq+oJO3xx9Ib7jyds9HmhrGW182uW1TzdMluL4PwOi+gKigiJHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOs+Pjjo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0D37C2BD11;
	Tue, 21 May 2024 11:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716290872;
	bh=jZvUJ36HNpWeIotUCqnGfjpTcKq+BZ6tz83HWRkJARU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uOs+PjjoDNmik6GPrO5dIRREUBw8XsQiHkld6hwpqhBnb0gi+/oARr+pLbyO8Uncr
	 kYSy7cr0i3fGsy3WNu7UcC1lUIqAb72x4QXZAdAMwicBxYc08IZW3DTGbwe6dRoATg
	 Cdu0y4svbC5HYHTPQyYe1AWcckmcSgwNQNdoXGVVIVNqOj6oF2XgS9eULs1LUF5Btp
	 zchfGRvlvjD1JFgGD/n3M1Jb1HEXfyXahMcA2h9oCAwdhB2K0ZLTrto4DM8kOhQP9N
	 fNcNQICyHmRwobsLqDGZaPQcJQ/F1M/b06wVCeKDQkv055DzGMOh8lkE2nvO/jYsEv
	 +G6DLM+yhjYZg==
Date: Tue, 21 May 2024 13:27:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="47rcyi4zapn4b4cv"
Content-Disposition: inline
In-Reply-To: <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>


--47rcyi4zapn4b4cv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
MIME-Version: 1.0
In-Reply-To: <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>

Hi Rodrigo,

On Tue, May 21, 2024 at 12:53:10PM GMT, Rodrigo Campos wrote:
> On 5/21/24 12:31 PM, Alejandro Colomar wrote:
> > On Tue, May 21, 2024 at 11:08:58AM GMT, Rodrigo Campos wrote:
> > > There is no online html version of this, right? Not even after the re=
cent
> > > 6.8 release?
> >=20
> > Yes, there is.  We publish a PDF book for each release at:
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-page=
s-6.8.pdf>
> >=20
> > with a copy also available at my own server:
> > <https://www.alejandro-colomar.es/share/dist/man-pages/6/6.8/man-pages-=
6.8.pdf>
> >=20
> > And if you want to check an online version of git HEAD (like this case,
> > since the patch was applied after the release), it's available in my own
> > sever:
>=20
> Nah, the patch was included in 6.8 :)

True.  cgit confused me.  :)

> > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pag=
es-HEAD.pdf>
> >=20
> > You will find that my SSL cert is self-signed.  It's documented here:
> > <https://www.alejandro-colomar.es/ssl>.  You can use HTTP links to avoid
> > it, or add my certificate to your browser exceptions.
>=20
> Oh, thanks. Pointing to a specific release is not very useful for
> documentation, as I want it to point to the latest version so users can s=
ee
> which fs support idmap mounts on which kernels, I don't want to update the
> link every time there is a man-pages release.
>=20
> Also, in 2024 pointing to a site with self-signed cert is not something I=
'm
> not willing to do in the Kubernetes documentation.

I guess you meant

	s/not something I'm not willing/something I'm not willing/

Is then HTTP okay for you?  MY website works with HTTP just fine, and
doesn't try to switch to HTTPS (but browsers these days got dumber and
may force HTTPS).  Or do you need something from me?  It wasn't clear to
me from your response.

I might be able to set up hardlinks in <kernel.org> with kup(1) to have
<.../man-pages-latest.pdf> if HTTP doesn't work for you.  I'd need to
manually update it at every release, though (but I guess it's not that
bad).

> I understand your issues
> with CA, but self-signed for this context is definitely not better.
>=20
> And don't worry, if a CA does indeed impersonate you, no one will realize=
 it
> as the cert will just be trusted.

I see the 'Connection not secure' logo as a security feature.  :D
If I see my website as trusted, it's actually the other way around.  Of
course, only those who remember me using a self-signed cert will notice.
But that's true of any impersonation.

Anyway, hopefully nobody will trust my website at all, because there's
nothing important in it, other than the git(1) repos and the documents,
all of which are PGP-signed.

This is just my grain of sand to take down the CA system.

> Maybe only users that remember you use
> self signed might suspect, but maybe they will think you use a signed cert
> already ;)

Even if I ever switch to a signed cert, I will provide my detached
signature to it.  If a cert doesn't have a PGP signature from me,
suspect.  ;)

>=20
> Thanks a lot anyways!
> Rodrigo

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--47rcyi4zapn4b4cv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZMhS8ACgkQnowa+77/
2zLw9Q//RbFYVYRhiiOkrOIS5k7EcmjcpHd8r6s+lcKQTKJnSf05sNM80+f7b1+L
6BllaBJKtLu653PdbATlhQ34SXEewSBQy4wB91FbBeHFUFd3dJMRWTkDd4B5vOVQ
+NWLdT2+1Vcoz++U0rJi6EasEdidbwarhPk0k/OHxUWVqg7W+Z2TxITvAt3oT3l7
AnYHKjmBNgNCzmnmNOzsMUbEuOukJkqmktIs2fgHdDndHWneRybQvWf3H9DBZIKu
tdFmh0JcVTGoPQEHhYSqRs7oVBqYxiPfDEyVwFK/uKvMh7t8UCX3deBgl0pV8LfA
1qJafSSi1gfWHhZvUlqJVCvCKQjhE9xgaAW+Zb+Abmidh7k+qy/NaN808MA/zHl9
4EVnF9468VC/QzB0BdTgRjjqxBQvkjk1YtYb00htb7pbX6g8l6cIes8dhmdT6Cze
TCXcT8cMz7HI3kEJDI34Fn/mXnCsmu0AQvWN1FyG2TI9jmuqxtIUYTTZAkw+WO3p
wgqIxiSLAPP30fExV6bSLegyhl+lT3Vbf5WY9p5OfdTU3RiBU7h/sJ5mvgipyTAs
mbQOk/YpTQpoGtSLSqWYuNnYgAIbXL8D55BvjTEGkVVGN3oeb8/glG0gQOx4iTxo
eShUy2rO5XYtxRUQuznNbf2RD5rlApRJq+MIKa0YPZjwam6xXOI=
=vf5Z
-----END PGP SIGNATURE-----

--47rcyi4zapn4b4cv--

