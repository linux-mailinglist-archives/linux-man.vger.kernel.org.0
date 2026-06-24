Return-Path: <linux-man+bounces-5664-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JkYGI0m6O2qtbwgAu9opvQ
	(envelope-from <linux-man+bounces-5664-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 13:06:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F94E6BD8C9
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 13:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FxchrtBz;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5664-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5664-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7FB533009385
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 11:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2FA282F05;
	Wed, 24 Jun 2026 11:06:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CEF12C534
	for <linux-man@vger.kernel.org>; Wed, 24 Jun 2026 11:06:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782299202; cv=none; b=N9g19HNULY+Xlso5bcBK+6saYT4leax4psW1LGbluVGBX74tsxW+kE5cB/kibR2ZcbZsvFXdVc7L5A6q60lYfcPhtuqnziaYz5w6KrhUbQLQURd/G+XK1GPGdj3rS9XOFj9hoWYG9rruHyIOvKsH4tUtgUMkIShSrHnbdaanDe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782299202; c=relaxed/simple;
	bh=Q2bdMr4OpPYcvHkrN7y3C1n4X39PNzyBBZCs7fMCc9c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMRA6Q77TMOktFwL1H5QeY0Xi3Hf1pI5bpUhej8dG8Ugl2m1bM9Su02SIQjqRKmnrHw1LjhsZLRwkjpvnwkmmY+eGRvLttG+GHekqR0LSD2Q4kmNerAdadZTeaj7PeU55EaUjUnDkMIA3zrIotXSEUgA/TebfSwN5rxluSUlHQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxchrtBz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D470F1F00A3F;
	Wed, 24 Jun 2026 11:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782299200;
	bh=e421bAh2kfcf1GGcyxvleAmrb8RBJUUyrl7kAKfuVCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FxchrtBzfupZcBfpvysMubdq+u+yl+nq391jNOvBvXz/iw/CvFu85IAfUa8fC9w3o
	 Jy+JJbiSd//ZM1pvbhaa/3e186TKxisHLFOwDPvPoq8eU/yb2Plf6ld6b/OSp5PqDF
	 TwemgvXV6Y0MKp8FbfrHowWawMaxiIXvibGiJ85Zp3dX6wIUjpGSFc+MJiSX/geAJY
	 LBxY3r0/uLXG+uF4FTDLXNnZ53R8QOOmbyn4ZSs1+MLNe/I7ZWYPLgYNUyRdO5dyHo
	 HQhdVjEzD9sUPmLmNr7NcYF57f+LbBpAk45VpYLJE+11YR9Xp8T9JOX1iD2h7IG+uS
	 etYefCh6tbMDg==
Date: Wed, 24 Jun 2026 13:06:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] console_codes.4: document more xterm codes
Message-ID: <aju5-L_vItUNO-i0@devuan>
References: <20260619100750.73857-1-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qkxnbu4o7ztnrugv"
Content-Disposition: inline
In-Reply-To: <20260619100750.73857-1-jengelh@inai.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
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
	TAGGED_FROM(0.00)[bounces-5664-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F94E6BD8C9


--qkxnbu4o7ztnrugv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] console_codes.4: document more xterm codes
Message-ID: <aju5-L_vItUNO-i0@devuan>
References: <20260619100750.73857-1-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260619100750.73857-1-jengelh@inai.de>

Hi Jan,

Sorry for the delay.

On 2026-06-19T12:07:11+0200, Jan Engelhardt wrote:
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
> v2:
> * Removed a copy-paste leftover in the wording of OSC mode 17/19
>=20
>  man/man4/console_codes.4 | 48 ++++++++++++++++++++++++++++++++++++----
>  1 file changed, 44 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index a742cf36f..d92522e27 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -753,14 +753,54 @@ Set icon name and window title to
>  T}
>  ESC ] 1 ; \f[I]txt\f[] ST	Set icon name to \f[I]txt\f[].
>  ESC ] 2 ; \f[I]txt\f[] ST	Set window title to \f[I]txt\f[].
> -ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \=
f[I]txt\f[].
> -ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
> -ESC ] 4 6 ; \f[I]name\f[] ST	T{
> +ESC ] 4 ; \f[I]num\f[] ; \f[I]txt\f[] ST	Set color \f[I]num\f[] (0-255) =
to \f[I]txt\f[].
[...]
> +ESC ] 46 ; \f[I]name\f[] ST	T{

This patch mixes additions with formatting changes.  Please move the
formatting changes to a separate patch, so that the diff is smaller.


Have a lovely day!
Alex

>  Change log file to
>  .I name
>  (normally disabled by a compile-time option).
>  T}
> -ESC ] 5 0 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
> +ESC ] 50 ; \f[I]fn\f[] ST	T{
> +Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" resou=
rce)
> +T}
> +ESC ] 104 ; \f[I]num\f[] ST	Reset color for mode 4;\f[I]num\f[]
> +ESC ] 105 ; \f[I]num\f[] ST	Reset color for mode 5;\f[I]num\f[]
> +ESC ] 106 ; \f[I]num\f[] ; \f[I]val\f[] ST	T{
> +Exactly equal to 6;\f[I]num\f[];\f[I]val\f[]. (no "reset" logic)
> +T}
> +ESC ] 110 ST	Reset color for mode 10. (The pattern repeats until 119.)
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

--qkxnbu4o7ztnrugv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmo7uj0ACgkQ64mZXMKQ
wqlrxA//f2q8QJiBTFqholWKBSqwZ+vjNH2mYZD8GVLlk1Va+ALZvZXR1hAd1btw
prsUhSwqm10NvXIoHmg0ZpUxuLFhvJlEaPwiqiPIS+kt9za6XUOibyOTDCybiM2U
KeCbaTds/bkhF+JnZfF9GXKn/hQ0CcAYyM9UMfLnnGxm8T3Iaeuq9sUDQqbBMkeJ
hJr1gHa0oMJwjzjxAFk9oqgMYLscvnL+C3m11gOGC5QnlEdbHsjFv/yQIY4o3r3y
GjxTseOcc43df9VZQ+bmFiyZ/MatUXQVSjh77SFkKocd+njU1cm9LQo8pudv3tHI
r/sjT/j1h1OrFvhMfo462veDQRj3P3E20p+Z9/qT89QvCLvT+XSngEoMSH/3DNZV
FI39NwrUUdoHrJh0fFvu987BE3U2uS3R0DnIPe9JK73+oEejc+OtT5YHPHfvRY6Z
sTh0pJlET6VkphPm1cLrkf4oOjMCndiRZc+9MEzt3mL04ChJt29SKQgS519hEXxj
WhSlVke5hE/HsT8wnvNVd7n2LE81tOuScp6UXB/9bYT2c8TMf/AWKWrJ0amfRAxt
XYajfyQ4HuawK/YfZulJkCeu4AH3+i/lh5NPx+S3i6pSZGAN603aBXDdwGzcgMkT
rKMSyQqMPBb3WsS84BlrgW0zEZKzx3ZTZw3NFcGRz4oeFTtrCSA=
=SwtO
-----END PGP SIGNATURE-----

--qkxnbu4o7ztnrugv--

