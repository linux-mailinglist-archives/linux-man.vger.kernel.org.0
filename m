Return-Path: <linux-man+bounces-3254-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 630FDB00B86
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 20:38:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C68C94E50B2
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 18:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A9B2FCFD1;
	Thu, 10 Jul 2025 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKpCvUu2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB3A2FCFC6;
	Thu, 10 Jul 2025 18:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752172702; cv=none; b=dwm0b3PsxTbpMwEVKiXmYN0KTJED9IX4CacNLnTT6GTCXv5csUSMbxPRjjfhGmU5fGBdntZ6A6VeF/UmYX7jH6L1/kSxiEff44u3/BBXhOOMRXsXjvC6MWrTcfTsa7vIen1A70/2LJs/75O2hG39LFmbcIxgv9j/8QTXIF1ju6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752172702; c=relaxed/simple;
	bh=JZCEG40vmHdyDVxTyrSF4qC4VT4033mC0LmdRSjg7OU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qnwb8M3IpMYDBFsmXDUakC1CS5SsNJMcizg69shl/e9MplFX10jF29wMRAbquML+J3u23UK4FA61JoNxWT5BwMvSLbAhDvk0RKAxLbVzwrXFfXF98YrTlyWcMfse+3mQPHfDTTe8D7bwErdkxb25ZscGv4J2WTpsRk1sv2iWCDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKpCvUu2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E44C4CEE3;
	Thu, 10 Jul 2025 18:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752172701;
	bh=JZCEG40vmHdyDVxTyrSF4qC4VT4033mC0LmdRSjg7OU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cKpCvUu2BItmecSIdUd6M3Bt3izHBlkBCm0rECexrSlLMDMUHkLctgAtiETS5R2T3
	 0xC9vpACRwGNCWroX2u8CuRChE5QEEo19BoJuwvxmpdm8oCaV3qVATXa3kJJ4NxtH/
	 S+/S99O8vIdFXrVLfblrx4gJSuWU4b9hhPHgzQ8gcYTATCLJ0nro5YUeBCULPNfYKC
	 CSK7xj+o5kf0Othk7d6r7AouSxyhAn2SaOpYYi2OJvKCwHgeOmUgBbaT1psODlRck9
	 zCz21B7/mzl9tZh33rEGsmeHgcqnDU3cvaoW79txpX29gyfjHoGTycfHuhG6ebfHun
	 Qri8uB0sdijJA==
Date: Thu, 10 Jul 2025 20:38:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: CIFS <linux-cifs@vger.kernel.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Missing man pages
Message-ID: <m66rzkwcmvgs4eeqeu2ms3dqsowanhoazukgqw7tcxse6wkzss@rtau33yxxwpu>
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
 <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
 <20250710160347.vi25bnpwmvof3yl4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ga3fzdvilxofaec6"
Content-Disposition: inline
In-Reply-To: <20250710160347.vi25bnpwmvof3yl4@illithid>


--ga3fzdvilxofaec6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: CIFS <linux-cifs@vger.kernel.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Missing man pages
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
 <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
 <20250710160347.vi25bnpwmvof3yl4@illithid>
MIME-Version: 1.0
In-Reply-To: <20250710160347.vi25bnpwmvof3yl4@illithid>

Hi Carlos, Branden,

On Thu, Jul 10, 2025 at 11:03:47AM -0500, G. Branden Robinson wrote:
> At 2025-07-10T11:55:13-0400, Carlos O'Donell wrote:
> > Since Michael started adding a curated set of man pages to man7.org
> > from other projects in 2013... how are those sources kept up to date?
>=20
> By some script(s) he has.  I've corresponded with him about it, briefly,
> over the years regarding his copies of the groff man pages.
>=20
> > Is man7.org a part of the Linux Man Pages project or just Michael's
> > own published collection of man pages?
>=20
> The latter, I'm pretty sure.

The latter, I confirm.

The official online manual pages of this project are only served as a
PDF book, the latest released version of which can be found here:
<https://kernel.org/pub/linux/docs/man-pages/book/man-pages-6.14.pdf>.

I also provide a PDF of git HEAD in my personal server, updated by a
script on every git-push(1) to my own git server:
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf>


Have a lovely day!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--ga3fzdvilxofaec6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhwCJkACgkQ64mZXMKQ
wqnorw//a1UR2JytzMaJlAF7FHjC8nAIug1pSJTJm/QCtvX8tyzq7Y75OGV9kaWD
PJvRbWCdjF/aruiEJyvM/r0uH4X1ffCgrW2yDdoMQlvmrAkHord8usu9XnUPeKd2
eHPXHY9gG24NonyX3A6p5Wv41i/H36QS3VRQp3l8JO0WpigI7ExOQ0PRXGljKySR
+cfOeclblIxYS67gN/1RmA2tzZE4N5LRcORJb1hNIGRwQeqncQAYSpLIjc+/yGZO
1V/mwuDWePZ/mj67Dft0nwPdrYOpJjfruBgR3iqRNY2BXjDmIpJFYBgbtWH59bMk
bzg/f0THybBi1tde4IpKKMyrb02CcDMjpN4jWyrjGNOUeyijt1zDTx/LcGkZ6V6M
q9kGMqNoE64MUwBJBCKTIaYpmO78wFCUT8mZkLkNs7cXGEUZOLeJqWhml8PA0iYK
D8VwML4rmCe9yJgTSI02oktqG0pihZ1v0mxjYDrcNvldV2Gb6AcZfbKzoA+ezuUM
9Hp5qwPe9jp+CjKuSDHo5kuZgUHzBYW91jnvuGD5l3/UkLUwwmcKY1TR3GThMhFG
odlF6iFB4EEoVMFD9uuwmJMSFzz5gud0lPzEH0AjCdQi6/T90lVIG4UMtvgLT47+
xnyu0L77axn/sWgtmBWS+Au6CtqUJQCv+E+AbqcKwtIGKaSnV44=
=Vaqm
-----END PGP SIGNATURE-----

--ga3fzdvilxofaec6--

