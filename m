Return-Path: <linux-man+bounces-4550-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C27BCDDD40
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 455EF300E7AD
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9B02BD031;
	Thu, 25 Dec 2025 13:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gme5s+Dy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DD71E572F
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669891; cv=none; b=axEWJiUrplQBwzfTPEtil/G7Zs+5leLj5xQ5g7sdyfyKHcbfZ4+yjw6/TD0lkESdX0lPSK9IAGgIb26YsTXYdgPIToZZjDq0GhS8LAWMZdrJIVZPHxr4Y2TTGJjnlSvvcP7PRrlns57xd7P8h4WGV12HYx6u4E5aqvPhHITN4XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669891; c=relaxed/simple;
	bh=CyIgZMjvmRmMYvpezD3VV3IqPwTpg+f51MqGYufZ3n8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uPuh1njGGRPqcwz3+UeyUUpk5QWYjhOVsmep5eXLyukOLymHVyyw4s7K1H5aOarGFDKBMcqC44ZhDB0AtM5b/0Kst4EAyNr93rWW0m0LB/iDavWv4JVej025ST5jCMM/nZ9hNl4hnNS7r3gaW1lC3B5Qo2XWskKWmk02cgQJU7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gme5s+Dy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0E2EC4CEF1;
	Thu, 25 Dec 2025 13:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669890;
	bh=CyIgZMjvmRmMYvpezD3VV3IqPwTpg+f51MqGYufZ3n8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gme5s+Dyzj+x14ZI5GHTZoliTG/5m/SzLKs8vmyRnDfhosJNv7rbYCtvZEEE163iB
	 uDGxlx3XDznacXL66qr9Sf1SjUpEWnoUZ3wRjXJK5FIr8Taq/Hp9nUHyWpAKqXGT6F
	 JBxCgUovKe6l2xB178BfEA09pnUEzYs5D/lPIRg288pqulCSHFZQJvx3oDKof+rLKT
	 9MTeezXTjYic3FgQnLB57LmsISKSAfUZhyrvUgQSSvbMtBR7ezUZOHBfU3tfwiW0v3
	 MYOlNt09d0aJfE8vFAP/AApIDMcZ5MaTPvyvELbDUthzD5m6VK9ijpVcy70Y9AzooM
	 Kw2WuWeE4wy3w==
Date: Thu, 25 Dec 2025 14:38:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aU09001I8wO6AySD@devuan>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4qs2sowu6kf7g7tl"
Content-Disposition: inline
In-Reply-To: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>


--4qs2sowu6kf7g7tl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aU09001I8wO6AySD@devuan>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>

Hi Helge,

> Subject: Re: Issue in man page  sigaction.2

I believe the report is about sprof.2.

On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Ass=
ertion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' failed!

This has been reported in
<https://lore.kernel.org/linux-man/20251020093148.vve2nui3xtym4z6m@jwilk.ne=
t/>
and previously in
<https://lore.kernel.org/linux-man/ZznJf0DLo7CVHddl@meinfjell.helgefjelltes=
t.de/>

Please go to the thread in
<https://lore.kernel.org/linux-man/87mshxxyol.fsf@oldenburg.str.redhat.com/>
where glibc maintainers are expecting feedback from you (or whoever
reported to you).


Have a lovely day!
Alex


>=20
> "$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\n"
> "Flat profile:\n"
> "\\&\n"
> "Each sample counts as 0.01 seconds.\n"
> "  %   cumulative   self              self     total\n"
> " time   seconds   seconds    calls  us/call  us/call  name\n"
> " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> "  0.00      0.10     0.00        1     0.00           x1\n"
> "  0.00      0.10     0.00        1     0.00           x2\n"
>=20

--=20
<https://www.alejandro-colomar.es>

--4qs2sowu6kf7g7tl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNPj8ACgkQ64mZXMKQ
wqmlgQ/9EUoGsiAZ3UNLDyMxjxo5i3aS2O9eo6YIQkvLk48Dh5/T4FJ9UilyI4ne
SiAb7J1O+NwRIgBCV9MZKJ6HaczVfllnG5Mw8YqGMv4hbeTZeqBkurWnUrDUZiyP
kstrx3eexKbYBqlQHm1fKKuWxoVVh8TRPfxSYvHna+oX7TpUfRTVGKiiCEjxnf1K
jb9ML8EEnKO4WsoIu1EnlBtShEZSN1qL8ZB0kvjv0SQbCavTyIW+HUgJEgMiGja/
RSmTHA6mbt40Sr34k68hhE521wi6kZ41qBcr0IyAfpl1hfhhX8uptMFughZgYZSn
YzpRp7chvKZ5wrTpgo7OKszBlzQGW+Gh4gMGHfCC/X2vCCijnvMT8gmwDKjupxCk
UYiyTRIyBIJqpVL85ZvmDMFMUAtEcwsxqsN/AVqc6EwZVi4KbFX2yX5WTftSTvse
PEYyAD9cwd0VwbORcbJm/eMg7c8nTZXtJdkE5szwoe+pn7l9Q1B6NM/RD+5bknAL
th3U74DGYAz9WVEszo3YiEHnrJ8mqjwUt+Suim9vIP1ibNDjGAEzqRYsX/DpwLzK
/kca1pwPfNRuQGl18s4DwOyd2qdLdiPUOMsPGfo/BqFsL/1Dmk3Q90ubsyKzSHXR
uThNYGVu8pOZ3k2IPvqLXomBZb8NxC8moclTRtqzbaFB2dhkNgQ=
=t/EG
-----END PGP SIGNATURE-----

--4qs2sowu6kf7g7tl--

