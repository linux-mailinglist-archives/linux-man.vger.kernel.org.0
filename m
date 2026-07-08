Return-Path: <linux-man+bounces-5707-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kJfPBJAyTmrTGQIAu9opvQ
	(envelope-from <linux-man+bounces-5707-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 13:20:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 709D0724D78
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 13:20:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="or/dh5zW";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5707-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5707-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 029DC3041883
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 11:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30A4434E40;
	Wed,  8 Jul 2026 11:14:46 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6419943DA55
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 11:14:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509286; cv=none; b=VSbyfLrGZVt+CKBQjY6bKDGf4wBruxgLwtVnyGIOdyL8WD1b+KYrDYbrCL5eM28IZxNKKIWCRp4T+irYP+s/GG1IdyWn1+OsbiGYgy6ODgD/jaBT+D3pC/frOZq+0pntU4XF9Mwx1I8Ugr1UQ8SqaLknFXaPBXjddWSE8TxS0vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509286; c=relaxed/simple;
	bh=vUXJkAIDlpXNA7oNoMvThTVJXGD1HwjRpld4Hm68gCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dBgqSEPV8mhWLa001mGA0Du4vj8PSIXkMx+EtVwYCkTcC5PIiBhg8DM5px6vSguDHvFilsOn1fqqVUsZzt0Lwp2CTdw6sj+A4+3npstR8/fZpv5q+sH6FJFqPYrXhVkeGuJFiLkuuy8BJ/wxw1EjjTOwxEQbuIlZpZPCM9hHSmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or/dh5zW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FEA31F00A3D;
	Wed,  8 Jul 2026 11:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783509285;
	bh=bHM9hGu2C63n12O0Fuu7uCMVgA3OCWpUcgwzyz5NM3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=or/dh5zWbEoUY+00N8MNR5K687TUC1vuwovGeNDPMshKFT8FdfN3alZmK/LFuQeBy
	 Xt/yVw2TcjNWlsWZM9is/CFj+eXEqTyxQPMOTrIehIAqhAjXNRs7f57uNDMOf2EPa9
	 wANM6G9Ds5kvU0PDloMCsElQ5nL+vQBE9DGzlNBwXr+dEa+31CB5PRr5murR63+TLx
	 jPDshGiE3vEnq9/AoLNl4y4W8jIZX6x7c8DoBu1sMdv7LGjtOku+7rFgBBPJAm5/N1
	 DbJ+jc81hglMiSpxXPBpWwDRHdsLGf6W0qPRLbnCLpbDju47xkOYfVzuEsCl6/Q6sx
	 IYzRuSG65rZvQ==
Date: Wed, 8 Jul 2026 13:14:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] console_codes.4: align spacing aids in escape
 codes
Message-ID: <ak4xDsIwWYRnn6j1@devuan>
References: <20260708104303.39708-1-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5k5u4ltv2omien5g"
Content-Disposition: inline
In-Reply-To: <20260708104303.39708-1-jengelh@inai.de>
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jengelh@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5707-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,inai.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 709D0724D78


--5k5u4ltv2omien5g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] console_codes.4: align spacing aids in escape
 codes
Message-ID: <ak4xDsIwWYRnn6j1@devuan>
References: <20260708104303.39708-1-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260708104303.39708-1-jengelh@inai.de>

Hi Jan,

On 2026-07-08T12:42:44+0200, Jan Engelhardt wrote:
> The space character is used as a visual aid in the escape code
> sequences. A few lines had spacing inconsistent with the rest of the
> document, so align them.
>=20
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man4/console_codes.4 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index a742cf36f..e0e88537a 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -753,14 +753,14 @@ Set icon name and window title to
>  T}
>  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
>  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
> -ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \=
f[I]txt\f[].
> +ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to =
\f[I]txt\f[].
>  ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
> -ESC ] 4 6 ; \f[I]name\f[] ST	T{
> +ESC ] 46 ; \f[I]name\f[] ST	T{
>  Change log file to
>  .I name
>  (normally disabled by a compile-time option).
>  T}
> -ESC ] 5 0 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
> +ESC ] 50 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
>  .TE
>  .P
>  It recognizes the following with slightly modified meaning
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--5k5u4ltv2omien5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpOMSEACgkQ64mZXMKQ
wqlUIA//YFpwUsxluhfilTUT3Yih7LW6rSfUXD6xStRY5fPgMgsLPEYLO/foUfQ0
Qg+HDbPEM19kJwEIkY7flmGJSrFbPx9kNEpp2cgs/2Hrf53LyU61T/jZEDdIcA57
0ZsPKnnetkRbsYI8F8aU6Xz3lEeXCA/vShyZ+44V4X+ormwwCUtcisOI1qfGamr5
EOzb2bwNYlVLtEqKva3eaV9a/Af0HW8EH54czD2wI5W//n3xKSttiHOk2arIum4e
+j/fbkoSJ77/dowipxn3AZxfpYG959/nM+VL+o+PNGtw9HVeA4SGIxMGOxhiAu7h
YOBilGrKmLfzsO4VWLS9ZLonGAAoj7jyiT0j/9go+J4QMWRPJuZiezJt3720e7SO
TburBqCmPCvgRFQqQ3vybozH1sVk15tSOiu3Dtxxzd9S9ry7pnfTg6AMz6A9FGAM
QMZzHOCo+vw4YCI8arwzTmELkzjjPt0cPaqySY0sQn2Tc6Bdo4lBBp2s1s8PNESv
DYIMnCGDETvyam/pN0Z/Gl77Y0ejPt81XCx1f/MzO6GoSYwt7wM0mKcvtT6QvQRL
uvLkCZ3ew+qNf0LC4gAKuaDJhjOq9vRJLmCIva9im3c4kdlmae8261iHTU7NRSQ3
AzQs4PZNoqQDPRrBuU5zRuvoWl96nz3sVyIUtooOetqRezVyzJw=
=65ZP
-----END PGP SIGNATURE-----

--5k5u4ltv2omien5g--

