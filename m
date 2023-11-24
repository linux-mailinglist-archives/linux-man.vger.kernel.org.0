Return-Path: <linux-man+bounces-161-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E46137F861E
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 23:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED5A3280CE4
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 22:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307813C49E;
	Fri, 24 Nov 2023 22:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSk6hSi/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8ACA33CC1
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 22:25:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC5D4C433C8;
	Fri, 24 Nov 2023 22:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700864714;
	bh=UVqEokoW3Mp5F/y0n80U+DOl8ho4OJ0yobLjlPYXiyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GSk6hSi/85W4RQvniNd9lM+AtALAyDq1nolpAZyA6yRrJNmQamMoRxutW3BI/ObLm
	 CF94r1LAGZW5LGt6R/GFIYTaSZNN0XTFMXN45azm1kLuXvkkMuzL1UWz5aZRpTUeLI
	 6ihZpDBIGTn8jtd1LW91Id7KB9q/HDa+h12a39Pwb89oYoV99XHrqoXcOP5cQDpRap
	 1S3SzigjSEQSEPDJXiiBZyqW6AoF3zKCGvYOYFnqZ5YJ/ttGyTNCyLJU2Rz6CpRrex
	 cALEsgNAxLSb7acqtkabCrOI4wQb90wJtQ+vn3CfB+GxBei0xY7Ha3L8xYHesOOrVf
	 Frrai13Pf8WJw==
Date: Fri, 24 Nov 2023 23:25:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: NULL safety
Message-ID: <ZWEix_Ua5QDWzv4C@debian>
References: <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>
 <ZVAB2S-IxKLABk_w@debian>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
 <ZViHm8HyxefeJ_SW@devuan>
 <e35720d5-3a52-4092-a134-6edb4297e783@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y7u8QIpti8Gi/QVX"
Content-Disposition: inline
In-Reply-To: <e35720d5-3a52-4092-a134-6edb4297e783@jguk.org>


--y7u8QIpti8Gi/QVX
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 23:25:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: NULL safety

Hi Jonny,

On Sat, Nov 18, 2023 at 11:21:00PM +0000, Jonny Grant wrote:
> I saw Christopher Bazley was talking about this. As I understand it, _Non=
null is milder than attribute nonnull. _Nonnull probably helps with static =
analysis, but doesn't optimize out any code checking if(ptr =3D=3D NULL) re=
turn -1;
>=20
> Saw this, did you get traction with your proposal?
>=20
> https://discourse.llvm.org/t/iso-c3x-proposal-nonnull-qualifier/59269?pag=
e=3D2

I didn't follow up with that.  I'd first like to be able to try Clang's
static analyzer with _Nullable, to be able to play with it.  An
_Optional qualifier would only be usable by something like -fanalyzer,
or Clang's analyzer, since it needs to avoid false positives that are
quite complex.  It's not a warning that you'd want in -Wall.

And since Clang's analyzer isn't easy to use, I'm not working on that
until they make it easier.

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--y7u8QIpti8Gi/QVX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVhIscACgkQnowa+77/
2zJHfQ//cAtSO85pv/UNhpszeqmmllCks6K+tTsdccaRhkAAKy/Tyh/k++s0d3Ui
6muGZQ0gQO0YqHDjyAiYga3H4jyq1FwlrbNTmPww5i+dPymEmBULgPk1ZJVnRqqC
tB50ndxdkh+3XbPVw4jxNKhi3rKatfHQ8T/DeixYAkzxlUDPfaxoea5mfEamEczT
gn4EZA6wGPGc3jorznTzwKzoqhNExDjQfyotRyVU81s+7GN9k4sSXKGLVuLkZ9Kl
a4efvtFaiPA6eY3jHNgYfUnEPaSwUHnVzGhneiam/RQeJCbJiHruEw97P4hnqUzT
+1+4KB0GULtOctq5f+bnoyoPkeaYS7tcVVhy36Q+QNfQFsVx5ctn0poVEN4nuo3O
UgJpfdkJYbpowPo5hMJYA6ImwG/dVXjv1VJkm4HKB3iHWiz9VFug/t8rmRd+YWZF
dPTdExK5a72Cw+WTGkfZMaR1U6Q1W0GwfsyPmgJESEE8ilAYq7aSpQMlGuWPRF2y
5g6Gw+63k2VSugRzj2EJ9JorMsJwK936ojtvmo8UWDGXpEX/79yFKkWVEC/yKDqV
Q97Lz606OdqPH7mBMbsn4kNep+Ai+4aSg5HoU6DbKGg8+YAToW2Hrx260iRPArPf
UpfdvxkBkruXHneqaaYc8+QOwxlMXRjbh5dIq4wxur4/su9E7Nk=
=sr2A
-----END PGP SIGNATURE-----

--y7u8QIpti8Gi/QVX--

