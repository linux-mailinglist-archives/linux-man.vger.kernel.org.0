Return-Path: <linux-man+bounces-3991-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B31E6BA77A1
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 22:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 553BE1783B5
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 20:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE28922B5A3;
	Sun, 28 Sep 2025 20:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njSdAtge"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2761F5434
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 20:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759091989; cv=none; b=Tp+Tz5zRoGYRI5sPaJPn/DmHkjIXQj6Db6C352yih22vSIIaI8Ny3ajEXuHuFZ0oQiA6ONegF0lT154QCMfkGxHqd8aEr2yIkRrPndDC5BXL5uiw15t03etub+FC+ovDMHWMwEi/tq5esu6tZIYvIMkjtqeDOIqz/Kw7xyPgNaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759091989; c=relaxed/simple;
	bh=+gOYQx0yJTclwRNmRVZJaJEHpmHblyeUM2Wyon9bwbg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oSUqKX29QUz2dgKcP1wsJaS5XxMZ3gUIDdBsK8JSEE3tVQjIApGHUKMk/NKkot3EdfoKLFDTd1vvUvv0o7b/ugQNU/uh20jvAlXP6uzlEgtl5Ixa3u+hlrMZ8VgKyHeqdeHux7QCHGPoOI7QcDJc9a0lXy0OxXuzoU0XXvTD4OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njSdAtge; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62231C4CEF0;
	Sun, 28 Sep 2025 20:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759091988;
	bh=+gOYQx0yJTclwRNmRVZJaJEHpmHblyeUM2Wyon9bwbg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=njSdAtgeTJTQeOwObFYcvgrhg8Dw+U8Omb0TXrWQjgj1LaXG2r4PmpNKSp+gDPmU7
	 Cbnj1wiWOL/YPzkpGilnvAhrbu1Ej5ZqOOF/9yUv5TZmNHcgCoWkEOQokqf2HCasao
	 DwEVEIxVj9EA0CCU1ZAgOUQCJMYjJxZ4xMxQhWKuHo4UXksMaAbk4b8Laur7tjxB4L
	 chYhOlxf5N0onJAGyP0haAICrczFIyGL2wdw9rmxKvVI+18WqPXCAThlFpsLx0i+7j
	 STpSFjHJfO07Bs08U3H51AhepXWdptR+LAgw9ZQueyCWWkGB8pITXnZ1qOXCgD5Uag
	 lCN3xqUaeFmJw==
Date: Sun, 28 Sep 2025 22:39:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdlcdmpayagh6i3b"
Content-Disposition: inline
In-Reply-To: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>


--xdlcdmpayagh6i3b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
MIME-Version: 1.0
In-Reply-To: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>

On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
> Hi!
>=20
> Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem

Actually, getgrent_r(3).

> is allocated by the function, but is expected to be freed by the caller.
>=20
> I didn't find this documented, neither in the manual page nor in the
> glibc manual.  Is it documented but I missed it?  Or did I misunderstand
> something?  Or is it just that nobody documented it?
>=20
>=20
> Have a lovely night!
> Alex
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xdlcdmpayagh6i3b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZnQoACgkQ64mZXMKQ
wqkgyxAAnNJjeRmKKgDhxpOJS24aYCsSJCumuVPKuwf0XBT0+6l9zjZ891MmgREU
H9tFFNsX85JdNrdH6I/0JNAG6rU3fk2aBJh7TspLwirqI0SezpzzAnqWkg6tnvEe
IrZysxOVf7dWoifAsyiFbgQYTmI3sCE594VMWYBMagMtjnoC69RLM61RaJPHIxEb
dtCIyuuBmYoqmuzn1UpSAEbLUPYrH1aMXS4LToIdvSxNV6HJ6p486Qm9GvJDl9pl
qZM/DN1qG5vlXyB4cIrcXn070f3NBmFiTseUljrD2RElJdzoha5yxJBcOOBdLhhg
4slyRXHSDL+FI2jq9NQ9CPZqFOYXA7xQWkdEw/3i4eVEYvTaXYJ2618rws8l4ddg
EDJHP7AH9rE0NMxlK0Z6J9aCf5whhXuJTSsrTO4NjYpSckfJcGzX48XtTXyjiFFn
5o5yXIc2V9tV21mupqAiSwtFCoeCgF0w98g4buSZZYEwwAKdY0q9e5IfgJjmNAlk
zYW9FJ0lf43F5Dxzd6BL6uqokvO+N+OpgQoabKLC54XryNxoqIlEUOfqwIcAlRkr
ZyklVetWHXxWYIKa8fyqSWt07wVozdRJ+su0Q06KFYHhxzvjZJHSM6pow4TGDodf
utxTSd5m2oqxlAmg274lF6QJostDbyLPYqYIqvoqFpJ82miVDlo=
=+RYw
-----END PGP SIGNATURE-----

--xdlcdmpayagh6i3b--

