Return-Path: <linux-man+bounces-2050-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF529D2AA8
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 17:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B1F01F233BE
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 16:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E3C1D0DC8;
	Tue, 19 Nov 2024 16:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qLkEM+NH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79591D0967
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 16:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732033104; cv=none; b=UDXtyh+/7mh/VFvSLMrH+RbMgEC5OednqkmQQuD2PHRguSu77UmSL0LnuFBCktpJjLNp0WVui/Hwom7weXclCEUcPU4eW4bHBLViA1CqxVoJFDi4F2VR1nTjtfNf38kTGznM2OLiTlDZZKFuIaAKIWTIlCcmxlLsXDzmEYMVLkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732033104; c=relaxed/simple;
	bh=Nlt1ZtNgv5wiT41mo78M4C8GEbH/0WhdlPM6iPib2xo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NPHFCqm9VmeTDFnJ0+C38s0+zDuPGIZTtDPu499oa8OmNdcg/wuRRTT8DW9sVEKTqUWcZvvvMOf54gQDw0ywY+OfZDGfwjXpLfPKLP4JT0txyOr0vcFU4bx5ex5wXwgUmUsKp4fr3e5Q/uWwCGgqAo/cMdxY/sqgjLP48c0ukBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qLkEM+NH; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1732033094;
	bh=mVBa7dP1pISwD7tdoaRJ87mBX9NKBmA0YEtkb1Y7BnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=qLkEM+NHF5wqtKvhHq8FGZ+1rz1oGNdzS7iqv0ZknOMQp2bktYvtJvyy6yyYLJigc
	 knm23JNWqKJCOp7uK7Y3i9AyexsvsbJwKM6GaeBS+tcTwuZJ0irRziFt2RCacGu/QA
	 nhwcC3cxqBnT3C+xt/tRV5zaPKs9mveMa/wGaPoC8UiOOx9cA/p2mCdEs4cEww5Gka
	 SOTrWCwcy0Qz5SyD3OznxgQnQmoBzVU+2mZG7JkJIOFkpYYRxZTseMZ52A1H1g3co1
	 yRFOUR5bLyRCQHzI/ra4Y+xDn5IqjKJM3oSQm1LKSRZdY/+OPN0Im62rqCCUymMCZk
	 TntIMRomK5nSw==
Original-Subject: Re: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: alx@kernel.org, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F6.00000000673CBA46.001FE15D; Tue, 19 Nov 2024 16:18:14 +0000
Date: Tue, 19 Nov 2024 16:18:14 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Carlos O'Donell <carlos@redhat.com>
Cc: alx@kernel.org, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
Message-ID: <Zzy6RjZvu_jYo5rz@meinfjell.helgefjelltest.de>
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
 <8c9a2898-1a2d-46de-93c9-2b46b65f1811@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2089309-1732033094-0001-2"
Content-Disposition: inline
In-Reply-To: <8c9a2898-1a2d-46de-93c9-2b46b65f1811@redhat.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2089309-1732033094-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Carlos,
Am Tue, Nov 19, 2024 at 08:29:34AM -0500 schrieb Carlos O'Donell:
> On 11/17/24 5:46 AM, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: As=
sertion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' failed!
>=20
> This is no translation for this assertion failure.

Sorry for beeing unclear. This is not about translating the string.
One of our translators tried out the example given in sprof(1) and
came across this message.

So the question is:
Is the example correct, despite the failure?

And if yes, maybe this failure should be mentioned in the man page.

As a side note:
We translators regularly check if messages are translated or not, so
in this case we would *not* translate the output ourselves, but leave
it in English, of course.

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2089309-1732033094-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc8uj8ACgkQQbqlJmgq
5nB2KBAAhB5KV9jI1+sUlbIoVvWY/eEbLZTwNbjV2Z+KH7h1XR2+qLXzNj8HzJEs
xVIfdJtAMz7+6kF3nyRSX+FLAPFM9YjXYSdZnNy1TwATt9rPJz8JlcrmYVrTE3Uz
rA6wR9Ep/3tqkErKq8cVM/35Mq1ie94egUfpXJeiohnTLzpToj02LMRiQEMqqJYq
HYZI/7aquHBQI7hiJ43EX9vpG4leCrtJOOUCLrCcQI/7+0g+4Qux3jaGF0xUbLR1
kswj5mwsYZoXj0UxTey5eu2XcbidNzIAIr3rxtGpLw998qoAbcFf4INRnMznbW3/
ffyZuEkhTaf0s5vpUYmnyoXeQZhPYqCB6zXbW9XPqdGRC/lPvbkTJypUMkzqe4Oa
APjutKs96mdG6lWsQ0ySysJmNiK8UHvyfhV/wpWch28c3InHS9zk4aiAzJi0VUNm
0M5wPn+m+0Wx0GX1O1uszzeCGUxImBtlzrf7JLO0CNAK3bfF6AN45TSTihPDITRb
sIXk47eF/G1AxM3NANKhLkqmy5nLMcPzYWaf2l2BVDjOLyRYSF4tb9b/3qCG6lKf
Kd8lpQCm5cXXSQwVRt3RtLZHSi11k9QeTJUQyYGelzigcANddbMxk2dZJfCdY5Wf
Xd4kzxB4pNeskB8t4D6bFnHvILN8kYzAB78abiDdloJ/rVMSkh8=
=8iw2
-----END PGP SIGNATURE-----

--=_meinfjell-2089309-1732033094-0001-2--

