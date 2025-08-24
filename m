Return-Path: <linux-man+bounces-3701-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710CB3326F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 22:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAA6C3B0E67
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A746D14AD2D;
	Sun, 24 Aug 2025 20:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX46FvxE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65118111A8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 20:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065705; cv=none; b=Vn6oLxsZw434xyLhzPieqryGiIKmmwCmFBkiWR6HdoMx6UR/08XCFBvCoX6eoDklFakEn6cPH0as0nhUk+i1O2lZnkjoWTqn0EwT/+8owXasEMfqATEO1+qqRSHV7R7gzmhkDqUCXscb3I9hSUiOJ8mztL1ZxXLLZ9MsoH2A8/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065705; c=relaxed/simple;
	bh=otwCi4oXuvMnkECyqVLqi6EGsQAMOMJUYUC/Z0cEpVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N6Rf9WbnZf3KQjw8UZvQysBDBDsEbZ+5l88wG8WDYIzFD3yjawi3Jh6mGoDPylqBlNuswCZFrb6wTZVBLV/a/I8az1STyCOj6/ztxkbR+53Nm8p8fKlQtaSfHnkloDp3EpyrHTq6aP+9UmafbwWDYzaoLSV+yWEfjsZ31ukLGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX46FvxE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BB11C4CEEB;
	Sun, 24 Aug 2025 20:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065704;
	bh=otwCi4oXuvMnkECyqVLqi6EGsQAMOMJUYUC/Z0cEpVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iX46FvxEH5gUFx+POrpxKzHIfn5AN52TpKwYlozjU+kEaUDVyjq6ZpcQoJMD/WFcf
	 Db2xWkaOUF4+bYxBIxqsD9gONXe1Tg//nddRlujEqsHHeA3Qi8xs3Z4AMAZgNgTarU
	 V/KdoGoxw2jNTC1koyU/3Pvd5PC+FM1sQ0wgRfgoxVSilb9Rq4znePUUyRaftwKQ2Z
	 Rl6MeN3mEEcCWYW8VoajIyfJfWz8lOtQhjTFLKHQMbGfdLMoqgLK2OL33maJRsDUa7
	 90NFwx8Y/6019wWl1gm42F95cIeQ4HL+y7ral5WuSf7xWdi+9fymSMeBfU4/uVb8B3
	 UFWK6UIIN4FRw==
Date: Sun, 24 Aug 2025 22:01:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2
Message-ID: <inn2zgpqm2za4ms2h6yrp2efi3ppadmwuez7ovnf7on7bibffi@oydwmgdnimwq>
References: <aKsmTm5mxKd2tPSt@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j4iq4ogrtmfjj55i"
Content-Disposition: inline
In-Reply-To: <aKsmTm5mxKd2tPSt@meinfjell.helgefjelltest.de>


--j4iq4ogrtmfjj55i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2
References: <aKsmTm5mxKd2tPSt@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTm5mxKd2tPSt@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    the open =E2=86=92 B<open>()

Agree; fixed; thanks!


Cheers,
Alex

>=20
> "If I<path> is not a directory, cause the open to fail.  This flag was ad=
ded "
> "in Linux 2.1.126, to avoid denial-of-service problems if B<opendir>(3)  =
is "
> "called on a FIFO or tape device."

--=20
<https://www.alejandro-colomar.es/>

--j4iq4ogrtmfjj55i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirb6QACgkQ64mZXMKQ
wqkW+BAAqT0D2SDQeeU4cLUWs8b5fLxUyNqz9wZDXaqQ+fQEhr/bk+cZYMuU6cGJ
8y/SFW+ekgAbvoJkY+HKsrp9GsJmi8OuQzVYjqPZ/6MDlhjNtgxVfE/EJcqoFGhJ
9PRzI101Akw395ixB0kaBKyHQqXYa7QVudK4GmCUjzJBtisTf8XfFafZwjBKau1L
z9C1OUuODJjfiSkb7gCniIJ5SRUHJluwNPghhzdiic3Pcd3WUTWS1PYLnAkq7M3m
mmHgAfRaxeFkVNu/a3YfRMY3NVrACdcS8oyySob0JDw3B39LD8AyWXYvWAVtSSZA
pbfyu7RDccI6sJ+HKgAVxpj/GIlr+ANw/OimzgIH/2vhQdTqzUyiSwOY7n4GNTXv
jZi9kFATP106K7f75L71KCV/1gzotUVVHMuwp6FG8HbrZHtYt6oOHCpdldKXe0si
afv4ECjUAysdM81GqqwAXBF+FlB0zP+j1yZadev+QHU4Hve5c8DJBO8T6GNkB+YD
csHJwjotTr2QgJ0ZggQWDv6P624qOF+hd1q5t36MmHIiRAr7pqSanaGbnOaLfwgS
+x+4wsqIJ6kjbWjcumRbbO8mmFyptZux4CrrnJbfz4epppDzWj0/+dTSNLkmZQN+
KEDysFNRbck7V3lshsaO/rOCNyVlFhqm4WanV7MkKCI/jPs5teo=
=JvRV
-----END PGP SIGNATURE-----

--j4iq4ogrtmfjj55i--

