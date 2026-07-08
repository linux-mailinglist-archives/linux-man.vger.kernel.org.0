Return-Path: <linux-man+bounces-5708-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AVH0CkI0Tmr1HAIAu9opvQ
	(envelope-from <linux-man+bounces-5708-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 13:28:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E0724F7D
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 13:28:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UfFv3elx;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5708-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5708-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5E04301387A
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 11:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76CFF435A8C;
	Wed,  8 Jul 2026 11:17:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E526C3CCA11
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 11:17:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509475; cv=none; b=qG1Oma5u7lr4TWkEJdCSu/H2oUWVbdsHi+Bxca5QHqGOdF7tPacRS7se4zsfzMW3UZqSB19VNvubQJP/OoIFrbfFe7YOu8bfHAloKzYkBZ3GxWxlUif6rnqTjPoDk6ze4RGBorzof3pcASPoB6GsXazcKWKxQM+t3eBQdTij9ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509475; c=relaxed/simple;
	bh=U6VfP+Zn7jr4wCWNEMrBsvC/Yw7A6cMWHvjoCGcBSxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jV66A+R/sCDzQWWFCyoK0bwr7VWJBXSpLGRZKiJKD97QeJQELinOvWRQ1ApOUzTimLsv9evMh19QQCn0rNNDCPZWiehELvbceiOQbd29r6rBMaVqMOhBB/BF6DUqSZpPuv51z65VW9OKgaJo6UcTWRmlcJHnr7W5wZ3nwKUMj/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfFv3elx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED401F000E9;
	Wed,  8 Jul 2026 11:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783509473;
	bh=Nwr6n3dfR2PWXzeLHU8CHQJY2yBE7RpUQioh8xPl3rM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UfFv3elxqt14HBdjLGt0rAsaPhFL3oOPPIUW3+t+hvwEzOgY67JalOXZqHQObSfeW
	 5PI+4vbw577umuLzcwRACCTKz9jlD5RaH54uQe8pvL5ZSyYV4MLiyjbOP1IqGtL09Q
	 83g7LncVlJ4VbtbzlykCbIX7/EK82QGs/x2iQo7OmrnwOxab5RqoI5RrOZa5E9F11y
	 m8R9yOYtzOMHkYNigdYV1ywWLJv9nIoSXttD03hyKkeF/FZt1ymDY8699NCUQ8NI+k
	 a23NQ2yPBweTi0ibJdKv16cD0wWrhV1EoksHlzKgQbtUbLP/1TIvxRb3VZMOLCuW0b
	 5VtDB6SVRWS/g==
Date: Wed, 8 Jul 2026 13:17:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] console_codes.4: document more xterm codes
Message-ID: <ak4xQ66nid2RrSKe@devuan>
References: <20260708104303.39708-1-jengelh@inai.de>
 <20260708104303.39708-2-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hadopuw5njnkjuag"
Content-Disposition: inline
In-Reply-To: <20260708104303.39708-2-jengelh@inai.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jengelh@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5708-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devuan:mid,inai.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 865E0724F7D


--hadopuw5njnkjuag
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] console_codes.4: document more xterm codes
Message-ID: <ak4xQ66nid2RrSKe@devuan>
References: <20260708104303.39708-1-jengelh@inai.de>
 <20260708104303.39708-2-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260708104303.39708-2-jengelh@inai.de>

Hi Jan,

On 2026-07-08T12:42:45+0200, Jan Engelhardt wrote:
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
>  man/man4/console_codes.4 | 49 +++++++++++++++++++++++++++++++++++++---
>  1 file changed, 46 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index e0e88537a..a34adc57f 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -753,14 +753,57 @@ Set icon name and window title to
>  T}
>  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
>  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
> -ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to =
\f[I]txt\f[].
> -ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
> +ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) =
to \f[I]txt\f[].

This seems to reword the description of ESC]4;num;txt, which doesn't
seem to match the commit message.  Should this go into a separate
commit?

> +ESC ] 5 ; 0 ; \f[I]txt\f[] ST	Set the color for bold substitution to \f[=
I]txt\f[].
> +ESC ] 5 ; 1 ; \f[I]txt\f[] ST	Set the color for underline substitution t=
o \f[I]txt\f[].
> +ESC ] 5 ; 2 ; \f[I]txt\f[] ST	Set the color for blinking substitution to=
 \f[I]txt\f[].
> +ESC ] 5 ; 3 ; \f[I]txt\f[] ST	T{
> +Set the color for reverse substitution to \f[I]txt\f[]. Because xterm st=
ill
> +reverses fg-bg pairs, the effect is that only the background of a charac=
ter
> +cell is colorized this way.
> +T}
> +ESC ] 5 ; 4 ; \f[I]txt\f[] ST	Set the color for italic substitution to \=
f[I]txt\f[].
> +ESC ] 6 ; 0 ; \f[I]val\f[] ST	Toggle bold rendition: 0=3Dbold, 1=3Dsubst=
itute by color.
> +ESC ] 6 ; 1 ; \f[I]val\f[] ST	Toggle underscore rendition: 0=3Dunderscor=
e, 1=3Dcolor.
> +ESC ] 6 ; 2 ; \f[I]val\f[] ST	Toggle blinking rendition: 0=3Dblinking, 1=
=3Dcolor.
> +ESC ] 6 ; 3 ; \f[I]val\f[] ST	Toggle reverse rendition: 0=3Dreverse, 1=
=3Dcolor.
> +ESC ] 6 ; 4 ; \f[I]val\f[] ST	Toggle italic rendition: 0=3Ditalic, 1=3Dc=
olor.
> +ESC ] 10 ; \f[I]txt\f[] ST	Set the foreground text color to \f[I]txt\f[].
> +ESC ] 11 ; \f[I]txt\f[] ST	Set the background color to \f[I]txt\f[].
> +ESC ] 12 ; \f[I]txt\f[] ST	Set the text cursor color to \f[I]txt\f[].
> +ESC ] 13 ; \f[I]txt\f[] ST	Set the mouse cursor foreground color to \f[I=
]txt\f[].
> +ESC ] 14 ; \f[I]txt\f[] ST	Set the mouse cursor background color to \f[I=
]txt\f[].
> +ESC ] 15 ; \f[I]txt\f[] ST	Set the Tektronix foreground color to \f[I]tx=
t\f[].
> +ESC ] 16 ; \f[I]txt\f[] ST	Set the Tektronix background color to \f[I]tx=
t\f[].
> +ESC ] 17 ; \f[I]txt\f[] ST	T{
> +Set the background text color for reverse video (provided it is not subs=
tituted
> +with 6;3;1) to \f[I]txt\f[].
> +T}
> +ESC ] 18 ; \f[I]txt\f[] ST	Set the Tektronix cursor color to \f[I]txt\f[=
].
> +ESC ] 19 ; \f[I]txt\f[] ST	T{
> +Set the foreground text color for reverse video (provided it is not subs=
tituted
> +with 6;3;1) to \f[I]txt\f[].
> +T}
>  ESC ] 46 ; \f[I]name\f[] ST	T{
>  Change log file to
>  .I name
>  (normally disabled by a compile-time option).
>  T}
> -ESC ] 50 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
> +ESC ] 50 ; \f[I]fn\f[] ST	T{
> +Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" resou=
rce)
> +T}

Same here.


Cheers,
Alex

> +ESC ] 104 ; \f[I]num\f[] ST	Reset color for mode 4;\f[I]num\f[]
> +ESC ] 105 ; \f[I]num\f[] ST	Reset color for mode 5;\f[I]num\f[]
> +ESC ] 106 ; \f[I]num\f[] ; \f[I]val\f[] ST	T{
> +Exactly equal to 6;\f[I]num\f[];\f[I]val\f[]. (no "reset" logic)
> +T}
> +ESC ] 110 ST	T{
> +Reset color for mode 10. (Codes 111-119 map to resetting modes 11-19,
> +respectively.)
> +T}
> +ESC ] \f[I]mode\f[] ; ? ST	T{
> +Query the respective property/color/etc. (modes 4,5,10-19,50)
> +T}
>  .TE
>  .P
>  It recognizes the following with slightly modified meaning
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--hadopuw5njnkjuag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOMd4ACgkQ64mZXMKQ
wqmfXg/7Bb6OQAO8BuxtISN+hevkjPDH9vQSevv3WfJ99pg//v3fIHEnaK0BUJVP
2q4R+knLb1qF3EDL6/eIiqdnGLoXZceeS8Td12pkjSeAPgynL8+6D6VGR1A9aQSX
ZzB5Gdl/Ka4VvR1ZFWd2R3Am+2Fg19jZk+wtbgT0AtWJf5gtK+QAUDVXugTho2ni
YVoKaX/yVNtG/C8IkXfCO4acX2ecgGDDSRZmN42E+AU1Scro7LeRU8+vVcrZpGJk
J2khSOrTqBhOqWbIZcr11eqKAW7fPtKRKjLT/2fG2S79BBgiMFbX2WABAc2KgCyM
Lenym/wCi3/f/SWahNK8Fab8Lb70zWf8Tq78Nm+7rkEN6sYZt4FSxLfNlSDFGkBm
dolZbbReCXAD1hKuPYS/9E7qGuGqVyOaN6skm6H3XEI0V3v92mbKeZEcbVOI0mqV
lxdBMSSNzNYAGbmdsYhA4KhATEUhMQjgcOPUEQHSqW1LaaM4mKzcCP1GfIW0gwwk
dGp7ZDT09BCXBHTEvD9Q2TkPHBZTY12raWXoLVlpI6kfvSUEH/ocwRkH+O2nW2gU
i24/kLnd1h8lHDa9lgu0U3ekrkMBuAevxdIAA6TL/QQGCYKTih2vYx5CwsOg72dc
nR9WDh6RqdCaNRYFGobCG7LsZKm06Z57Z1xFCKYvEn/UkO4vz74=
=Vsw0
-----END PGP SIGNATURE-----

--hadopuw5njnkjuag--

