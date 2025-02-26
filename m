Return-Path: <linux-man+bounces-2519-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23111A46D4B
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 22:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2431F16B6F6
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BD621CC54;
	Wed, 26 Feb 2025 21:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e16L/ur4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4AC15852E;
	Wed, 26 Feb 2025 21:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740604879; cv=none; b=R5BwavDgUA1ONXeFS66dP1GMel3tt7TwY0l01fVOd47p7cg3rML0znvxPvG/FsQOgOwhO1qXSAX9+2aFnwdIUgwq+h9eELJrVJnN9o5Gt4ciG1dyHVXIGgTZ2M9habp8pD28349PjB/PAwhOgM2n5J0m5AQpiIw/vuZUHdWz+XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740604879; c=relaxed/simple;
	bh=zLo7wWVaM5R8qypum2+FvRZ28uvFQWeV7ih/pD2ZNV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YJUkh0dLAdsLmOKGCRoONNVkcmzIjFlo9yl1zGcuqb2KUV/eNHR6jgpn5yQMfbh860thQOzzPqJgPEcK1BO3k/oLz3etoXxLVIjnhREFbYmbnQkcuDMouCVwt0b/39gdzlS6AZa+fHOTIu/RYmCSM0KH3Ysqk80b67jdq8f9Dk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e16L/ur4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9AC2C4CED6;
	Wed, 26 Feb 2025 21:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740604879;
	bh=zLo7wWVaM5R8qypum2+FvRZ28uvFQWeV7ih/pD2ZNV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e16L/ur4K3bkOEnBsErwPNPTtlNEC3WH7lYw/yGopVRPS+rxhcxlW02Mn9wjMAdMn
	 N3E+EEZZ5m5tbpE+cuWJnBRkHCHuqQV1Go9KORr2DknI92mSatdIQ8lcvrSXZlJg1Y
	 YmdkIrcDr4vG4P6R9itnmVwiwNS6/GXM0mpx5+YwwV32sSj3/0Doxkc0BxELPAIcqF
	 TN0aap/rSp3sJBasKEAPyKF9iCjx3JLf/9Wi+rDp3Cc1LoW/No0uq3nuUNwe879hhM
	 oQeZSZqQReq325U4kWyjpduKB4pTpDD/p7QNcs2IpbdADV/5JHop6ehSpGKkTk4lvQ
	 hfscwbVNLrsPQ==
Date: Wed, 26 Feb 2025 22:21:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: linux-security-module@vger.kernel.org, 
	Micka??l Sala??n <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
Message-ID: <digoltgljbapedxs6bbt7izow344ab34ql5jm3djrivgyeqnrf@7xopiiuzvmhd>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250124154445.162841-2-gnoack@google.com>
 <Z5O44dxg8y-QZV62@google.com>
 <erjborzfvlvlczeahjt7esghr4v3slgxdht6efftekofxljhiq@mkw2ibzvpvsx>
 <Z79-87HoTPM94HWf@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pwaoz3v7mlkui6ys"
Content-Disposition: inline
In-Reply-To: <Z79-87HoTPM94HWf@google.com>


--pwaoz3v7mlkui6ys
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: linux-security-module@vger.kernel.org, 
	Micka??l Sala??n <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250124154445.162841-2-gnoack@google.com>
 <Z5O44dxg8y-QZV62@google.com>
 <erjborzfvlvlczeahjt7esghr4v3slgxdht6efftekofxljhiq@mkw2ibzvpvsx>
 <Z79-87HoTPM94HWf@google.com>
MIME-Version: 1.0
In-Reply-To: <Z79-87HoTPM94HWf@google.com>

Hello G=C3=BCnther!

On Wed, Feb 26, 2025 at 08:52:03PM +0000, G=C3=BCnther Noack wrote:
> > > > +    not stem from the same or a nested Landlock domain.
> >=20
> > This could be read such that send(2) is replaced by connect(2) on a
> > non-connected datagram socket.  But you want to say that a connect(2)
> > is implicitly executed before the actual send(2) (which is still
> > executed, if connect(2) succeeds).
>=20
> Thanks, that can indeed be misunderstood.
>=20
> > How about this wording?
> >=20
> > 	If send(2) is used on a non-connected datagram socket, an
> > 	implicit connect(2) is executed first, and will be blocked when
> > 	the remote end does not ....
>=20
> I think this would be misleading as well, because the send(2) on the
> non-connected datagram socket does *not* actually perform an implicit
> connect(2).  (If it were doing that, the socket would be connected afterw=
ards,
> but it isn't.)  But we *do* initiate a communication with a previously un=
known
> remote address, just like connect(2), so we enforce the same Landlock pol=
icy as
> for connect(2).

Agreed.

> (Remark, connected datagram sockets sound absurd, because there is no con=
nection
> at the network layer. On datagram sockets, connect(2) only fixes the dest=
ination
> address so that it can be omitted in subsequent send(2) calls.).
>=20
> Rewording it to:
>=20
>   A sendto(2) on a non-connected datagram socket is treated as if
>   it were doing an implicit connect(2) and will be blocked if the
>   remote end does not stem from the same or a nested Landlock domain.

Sounds good.

> (P.S. I also replaced send(2) with sendto(2), which is a bit more appropr=
iate in
> the middle paragraph - you can not actually pass the destination address =
with
> send(2), that only works with sendto(2).  I replaced it in the third para=
graph
> as well for consistency. It still makes sense IMHO considering that send(=
2) is a
> special case of sendto(2).)

Yep, that sounds great.  Thanks!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--pwaoz3v7mlkui6ys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme/hckACgkQ64mZXMKQ
wqn5Gg/+NrZ5+QRVvNMQkETQa/XnotfMq4jy+htSVjrsPkfJngllBOsHYSUVVs1Q
xiGTV/HMHyEjQMQYmFIeYmO3yZXlSkmR20uDiovNJW/kHRDOpq7Qn6uqvJbwnMCW
h2DoDJi0Unv+/vcO8mrUbvvgAUQLMa6Ld2wCU5I+J7m6BqIyyGKeVz3kpgYJYBX6
rXwhd4eKlcOFLTs+OlVr+FhmgoS3kzCrMP1McQYsbEFEKrspGjuJP6dELcgvURcA
itO6498fbR2tzzpclj6cy1o3Jr1p7dFenxTFzkA8hbnq183iI6WZ1LgK9mBaZQDa
k1/8s+PeBKP7g5a6LtUzhK/UJJs4rSMIdtVM0tX/LOZhs83OIxP495uguzlsWXkD
Oau++uPbLqMet0VmFCZcJtq6xV1YvExKXBDmZFMxRzYu5OXfx6K8n0y7swi0HW5G
ZBnCAC5ly+0HE+LOyLdQGJKAObNgxMrObFlkPF+zCByAYRYH0Pxmw4Db0FqJSWz+
a8daLLpic/VUc3gPwRZAU7nA+x0kj201c8/iVbG3QvREr8ukHqoM+81aPLC5pdEL
n30LjgREKStz7JnAoLhdwoqYit9mL6JoifNEf337hRwvcip756mSM/xQ1lJ4SmAx
UqBjziqnYhe3KvLmnBtgWyTiIWlDhHkw9vPl7cEi5ojSh+hAohE=
=pVPd
-----END PGP SIGNATURE-----

--pwaoz3v7mlkui6ys--

