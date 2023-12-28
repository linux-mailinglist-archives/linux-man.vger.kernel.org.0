Return-Path: <linux-man+bounces-311-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B373081FAC4
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 20:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 694861F25031
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 19:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA490101EC;
	Thu, 28 Dec 2023 19:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Cq9k4/48"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A44101D9
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 19:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1703791702;
	bh=MeBBAKWmlITtsPZBcHSsWokH8oXJHpSQe/jNJSKua10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cq9k4/48bTLa4Sm5iJIHMAddyocMLCH73MOznI15GyzruXYgbm8eZQY5YALZ8knH5
	 Qmgln/g9pU1RXPSfpss1K/bov8dkQWBLhlcouL2NUffmKt1nZ9QR+DOSor1GRthLp+
	 VjZOcYLWM9x8W3irqWWEtIxzr/a6vxaJFfrfaRLP03/lR5uzhwpAmcQ9l5bcav3ggR
	 6mifNiKOWVAktifRkRvkYjThRXuj6z84Ay+LLnEuLP6tYFpdfw9EGz/sIYYOUYwt9x
	 yTz3Rf2fYXRvS9uT6cZEoWi7KNsFXbYFoKZQluO0hVYXb6uYC3JOBzfP/kIx7/ylhU
	 ZlvWYUz5F3UBg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D07E31441E;
	Thu, 28 Dec 2023 20:28:22 +0100 (CET)
Date: Thu, 28 Dec 2023 20:28:22 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <sbwbc5fmppc77kqnzjmvxl57ke76lqoagn4c3o7chezt5b4rzd@tarta.nabijaczleweli.xyz>
References: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
 <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>
 <ZY3HJ6w-rfG4MpgJ@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="werdknmk7hbkwp54"
Content-Disposition: inline
In-Reply-To: <ZY3HJ6w-rfG4MpgJ@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--werdknmk7hbkwp54
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 28, 2023 at 08:06:14PM +0100, Alejandro Colomar wrote:
> On Tue, Dec 26, 2023 at 05:03:37PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > @@ -243,6 +249,12 @@ .SS List of functions
> >  \fBmktemp\fP(3)	T{
> >  make temporary filename (unique)
> >  T}
> > +\fBopen_memstream\fP(3)	T{
> > +open a dynamic memory buffer stream
> > +T}
> > +\fBopen_wmemstream\fP(3)	T{
> > +open a dynamic memory buffer stream
> > +T}
> >  \fBperror\fP(3)	T{
> >  system error messages
> >  T}
> > @@ -192,9 +192,15 @@ .SS List of functions
> >  \fBfileno\fP(3)	T{
> >  return the integer descriptor of the argument stream
> >  T}
> > +\fBfmemopen\fP(3)	T{
> > +open memory as stream
> > +T}
> >  \fBfopen\fP(3)	T{
> >  stream open functions
> >  T}
> > +\fBfopencookie\fP(3)	T{
> > +opening a custom stream
> Why use opening here, but open everywhere else?
These are the NAMEs verbatim, like the fopen entry:
  $ grep -A1 NAME man3/{fopen,fopencookie,fmemopen,open_memstream}.3
  man3/fopen.3:.SH NAME
  man3/fopen.3-fopen, fdopen, freopen \- stream open functions
  --
  man3/fopencookie.3:.SH NAME
  man3/fopencookie.3-fopencookie \- opening a custom stream
  --
  man3/fmemopen.3:.SH NAME
  man3/fmemopen.3-fmemopen \-  open memory as stream
  --
  man3/open_memstream.3:.SH NAME
  man3/open_memstream.3-open_memstream, open_wmemstream \- open a dynamic m=
emory buffer stream

--werdknmk7hbkwp54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmWNzFQACgkQvP0LAY0m
WPHAHRAAg6JzeSeV7pSdGuWM+7GiL4MXmeYJJNKfjD9FKsF7Xjp+FBJ8fDb+uelA
5NtE5OyS+uelVXycs6BOpJlIjEDRMGD5RgNGd+vDK65rtL67S25ksGjCotLfvBAn
1EYZ382YLO3pTyyTeBH4pQI36w2kDjzrQlYdy5yX8Vq6MtWnsDfxE80IFyfkwoXW
vEYrKWYVoO/MpU+XVFPCZ4tXqCNPc2a9rT+MoemDwsBHTPVR7z4ToPNIJlh9U2q0
HtmX5leLRLOFHGlcXscDoWgACZmlOv1Ov3tM4aCokYJ9BJnQulxjKItYRJOe/nXz
yz4ly5J85mXN0zs0fuLZjj7nGa+0vhcWgU/3J1K8TbHVb6R2HtO7eTDqBCcQMHLz
gBEMBm9dsCFWxZDg6aCUKJ74u/nKcLEbL0ktkip1Axo5yGBDdLeDvoVN6uQj5YJx
lk1ynrV+W2lhbbx1NWDnWVBwV1xOoDg9k/e7qBBDvxq5SxSJocCMGDiEmKMbk6yl
tic1B5Cn7YZTH+oyTEgLVxy1TSpJqFQLJ9JqKGk0AJs0rn2egcf/WYb8VhYmM/g/
qLg+sptLDf8cSgkdVqzfKrgElQEIMeFYcFZ6oTdlH5Y0tnu38WnpYnylmTjfjItm
D6pv9PgJRb+BB1Ln4AOOFzIUVzrJ8cudF+PID1ZrfZ2Md6M7l3k=
=biW+
-----END PGP SIGNATURE-----

--werdknmk7hbkwp54--

