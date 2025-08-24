Return-Path: <linux-man+bounces-3689-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A3EB3316A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:23:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8022E179730
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14ADD21ABAE;
	Sun, 24 Aug 2025 16:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fxMDOm74"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4578B17B425
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 16:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756052621; cv=none; b=eBNADzzPrlLIt6vlFBUijG3hh/gM7PLVt7sWqcK44vG5kVw/wIkXPpBRY1x6GHwI9si/bZf81aXjHEqyaNqJl402ljmqXL1kqeA+MvVHDCpF7W54nmWzYJmOGCBYDR4mAx4p6jQQ+LbO3dZxgn/O86DD7GNbij5f5DxZ7qTG6lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756052621; c=relaxed/simple;
	bh=OQZSET88m3A0A+Vlcm6RqIBnzfnqFvYCvw7w+U2uhdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qAZbsdbW11GRJciiOdAEzfCLMVf/tpGipNkTB3x4frkMNBE9ntCSHMh0cK37kUBXKnnptEuDidgTn8y5iDRcb+x0cunlHRbsVWdDJg9rt4b2J2rUF+id52uFGa8zi1y1HhEKxvEm5J7nH7WTfmQ5dfDVp36PkNuwRpt3i4XRYYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fxMDOm74; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756052618;
	bh=C6iQCYhZFMUbwhYkWz41hpe2ecuUPR/BMdUx0nqtxVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fxMDOm74qPo+7mZm/1HmMyfJO7atH2BIuZWJjS7eZzDYI3P4FK7GLQA2BVfqkYuY4
	 rXcXfeh5tePuN9CX4tJh/kJmWk8+lM5fAAfirVrd0NwUz9aa9J58IK6e32F2PBImpo
	 MxhQNuFmYJtR5XF3/xaBzTi5NMVaz/Z108xTUVlDTZxIsGeTRBukmIEBDl8O8+VjQV
	 /WwAnmPyFF/Ecefk3/WErkl0vRDEWrLVqKJehitdZ4GLONM+jIWahRNLW+G+CPwPde
	 ib4LpyXu84ou3v4Rp/FDHOnUC9/UKYWBpTEMLopL0pGab8Fe5Joj0Jyt4fHKwYsGHV
	 6utPc/RwgJmnw==
Original-Subject: Re: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002011F.0000000068AB3C8A.0013A43E; Sun, 24 Aug 2025 16:23:38 +0000
Date: Sun, 24 Aug 2025 16:23:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1287230-1756052618-0001-2"
Content-Disposition: inline
In-Reply-To: <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1287230-1756052618-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 24, 2025 at 06:05:31PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:32PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    B<=E2=80=A6>int datalen, int buflen =E2=86=92 B<=E2=80=A6int>=
 I<datalen>, B<int> I<buflen>
>=20
> That is on purpose; it's a list of forward-declarations of parameters,
> not the parameters themselves.  To distinguish them from actual
> parameters, they're in Roman.  (Note the semicolon at the end of the
> list of forward declarations.)

That is quite confusing, at least to me as a translator (not a
programmer). So they are neither the function themselv (which is in
bold) nor variables (which are in italics)? And the type (here "int")
is printed in Roman on purpose, while it would be bold otherwise (see
below, for e.g. "op", the type is in bold).

And in some pages, only a few of these are actually "forward
parameters", while some others are not? (But I trust you - if you say
this is correct, then I simply align).

And: The name, in this example "datalen", comes from somewhere else
("forward")? I'm asking this because I would like to understand the
implications of these "forward parameters" compared to normal
parameters for translations.

(Or do you have a reference, which explains this, than I will gladly
have a look at it).

> Have a lovely day!

You too.

> Alex
>=20
> >=20
> > "B<int res_nmkquery(>int datalen, int buflen;\n"
> > "B<           res_state >I<statep>B<,>\n"
> > "B<           int >I<op>B<, const char *>I<dname>B<, int >I<class>B<,>\=
n"
> > "B<           int >I<type>B<, const unsigned char >I<data>B<[>I<datalen=
>B<], int >I<datalen>B<,>\n"
> > "B<           const unsigned char *>I<newrr>B<,>\n"
> > "B<           unsigned char >I<buf>B<[>I<buflen>B<], int >I<buflen>B<);=
>\n"
>=20
> --=20
> <https://www.alejandro-colomar.es/>

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1287230-1756052618-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmirPIcACgkQQbqlJmgq
5nC9QA//WTfTEXGAIXkjc4kGWr8lnOJ2LSv9rSUpYikcWTVdlbu2GMotSzGhOpl5
TSDQEkUfG8iPZcSI1kw7yOdBGF/DJ8YwIOMOTD2P2PboPGpCt54RPsEGOBNchN/W
YX6+H2F8KyVSr58Egaz1xNZvzBuJrwaiFMpnxGL2OSsMupAgX2PY5OWc0ykewicd
xJqZx6OopkVmiEWHCxBs7TzSOcerhGbzTuIXElc5TeKvrWTaA8+Aw3OzgIfopIFb
yf89jusxaOAAb/D947RYCtxlEwDBDRzYxXyyr3/8ZWP9XkHIW6PZxUk1wmGtfNbI
aUpmVvRsSbz/I8fSDkz2j2ehZpzePMTJdCSB5mhscZUX5RynJhw2DB6J4y4ZVL3D
CphSGfN2bf6sXjVxjpMdiIrl/2KaU4HHM7V/kQxLoc7yNIpByhwmMxnElXsPkdno
Bv+CjltKhC3vmXCl9JGZCQjCL4q3rYftGm7nChpEIYQbwhM/jExAK4vXTel0evxq
E9vhvHdEAYDLrX3fjFMXxLyCPsU6IWFdtiFM/Zl7axbSQHNNahEnYVJk4A/PLtbX
rrR4Wu6o41iJkmPwPnmFOPTrMrN3JGXQs9kYBkbsy+41UTexZhnsOMpw9wbLh5wz
YngAblIcHXktfRc+ACbhcsn09KxclagDRgyxoSRjR2ACIzXQ9qk=
=vDxV
-----END PGP SIGNATURE-----

--=_meinfjell-1287230-1756052618-0001-2--

