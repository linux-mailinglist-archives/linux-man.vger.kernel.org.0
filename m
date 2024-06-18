Return-Path: <linux-man+bounces-1247-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 549F190D36F
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 16:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D530D286E22
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 14:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1645157A5A;
	Tue, 18 Jun 2024 13:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtWv8XGC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CB013A89B
	for <linux-man@vger.kernel.org>; Tue, 18 Jun 2024 13:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718718127; cv=none; b=bgAMmQhn7Sn0a06d+k9sbus0kg0xhy+2yUu+Y9klL5iafJR+rfL1rCXSs5zlQK6JfJX84tRlJQ7UZRLJYIdmD4gotScYMnc3HpYa4UZGtR3wjqvJbL7Km/r7f/YzQsOwfCGcOAgdimWxOrlCRZd5/z1iwupOvNAnrKa+N9U7HCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718718127; c=relaxed/simple;
	bh=xYPphu0QTz50k0I+GzLAHULpIhFzUV6r6AGfXgmn5HI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KrvaL2JRoOzMiDYgLsb92MJ8gXZV8znrWwQ4NgphK5PbtR4kmMuWaOGNCZ+8Mzc+OyyL3hXXyR6e7BedabZW4kzVMlhuiJ0CMJzsgXVTuboL8cwPt+re+QHGg03NILKUIUjxFAvW9EsyIMTgCibfD5Dnw45crwetJnAcXR1x4bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtWv8XGC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93A1EC32786;
	Tue, 18 Jun 2024 13:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718718127;
	bh=xYPphu0QTz50k0I+GzLAHULpIhFzUV6r6AGfXgmn5HI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OtWv8XGCRDrHQdNa+B0tFB5AoHChw6w8wod9kC6Fjr6DUV41ushkCjtJy82eIWl8v
	 2svkMawsZ/E+6xDvOAXZWL6+jrXirQEn/t4irX73N9BrIGPE5W+jrSx7F5wnOv/in1
	 nJufeF9VZkIE5pzFkYm5XrjSgMff6yakyp+SYC18s/HVGK0+8/5+yw+95xTfbU+53N
	 Stz0ynfqjLHgqYz5Am6lIM2qN9adQFHDDjSkwLB7jFgfLuUq8GSI3IlfmLIttlOMnB
	 vSwwbEDOFjlhrWEuEgh3MGk1gFBFrulUtquSgpBrwE7nT42HmryYhcPXs7GMJiRo1X
	 rdtte9UQjxzRQ==
Date: Tue, 18 Jun 2024 15:42:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 00/16] man2: fix wrong/non-existent section references
Message-ID: <7jbppovaeneldid7sxfachzixudbskb2n2r2f2xopacpv72egm@wfqbqwuhduja>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3kpbblc5e27kj3t4"
Content-Disposition: inline
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>


--3kpbblc5e27kj3t4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 00/16] man2: fix wrong/non-existent section references
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>

Hi Kir,

On Mon, Jun 17, 2024 at 04:10:12PM GMT, Kir Kolyshkin wrote:
> Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections") results in many wrong section references.
>=20
> This patch series tries to fix some of these issues in man2 section
> which I was able to find.

Thanks!  I've applied all patches, except 07 (the commit message didn't
match the diff).

Have a lovely day!
Alex

>=20
> *** BLURB HERE ***
>=20
> Kir Kolyshkin (16):
>   cacheflush.2: fix section reference
>   clone.2: fix wrong section reference
>   execve.2: fix wrong section reference
>   gethostname.2: fix section reference
>   getpriority.2: move info from NOTES to HISTORY
>   gettimeofday.2: fix wrong section reference
>   ioperm.2: fix wrong section reference
>   kill.2: fix wrong section reference
>   mkdir.2: fix wrong section reference
>   mmap.2: fix wrong section reference
>   nice.2: fix wrong section reference
>   open.2: fix wrong section reference
>   readdir.2: fix wrong section reference
>   semctl.2: fix wrong section reference
>   uname.2: fix wrong section reference
>   wait.2: fix wrong section reference
>=20
>  man/man2/cacheflush.2   |  2 +-
>  man/man2/clone.2        |  2 +-
>  man/man2/execve.2       |  2 +-
>  man/man2/gethostname.2  |  2 +-
>  man/man2/getpriority.2  | 32 ++++++++++++++++----------------
>  man/man2/gettimeofday.2 |  2 +-
>  man/man2/ioperm.2       |  2 +-
>  man/man2/kill.2         |  2 +-
>  man/man2/mkdir.2        |  2 +-
>  man/man2/mmap.2         |  2 +-
>  man/man2/nice.2         |  2 +-
>  man/man2/open.2         |  4 ++--
>  man/man2/readdir.2      |  2 +-
>  man/man2/semctl.2       |  2 +-
>  man/man2/uname.2        |  2 +-
>  man/man2/wait.2         |  2 +-
>  16 files changed, 32 insertions(+), 32 deletions(-)
>=20
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--3kpbblc5e27kj3t4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZxjqwACgkQnowa+77/
2zJjqQ/+Mf4yc2yzEyDjHqSYBDM5l38t97rm6RFD18ovej2Ja7Dh68SIDvBdveuM
DSL+AgoLq3BUMyVGarQTbEc7hq/X/v1ilBBzk+sAr5EyTgnZ7O8DvDbsbtnqO6zP
t3dDQHYT4D9ps7daUJxZPGfcSkLsODq6cL9Yahvzjn658266x7C4usn+9Z93CGt+
nuwZ2syX4WKAVYI9E7rLm7Xrmy1Ke6pagd971IOSbBXQUzXkba0w6eFPMuQllY1O
acNs3PMOVOOhl7QNulNd/eSqycj8GogpxAmp8Nen73lImcZe0XBpPAxuTY32U0Ie
DqYEFklyWRJlRRKQXRrIXkb/er7qu0Ba1m33HjODlH/GWerwv+iEk0Qgs+f32WAl
/uDQBYzgJnbRYZlftiSQGBxcEVvMmBdgfkpDdzG8QfuO2aO4rvcoBsSv8hpeP0Py
ci1ZvgkK0wYr4//miUnQkzh/9QqiYZxyd1wVbYTqLIrp5ETksxXeq0jaeG10DmK7
C8hhsEkFFr3WsMGf9YTCTFxjwmwduitV4LZaRlYO/3btoVCrEL0soWNgBUp2LLX7
Ffn5LPia8Si2rWMDrClVe4WvyTr7NqMrL/uO3/CJijfaoS782xOOLyx1ROzyltg8
z3aQqvCWAWDav1UhoUytCPmc46B4jS9pPXgRMQYggZoM/+nIGVI=
=cvbA
-----END PGP SIGNATURE-----

--3kpbblc5e27kj3t4--

