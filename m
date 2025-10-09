Return-Path: <linux-man+bounces-4093-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D2FBCB0DD
	for <lists+linux-man@lfdr.de>; Fri, 10 Oct 2025 00:17:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A573219E66F6
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 22:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30B125B1FF;
	Thu,  9 Oct 2025 22:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGSzN0Ul"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11E2273FD
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 22:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760048255; cv=none; b=PAllbToTNIyU8SORSULYjgJbMhLsUcy7v+8epQaLqFFzOwlrQGpbKV3VI4/Org2MYoZAyKEEmVZaiKFZBiMgO2Zi48ZLwPklfgvJ7xCM/Tf1olL5g/9NYm+qScMmpWvCr6OE9T7WttSsoNHP9PLT1DKmSAeQB+W7MS4beBoSzbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760048255; c=relaxed/simple;
	bh=WrnJJZF9EvcdEVfEaewJB3ewFEAxiguKA6+igVVF778=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K0Cl9zogQcg0DH9SiPHC8/q2G8oLw8uhmRHh0QynFVv28twYohG+/3HpyLqvJgIwjRvL5bsRT1PE+NCkhQbWo1tiGrH497NSL45JfPE6CofuyLCVPRy29VLBCSw7nKNF4+sQJUban/J8QKkpq+sG4ptCmauCZ4ILG8z+VtakkEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGSzN0Ul; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91393C4CEF5;
	Thu,  9 Oct 2025 22:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760048255;
	bh=WrnJJZF9EvcdEVfEaewJB3ewFEAxiguKA6+igVVF778=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eGSzN0UlQi5WJDM3xKUowZNyEtNq16ilcHbY/iwsIuFyd+gWH0YNFfFuKqYW0lIAC
	 zg0omJ6HmNCemAjuOc++C/HDz6Wj/quCAsS4/yK2BGqGgO617sMW0r1lkqT2V5Ahv6
	 zUQORpai3heDczNI0TRQtx8HJ3ui3xe7fjfp9VVNUF3U5/fkHi4LHWXHfJGcdN4X0W
	 bziu+CeP9aQatfd9JyMaYnZ1+Q0UAzwK0NpLMOR48Zg3YgRZgYho9OHs1PiOBqBA54
	 hPH5rMzolg9QwuYMTJgDGcpKFPfirP+yJezaiZPbApS1hpsPKu3MlGUatzbWH2LVPv
	 XrzL2LzNI333A==
Date: Fri, 10 Oct 2025 00:17:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
Message-ID: <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yzm7bfh6a2rxhw3a"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--yzm7bfh6a2rxhw3a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
Message-ID: <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
MIME-Version: 1.0
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>

On Thu, Oct 09, 2025 at 04:53:44PM -0500, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden,

>=20
> Here's a (slightly revised) set of the changes discussed in:
> https://lore.kernel.org/linux-man/20250925221012.lss5ixmixnqrnrwq@illithi=
d/
>=20
> $ git log --oneline | head -n 8 | tac
> 58e02f1c8 man/man4/console_codes.4: Document codes better
> 1d3623841 man/man4/console_codes.4: ffix
> 01f5c7adc man/man4/console_codes.4: ffix
> 210b58f97 man/man4/console_codes.4: ffix
> 518789aba man/man4/console_codes.4: wfix
> 9a568cf32 man/man4/console_codes.4: ffix
> f99e7a978 man/man4/console_codes.4: ffix
> a3298688c man/man4/console_codes.4: ffix

I've applied all of the patches.  Thanks!  (I've tweaked the commit
message of the first one.)

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D949f47fd471b50ee6f389aa6fc1d2c41b5fbdfb3>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D82f4699621d793f12381ea7348dc9a03ebad89d8>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De2b83fe42b8bdd06f353bbe7b4d19a0c812c0a64>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D665fad6e3ec8d5449eaa924ed3947054043efbb8>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D00182e24fac381ae7734600836eb528cbcd25be6>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D54eb53e4e03c98149a34bfd565753024e4d5af89>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9dda144d239e4a4537f9325f50eba3bae9091de0>
(Use port 80.)

BTW, I see something weird with one of the commits:

	$ MANWIDTH=3D200 diffman-git 665fad6e3ec8
	--- 665fad6e3ec8^:man/man4/console_codes.4
	+++ 665fad6e3ec8:man/man4/console_codes.4
	@@ -84,9 +84,9 @@ DESCRIPTION
	      ESC 7     DECSC    Save current state (cursor coordinates, attribute=
s, character sets pointed at by G0, G1).
	      ESC 8     DECRC    Restore state most recently saved by ESC 7.
	      ESC %              Start sequence selecting character set
	-     ESC % @               Select default (ISO/IEC 646 / ISO/IEC 8859=E2=
=80=901)
	-     ESC % G               Select UTF=E2=80=908
	-     ESC % 8               Select UTF=E2=80=908 (obsolete)
	+     ESC % @                                                             =
                Select default (ISO/IEC 646 / ISO/IEC 8859=E2=80=901)
	+     ESC % G                                                             =
                Select UTF=E2=80=908
	+     ESC % 8                                                             =
                Select UTF=E2=80=908 (obsolete)
	      ESC # 8   DECALN   DEC screen alignment test - fill screen with E=E2=
=80=99s.
	      ESC (              Start sequence defining G0 character set (followe=
d by one of B, 0, U, K, as below)
	      ESC ( B            Select default (ISO/IEC 8859=E2=80=901 mapping).

I find it weird that 'a' does center the longest string before indenting
and left-aligning.  It results in weird indentation if MANWIDTH is
large.

I've applied the patch, though, as this is not normal, and not too bad
either.  We'll see if there's any solution to this.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--yzm7bfh6a2rxhw3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjoNHwACgkQ64mZXMKQ
wqmrgBAAoC4UAKEzy7hnKzfWMZeV7+hcYmTrR3dZBcKaYisxhnvB+UcZ/UfbSsXV
kHdPx3hyw01El4izsfMWZpswekD5zHSU1aOyKj6YGftDLDocX3VbPPFuNnz2Adaz
HT9j2IQRSbT3V0JyaIC21tWAT1LyYEApfZds/rQos41FmEAMn4EvCf7PeHOMU873
tdonLQrDrrOXng3+NK9UCcZvExq89CTcwtgiSrBf1dpNfGGNzi6WUmU5lbb8FP+o
yhQF3jBazK9ZYwHYaY7eM4Ur+ZYP/3u/SP46H47s1MvljaomSJzU04XBsTgzMX+e
rp/EMYl1PtXxBWgTvxdeKZ+8p/7r1iS4Rc0t+IAWdamdSWHzFcfCLp6IIZ821x6b
giId3KLXZ0kprwmn90wF1QE6cvB7yUCCuLI4TVBogPttYXEZZBVER8KZ6KCyAiYq
9d2m+Xdm40r+4A3wPVeKntFGFtmSlOiBsgZfjUVvvefWXNGgyIBjdC32HEuGTzFf
SF7gSO6lVCnU1UpKuObCsbqMki9OTdvJHot/W6sym2en27qFU88mMDCufTVn7DDZ
OqQaImYiQJ4VNu9L1hceP8W/13zr2b7UTuyGtXFVYpqTdQlCYzgyr8KTmzRrN5/M
w4jZes1Df9bnVGulI8YmfrpAOOEgoyd27jAFxEtg8lgsVZBnREY=
=y0DF
-----END PGP SIGNATURE-----

--yzm7bfh6a2rxhw3a--

