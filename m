Return-Path: <linux-man+bounces-3994-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C68ACBA78C1
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C5CC3A2DCE
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 21:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1434222127E;
	Sun, 28 Sep 2025 21:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8yHPNio"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C548B5227
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 21:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759095249; cv=none; b=ZdBl4lA3nLi3m5GTASbGFalRrjdcSYPqi6WUxNo05Mt48EncrkZBwWaj6Bdmld0K33xAZt2ZSeUwvX6hWC/RCtOgvxtH7M2eXel4bukcuuMTIsKnyfIlY87yuqKJLnKaxx/hA7ZqlaGEGdOQQojepLq8TfcsZ443vp/8AH2bSyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759095249; c=relaxed/simple;
	bh=rAGC51iaUVu9NRaAcNH/2ek+LtHZTDXdMWKWvxWNuF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXElGXRw+d7Nv7Zk+QR7YnlK95/B8Xki2+uVa7L6RlAgjHmcauypOOWzKXSOn/O/cNh42lMNGk+NSRaBZgswQGfAOt5j85U9C2bEQ4PdLZ8qkbtDv2N4J0XIjlbINqbinfOlfBOfZ9l2isJ2D+2DaPalovSXh3xd/MeWCokrWqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8yHPNio; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62D02C4CEF0;
	Sun, 28 Sep 2025 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759095249;
	bh=rAGC51iaUVu9NRaAcNH/2ek+LtHZTDXdMWKWvxWNuF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I8yHPNio5tt2P32G88j6Pm3D6KNgebbl6b5GBkY0GNcbc51HvwolNpbbHeIelJHd2
	 KeXs6vZKjw8AwdalbwyG6a8y3ZDTeZbFl4L/zk7YY540xVDhAjiOUj6wK8g02tl78p
	 qVpDZ/UOAIL1caMvGZF6o0O9pVS8mEqL7wHiz8cGBC2HlNL1j1/4K5Bfb626xKlg1q
	 nGzkUxNsxrSLZulSOkZs0p4y1qSeuMAaavwTkIHj1w01MQZKHVWB1klFWLRrwAiee5
	 frQGtrDtlHXJC3iVC4zVaiQrtblyEBeuSUzkujmOMjeG8zsNSiy2PADNHrnyIsrtOR
	 Lz1Ml8DnOSHmw==
Date: Sun, 28 Sep 2025 23:34:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Cristian =?utf-8?Q?Rodr=C3=ADguez?= <cristian@rodriguez.im>, 
	libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <dxbqajlyhtljtuqiyzp22gi6vgisqfsok37lagrzsm2x47e3mx@l65vynueagkg>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAPBLoAd8bMrOLjURHRvVW4_eEJYgcA9Np0++YPG1dLJoWfcWWQ@mail.gmail.com>
 <874ismp8rr.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xlftywscpaf4cryu"
Content-Disposition: inline
In-Reply-To: <874ismp8rr.fsf@gmail.com>


--xlftywscpaf4cryu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Cristian =?utf-8?Q?Rodr=C3=ADguez?= <cristian@rodriguez.im>, 
	libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <dxbqajlyhtljtuqiyzp22gi6vgisqfsok37lagrzsm2x47e3mx@l65vynueagkg>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAPBLoAd8bMrOLjURHRvVW4_eEJYgcA9Np0++YPG1dLJoWfcWWQ@mail.gmail.com>
 <874ismp8rr.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <874ismp8rr.fsf@gmail.com>

Hi Collin,

On Sun, Sep 28, 2025 at 02:27:52PM -0700, Collin Funk wrote:
> Cristian Rodr=C3=ADguez <cristian@rodriguez.im> writes:
>=20
> > On Sun, Sep 28, 2025 at 5:40=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> >>
> >> On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
> >> > Hi!
> >> >
> >> > Another thing I realized about getpwent_r(3) et al. is that gr->gr_m=
em
> >>
> >> Actually, getgrent_r(3).
> >>
> >> > is allocated by the function, but is expected to be freed by the cal=
ler.
> >> >
> >> > I didn't find this documented, neither in the manual page nor in the
> >> > glibc manual.  Is it documented but I missed it?  Or did I misunders=
tand
> >> > something?  Or is it just that nobody documented it?
> >
> > It is just not documented it seems, that's great..another footgun..
>=20
> POSIX also doesn't require the gr_mem member be allocated using malloc.

Unless I'm missing something, POSIX only defines getgrent(3), but not
getgrent_r(3).  The former keeps track of the malloc(3)d pointer in the
static structure, and thus can free internally; the user need not call
free(3).  The latter can't keep track of that, and thus it's the user's
problem.


Have a lovely night!
Alex

>=20
> Collin
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xlftywscpaf4cryu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZqccACgkQ64mZXMKQ
wql94A/+OAHm9Vt8fzLdic3uwFApPl216vhfK7dTmj0yjTaHlZczzN5t4ruX942+
mWyoKWIDkESy06CzdIyoMpf+IywCVkI1SZGJcEIbOiJQzvFei5axRxwJwo1B9582
gvYHr5ZO4JT1QDqfqbyeCjZlTthaj593khpqMZkEI2BaeK9BC9gvKSwpRMMSwsEk
iuLjEwxsMXTGpmmivJHz+1FXwXqeduzhcAjh02symP2koIj8HuCaWbn4dTDQLTdS
Q5jrNKbCyS+LbqJ/GM4qdfQW6uLvjufmymuJlPPx57vvoJHxwFJfHtQTqkwE9m6P
AXuzMiS5lcrang100ZMLFE4uQU/SAE7Ri1wUKQ36Y6N8C3AmUeLgGN6w3J9BIg8H
WmzFdCU3+2Qyigxjtm1QZeki8S7ebRto+64CZwVllw0rLR3MhkYUhrCTQP8ulFnp
rL3XKqjVu0hhHojXGLCRsSNskRHy7GfVv1kqQKXmi2QWjIXifxbZZOhAqXF8ihsp
E0YJXzvjgYNoKeE1vawnzY17z6dG8GImvmqryEmcAACKbpc3jIA0Z5pv1GLIc9p9
sMbD6sDh5MhNUPC8bL85dLxqg1axwfYaSMoNoZHBEfr0e7dSX3tvmVIBDdGXcNnY
Op5leF5QMFT5+m7J5F5bxo6Bjbwj7QmTuazXMyKU4En2VvmMLjU=
=hZQy
-----END PGP SIGNATURE-----

--xlftywscpaf4cryu--

