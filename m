Return-Path: <linux-man+bounces-827-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F7B8B4226
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 00:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE48A281796
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA06383B2;
	Fri, 26 Apr 2024 22:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmvyCr8K"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E75C374EA
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 22:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714170455; cv=none; b=GPVY0nkXrcF2S/N0SaqeBVeo9fswpNYmZl8EdpZeeyiQGfYD8Her4WrRZ/q9lrzyO0XiPN12W+BXHM9DguzYFpg0S5fX8M/K/9DG2+T2+nzhRJ0cJ28zR4VVBG9i1mC6qlElK/7fWh/1cobbE2cVtHrGfWZmTmDq39qiU1ftfbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714170455; c=relaxed/simple;
	bh=HFATwK1CEsrfYPbcXOumBKVyxNX6saydqmzQ5gxLwbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GzPtpylbYM5qzdBcHJX9eX0DKzKipSr8EutM6RqLsqLzZWAtOVxMa35wWm6xMLvL6I/ASbuJh0mG6KMHkcYIOWQ3e99bRnGOXaZZmYamG8QA8Hx+5q1OW8UMwTD6v/TlLJMkeE9autjrBgiX2sMZXH/RzdP5s1LsH85RpYWgl0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmvyCr8K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27B1BC113CD;
	Fri, 26 Apr 2024 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714170454;
	bh=HFATwK1CEsrfYPbcXOumBKVyxNX6saydqmzQ5gxLwbU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tmvyCr8KInEgt7NAk9ElVNaOGaQoPL4OTS6Dmg7ewPzi1pDeLDUuTR1LCwD+giOAH
	 4ykZTZjFLC+QeVPL1VLgGc4GyabK78GAk7NH6FcdWuREMnbFPiaoBqdS0o4DSztAQK
	 hZ3D6EReFutHfytX1oZP2AylQ1RnWyCkmblr694Ro6Nu8V2OaoieOJJ3Xad/57FMaz
	 AGEMTIvA0NNSBuVostpW+fFV3mSYJ14qKqGYpZFVyM3zHd4rKZZBxcr3ee+aToFsvR
	 /k2OsWePp3D5Lfy+nQInZW5Q2H8sJY1WDzD3vNbKh7/j+7wLmsmTC/NViGO+SP8wUx
	 Md0OIbshCCsBw==
Date: Sat, 27 Apr 2024 00:27:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man2/syscalls.2: srcfix (1/3)
Message-ID: <ZiwqU06Pg4Szfm3_@debian>
References: <20240426214403.mvskw552dm2wyaus@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WdI67N7PP6oxqJwg"
Content-Disposition: inline
In-Reply-To: <20240426214403.mvskw552dm2wyaus@illithid>


--WdI67N7PP6oxqJwg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Apr 2024 00:27:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man2/syscalls.2: srcfix (1/3)

Hi Branden,

On Fri, Apr 26, 2024 at 04:44:03PM -0500, G. Branden Robinson wrote:
> Migrate table entries from using font selection escape sequences to font
> alternation macros to set man page cross references.
>=20
> This change was automatically driven by the following sed(1) script.
>=20
> $ cat pre-MR-migrate-cross-references-1.sed
> /^\.\\"/b
> /^\\fB[^\\]*\\fP([0-9][^\]*).*T{/s/\\fB\([^\\]*\)\\fP(\([0-9][^\]*\))\(.*=
\)/T{\
> .BR \1 (\2)\
> T}\3/

Are you sure?  I tried running it, but got a different diff.

>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>=20
> ---
>  man2/syscalls.2 | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 7a7d6d730..979dba538 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -187,7 +187,8 @@ .SS System call list
>  \fBchdir\fP(2)	1.0
>  \fBchmod\fP(2)	1.0
>  \fBchown\fP(2)	2.2	T{
> -See \fBchown\fP(2) for
> +See .BR chown (2)
> +for
>  version details
>  T}
>  \fBchown32\fP(2)	2.4

I see the following, after applying this script:

	$ git diff | head -n30
	diff --git a/man2/syscalls.2 b/man2/syscalls.2
	index 7a7d6d730..278fa3361 100644
	--- a/man2/syscalls.2
	+++ b/man2/syscalls.2
	@@ -146,7 +146,9 @@ .SS System call list
	 \fB_llseek\fP(2)	1.2
	 \fB_newselect\fP(2)	2.0
	 \fB_sysctl\fP(2)	2.0	Removed in 5.5
	-\fBaccept\fP(2)	2.0	T{
	+T{
	+.BR accept (2)
	+T}	2.0	T{
	 See notes on \fBsocketcall\fP(2)
	 T}
	 \fBaccept4\fP(2)	2.6.28
	@@ -162,22 +164,30 @@ .SS System call list
	 .\" 91e040a79df73d371f70792f30380d4e44805250
	 \fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
	 .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
	-\fBarch_prctl\fP(2)	2.6	T{
	+T{
	+.BR arch_prctl (2)
	+T}	2.6	T{
	 x86_64, x86 since 4.12
	 T}
	 .\" 9674cdc74d63f346870943ef966a034f8c71ee57
	 \fBatomic_barrier\fP(2)	2.6.34	m68k only
	 \fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
	-\fBbdflush\fP(2)	1.2	T{
	+T{

Did you maybe apply the scripts in a different order by accident?

Have a lovely ngiht!
Alex

--=20
<https://www.alejandro-colomar.es/>

--WdI67N7PP6oxqJwg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYsKlMACgkQnowa+77/
2zJMJg//cScVwIoeUpeEI/Ai7bDbwklzagDduv/DS1kGkDw2rmzvJUxRBdCsExje
LY93lWPtFfpo3rgvTzpxw7kYvxDY97c67jDSgzSHRAaSok+Rxc/LNQ+9ic6Ztq5y
+xrOb1lubEuzC6y20rJY8k3E5zN5X0BuhCXhq7eWQsywdL77+y0qvJokSarwj2LB
4Ahvf1Jx2cppsFDmaaEaWxOBKlfV4S0NtboEtBqpIPXA6fMoudywqOn3nB9dzU8g
VTlgVvpnlNUN5j2/Pr+a3B8W6ZUdRWSbIR1NksmYkJIrrhwokIfE+akLgKwtaGS+
agY2yKWquJahx4q080u8VfK6nZKvQRpjCtKUavAWhB46nS4B4WvfvxQatq5e2FXc
0fxE6XAFg+buETyNixjMqG7T4Hf+Rblsks5KFCgFdZEXyOtE9kjhZxhCWdZ8e9LS
1fTzKtvnOTNh2CrGLC8B3MgNEPRVe7R82c63OoSQ4Z1sHiicl7wr8jDi1SwBHGJZ
aB9S7nHW0uTdSf+vei9rsmdJSod1gpcpjubEUHoyWSE5jdMtMjIKCxXHT36kyhf3
aCYCUrnOdE5pSaSQlGANaFHD82fPcgsls2M+g+JJnadYkTF1ei3M2MHygUDOtTv/
4RRTDyC2iD/HRBoKEVb7fANkIk22D0g7Ah774Y9bb+LGuSLQCUo=
=wltI
-----END PGP SIGNATURE-----

--WdI67N7PP6oxqJwg--

