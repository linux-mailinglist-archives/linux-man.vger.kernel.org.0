Return-Path: <linux-man+bounces-5723-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4+NRMyR0TmpUNAIAu9opvQ
	(envelope-from <linux-man+bounces-5723-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 18:00:36 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8997E728607
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 18:00:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OlnVwbAz;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5723-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5723-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EFB63081900
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D829E439333;
	Wed,  8 Jul 2026 15:30:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC401684BE
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:30:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783524621; cv=none; b=EvYGWL2qJrBy++CtkBP4+T7sjw/gFIVQYSl/i4AlQaJ4zoauBldp7ME1YL4iHuf5y3cjro4vz+J3s1jJxTghildtmrus+LG8tdl+nyMbOp1yEe3ZlPgvpsV8JOeYSTVioqILKfbUSnmwjGNw3AYoJgL6VHhM5wk9e7EQmjJwWCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783524621; c=relaxed/simple;
	bh=vHQ7qY1B+kUCryfCNUanEwOjBY8Q0QEG6lwWEv7lXyA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kop1bdLxJpfDbf0Ny0DLjGjcM46dumGZl5wS5+n56Bmlnt46/rETSHlOZBLUqgl4oDJxcx/Ru8LAjp2Ooc2XxJUbPQ9RK/91zPObq8A12Qll/z3TAsAL8AjLYVJVwQIYAPcgqQSGHolq/N/yUCnxMogqMUHO2NrUHEY0u++nPP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlnVwbAz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D731F000E9;
	Wed,  8 Jul 2026 15:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783524620;
	bh=lu2+bR0yj3YRPyZu0h3uzMeZBCwA+MFJ6WkFhaZ6IE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OlnVwbAz2A2IOOj9S/TqLRX76XSoPIV5YBJIJXGNxk+19oym3VOStlqIJCKT1jmPu
	 WqQbmo2P3N7kxYIzyL5vA1GbQfakO10MsnCQMta2WC1RzxCbSoBnSj3DDAfpnqlg7C
	 tvMeaxeUDtRoInDgmMI7WbzzzPvfl4QJf6+svVyqpE02+Tb47hXfbXY8JnnnkFhURN
	 thNf+zOEbQVN1s6HzZWzJ97EaCOSl12QI2ZHQR7mvTDEs2i+qNGu0GuANrD5iloU50
	 7ufJ7jm5x/7+TGCqsZTBVUfGv2X/cDrw7AOTaPobVnAmz1IyzYqBm2EL2KIdKFhN7v
	 cCqdoJl2n36TQ==
Date: Wed, 8 Jul 2026 17:30:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] console_codes.4: document more xterm codes
Message-ID: <ak5s1Fdwmy0E0M3i@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-4-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4kz3ny6n4t4hk7n5"
Content-Disposition: inline
In-Reply-To: <20260708121458.46465-4-jengelh@inai.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jengelh@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5723-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devuan:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,inai.de:email,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8997E728607


--4kz3ny6n4t4hk7n5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] console_codes.4: document more xterm codes
Message-ID: <ak5s1Fdwmy0E0M3i@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-4-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260708121458.46465-4-jengelh@inai.de>

Hi Jan,

On 2026-07-08T14:14:58+0200, Jan Engelhardt wrote:
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
>  man/man4/console_codes.4 | 41 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index e309293ca..a34adc57f 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -754,7 +754,36 @@ T}
>  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
>  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
>  ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) =
to \f[I]txt\f[].
> +ESC ] 5 ; 0 ; \f[I]txt\f[] ST	Set the color for bold substitution to \f[=
I]txt\f[].
> +ESC ] 5 ; 1 ; \f[I]txt\f[] ST	Set the color for underline substitution t=
o \f[I]txt\f[].
> +ESC ] 5 ; 2 ; \f[I]txt\f[] ST	Set the color for blinking substitution to=
 \f[I]txt\f[].
> +ESC ] 5 ; 3 ; \f[I]txt\f[] ST	T{
> +Set the color for reverse substitution to \f[I]txt\f[]. Because xterm st=
ill

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Cheers,
Alex

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
>  ESC ] 10 ; \f[I]txt\f[] ST	Set the foreground text color to \f[I]txt\f[].
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
> @@ -763,6 +792,18 @@ T}
>  ESC ] 50 ; \f[I]fn\f[] ST	T{
>  Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" resou=
rce)
>  T}
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
>=20

--=20
<https://www.alejandro-colomar.es>

--4kz3ny6n4t4hk7n5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpObQkACgkQ64mZXMKQ
wqloAQ/9EjW49bkLG3g6zSn99XDaUfn7o30v1ytpRm7pugC1MDu5f4MTnbYU7r/S
xCpThbiRet/qiax2nyYZSwZyFLw7TF0rapR6apDMpMi/PUarj1uZ+ulP0kFwHc6F
9mcxWiE5PE4TSsA9jkDzlYTvpAc7953mDhRyZbbtkKdaOJ9xp7+5ArRrTRRFRt/O
ACqVlipuJqd5VDJzrjLixDQQ94zFsOFniYoJgVpaIwBPl9kIrGS79ej5WE12nFk9
Ui7rgqqeKLu19auJXp2sPoN+o0e8MxziDpt5NePurAFR+BwQgJNU6dfVbNQ8Iym3
XLJrvW3hK7UzpL8MpQdQZJvtcSnBkfClI4LcjPQdX57C7W6CIl2Fitk174OtwEpj
RGykv6dnXftdDGAVBg+5qSt4q9jtWCfoBROs+TOwCt4YXxVTzSB2wXCOALsrMg4s
vqvQ1Oj6EOneo+1FKaKk7y3n8NJGKCPxH3rvrHZfP1MajrouHpGDiCCCVZunCk0v
rXgJI0zpB9DdrbJiv+nHA85BqycJjIHme4xgnpFgn1IUIh0V/xvRgF13phIAKonx
0nOyis++ciujdPUpSkMWKYrB0qMQImpYV9+39UuEO4bqk7CsJCexwU59ZEBDs3r5
sTmvOIBGTkWg/VlQ74mNrZ9cQvOO6qWAu+cbq8FfEiasrKkxwAA=
=TVPn
-----END PGP SIGNATURE-----

--4kz3ny6n4t4hk7n5--

