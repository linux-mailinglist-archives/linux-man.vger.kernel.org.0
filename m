Return-Path: <linux-man+bounces-4094-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D05BCB0EA
	for <lists+linux-man@lfdr.de>; Fri, 10 Oct 2025 00:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6DCAF4E1600
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 22:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9A8285C99;
	Thu,  9 Oct 2025 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4bDz2PF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E190526B77A
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 22:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760048501; cv=none; b=rlyOxcJsB2Rd38Z1yuAYv9vX/F2Cv8c5y24HiZEKMUjZAyaznM6LWHRRMJgq7jIr7Qfl18t7XvXZFXn/RSvEe44x3CqXSApH/6AomydAMEI6SD2T1SD5jsQkGpJZd2W91c+UDHRIpZiLgNbmSfPHc1NukZSnDjPlJdRsZpFKeHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760048501; c=relaxed/simple;
	bh=Im+eVJoHejT/lfhrEdj1hrhpqJxWEtVghQaKyqTdkaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bua18a67ZIlxB5hiKx7kBbdSaqr4s1OcKcWYixe7TZaZY60tlxWENyope01okI9tvlPTY1qnUqQ8xpV6hJ7mmzZ4IyZlChs5TScDu0gZ0/2G/tDiS81fE0BsjmznLZN4U0Lz7o+MipOWkkJ+ODQFiufnT9apNXXRqfhj0yLif1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4bDz2PF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2B03C4CEE7;
	Thu,  9 Oct 2025 22:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760048500;
	bh=Im+eVJoHejT/lfhrEdj1hrhpqJxWEtVghQaKyqTdkaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B4bDz2PF8hA1F1NilZAple3NwQAeTZv+GpyF201ir53UK89SWUS34TI8oCGtJI5b/
	 rxj1kNun4Nbu65vTPdH3rdOjhEkGvP5CQPuyrMR1St0UWg4NkSm2iF/7cRB1gIqUkk
	 AldN3e+IOg1L5onfpuKVaadDJ4wvS9jIULNqeBkdvp0NWjsHeb1HDxNW5+0fi0fpih
	 eQqeSv5/tkJmFnG35+DQWHsRwXZoXMp2AEvK5DbDwoT6r0cJMcGk5Q6y3Smv5myv9w
	 wUsliwFHiFEcWisrCnUzNuzfuWDgBB8vLDYN6w7l7RqKso+WWaGQIergg6fhluEtMo
	 5Vf6cOb36mN3Q==
Date: Fri, 10 Oct 2025 00:21:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
Message-ID: <3eqw4zfbgwulyfl7iutjd6qs75hdvplnwzkebkonnott7nzs6u@xwpgj37clftc>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ufwaapt35wiwd75f"
Content-Disposition: inline
In-Reply-To: <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>


--ufwaapt35wiwd75f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/8] man/man4/console_codes.4: content and style fixes
Message-ID: <3eqw4zfbgwulyfl7iutjd6qs75hdvplnwzkebkonnott7nzs6u@xwpgj37clftc>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>
MIME-Version: 1.0
In-Reply-To: <n7bxhcgrc44q3qzcqqsjxm4wtgr3qjejnl4xu3xerbmlu4bogc@ggnkvvujklfq>

On Fri, Oct 10, 2025 at 12:17:35AM +0200, Alejandro Colomar wrote:
> On Thu, Oct 09, 2025 at 04:53:44PM -0500, G. Branden Robinson wrote:
> > Hi Alex,
>=20
> Hi Branden,
>=20
> >=20
> > Here's a (slightly revised) set of the changes discussed in:
> > https://lore.kernel.org/linux-man/20250925221012.lss5ixmixnqrnrwq@illit=
hid/
> >=20
> > $ git log --oneline | head -n 8 | tac
> > 58e02f1c8 man/man4/console_codes.4: Document codes better
> > 1d3623841 man/man4/console_codes.4: ffix
> > 01f5c7adc man/man4/console_codes.4: ffix
> > 210b58f97 man/man4/console_codes.4: ffix
> > 518789aba man/man4/console_codes.4: wfix
> > 9a568cf32 man/man4/console_codes.4: ffix
> > f99e7a978 man/man4/console_codes.4: ffix
> > a3298688c man/man4/console_codes.4: ffix
>=20
> I've applied all of the patches.  Thanks!  (I've tweaked the commit
> message of the first one.)
>=20
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D949f47fd471b50ee6f389aa6fc1d2c41b5fbdfb3>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D82f4699621d793f12381ea7348dc9a03ebad89d8>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3De2b83fe42b8bdd06f353bbe7b4d19a0c812c0a64>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D665fad6e3ec8d5449eaa924ed3947054043efbb8>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D00182e24fac381ae7734600836eb528cbcd25be6>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D54eb53e4e03c98149a34bfd565753024e4d5af89>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D9dda144d239e4a4537f9325f50eba3bae9091de0>
> (Use port 80.)

Oops, I have now received patch 8/8.  I had only seen (and applied) the
first 7.

Cheers,
Alex

>=20
> BTW, I see something weird with one of the commits:
>=20
> 	$ MANWIDTH=3D200 diffman-git 665fad6e3ec8
> 	--- 665fad6e3ec8^:man/man4/console_codes.4
> 	+++ 665fad6e3ec8:man/man4/console_codes.4
> 	@@ -84,9 +84,9 @@ DESCRIPTION
> 	      ESC 7     DECSC    Save current state (cursor coordinates, attribu=
tes, character sets pointed at by G0, G1).
> 	      ESC 8     DECRC    Restore state most recently saved by ESC 7.
> 	      ESC %              Start sequence selecting character set
> 	-     ESC % @               Select default (ISO/IEC 646 / ISO/IEC 8859=
=E2=80=901)
> 	-     ESC % G               Select UTF=E2=80=908
> 	-     ESC % 8               Select UTF=E2=80=908 (obsolete)
> 	+     ESC % @                                                           =
                  Select default (ISO/IEC 646 / ISO/IEC 8859=E2=80=901)
> 	+     ESC % G                                                           =
                  Select UTF=E2=80=908
> 	+     ESC % 8                                                           =
                  Select UTF=E2=80=908 (obsolete)
> 	      ESC # 8   DECALN   DEC screen alignment test - fill screen with E=
=E2=80=99s.
> 	      ESC (              Start sequence defining G0 character set (follo=
wed by one of B, 0, U, K, as below)
> 	      ESC ( B            Select default (ISO/IEC 8859=E2=80=901 mapping).
>=20
> I find it weird that 'a' does center the longest string before indenting
> and left-aligning.  It results in weird indentation if MANWIDTH is
> large.
>=20
> I've applied the patch, though, as this is not normal, and not too bad
> either.  We'll see if there's any solution to this.
>=20
>=20
> Have a lovely night!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ufwaapt35wiwd75f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjoNXEACgkQ64mZXMKQ
wqmz7A//ZRiCNiTnU2zUUfgW8BIF1S2A6qfYq7AcV35r6dkHa+kzbhLy8ecI7wSZ
y9PU93zpm2itIDFlR06fdZfsON66QKo8kU/NT9NoInz0iAw6Lu51kZImPR63GlsB
rNWouiqOhWjrJb1Ddf84r9JlBB984VKDPIh8ggewS2Cy1ShgG44ctk5yJmtRzqSW
BwPHKSzKNgGO/a/ZLfUQzB9jNcUFVoOCaw6meGVJT9w8XYudGYmsng2tTjzIIKgr
JHbdqCfO3U3N/lt0YlNHNbL5ifp2Y6o/1CGzwV/4sFzqt3YiSFkuqzdoV3R+Q4/F
kGy1Wo3FDWBWgbjsJHW/lmVJn3ohcbcZRPlOjff+3ngOPRV6mTTOXTJgy3brbc7M
jxAvDWVNTfWFQzCRecxI+3x3HaEiSyI9/SDRs4/DiIUuklAw3YEJwe0j/k8Qpgzt
JpIwszpXl9TDPU/Qdvii7C5+T2rblkoVWGED69gnUCLAv+towEI02PhrUgsTF3Od
+V7W5rnhJSyI36kTZnYE/lbzqVkeg3iQo9f66ZB3PxSDm7ywkTfo8wTJVYLzVZjv
d53zXSTCf1KmwDUSVEaajpu4uSA2BrteL5OEe6bFuhs4NCimfwxpgTACDvoIjhe/
547wBwaZevhquryzkwjqmd5I/f+aXgUkQxdfIWrmFcfALT+APpI=
=7PQj
-----END PGP SIGNATURE-----

--ufwaapt35wiwd75f--

