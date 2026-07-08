Return-Path: <linux-man+bounces-5722-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FoMHCDNzTmoENAIAu9opvQ
	(envelope-from <linux-man+bounces-5722-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:56:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1189F72854F
	for <lists+linux-man@lfdr.de>; Wed, 08 Jul 2026 17:56:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ExbgHdNy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5722-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5722-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 412AF3063CF6
	for <lists+linux-man@lfdr.de>; Wed,  8 Jul 2026 15:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DF8D3F12C8;
	Wed,  8 Jul 2026 15:29:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0AF3F12DC
	for <linux-man@vger.kernel.org>; Wed,  8 Jul 2026 15:29:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783524563; cv=none; b=ZxWpujntsKUxfkahqxTFdGRSMQfIkwt0oNNwFxhQ+xLmVbh6O2A3fMtIjqUtiRvc+/ScDYewqM6o20J5abby824+XtsYFR+H/UJtEt3FuDKTbOyIyLr5p1lm/GcYwWtonyy7MsM0TpZ3s6UJGfVtHrztB6wRceDNIRLpZUBVgBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783524563; c=relaxed/simple;
	bh=tMecra7FtkZI6nKv/PISaRgsmQGKO9AWl2JaRDy6YNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PVi0f3IXcNb8WcSconoHDTZ7MsGqNuVHegTD4YX2LkvgCOYdieLMaQkaeYTep4fa9YU5RbQ2BKbzMgfEBCWOu5SMCf3whhVMExP89yWiyoy8gdKs42N1hkGZJkhamAuleW+XDoikmGYSVO0SjUKOtUlL0914uflMCqb5i/8SBC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExbgHdNy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 061EA1F000E9;
	Wed,  8 Jul 2026 15:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783524560;
	bh=ASWn1ovW6fZXVuSOQO/8TmB1BlSk9M2cJoltulazj0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ExbgHdNyb7VOGw5M4mysRz3YxvmV0M7YUsupfi+46ymrOR0sQnRDJxkIpagn0h4Wf
	 AJEjhYSE3p8euY1wrCVF7okBN1TPPb30G0TlXRjCngfX+JZEaMaX6WrfJ7ty6a4nky
	 F982+gmvKrw/d+sNK6JIbC99vNTT4YmzbJ5Srrw3Worvo37AwKh4HyaFug+UfyJzAu
	 eywayicbzShGP6PkxopTMv00iXHJAqzGQjE5FfsZwBBf3J3V3E/NV7X1BJcQx0Oa/E
	 D0uMWTriub0s9qNjigXkb8CO+ZXZ3Rd7ezM+tup/VPaVeJx6y0NgQKqYJvE5YSnVNq
	 tYIz0/OTxqIGQ==
Date: Wed, 8 Jul 2026 17:29:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] console_codes.4: mention caveats for xterm's ESC ]
 50 command
Message-ID: <ak5sM16sSOxLmWZo@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-3-jengelh@inai.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jdqlkolpo7ym43dy"
Content-Disposition: inline
In-Reply-To: <20260708121458.46465-3-jengelh@inai.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
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
	TAGGED_FROM(0.00)[bounces-5722-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,vger.kernel.org:from_smtp,inai.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1189F72854F


--jdqlkolpo7ym43dy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] console_codes.4: mention caveats for xterm's ESC ]
 50 command
Message-ID: <ak5sM16sSOxLmWZo@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-3-jengelh@inai.de>
MIME-Version: 1.0
In-Reply-To: <20260708121458.46465-3-jengelh@inai.de>

Hi Jan,

On 2026-07-08T14:14:57+0200, Jan Engelhardt wrote:
> Fonts are only settable if xterm was launched with the right options
> (or X11 resources) that would allow this operation.
>=20
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
>  man/man4/console_codes.4 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index 2fa8368e1..e309293ca 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -760,7 +760,9 @@ Change log file to
>  .I name
>  (normally disabled by a compile-time option).
>  T}
> -ESC ] 50 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
> +ESC ] 50 ; \f[I]fn\f[] ST	T{
> +Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" resou=
rce)

Please replace "cf." by English words.  Also, where is "allowFontOps"
documented?


Cheers,
Alex

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

--jdqlkolpo7ym43dy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpObM0ACgkQ64mZXMKQ
wqktWw/9FX+4nvXNZ+fzmCKE118Pqy+2VjeJhQ1b7YNyBZy1AQY14anmcfDLu0Qc
9aR+88HcuIC6XKgw5Hfq7IxZjIKJ9lUGbbR+W8SYv/W6/NFcVEb1MI8beYPuCRv0
06DhRk3DzfCKUTGxMnf8KzsGNkoqV5qn050QraYJXmnGQ9KMlDgDG6lnBv3cG2ME
QrbEO/DjdldttuZVa0rXwcBbWelBTbGTOW9baoJbr9Pbftd+itxGwOtsvQygPRyG
ZVl1YyeVmEtmbYxbXikJHrSwHTFaOQ3m8yPafzb13YNa/8J5gorhCn1IGtBRKzUV
qnH5kqgW/4FIay19l4A9G9iFiPuffthPfZunenNH4Rr6KV9zyl3mAyWXuAljhqp9
kmATBM2hmOMjZ3OglSkmxjrK+zTOSC1mJymh8rZa30PIzYQ52UhtZGqpc3aUO74l
aCmRfRrFiMUaNqXtsUC5hp+xORE+nsrfOOtf1+Q0Fnfy4qVfh9KiswflMqSY3pd8
3rxUkfAA+G9erR0GR0HJRYJac2ZmrrPpsv6rE5brrwvoap3gGvXRDDquxnC5tXd/
6+OIqJbDOa0xytM4w2bkfgWQ8rTmzx2eCPS/QWhnchRGAvTPZWBE5aeKBbXfU/cA
z8t5yxIgQwqhvLTf++XjyvAo9IYEiOuXV3vNiWWqhV/dVX27tGE=
=A7Ol
-----END PGP SIGNATURE-----

--jdqlkolpo7ym43dy--

