Return-Path: <linux-man+bounces-4521-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0002FCDCAA5
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD1D430184E8
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 243F234C140;
	Wed, 24 Dec 2025 15:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOtYqxfd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FC6336EF1
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589729; cv=none; b=GZABay1nCD96Bkh2zpYVbjaDqJVyXZVlk74TtVidj8PcZ4jiVbJuZ1AInaYgzGyLLyQSRKBGW6iR4RtpDrl2vR5ChFUzH0+sTd/w0ti3d+QH2x9/FddmarQRJo2OCCzzi6bcAsPw1rxOX67mr4sn3iz1gsxu6bCvrPRUbHUGp3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589729; c=relaxed/simple;
	bh=Sb/Ac2GcAEXTxYFAVZoEGop2dB6k6wrKavlCjqQlGYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tRfezmViciSsm8rf0SCRzqlNGKpPtuO5pY8PMajAH12VxhJijwIm7Lm6IJKQwsozNPdvRc68kuPCAF6p1kAoq9QDz4ax3EKYXLCf0ed4hco1+GTSuujqQjHEAKl0gNg4i9C0YMQDOnQvPvE8h3W5MsggOSFhlzMv9NhzUNa8FVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOtYqxfd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5A9FC4CEF7;
	Wed, 24 Dec 2025 15:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766589726;
	bh=Sb/Ac2GcAEXTxYFAVZoEGop2dB6k6wrKavlCjqQlGYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vOtYqxfdG0iNz0zMZRtPO9xrCyu2fftCwRQcsdwyldk3YxCVy1JuTtXgbH8eJfQcb
	 etATVFR9ol/e0Q7c87astqtuid5BzEPaQ3v4SlVXPsA+Cj81GV9tWzAbwlhirblyaa
	 kp2adHszymlrCk67O6YF/EtN3TzCgCswYAZEDM3VY3L/bA4Gg1frmoaNtkIjLrgeOu
	 b53t9ADVJ8mtPuPUBObIO7FI/pCGKQuoqSfTP1JVjvuca64WKc1OyMMHyYHYX2uROc
	 aYcLPiInZeS5JFOscs+sBRBDnLGACf9zKv5SH3kNPEv7NwlrdjKhIshD5nq3hOJGc7
	 Finx2F/wpeTiQ==
Date: Wed, 24 Dec 2025 16:22:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl_kd.2
Message-ID: <aUwE_hFq9P_mN9lk@devuan>
References: <aUv63KL4fjkvKquK@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lyntlni3bxxor2xw"
Content-Disposition: inline
In-Reply-To: <aUv63KL4fjkvKquK@meinfjell.helgefjelltest.de>


--lyntlni3bxxor2xw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl_kd.2
Message-ID: <aUwE_hFq9P_mN9lk@devuan>
References: <aUv63KL4fjkvKquK@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63KL4fjkvKquK@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:20PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    a char =E2=86=92 a I<char>

Thanks!  I've applied a patch.


Have a lovely day!
Alex

> "Get keyboard flags CapsLock, NumLock, ScrollLock (not lights).  I<argp> "
> "points to a char which is set to the flag state.  The low order three bi=
ts "
> "(mask 0x7) get the current flag state, and the low order bits of the nex=
t "
> "nibble (mask 0x70) get the default flag state.  (Since Linux 1.1.54.)"
>=20

--=20
<https://www.alejandro-colomar.es>

--lyntlni3bxxor2xw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMBRsACgkQ64mZXMKQ
wqnlcA/+M74tqE2zp7KlVcglthBbceqw0cWT4pr9OSljKGwzDkT7AqVhX66YK9TI
FriKhMLMm7JlkdBm0SpJe7rfLjLCIn3/JEanm9LWKy6tiysOzhGYm4xUjEQE3zan
SuY93Uy0ukvGNzfSOssfNcoR4PkTZhS8JTRBt84jzTU8I9Abg1WRGuS9VJ1kTveg
ozlTZXptZshfMC02bN14RUbAN6Wx/ajmwoPI+0OPxs3y5ScUzpKO0qTuLbDfaxiD
VsvVKVPpJQpGQ5w1PgShKagHcdKGYfGjxpMzGmXnaJnKiIeYZJPd66mMvrPp1Eig
47V+I4Qz/WLnTpMiclwmjWv258Evm9ixU1m8tkFD6+RpOj+hT/dyKeg8D6IHv2Dd
rC1QqrguxlPiEacU9mrzKYlguO/001VkvTRWUJSoFZbNtoKjQ6QBMSMGIRMJbZLC
ORTA3+PMr1Nv9iFn7JM1zCwCMv0y4IlnaYyRnwLclVo2hB5saPqgOctj4sTffVIc
wtITB+CleqJBU0ov+stpJrSWsYm6aUNV8r8m02yvLBwLP6Huz5De8aQQMHHXMVVa
VYEOk1jQU53uqY3P3wlhskoLqs5Z6akbHmBxUUWW4perw7fbs6FXXxEh0eClR2tB
Xq7I5JkgRdPvvBcTWSpvNgOcqTHFevDCmS5L5pFThTr/SJDPeyY=
=6Lpm
-----END PGP SIGNATURE-----

--lyntlni3bxxor2xw--

