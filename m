Return-Path: <linux-man+bounces-4828-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8117D3969F
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 15:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9AA3C301050B
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 14:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6F3309F13;
	Sun, 18 Jan 2026 14:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD0OP2+G"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E9327E05E
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 14:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768745316; cv=none; b=eBL9i/Hv5NQ7yAoDn/lOsRwO07sQg5oT14zH0qfo8LLlcutUPxsU1I6FqmQ1mldUI5AEjEahNJdwr4nC8uU9+jETxwWdxwpHEw5mZimBwW+9j8m627uMqNTvd8fEdjTEpaihck46AUBHOdroqWZ0Ujkei88re8Q6F+eRMtKCbh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768745316; c=relaxed/simple;
	bh=cGDvwPhnb+TdHYJxTtsBrOQF5p7ea5jX+B9wF8IOe8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZPBZlNt5WbzBRqtj075L4pAcbrlpwj2V3Bo3k4/pOoAdbWS7pIu8k9xniMsyW+iIZwxDTuC6OC+G3XDFkHUwJtHTLcq4kq6GoAmDljdPHiFi23IqvKtoi5ww5M4nMrMQNTAHCqs8/7pM5OMXb0q1wFvIWKGGQEJQJjfOnz9FZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD0OP2+G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF08C116D0;
	Sun, 18 Jan 2026 14:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768745316;
	bh=cGDvwPhnb+TdHYJxTtsBrOQF5p7ea5jX+B9wF8IOe8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UD0OP2+G3S/3F4o8IHok8x8iANm+5SkZcGl8KG/Eb7yii+/rToUDM/FRrPbLJbMJC
	 +Hmpnfb7s22B85h5OVfpIF+uNM1oYJT3dQx47DIK0LN/V65mj07Sg+u4BVahaL5WZ2
	 thBDa8Ds8IhianAddW28c9uzaKU8XrcZIgMnTyOGHh1P+i/3Jamhhmab4vz22JDZGA
	 omW77aRdxtgCEn93CLkx85tE3aJQipcMpCWNa4IkmzRC9xT4aTInxh1QaYGDwORHg3
	 z7iF0AKjT7fiNnQOBnzmPS3c4NqD1xMsj4V7F6bpiK7P8MBY87iSrBpgJ6iU+mPXuq
	 xVu31xRex92VA==
Date: Sun, 18 Jan 2026 15:08:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man <linux-man@vger.kernel.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWzk8dtIvNSdVlkY@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cq26tc2vmxw4jfpz"
Content-Disposition: inline
In-Reply-To: <aWtmabtT1dFTBCI8@McDaDebianPC>


--cq26tc2vmxw4jfpz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man <linux-man@vger.kernel.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWzk8dtIvNSdVlkY@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aWtmabtT1dFTBCI8@McDaDebianPC>

Hi Seth,

On Sat, Jan 17, 2026 at 10:37:36AM +0000, Seth McDonald wrote:
> Hi Alex,
>=20
> In my next patch set (for system calls), I've generally been ordering
> POSIX.1-1988/1990 relative to BSD and SV according to their release
> years as specified in standards(7).  Which gives the following relative
> ordering between SV and POSIX.1:
>=20
> SVr1
> SVr2
> SVr3
> 	POSIX.1-1988
> SVr4
> 	POSIX.1-1990
> SVID 4
>=20
> And the following relative ordering between BSD and POSIX.1:
>=20
> 3BSD
> 4BSD
> 4.1BSD
> 4.2BSD
> 4.3BSD
> 	POSIX.1-1988
> 	POSIX.1-1990
> 4.4BSD
>=20
> Because many of the system calls I updated listed SVr4, and some listed
> 4.4BSD, I want to check that it makes sense to list them after
> POSIX.1-1988.  In case, for example, SVr4 is known to have influenced
> POSIX.1-1988 prior to being officially released.

Going back to this, yes, 4.4BSD seems clearly later than POSIX.1-1990.

SVr4 seems contemporaneous to POSIX.1-1988, so I don't mind whether we
put it before or after.  I think I'd put it before, because as you say,
it heavily influenced, even though formally POSIX.1-1988 seems to
derive from SVr3 (SVID Issue 2).  That also puts all SysV before all
POSIX, which seems cleaner.

Let's try to specify the order in the format you used above:

3BSD
4BSD
4.1BSD
	SysIII
	Unix/TS 4
4.2BSD
	SVr1
	SVr2
4.3BSD
	SVr3
	SVr4
					C89
		POSIX.1-1988
				XPG3
		POSIX.1-1990
				XPG4
				SUSv1
	SVID 4
4.4BSD
					C95
		POSIX.1-1996
				SUSv2
					C99
		POSIX.1-2001	SUSv3
		POSIX.1-2008	SUSv4
					C11
					C17
		POSIX.1-2024	SUSv5
					C23


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--cq26tc2vmxw4jfpz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmls6VoACgkQ64mZXMKQ
wqlOeA/+MYav9yp1y2382xGJ6qZ50UwuY3JKJJfaONIZuq20+sNnyppLBnl3RE/0
8+pjwWcFIiryjJhXibj7WMJ0XZ89aXZnxFvVWr0f6qec5j2PzDi/nVKqGXrQg2ra
lq33y8oUmrS42T3Wlf6zEytnXx2tCXExIrMQqy9JZqHyBUdAZko7R5oLWlSDGJ58
PFBsFyk0GrVBTf09ykB6vkeP4LHH0A4DX0PUQdIGeda/fQdQCMbckrJBMhkhHB5J
xMBddkqIEwRV6x/Z4bJtzVKEfFEz7+uzCUE6mHEdEGNiCx2Mh/Kmf7UIfPp5EYD2
qyjcD3cId8++OXGIL9ZAVCRK2ZtyIupgcDUv9YYTXe14mu4QHKmpztNJ9N39tz7R
TKUD9WC4pzhvlzvXuS3MwKg1kYlvd5ShAGugptoRvP1Goj5TI9xbXZv3aLm3ACx5
zvIbovU+YDquwUIpqG+5rTkiCFfIQgVsBfnUZ9YC1VHHdnqLXJlbp9afOBaqSSHj
WJMHk/KJasGHk1HiBKAbgP/4UrRSzuVMXpbKcJoU4T779HfLPucxIXUTAScE+vZf
WsahaMwxI1s1FMbfAO/09PgRoHswhoNQaEq7FCLSCFYqpDswTVAmm0RSvk2kp/sF
5TODf3tRfg49b40Dm3IjXEwOOmlpv/RCM4yW2pYinF4Hse93bfA=
=jniD
-----END PGP SIGNATURE-----

--cq26tc2vmxw4jfpz--

