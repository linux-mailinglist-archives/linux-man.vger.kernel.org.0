Return-Path: <linux-man+bounces-1565-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294E942DA0
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 13:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3543B22A5E
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 11:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4D31AD9F3;
	Wed, 31 Jul 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL/5/I89"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904641AC428
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722427102; cv=none; b=M7MIg1+Hh68rmnPFAOMrOQOsnOBNC7Rk5GDDDsO1zPmBVPMMIrxfnteLNruYdbH7ryRVv+2Qi1o849qaGEV3W6cBdxvZCbr5F5wxUslbIBCX0BwjDFET0bLnGPKnE77i+YXYc6wYdGm5xabnG2s5wEFl/jKp4/ATPVMNeK/Q9qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722427102; c=relaxed/simple;
	bh=9hw29dfFfQbWb4jGv82BevvLfKu9qnkTh86rVtAvO3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bGp9WorOo8FHVC7P2lxVvlh2G3IFIZ5vG4OxfVj0fDkUln17Imaov0Jb5D8McivtEXsj+yJirjfm1lQOkrzF0xo7e2Gm4m12ZHwGXmbbYD0VaIONrYUOgmVb/rWYLRo/33SwOCF08xtnMLzubN8l2Wq9kHYNmZ7Il35it7WfKRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL/5/I89; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F7B9C116B1;
	Wed, 31 Jul 2024 11:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722427102;
	bh=9hw29dfFfQbWb4jGv82BevvLfKu9qnkTh86rVtAvO3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vL/5/I89w0BaCfGu/hvyIXU5srPCdyB5o/snHlC72NurUNVuE2N71nPVUIUfT47ho
	 KHyhQW3+UQbhllforqeyeWZPmUF62DRUrEzy1yu4nvopgHSi/WV2TdYagoJRZVcf8D
	 v+xhQFTUKjCjitVnjhUGXrOtwqnfms7hNKc9WKNGCj3G3SUJwdLoT2UoodH8El0ybo
	 GMBfXXHBpcBgiisBRmNwCAw5DcqhDUJghjIA2BqcgtDWXrodj2f3TyVGlJJbnWcxL3
	 DTnGuGBXkq+VykEPizgoqR79k+nNGauiXWpPd+eRGe7AXUTgNgGesk4lNVUWjHB6ZW
	 cT8MdljcwN7KA==
Date: Wed, 31 Jul 2024 13:58:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
Message-ID: <je4a6nlaizc2556ul422wro3zs4gwyql6qfw6gberitna3t3m5@z5xlxcun6j2y>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6yro6vxhiclozbcn"
Content-Disposition: inline
In-Reply-To: <ZqoixhC_jvuiK0m4@google.com>


--6yro6vxhiclozbcn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
MIME-Version: 1.0
In-Reply-To: <ZqoixhC_jvuiK0m4@google.com>

Hi G=C3=BCnther!

On Wed, Jul 31, 2024 at 01:40:54PM GMT, G=C3=BCnther Noack wrote:
> Hello Alejandro!
>=20
> On Wed, Jul 31, 2024 at 12:58:51PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 23, 2024 at 10:19:17AM GMT, G=C3=BCnther Noack wrote:
> > > Landlock ABI 5 restricts ioctl(2) on device files.
> > >=20
> > > Closes: <https://github.com/landlock-lsm/linux/issues/39>
> > > Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > > ---
> >=20
> > I've applied both patches; thanks!  For the moment, they're here:
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/log/?h=3Dcontrib>
>=20
> Ah, thanks, I did not realize you had a separate cgit running there.
> These patches look good. =F0=9F=91=8D

Yup; I use it both as a staging area, and as a backup of patches to
several projects.  :)

> > Did you not add a CC tag for Konstantin on purpose on this patch, or did
> > you forget?  Should I add it?
>=20
> It's fine as is.

Thanks.

>=20
> I CC'd Konstantin on the first patch, because he authored the networking
> features, and their kernel documentation, which are being turned into man=
 pages
> there.  He was not involved in the IOCTL feature, so on that patch he is =
not
> CC'd (but can happily comment, if interested).
>=20
> Konstantin: I would still appreciate if you could have a look and sign-of=
f on
> the networking documentation patch as well, since you are the original au=
thor of
> much of that documentation on the kernel side.
>=20

I'll leave it for a few more days there, to allow Konstantin to review
it; I'll push to master in a week or so.

Cheers,
Alex

> Thanks,
> =E2=80=94G=C3=BCnther
>=20

--=20
<https://www.alejandro-colomar.es/>

--6yro6vxhiclozbcn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaqJtoACgkQnowa+77/
2zL6txAAmWxLc9OpfP35QzEElB7DiPizL8RZXlF+uXJ+6nXaPDxXBWZMAIZ4MHUQ
ymhS6eiHrq0726GhLSQvyMR3JC8CLSHJr/3E42/G75Ipr5Fntsl8lO9yHUGz0Qip
RsUJM0xnMiqrOOUWXbTzaE1hhcSxkEkduOaDcAtaRTdevncQOzYq8n/THLpzRzz7
qR4Dp62HC9nTKsbl08I1Tuax0YVPSqtNRi5/Kqvkovydp2i0HGvr1PyHljrFJvck
mi+2WkPZ4CZdMj2idaY+WOy57v43tuOoikgQklUbZWBWDoPx7xTr+4247MdJGry2
qOXhy+hQ9xxG7igXh/DnYIAPoNGf5goLtcE6eV164O3cy1sBBRkDCRXEKX4an4Uq
OdmGKYBuB7TU4TAiTjThql0qdyQG0JesBUAkFLQO6rSNzmvPqypegspThvA6UUN5
meVpOoQgNCBIsVN//0UztlYCabYTaTda0PJZEkQlWiUsqoNwOjv+a/uvEMWsBDDW
4thl5Wo+LnAssucLm9J8ilqUUbC5kTJ8D0xSHEHPV/RvjOMtvozzdSnWXgAswRoI
/TsDov+xJQ/5UUL1GRfRxPnbrY/iH8DcUBB1dvBS4mv61GBM1ODjjdl7OyVe9WyC
nx47NpsHpzlscRCmCs7X/q1GuVtg3r8GqWkDZDfTlAK5X9nzzEU=
=MUR/
-----END PGP SIGNATURE-----

--6yro6vxhiclozbcn--

