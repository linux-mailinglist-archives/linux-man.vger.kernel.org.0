Return-Path: <linux-man+bounces-2747-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 573CBA7C504
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 22:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C9F03B232E
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 20:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBC4219A95;
	Fri,  4 Apr 2025 20:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1ji5Jnr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25CB13B2BB
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 20:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743799000; cv=none; b=l72DtS5Xk7afkpWpV1dwz6AsHsTQ3uBP+bRA5jc3VjfHLjqM3Wp9K/KsvBWaSyhU7e26qZ5r+qtE2Q44V4NakJbtCsWWiCUNUZ6yqrsDMQHOkqQ85HA+GAYaKww+TcEEL8IM8z5JN+YanmMBfJw4z3xwaw0ktG3DQFFY4pMk9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743799000; c=relaxed/simple;
	bh=6a7/lhGEKz0uvrgCwgtn+JnBXcYTxULTxU27qKJI924=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mX2xfdM9RTDjluwCV4qzKHwJOpX9HWGmE6bN57ZJrNZSdcIGqCLsdewy8cvgmvqB1M4HmCxMkGgLcftgYXjuieyUfTNGctMkZMNKXqpSj92/+0Y+l8gtC7r4WFvW62HggyRLKybpVFJAUJWdmoDtuzEegzj9IrSeq9+yVEQlxoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1ji5Jnr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72A86C4CEEB;
	Fri,  4 Apr 2025 20:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743799000;
	bh=6a7/lhGEKz0uvrgCwgtn+JnBXcYTxULTxU27qKJI924=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c1ji5JnrZWSLzi9KyO1vmmkeuWGPCSm1O+jxTZOnQodlEON5sb+S74eqUJcXyl7Z0
	 vF80I8xC8rGIZhIjhqeBEvxc5qd3yjpCJ3Bclmf2KJu0BoXoPhJTbIpDRbJPQrWcXe
	 HefvGuObYvlYfvrNinz6BR+srJHUsQAR/YDxxaThjD3N2D82NryLEDIXSfBRfGEVTC
	 gYnvX8NquyBXky0EujZfvHWupQG/byvwHne5SzSK+cXnhafD6UBqAhCiRhW31SjZGX
	 napGHnnelDhc3/N9IjsqIf/qqyOu4P9dnDq5uu8NpLeWsYWLKaC1Np3hb3zF7svaVf
	 boJmwGoI60AOQ==
Date: Fri, 4 Apr 2025 22:36:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
Message-ID: <r2hnf64fxm7nbw437kqpo5szmatsmbsgbqkorfcefzygz5xg5e@x724wrtlfuyb>
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
 <j7tvkh7zng66klagg6zz5sbsvqbmzpcnkub6vcniqrudlzli67@n2xkv4wjvzp5>
 <CAOQ4uxj0W8KctDedwz+6WDOqvjezh0CbroERk-Cdx-P5zYWnxg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bp3ug4w57jw6i4ig"
Content-Disposition: inline
In-Reply-To: <CAOQ4uxj0W8KctDedwz+6WDOqvjezh0CbroERk-Cdx-P5zYWnxg@mail.gmail.com>


--bp3ug4w57jw6i4ig
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
 <j7tvkh7zng66klagg6zz5sbsvqbmzpcnkub6vcniqrudlzli67@n2xkv4wjvzp5>
 <CAOQ4uxj0W8KctDedwz+6WDOqvjezh0CbroERk-Cdx-P5zYWnxg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOQ4uxj0W8KctDedwz+6WDOqvjezh0CbroERk-Cdx-P5zYWnxg@mail.gmail.com>

Hi Amir,

On Fri, Apr 04, 2025 at 04:58:19PM +0200, Amir Goldstein wrote:
> > Should we use wording more consistent with other paragraphs introducing
> > FAN_REPORT_* flags?
>=20
> No, I think that is fine as is.
>=20
> FAN_REPORT_MNT and FAN_REPORT_FID are special because
> they "allows the receipt of events..."
> You cannot request FAN_MNT_* events if not initializing group with
> FAN_REPORT_MNT.
> You cannot request FAN_CREATE/RENAME/DELETE if you did
> not initialize the group with FAN_REPORT_FID.
>=20
> Other FAN_REPORT_ flags do not impact the set events that
> can be requested but add more info to existing events.
> Some add more information (FAN_REPORT_PIDFD),
> some replace existing information with other information
> (FAN_REPORT_TID) and some change semantics of existing
> information fields (FAN_REPORT_FD_ERROR).
>=20
> This is why I used the phrasing from FAN_REPORT_FID
> and why I think this is fine that the phrasing of different
> FAN_REPOT_ flags are slightly different.

Makes sense.  Thanks!

> > >  .TP
> > > +.B FAN_MNT_ATTACH
> > > +.TQ
> > > +.BR FAN_MNT_DETACH " (both since Linux 6.14)"
> > > +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> > > +Create an event when a mount was attached to or detached from a mark=
ed mount namespace, respectively.
> >
> > Lines should be shorter than 80 columns.
> >
>=20
> Sorry.
> Could you fix that on commit?

Yep, no problem.  I was going to amend it myself, until I asked the
question from above.  I'll amend.


Have a lovely night!
Alex

>=20
> Thanks,
> Amir.

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--bp3ug4w57jw6i4ig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfwQs4ACgkQ64mZXMKQ
wqn7iBAAre6tX9nvTNVJiOYtYu0IPxXBGhmHNw8FAntcj7dbKe8lgFmeDdLq+j7d
WMvcaMGTXJdW3WUumWRuzywKIMjZ3mV1AUosxBHJvshHx+XMX7rgxanqCDDyJ1Px
+ASMC3jYIB2NfOB+pUyq+8iHJTs0ZdkE8LvVjoPjRoQMseKT/PVTq1uxP1T9u6hA
LSjRSdj/Tn0nWh9hPW16QB4uRHc96iPBW08WWmy6nlskHCMVcp7eZ2V/74nlhR74
udw67OqFp4OSJwvEl4m1/b9xmFkcPNEPAd92/JkrlI9A2UtswUS7D+GNa3rFwd8T
bArAdHpD+63b5TYVwQeDzTXqEyxd3E3Ffedvo1JHXLQV56u64CMkKizgG/PaGx1p
aw00ZG5tgV7Z64ux32FbyDttj3aCMQuUwO5iY1hiL8eDs9v1PBIJ7Ei2IPyX7fmg
Q28kHtnxlbfFLKNCHWcgqoLwx6fo7kbMqYLCnBlK3voDyROyAZngQ0b2rLfhUUx9
+R45EsruTRJxAj+VG7VEDhNnS8WpfAVm7bw2HCm1Jt4GZaKykw6FTpJu8Yse3YSY
LF0+KC19uuspCQMyce2Tdvy6AC0xJ95pu4fhLC3TJpZQFH7LqrzTez2/kx0Ko2of
zJ8XNtc0NIYbYvUk8pjvl0yLB3eYeyQybP/Ey/95jT/X8EkV1QQ=
=oOAa
-----END PGP SIGNATURE-----

--bp3ug4w57jw6i4ig--

