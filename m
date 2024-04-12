Return-Path: <linux-man+bounces-741-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF2A8A3761
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 22:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67B301C2387E
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 20:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA9445BF1;
	Fri, 12 Apr 2024 20:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmSShqUR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE593D0B8
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 20:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712955459; cv=none; b=fsVYq9fCho+vulP0kbHrtN9o2iWsebjLVko/wSKgJzuftniIAQEpGRvGw8bHKL/SW5leZR2deZyyiUksZM4svxTx915hDjERjIpFi4ir+9iLPc7bCeA/Cu8VID3GGbo/jylN/5TufRgFz2YvRiSFJYrgkLHuf12s/PPFsuumOO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712955459; c=relaxed/simple;
	bh=Sf5lcUVba71tb/YgSrCQPg/2weDXf+7cKzRZbFiwqkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OGTfzUE8h7ChPjyRhuB1xagtHVqL1WquuG/YL0W/rhRV4NrMfc3+QFL6UObTE2QHUBU4xz4mTUcCo0Smq1NM9qiz/iPL+44QGUFUicc7vMpcb8qziBn0lMtXYhx//RifHQzgqiO4Jx+fLHt35jO7B46a2Ojtr9SFsO8vauvuKL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmSShqUR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62E2FC113CC;
	Fri, 12 Apr 2024 20:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712955459;
	bh=Sf5lcUVba71tb/YgSrCQPg/2weDXf+7cKzRZbFiwqkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SmSShqURlZPftuDsjzsc+BoIn6IXkfoLdmHkIrcuQt1nFpaArlwnbcRY6RMf+HJyF
	 +xX8vgDtkmL2+U3kaLmkKh/qDinFkJHAfX/UTJKICfZDRSVum5WCG3WT89DJ5c5Ij9
	 cfwwP3JgZx1xrUInykg+36w0mypkOwMDgccLlt1mN4dX0Bl7MbZj6AYOmrgFlO7W5d
	 P07jY5+FhC8UTKuqU8qb3AtBHeoJ6CeBPSwoyQH+Iafw5Gz3cWL1OADjTERIiaZQQF
	 Xyt96/GIseG37aCj7lqG1JU1JO5qLjMtf8iLUhIiVbSbQev3rTcWSoB4BPFkaCQal2
	 EWEM/z13aFTaQ==
Date: Fri, 12 Apr 2024 22:57:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <ZhmgQAQlnmkixqsp@debian>
References: <Zhlth9wCHbxoNkMi@eldamar.lan>
 <ZhlzmymKd3XBq9Yh@debian>
 <Zhl_ZOqOGkJizieb@eldamar.lan>
 <ZhmQ3JCTAKN61h_K@debian>
 <ZhmTy3oql5GbeMmo@eldamar.lan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KgqHCfP1AgVNKtLc"
Content-Disposition: inline
In-Reply-To: <ZhmTy3oql5GbeMmo@eldamar.lan>


--KgqHCfP1AgVNKtLc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Apr 2024 22:57:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages

Hi Salvatore,

On Fri, Apr 12, 2024 at 10:04:27PM +0200, Salvatore Bonaccorso wrote:
> Hi,
>=20
> On Fri, Apr 12, 2024 at 09:51:56PM +0200, Alejandro Colomar wrote:
> > Hi Salvatore,
> >=20
> > On Fri, Apr 12, 2024 at 08:37:24PM +0200, Salvatore Bonaccorso wrote:
> > > Thanks for the quick feedback. So please find attached the proposed
> > > change. Let me know if you want something changed.
> >=20
> > You're welcome!
> >=20
> > > From 07bf84cbb2e78595b4514fe820ae5574bba8d0ec Mon Sep 17 00:00:00 2001
> > > From: Salvatore Bonaccorso <carnil@debian.org>
> > > Date: Fri, 12 Apr 2024 20:29:06 +0200
> > > Subject: [PATCH] proc.5: Refer to split out manpages for detailed des=
cription
> > >=20
> > > Back in August 2023 various parts of proc(5) were split out int separ=
ate
> > > manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
> > > making sashimi of this page") missed to as well refer to the split out
> > > manpages and retained the wording that details are found further below
> > > in the manpages for the various files.
> > >=20
> > > Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this p=
age")
> > > Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
> > > ---
> > >  man5/proc.5 | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/man5/proc.5 b/man5/proc.5
> > > index bdc47456bdce..4c20920e1e3c 100644
> > > --- a/man5/proc.5
> > > +++ b/man5/proc.5
> > > @@ -176,7 +176,10 @@ Various other files and subdirectories under
> > >  .I /proc
> > >  expose system-wide information.
> > >  .P
> > > -All of the above are described in more detail below.
> > > +All of the above are described in more detail in separate manpages
> > > +prefixed with
> >=20
> > Maybe I'd reword to say "whose name starts with".
>=20
> So "whose names start with" as there are multiple manpages?

Sure.

> > > +.BR proc_.
> >=20
> > This would need a space before the '.'.
>=20
> Ah right added.
>=20
> > > +.TP
> >=20
> > Why TP?
>=20
> Because I stupidly copy-pasted lines and did not properly adjust and
> rechecked.

:)

>=20
> > Have a lovely night!
> > Alex
> >=20
> > >  .\"
> > >  .\" .SH FILES
> > >  .\" FIXME Describe /proc/[pid]/sessionid
> > > --=20
> > > 2.43.0
>=20
> Quite imbarassing doing so many errors in one go.

Not so many.  And a patch applied in v2 is rather rare here.  ;)

> Attached is the
> revisited version.
>=20
> Changes in v2:
> - Reword as suggested "whose names start with"
> - Add missing space in hilighted proc_=20
> - Drop superflous .TP (from a copy paste error)
>=20
> Regards,
> Salvatore

> From 7753658486c2ee2b1d50df2811dcef6af335378b Mon Sep 17 00:00:00 2001
> From: Salvatore Bonaccorso <carnil@debian.org>
> Date: Fri, 12 Apr 2024 20:29:06 +0200
> Subject: [PATCH] proc.5: Refer to split out manpages for detailed descrip=
tion
>=20
> Back in August 2023 various parts of proc(5) were split out int separate
> manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
> making sashimi of this page") missed to as well refer to the split out
> manpages and retained the wording that details are found further below
> in the manpages for the various files.
>=20
> Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")
> Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>

LGTM.  Patch applied!  Thanks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D79a0af0c9091cb2e1bd09cd4492480b12be89089>


Have a lovely night!
Alex

> ---
>  man5/proc.5 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index bdc47456bdce..8022ca49ee68 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -176,7 +176,9 @@ Various other files and subdirectories under
>  .I /proc
>  expose system-wide information.
>  .P
> -All of the above are described in more detail below.
> +All of the above are described in more detail in separate manpages
> +whose names start with
> +.BR proc_ .
>  .\"
>  .\" .SH FILES
>  .\" FIXME Describe /proc/[pid]/sessionid
> --=20
> 2.43.0
>=20


--=20
<https://www.alejandro-colomar.es/>

--KgqHCfP1AgVNKtLc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYZoEAACgkQnowa+77/
2zIXHg//XSwg58GtuUaDfpW3KaeAdPr8qhoKhb/rNOg4+tMHngD+YCTwcHgF+YnZ
iYTN+YiRzXKry2f3eBDSNuJrhsLYmTrBqugVW+Qd+BkbazvnKOgj+vaWKizauRhf
VSg4Hwftphy48nMB6gpkWJ4pOVwRnQdwV6gbbbjc5+VNbI5Sxjw4LSOS7BPOQDsa
kcI1oiNVpjXcEsHe2GktqbizmILCTFiLqEhvCTIek34Sj18N9EdaoEdjslrK1woP
j2mhlzt/KdmAnlra4wbK/E/FiLRqxAGHnmA/ScM7kT60CxOkmaj06WMRpfuYTez0
hI9AvLb9GXnMBvOSPU3y+eoDOkSAK1njG5SBEUzMtFyLQblzpcQrGpC8+lZWfQLA
Z+lGWaHMw4AJKYgQKmJS7Jlw+Uoob3knpFyxSejj2l/6bU0BeTigIufkAWd/PVgQ
Ti2c77F8Y2HQDmIfPrhisHGuc5PtBeJLWV3suqxTuwOOShW8OZP63IZhgG52lcZ2
0IupHYvgysULzqTuMzrACrWAEigoAmSUDj9ePkLgAx/uPBY8bWTTPF8KspfGVzoa
AxnayDaVyF9XDoxPtq0M1Uwy+9A9KmpGsnIkqVa8/Z6V/LdX8Lo7OyTh0/rsTD/A
Q2gIr23lDCxkg3Yekt5E65tsU/xp9530SRomtFi/qsN4Wb8oE6g=
=V9Ih
-----END PGP SIGNATURE-----

--KgqHCfP1AgVNKtLc--

