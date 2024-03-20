Return-Path: <linux-man+bounces-678-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028AB880F3C
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 11:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 321441C21CF7
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 10:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526AF3C460;
	Wed, 20 Mar 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hhxbr3rw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1305E3C08F
	for <linux-man@vger.kernel.org>; Wed, 20 Mar 2024 10:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710929063; cv=none; b=UYxXOchqMUtXXHUti6jT1W3jracxutUXK2ANFh02gQoG3Ieca/KNIUYPHHlS5TeIzMHiyV/kg62pKKRE6Y59hvHyroarmAl8K+OSUkKujkrgdqDHjElcP87DAIsLaSO59JRsAwNxB4I9zZiIR7rcc8V5C/pllt+xhC/auLEfZNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710929063; c=relaxed/simple;
	bh=VxaPlt37QOjPESQLWqyOiX+E0LUAQlDrBcPNcQqQMRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jmOdkN8q4FIYOByaKiAKhyDJWG5oGKuaGmVoLBCRUZQcfG7XAA3S4w+bXVBvWjlak5mc551ymeMlK18iczMeoB0JBBiJQM0tlTctRtJdEODZTThsO96Thp8/+Hyijay6C41wPKdlg5bjjcQIFH06e6FFnDIpL90a/xNSzgA6AGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hhxbr3rw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85C5C43390;
	Wed, 20 Mar 2024 10:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710929062;
	bh=VxaPlt37QOjPESQLWqyOiX+E0LUAQlDrBcPNcQqQMRE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hhxbr3rweDNXG5aov/Ba70Ie7QeHOJt+AXQKo2lO8Ai4UzGNEodih8jbl5n8cDUlp
	 TKSf03it3yzRI8bxMEhGXIFIXawoqEOz5pM8IXRIxyMp6r1fFFxwOb7yE4euPv2JpA
	 Dghpcfar6DSh6bDciHU2VyzThd8JVeIc6XWhAxhc73jmbyuDcbUrxb6KCsWpZwvAjj
	 UMRPJPkRYVZHZ2eWF7YzMN0aKZMCl/vdk0OabXKh51cLX8MTzqiUt1K2fUu0pUxJxM
	 AlbTJKO94wInrziDiEVHipME9WFVZnJaHZpmFccEMUa0WaXgF5OiiI7BxelUkYwhYr
	 gc0uU8d7ZVAgA==
Date: Wed, 20 Mar 2024 11:04:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.7 released
Message-ID: <Zfq0o-mKRa0qfDFI@debian>
References: <Zfna9TOEMqQdI88n@debian>
 <ZfnmXwFIjWFiHOsC@debian>
 <CAK719L2ybtweYytx8es7Yq-m__4P=OTq=w+7iZ6EmOJEbkyzQg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BVbRzV0NLTS26FXb"
Content-Disposition: inline
In-Reply-To: <CAK719L2ybtweYytx8es7Yq-m__4P=OTq=w+7iZ6EmOJEbkyzQg@mail.gmail.com>


--BVbRzV0NLTS26FXb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Mar 2024 11:04:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.7 released

On Wed, Mar 20, 2024 at 08:59:33AM +0100, Lukas Javorsky wrote:
> Great work everyone,

Hi Lukas,

>=20
> Alejandro, is the version number correct? I would expect the 6.07 version
> since the last one was 6.06. Or did something big change, which made you
> change the numbering?

I never liked the .0X too much.  Since version strings use
pseudo-numeric sorting, the 0 should be superfluous.  And in the last
release, 6.06, someone confused it while writing, and wrote 6.60.
That's what convinced me of simplifying, although I already didn't like
it too much.  I hope this doesn't break anything downstream.

>=20
> Thank you for the answer

Thank you for asking.  :)

Have a lovely day!
Alex

> On Tue, Mar 19, 2024 at 8:24=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
>=20
> > Cc =3D pgajdos

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--BVbRzV0NLTS26FXb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX6tKMACgkQnowa+77/
2zL/rBAAnU9K310GxkLv6/AGPlT6NRqIgg2dzXOATuCRMSJ90I7KfoHI1piIpoRQ
f10otb7EwR0MPa8wijUL0P1k8mfkI2OAZpEirfFGgEZI21RouanZ9fpccYAdtfkk
UyOE0r+byEZZn4yMhSR6mMHLnnaFYFic3aJgkC8Tayc5Xq7KtXyXruxJYTxt54Yq
daJjHqDHaaiUNsULrpICiPAm2XmCFQ85QgD/F5IfNtBretKb6eV099rQmVBNdn9h
INaSOvgXvBmO85lEvM9mcDzvwWtF2u1mkQQx8RHb/RGI1T1gOqGRD6HPgNeZKcwb
2edxPcfnPeQ7G250C0Aru8GiFP/XwR0uEd9mUJ+N+mbVvGiIQ0DkuaI//lDG2eie
7vr1OOFVd5XgIU1sHn6JCy/VCxxqN70EewyO9I/536wVTh/eAwdRDFb2a8HBwztl
+fVxUm0dGjWynm9h5xcBkSNggdKVE9ZpGBh1PaJkfF8dm/rcMaruPVpXFnSu9h7u
DWFGVj5dkUQuTPUh3IAW7Sg4d0BbcVEMpeDj3rWEBK72bjBGJtZdCeaMBu/TaaGn
nPONFPrg6vgKlShHYBpMoJQF+P90nOxabm3a98Dxkcw2lfLYqftEXCSRV1F0DCto
qurxSP5YlgvR/aqIi3C9KLFz9GJg/rmkpZLaMW+BPHe0yF3jqSo=
=xZf1
-----END PGP SIGNATURE-----

--BVbRzV0NLTS26FXb--

