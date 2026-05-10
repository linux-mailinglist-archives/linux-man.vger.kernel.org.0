Return-Path: <linux-man+bounces-5484-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA11BBXUAGp8NAEAu9opvQ
	(envelope-from <linux-man+bounces-5484-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 20:53:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E46505C96
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 20:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50D3C3001FD6
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 18:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637A331578E;
	Sun, 10 May 2026 18:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtJNYQu/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F36128395
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 18:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778439186; cv=none; b=sB1+XTFwMSNfMeEqAqQ86AKz0wlF8GUFgkKeunNxMt9TGdrZjrfqYrgrh8grm3zFU/g+ZzhpGxU3UnZ+DLPoWSnpxCqE24Mytt5BxvABWBr+IE+FxcHYg43sOqQDImAL0bZXvmuUZSqZfsfSm+gzJFXApoWefjgxBUhKbOoXwm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778439186; c=relaxed/simple;
	bh=Kee52ItRpJ5yPLre82/nx+FAxLHPua/8mcfqtJI+mD8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4X0+54b46e6tTNFa6KavHHr74EBxoYFKejyt9bo0xmmOQmWJqLJeYXZrOP3bwXizt10KQ1An7TtMskUfuSQZ0pO5rl3hWXwsKSBLAQRF9sfAa1Bfq7qxjmFY9DdT0z/xVc39AuekXY/TJa6GsTRMXEbYvjcEFmJSWEgFD4Wvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtJNYQu/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81FF7C2BCB8;
	Sun, 10 May 2026 18:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778439185;
	bh=Kee52ItRpJ5yPLre82/nx+FAxLHPua/8mcfqtJI+mD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZtJNYQu/08P5xnnQxCuQ0QumJKFnvgfWBwmvaSOQ0GpwDsnN8HsEA5vV1t4WbIo4L
	 ONSGnGFUzUCtnyMABqQQbd7c8K2btCVUQvp4oY+v1Xi39nibtGfWfmfam+BZGwdZb1
	 iSjy1lStxpgQBtg1poIeJZqMPKZ4nXNQQXZipmMZnSKwj89aJQjroGMA255pKSgArB
	 nqGaejNNAB/6P62/5hkb3RbavXXCNABmJ0tNKxVsE4e+j+i58q8+28KqZaMoXk3Lxq
	 wYPaQoGRUTLBpekqRx4kGsrlnon1J2VYejO4IejVzKVxEDLN8/ZoKTiH2BH5RwiZhX
	 pm5akoyNFYxTQ==
Date: Sun, 10 May 2026 20:53:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agDTy5k6VTRhtBAS@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uq6a244rdudzemdp"
Content-Disposition: inline
In-Reply-To: <20260510172205.350001-1-guillem@debian.org>
X-Rspamd-Queue-Id: 86E46505C96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5484-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,exherbo.org:email,com.org.es:email]
X-Rspamd-Action: no action


--uq6a244rdudzemdp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agDTy5k6VTRhtBAS@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
MIME-Version: 1.0
In-Reply-To: <20260510172205.350001-1-guillem@debian.org>

Hi Guillem,

On 2026-05-10T19:22:04+0200, Guillem Jover wrote:
> From: Guillem Jover <guillem@hadrons.org>
>=20
> It make sense to use this file to fix spelling and encoding issues that
> otherwise show up when checking the git history. It also makes sense to
> honor name changes for people, to avoid dead naming or similar. As well
> as fixing up local mail addresses that have never been valid.
>=20
> It makes less sense to remap valid addresses at the time of submission
> that represented a specific hat or organization, where the person is
> no longer affiliated with, because that breaks the historic trail and
> provenance of the changes. And is what require a continuous update
> burden, which seems to have been the reason for the removal with
> commit 2231a1659621d281a2fbb0d75bad5bccce538f96.

Hmmm, to be honest, I don't know what to do with this patch.  I might or
might not take it; I'm undecided.


Out of curiosity, what were you looking at, that lead you to writing it?
:)


Have a lovely day!
Alex

> ---
>  .mailmap | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 .mailmap
>=20
> diff --git a/.mailmap b/.mailmap
> new file mode 100644
> index 000000000..d58482666
> --- /dev/null
> +++ b/.mailmap
> @@ -0,0 +1,7 @@
> +# Fix name spelling and encoding issues.
> +Adeodato Sim=C3=B3 <dato@net.com.org.es>
> +Am=C3=A9rico Wang <xiyou.wangcong@gmail.com>
> +Andr=C3=A9 Goddard Rosa <andre.goddard@gmail.com>
> +Bryan =C3=98stergaard <kloeri@exherbo.org>
> +Nicolas Fran=C3=A7ois <nicolas.francois@centraliens.net>
> +Reimar D=C3=B6ffinger <Reimar.Doeffinger@gmx.de>
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--uq6a244rdudzemdp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoA1AYACgkQ64mZXMKQ
wql4Cg/9Gk/Q0bl7IjxSLGeZNjB5XBlzGhfoU5wGSDiErok/TshsX/dJBtVxzhDm
Zh71SYjRHDWh3GOfgVnRNmd1rp7p2iFQu662kEcO5AcTAks0uBOMz5w1MZO3G/XP
BoawCFsnoXBOOjrVN2XiVknHfbV8FiiaZ0OE73W50UW7No8WuHiG2u5Z2Z/jB5jQ
o2NKJasV4Z0CvuAtr6VzLWiHuBNhkDpj5kMktE7q/0nUpzP3sEqCqnuNq7omQz13
rqeysVeyu0z/yD55Ur0LrCGHza1g/Lao2UsxFxrQAEkVA1Dq9s/MLQXZefaReSQ7
zwPaEwXWDNtMp9y02wBhpsZMPjSbe+vyr2JvEilN1XGrDVW1+dp9hNy83WhB1Sxq
h9mEZvZUaNbXh2m4JoZvs07UnL3JFvFt5KLYpCd3U/SzqvHMhFF0FN/FCFb7cHwa
dN2PwqMSCfrrE2euSdC/TeoEmbiwqBKDCpHq0HVfN8tA7VGsoQ5XbEUH4pNFQHmY
og5fetExeD/yRMmOkiuQe2HXqTkfwziBnWKkyYnd2tYYf54KXku4mhQvTid6SNtK
S3b+JdYaMjok/fgUhAqffFQyjZZ18VuUnkEX/449LhcYcWDA6N059IxktvZLEFJb
Q3mX9+gQHiicjDGMSfmi78ycOrDzjwwztBFcA685HQuBR/6UH5Y=
=9Fvv
-----END PGP SIGNATURE-----

--uq6a244rdudzemdp--

