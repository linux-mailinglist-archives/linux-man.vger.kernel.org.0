Return-Path: <linux-man+bounces-2005-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E20D9D045A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:40:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94FF1B21649
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C1E1C9EA8;
	Sun, 17 Nov 2024 14:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxYVA58c"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2B1D9A52
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731854413; cv=none; b=so0zKXXltX97LEC7rsqqczlJweAluGuRgvXUprrkHNGCBTuDRJI09fhCP/415wM0OS321fFZOw1lrIGpL+TrI+aq4FELVg0BJ6Ec38p6rzBr4TOxyaqLB9RGAwivOyp6FgmkizMfofWhn5355dGsqg5fFlUc+cc3G/4oZIZTBeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731854413; c=relaxed/simple;
	bh=2t7aMs15pcrROA8zPk1jLX10bH7U7eimtoE3YtxmARo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A1JkFfZr9gnHQtDY/7jgcIrS7xoInrEjljh0HAX92bqxzEWVqz/Bypu2opLc9B6moULCJu7XZr4UfzTx5oIDFkLNwnvDFz5PYwAj2APeaoCCQNYY6NmGbxX+3CVZvF1H82kdX5WRke6VBIEv/eucFNn3OEPHxg/kKb98OQbw9U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxYVA58c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1EC5C4CEDA;
	Sun, 17 Nov 2024 14:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731854412;
	bh=2t7aMs15pcrROA8zPk1jLX10bH7U7eimtoE3YtxmARo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxYVA58cqznEpvEvPJaLv2TMNIFffjhYr7QZyjaFDUClBOumXcYY5moctLGyK+zl8
	 SSlbSS0HWHd+W9+1NV3ZhdxiafMk0uK+V6p1+ZTWBiMP1zz3bNgH7DVctG4SVFZk5/
	 13Doj4JD2R+5lzpA0ue2ooVGCXbsXsUAMFaPpkEoynIDGkTn3HXJMkAeCq8nqNuVi+
	 yND6ht2wEuCV3wBpKGPD5gIBz7GkbW1thugZ+fX8xcu5uOOsW8D3gX6lPDZdunMgih
	 AqJMBCQeJU+IgkYJKPny86iipjOVGg66h+f64OmtxNUp/TFAgExedXQzvypeFgw7UJ
	 UMJb3sxP1Ex0A==
Date: Sun, 17 Nov 2024 15:40:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <wta45qjgdevaukfvryg6iefakxet2txhrrldbrv4qhqfutsuyp@7byr3rdccnw5>
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
 <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
 <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6wja5st2hyv6dtdb"
Content-Disposition: inline
In-Reply-To: <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>


--6wja5st2hyv6dtdb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
 <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
 <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 12:43:15PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 01:12:31PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Remove hard line breaks, they are not necessary, rather use=
 a separate paragraph for the last two lines
> > >=20
> > > "The format string\n"
> > > "I<FORMAT>\n"
> > > "controls the contents of the\n"
> > > "B<time>\n"
> > > "output.  The format string can be set using the `-f' or `--format', =
`-v' or\n"
> > > "`--verbose', or `-p' or `--portability' options.  If they are not\n"
> > > "given, but the\n"
> > > "I<TIME>\n"
> > > "environment variable is set, its value is used as the format string.=
\n"
> > > "Otherwise, a built-in default format is used.  The default format is=
:\n"
> > > "  %Uuser %Ssystem %Eelapsed %PCPU (%Xtext+%Ddata %Mmax)k\n"
> > > "  %Iinputs+%Ooutputs (%Fmajor+%Rminor)pagefaults %Wswaps\n"
> >=20
> > I don't find that text.  Could you please check where that page comes
> > from?
>=20
> They stem (only) from Debian, so probably a patch there =E2=80=A6

I checked the Debian downstream repo, just in case, but I didn't see any
patches.  Maybe it's a page from another project?  The time(1) binary
comes from the time package, so maybe it's from there?  I don't know.

Cheers,
Alex

>=20
> Greetings
>=20
>          Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--6wja5st2hyv6dtdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6AEkACgkQnowa+77/
2zIugw//W1FXvE3AJ0BAxVnulPlMZJYobHPkRLOXkVDB5LyBX8b7Mkk2f2KwcOC7
j3Bx+zDYpEsm9bY738gYJgOMoCMSdwWFCkjQuZgHAAVCXz8Afunq7LnPJps5Ax4m
c829t36ODEsIYS6bAkjaUe9kHt6KLkzR2+HxXo+A6MYkEd/1IzJCHP8ML4dlomOL
kzDTd371Rd+Q9OtUkqyzHYeUpWyBTcWyYsHRf7JrQyhQ9SyohGIeMMcAlPBBWebP
x3h/vpv7F5fHRjHXp2Llpuxm7nx90vOMHH8OOqSzAKNO/sP1X9Z5su6YV2ZoFTXe
Gcuw+ucQIWVj3WnVZz7PGRsKqqgQK0VVK7NBKk0sfaFN8jFeUfjZa1Jsra7T/4F/
yK+04TvRsfcbiI0S7B9sITE083PBDlnLoy3Vh3+ppETaF2llqQ8LbKjM5b8ABJxw
5h3zqDo0iwCYjZarrsYbDNNJ9DRJChWg2Q5VKhhtSXh/Z+RRkdDCVZlXZahfe1LR
Duit3CvTT2F3sJhEUNAQHoaqIGyzhtR71mzm5S+KpE/pjd53n11vspvAH20975pT
Jt7jiOyaMx9P2kE3oj/SXG4p/n05/B0BsFNsnaKjvfxk/UCp+pPAtywThF87zURQ
tYQVMzLoU8xFoWB1soFCB+aKV5qLpskieC4ZkGBUNu7fBIK6PzE=
=iV0U
-----END PGP SIGNATURE-----

--6wja5st2hyv6dtdb--

