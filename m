Return-Path: <linux-man+bounces-2037-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A83369D04D7
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 18:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 677D7281C9A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3649A1DFFB;
	Sun, 17 Nov 2024 17:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKsd1k7j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E895415C0
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 17:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731864998; cv=none; b=Czflk+3ReL+Jj2YyQHStd5g3Ag64yIIw+wB+j7xFUxz7fKyII0kA5ii7FIRGUuP705mS7tqfFwOAd5CZ5vv8+tyTVYbjQebKY2IaFX0q5E1CGi/CGqupC2xRV+e0FfCVgXOEeoMtroqpMIt9Q3wcXDo9DMKQb+TRmiiF/ZKQnFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731864998; c=relaxed/simple;
	bh=i7frr0qso+VrLPEV3RYhkfCENWS6PAEv0VtXpC3uefk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hA1w7oSAvEpsbpy0tdnQbDgys3+eCnV4WWhVpCz/XpRoXfR3USAalo6Gb4VHSwKh0KvQGMnTjptcyXcvqcFMz8CrjjywBpLMv6tRFRBPVfnMOumHyhvwyh3n5KlFTNVgCmOdYGmvIljpPnt74llGPucWDLEaf6H39akR24X1Nww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKsd1k7j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 878C4C4CECD;
	Sun, 17 Nov 2024 17:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731864997;
	bh=i7frr0qso+VrLPEV3RYhkfCENWS6PAEv0VtXpC3uefk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cKsd1k7jwD5T1ILT9qK87qe6QCMxYUZfWZQ08t0RvA44WZ0TOIf+q14ahQQzkmCTE
	 Z1HOlrDQgEUEIf0gBRa25KaePZg1b/0uf9K8+ygprA4FIsufZh9iIS398aXmRCoggC
	 CIzIw50LJ+3SNQaG7GU022iicu0jNhgPyf0tg4IXR1n07ts1r8kt8B7TzUPFXM46Wm
	 WwQD5lxM5QYmYVMmyVYrh94reGfbK/52y44ABSUAdwgiAOzi19bPQBNccG8OIXyP4/
	 zQKG+g+fFubZz57xbWviERM72p7kyoXvI+z+CLxVv+5jFB4E76+KuUHOhJzygTwiof
	 WN+wayslMFQRw==
Date: Sun, 17 Nov 2024 18:36:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <wezgpkwwh4nybx4m5fw6zcdxznc4p3cooaihdaby7g5p3njyzg@ctmx2klxtkjc>
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
 <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
 <20241117164343.53rxospihkd4upgh@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gg5iq3x2eijepev2"
Content-Disposition: inline
In-Reply-To: <20241117164343.53rxospihkd4upgh@illithid>


--gg5iq3x2eijepev2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
 <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
 <20241117164343.53rxospihkd4upgh@illithid>
MIME-Version: 1.0
In-Reply-To: <20241117164343.53rxospihkd4upgh@illithid>

Hi Branden,

On Sun, Nov 17, 2024 at 10:43:43AM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-11-17T12:33:13+0100, Alejandro Colomar wrote:
> > Hi Helge,
> >=20
> > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Other pages don't use FROM and until =E2=86=92 to - maybe a=
lign?
> >=20
> > When a feature is discontinued, "from" makes more sense than "since".
> > "Since" means that it still exists today.
> >=20
> > I'll eventually do a consistency fix in this regard.
> >=20
> > About until/to, I think until is more common.  I'll also check.
>=20
> Where the value of unambiguous expression is paramount, it's hard to
> beat interval notation, like "[2.6.24, 6.3)".
>=20
> Failing that, I would select a fixed set of English words to correspond
> to interval notation, and document that, probably in man-pages(7).
>=20
> For instance, and just spitballing here:
>=20
> 	since	[
> 	after	(
> 	until	)
> 	through	]

I kind of did that, but it seems I didn't do it well.  There are a few
places where it's not consistent.

']' (through) is something we don't use.  Normally, we specify the
version when something was fixed, but not the last broken one.

And about since, is it correct English to say "since x until y"?  Or is
it more correct to say "from x until y"?

In my head, it would be:

	[x, y)		From x until y.  (I think we also use
			                  since...until somtimes.)
	[0, y)		Until y.
	[x, today]	Since x.

I think those are all the common uses of these terms.

>=20
> I wouldn't expect this choice of associations to be accepted without
> some amount of argument--that's the advantage of proper interval
> notation.

I might be convinced to use interval notation.  I'll first try to be
consistent using English terms, and after that I'll consider a second
pass of changes that might transform to interval notation.

>=20
> But, if interval notation is thought too unfamiliar or too awkward-
> looking for man page readers and/or contributors, such a mapping of
> English words to it might be the next best thing.  Disciplined use of
> the terms will be important.

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--gg5iq3x2eijepev2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6KaIACgkQnowa+77/
2zLNxw//Xts0OT1LSXlxT+lqkpoPOnOKDbvkMchD8hoc74WnzYiuJi2YFbBEBoR2
7vbH49/k1ZLs1FIIYd4+q8xtb2MYvrc1z5sQln+5DMlJSLCz30OqoROzIr+PAdpE
KorJmARmlmthx6yjCZhwGdAOnEOrv7tKvNF3qApdxonPr1ie4V6EPDPxkZZNkFDj
kyH+QYtAiK9LKfUnGd8aKgx7Rzv7hASiXku1wMPtD5buz7QpsszNoztfdN9qpDfN
uTDIL70K0VQW2kpQneaVS3jt6DeGUVH91M3TL8Q/4s2XzSaXT2cTsJC4FFcy/gK6
vqI6ruY2NrYIxhMkdOJz/Q1lL3ZK+NM0irnmsZ044l3hIYHQ/X8QJkXa8Nnr8nfF
kxnQzNV7GDiPNrHF/nnUgC3aTPREcqS1ztk/6Ga+QSqpxAhGQ6LJ+OoYJ8s2y9c6
D4KrXARK9sKeKmsrc/PnJ4LKYq/6FoEZfzdR7i/OHOTnKmgn/XnemNf5bh9b8bHJ
jbC8/zNv0nDtbsvVBKLds1iYOIX7oPq9lCFijsynB6gDCEtdIGDdU4znRNibsJ99
+6/lLg3vmzHPLNDnJaSzT1ePE9z0AhmClLRjjkSM9sOiXbf5b26Qt3eAf7OKODid
eqeILgewviJmLfhPmrzeWMffK2qF3Z1Sh0cs/w8XS//uvhSlWk0=
=kWIR
-----END PGP SIGNATURE-----

--gg5iq3x2eijepev2--

