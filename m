Return-Path: <linux-man+bounces-4683-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DD4CF8AFF
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91E5F312AC03
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B8BE2522A7;
	Tue,  6 Jan 2026 13:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzjWMvq3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EF41DE894
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707850; cv=none; b=jbfTk3Z5VqnBWvvDZSupKaMs9UppmtExBoCgn0dyC4dSajqDPsyhD1+Y+xPajaNSgWjCZTKJTd/xyDT3N5uIF3DgGpPnX9R/9inVJ1cvHQCUW+etX9SMCDoTpDvEG/ioOjmMWZbgtK2LbV+Q3IHX6l6uJnJDbQtd2Rvo50wVQ/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707850; c=relaxed/simple;
	bh=tgwm3OWrv35EV4VqqvMETzH185v72B4qCy/Q4Q7Mi2U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B0GSDDcEIry67WBfcegZ4kKUOzwtNyjAVwt9oP5txuefZ073Xn4RyoqJwPx20K3T1qjn4/DlR1srx68xMj9dKKSAxTI1uLuHjkp8b4/05MIPYxMhBR/CRlDeUMXM2WmGMjxH2iitJ+xjj9qgA/YTl1WimM213ERr3FkwUoM4XCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzjWMvq3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFE03C16AAE;
	Tue,  6 Jan 2026 13:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707849;
	bh=tgwm3OWrv35EV4VqqvMETzH185v72B4qCy/Q4Q7Mi2U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZzjWMvq35saWX1SCVXGzV2/wsZHIxVSb6llVIBKu5PgsOzoETvEeRFEMQ40/ou8gw
	 8ztvfgInCKyfgVHga25NwyOYYom3149dtw7Qu1cQe9gQuyczvi6Jlc2/5qylnnTpVT
	 G1cvVkXURkd6dU1lCsTYyJMgNlO5xC+kaSV/bGY2hCAjjWZvhG8/341hVAHaYCcuJS
	 FKX/ZEFm7vmwJiEOl8damsY1Yea7m5jfQcyPILattj+SKQHOGaSO6+9X3scO2sMWN9
	 AEyN3qvRrpPi/rfHBz4fL0/Vmth2r0nsO6UaFRN9sSxgM6QMxm03bPbhT/dCsDbFcw
	 Y1A5rOCiJFo3g==
Date: Tue, 6 Jan 2026 14:57:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 03/15] man/man3type/cc_t.3type: HISTORY: Update first
 POSIX appearance of types
Message-ID: <aV0UveNijCvLs1GH@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <eb523868fce18ce322d720ef52219e8c39851b6d.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6hyqkq5ywczj5bmd"
Content-Disposition: inline
In-Reply-To: <eb523868fce18ce322d720ef52219e8c39851b6d.1767675322.git.sethmcmail@pm.me>


--6hyqkq5ywczj5bmd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 03/15] man/man3type/cc_t.3type: HISTORY: Update first
 POSIX appearance of types
Message-ID: <aV0UveNijCvLs1GH@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <eb523868fce18ce322d720ef52219e8c39851b6d.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <eb523868fce18ce322d720ef52219e8c39851b6d.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:52PM +1000, Seth McDonald wrote:
> cc_t(3type), speed_t(3type), and tcflag_t(3type) first appeared in
> POSIX.1-1988.[1][2]
>=20
> [1] IEEE Std 1003.1-1988, Section 7.1.2.1 "termios Structure".
> [2] IEEE Std 1003.1-1988, Section 7.1.2.7 "Baud Rate Functions".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/cc_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/cc_t.3type b/man/man3type/cc_t.3type
> index 99ed8d4a9ef5..4337d508b8b0 100644
> --- a/man/man3type/cc_t.3type
> +++ b/man/man3type/cc_t.3type
> @@ -28,6 +28,6 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001.
> +POSIX.1-1988.
>  .SH SEE ALSO
>  .BR termios (3)
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--6hyqkq5ywczj5bmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFMYACgkQ64mZXMKQ
wqlBrA//cV9Hg7qdcSxSBroAQM9ZZDsv+58zD0xcxNh6kc36cl8C6VLJNVZJeTAp
uv/kkf0GFaGJih4GLekhgk+zFdXVkz7NPtg+yhlva6FAIi6n5Yb3PW/S0GVeDVhj
nGF/QEPfc5ZHplg7ybud6sZoD09TCyi9EPZ0sXq3OUIO2VGLGQ2mCrGPgHS+Bv0h
/BcS6aAVGByK9XNS0c9A8n6klHu+2ZjMNwBHwhjmRk1qXbX8gXwo3T3673WAME4Q
QH5fzAbd5IMNKRWTCoWMnmt1tAGlSOH2ClZ2CkOVmToeRY4XvQXrhNd5aleKvoaq
a0jbUWZkHLzSxzJxri5wBwBkoeJoqWRs/np1V8dSxCxhl9kCfkkrqYO94jZ0VeVv
w8/x5K3qCcbqUAsWywZ9DmHmI08XZ/klBEmYZSRqY80ygGV1HSiaR/FmJHQO1gtv
p4rcfhtlrySu/itIkyRaQG4HopLq2/GVQlcAL7/M1M7c3ni78IGHStp0XTX8YkwZ
JzSUTeLsY38lMD2fE4/1Cvx+Vap0RmVX+/Se2879Pd0Yp3HWvF9tPy8VVWZRXES/
OSmJIKpVG0dqQjKI24qmiOwglzLcnH7khEPexZ3qIp0T1erBzebnfr96opaEa4zY
0M1pfUTDQ1s2Y2wH6bxyb8GUPXMHE5bMmTcJc6pN+cEbub9O5Ys=
=fZqn
-----END PGP SIGNATURE-----

--6hyqkq5ywczj5bmd--

