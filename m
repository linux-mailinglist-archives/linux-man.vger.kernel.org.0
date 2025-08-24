Return-Path: <linux-man+bounces-3703-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A77B33286
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 22:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 412837A6743
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D7819B5A7;
	Sun, 24 Aug 2025 20:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdxYU2XZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A355A14AD2D
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 20:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065929; cv=none; b=trVgBLfGzoHlQ4WpeMC/I3sar13z4AkZX5yA/iTOEgvSdhm3sbYohryuA+XICuocNwBSCjoOuLDz1q4CyBeWFhSs6D7QvyPpceMvXnH9K8ccXeyKfd2gehsAx/hoFvrL0N4tgvyqB2Vv6O16fyjmydaq626lxVsxL43PD6teQJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065929; c=relaxed/simple;
	bh=GQBMj308ZR6wsK6W7V8SnfqCspYcbzfpKp9N0SbSM/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D86c7SCoVRIeARsQxN8RMW1jEght2+UrIwJ7DG0KxC54xSFYt65jQoJksBHwxf+rCHiZmKBHxDqEUxqRxk678MSk362lB7z5MZKXSD6lTa1y5flIxxV8gZncK4+HhpNSkvWISiA7nUgv6TrboNpXw3zpG0VcMThC947uLwyp0hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdxYU2XZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C52EC4CEEB;
	Sun, 24 Aug 2025 20:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065929;
	bh=GQBMj308ZR6wsK6W7V8SnfqCspYcbzfpKp9N0SbSM/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rdxYU2XZSdQgmQ9tNuQfu8jRW2H8e6ammoQese1t8xoT8FdRsQZO2Fe/hFEx89dVM
	 NTR6vkQYdaQ44KnirgKpIUJOkMLRUMbMVBdcq6JPKpI4o6oT+1t2mjwJoXG8wsTptV
	 5V0bP2N7iQiopDXuPhPPMBgISiJHRz9kHe+LKdDPn9ar6Ij/xNzrmAjBJMdsxtYCvw
	 2JtkC6ZBpDOS44RLu4618BB9kGHMq3lx9KHKqaHNEQqV4owyIx1PATT84wIesmqnbL
	 EruW4xhlsQYzcX375F4UEeHGi1LPsfZYcsAKiepedWE9+2Dn2H80JHLtpLHp0QKdxU
	 hINXY619C4Zjw==
Date: Sun, 24 Aug 2025 22:05:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_CAPBSET_DROP.2const
Message-ID: <6x5kofm6lt4fs5ct3eycwhefa5ysl7jwoaz7udtq6mabieweql@oassn65anrdm>
References: <aKsmTs9d2d5oKhGN@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vjzfpem644knaaab"
Content-Disposition: inline
In-Reply-To: <aKsmTs9d2d5oKhGN@meinfjell.helgefjelltest.de>


--vjzfpem644knaaab
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_CAPBSET_DROP.2const
References: <aKsmTs9d2d5oKhGN@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTs9d2d5oKhGN@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<PR_CAPBSET_READ>(2const)  B<libcap>(3), =E2=86=92 B<PR_CAPBSE=
T_READ>(2const), B<libcap>(3),

Thanks!  Fixed.


Cheers,
Alex

>=20
> "B<prctl>(2), B<PR_CAPBSET_READ>(2const)  B<libcap>(3), B<cap_drop_bound>=
(3)"
>=20

--=20
<https://www.alejandro-colomar.es/>

--vjzfpem644knaaab
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmircIMACgkQ64mZXMKQ
wqmaiA/2K0VhPfCRCFVPoKJXcOTJjKXbenm60deqozbyInMOupsJA0e1m6Q6zell
71d7oliwYk9qgKvAGtE+1ZaYrSMbI+tJM8+fz/cjVTzUBW91DE3XV1FjYHULz0HT
dQ0JOGZylWYFgAxBrkO5j5TH38o1l7twkqNF1DvH7LSKv1ZMIt8n/r50xSUZ1uRS
ydcaL7iluZYsUIEtt3gUDUEOdeAxH3oAdIr3qfsPxdHo2bWD/gFRnyKkvAsP1lWu
by2Ad/pGFUWTTj3ibJx57lSzr5xM7ivI8fO5Eh1dws6bEut7g3MyhRvV4oepp/A6
e8AZ4YjNjRvZfRqlC4kUS9rAMk0C4rn5jkZnxyHY6B5MpWZmECLZJknZ48BLvNyG
An5siJLJPocT34nr+Gx5y3gSbxyIWP/ecqQreVgif1TgBll1nQaE6LO4GafKi1M6
/NImRVgByu21bITJLCnY04YMj6NeaxLlrwVIWJo7evuUF8Rv5RT1g24TzzqFqswH
iBVod7yTvs8/PGWBSLbAbl8qpkXaHXxQpDKB2RD27u/EooL/NMpMtUujHuQv+dcu
TcuhTCuJpBCC7wlnVfdCI7QbYuLl8qI0AoOoPBruIjEW0LKzYJugBuhQHESqkXfy
KKACU3qr2cwrzWUk0GZKQ/v56rmaH19Hgl7n7WhjbesGIwVVCw==
=bqIW
-----END PGP SIGNATURE-----

--vjzfpem644knaaab--

