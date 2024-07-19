Return-Path: <linux-man+bounces-1491-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 529B193785E
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06AF91F22C58
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA2279B87;
	Fri, 19 Jul 2024 13:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6wfKa8K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAD6143C54
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721395328; cv=none; b=LM9EBA/F5/YrlBNsrx5YpfmDVyBs04GbeldyvsdiqCtNIqXRoc0FxVbLnIb+mWpRQaC6LSaLHbbv2R3Im6ljLgibnrPFW/yVIPCMSSrfsx6asqV/R4QL75J6XdB6UnEic+kXJGQynx0NCt80m9s8x+ZM7+leAW3tLcg8JX+TtdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721395328; c=relaxed/simple;
	bh=o7x+lsPgogLMbX2DI6byVgvmlWvkLvCK+x2M0gQNjHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dXeIVF5GIWg6N9K4a9os6qtLr7oyWXpbKepmTP+r8eLH/EUvV0axKgR6T7eQIK4ya5iw9j6mMckptMR2X/+HZfsioqVE1sgKZGEiOlKGiDvID6Vw0SQJAv/BLn8HEXjwsKErfZeUTxxETtZskWDVL5Qpd6Ao8VR7lQ0eLli1XTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6wfKa8K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3481DC32782;
	Fri, 19 Jul 2024 13:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721395328;
	bh=o7x+lsPgogLMbX2DI6byVgvmlWvkLvCK+x2M0gQNjHQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B6wfKa8KMAUJ623s4xbUMI5zmXkXhm2KGMLYfzWAaDVeq3CEkCiutwN/zgr4lhSY1
	 3yJZGfX2jOWAL4fUwXKBV/BuZvHn9UdniyOMyFcrKwmP57pc5lN9KhCY/9df9gfU1X
	 pU8EKjD7V8ti+4X0MIwt470vVvCzn6XNl5WOAud2/F7scEV4xMoIVU1+6SDnxUtF25
	 oOquqXOCf2bz8vQgUqDdS0XuB/kbJKNMZCKDjOD1nhznUEv1Xj4k+OV7lBPFYNR3Yb
	 ivx1u/Me3/iPeS6Cf+/t7QzZgKpwIhl0r37FYEm8Yoew8OGjmyPWd6tnKjtakFsQqF
	 P88prZZvfZLlQ==
Date: Fri, 19 Jul 2024 15:22:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
Message-ID: <ns6ysdg44jhh3coteaucwhcb44wprpdmfxztgyht7ms3wlnpfi@vhnazau4akek>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-2-gnoack@google.com>
 <bdtipbpybyunclnmnw5o6si6ojkp4wht35cnnu3i4b5keg2lnk@m6bn5i2xr7fl>
 <ZppneYlIzBRYAwga@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ybnqdcddpa5rj42t"
Content-Disposition: inline
In-Reply-To: <ZppneYlIzBRYAwga@google.com>


--ybnqdcddpa5rj42t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-2-gnoack@google.com>
 <bdtipbpybyunclnmnw5o6si6ojkp4wht35cnnu3i4b5keg2lnk@m6bn5i2xr7fl>
 <ZppneYlIzBRYAwga@google.com>
MIME-Version: 1.0
In-Reply-To: <ZppneYlIzBRYAwga@google.com>

Hi G=C3=BCnther,

On Fri, Jul 19, 2024 at 03:17:45PM GMT, G=C3=BCnther Noack wrote:
> On Mon, Jul 15, 2024 at 06:13:24PM +0200, Alejandro Colomar wrote:
> > Hi G=C3=BCnther,
> >=20
> > > Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvemen=
ts
> >=20
> > s/Wording improvements/wfix/
>=20
> Done.
>=20
> > On Mon, Jul 15, 2024 at 03:55:50PM GMT, G=C3=BCnther Noack wrote:
> > > +.IP
> > > +This access right is available since the third version of the Landlo=
ck ABI.
> > > +.P
> >=20
> > Did you really want a P here?  Or maybe an IP?
>=20
> Well spotted, thanks!  Done.

:)

>=20
> The de-dentation is only needed once the paragraph talks about both trunc=
ate and
> ioctl operations (patch 5/5).  Must have happened when I reshuffled the p=
atch
> set.  In patch 5/5 it becomes .P again.

Would you mind resending, with the minor fixes and the RB tags?  Thanks!

Have a lovely day!
Alex

>=20
> > >  Whether an opened file can be truncated with
> > >  .BR ftruncate (2)
> > >  is determined during
> > > @@ -97,7 +100,6 @@ using
>=20
> Thanks,
> =E2=80=94G=C3=BCnther
>=20

--=20
<https://www.alejandro-colomar.es/>

--ybnqdcddpa5rj42t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaaaHwACgkQnowa+77/
2zLZeQ/+Kx3bDS4DsdBvEU+YdB21S/QZJNJkvdzk6RfFaR8XafpUKzGNXg1yCRLU
cAap5K2r1FjmYBtaQmpDKKpix/3UvGTJNsbnhMQwZByJECyceCnGh+3ycsLEWCF+
+6H7ygTG37yU60qnbj9StWClTzmUGWBEqL1Lzc5CIUMwn5wrSm5KSWpUI8YmAmrc
tdn9I9FwrAK8qlHKVD+AYwvwzpdhSUR4HSk1hLeRpmpVeKAt33AzyT2XSCFVelIO
+XTivdy3rlDuK1gM647Ksha9bsSf1luNxlZxJmLdavp07YkxGb5Fi504f7Wg5cKb
CfzRn0rCWDfdMyMD5ZJmNKvzN35E/mSNN/56qb0c/rx+jElTL9t1p4SzUTQFmag3
jjiy9jlWycBj+Krl6QoBnGy++FzBORIwkaM+8/nDLaCT0f+svOQVWygYTyyiIkqQ
tSNUt5Uz5z8lJqhXOTBBY7XdIRVGiFwmBOiaRhGsvWB0KiVR1K+89Tv1DEwtdKW5
SuWWsD9qlsaCsoeOuWxeTCi/aJBD7ppwixOTbrHBv6h4STTe+E8/D3Oavn1h2rP5
1i3TTQoY166irYisGBFvXne6TFqYHF81QHGA28VBJ0i3A7uKxmHKtPngh2aeyo2S
6hW7Absj5BJENoWNxZggvP1FzHiW300ftAvsRdOOiORFSQrsYws=
=MqmY
-----END PGP SIGNATURE-----

--ybnqdcddpa5rj42t--

