Return-Path: <linux-man+bounces-5489-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNSCDicCAWrePgEAu9opvQ
	(envelope-from <linux-man+bounces-5489-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2026 00:09:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA72506A0E
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2026 00:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED627302C923
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 22:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD63331197C;
	Sun, 10 May 2026 22:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wse5Wuck"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910C12F745C
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 22:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778450943; cv=none; b=mAfEin4qQyOlX6yX5OZDDVHQvC21tQmDFAqQnBAoQx09XNyUVrC9nCPO5EbBp4ykX4k6r67wOgiLy+891JXuSx1jXas3+Kd8vAW6vZhgEt4EXcP0OD59fvMjmVSNzNpUB5Fg7jMwsk99W8UaKYVEUQy7Nn+YXsQ1eGO+HGoMvcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778450943; c=relaxed/simple;
	bh=KYQawKV8O5NGtTLn9Lx7E/4saLHdTvd/g4FkTYDSUFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=URk2p0FTxGL2cX9DG1Ml5Ie9uECGvEzXPL3qOF3DSUCGxHjsTz47Sqmj3Avw6MXNWqoOVwc6BBjUZl0wq5PXn09r/WrDreZOvEgna3fAPCpi8reydTCleKb7NIIaxKZFpcUkoPBkFEvrHx+VOJSjpIh/eQVljvOEmTzr/hcV+MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wse5Wuck; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D9A8C2BCC9;
	Sun, 10 May 2026 22:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778450943;
	bh=KYQawKV8O5NGtTLn9Lx7E/4saLHdTvd/g4FkTYDSUFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wse5WuckNpqlzv7eswWLrD10yECD/cESmsJcifxwV1tPkrz6nRQHen44VLs6aRF74
	 LUn1sgDrXNmLkX/G3DyxZSNDb8L2j/ZfQD7m3C7E/VcpiXwvw8oK6b8d1Q7v5hfGzl
	 SMgFXzbY8dttMkSpfO0/VDVQIS7V7AqFx/s9JHeXTmpsyaIvaPLcKXst2vGb10In+q
	 bfucfSvBFJ06IWLCMlIPqkgumCVLAsLCpVCv4jatNjiquxREtYaY8wFJ98cU8jUf0H
	 EbhUiv4g9/kWnD9hO86G2M7c6t2dAGatC2yVXnek7da2MsoCVH5UJt37jjl1S+A7qF
	 9OpCQXE93YU5g==
Date: Mon, 11 May 2026 00:09:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man7/suffixes.7: Add xz suffixes
Message-ID: <agEB7mKbPlW96AfU@devuan>
References: <20260509185022.289672-1-guillem@debian.org>
 <20260509185022.289672-3-guillem@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fuwuhfnro6p5ph53"
Content-Disposition: inline
In-Reply-To: <20260509185022.289672-3-guillem@debian.org>
X-Rspamd-Queue-Id: AEA72506A0E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5489-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--fuwuhfnro6p5ph53
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man7/suffixes.7: Add xz suffixes
Message-ID: <agEB7mKbPlW96AfU@devuan>
References: <20260509185022.289672-1-guillem@debian.org>
 <20260509185022.289672-3-guillem@debian.org>
MIME-Version: 1.0
In-Reply-To: <20260509185022.289672-3-guillem@debian.org>

On 2026-05-09T20:50:21+0200, Guillem Jover wrote:
> From: Guillem Jover <guillem@hadrons.org>
>=20
> These are very common nowadays, for example by default Debian source
> packages use this compression method.
>=20
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Patch applied; thanks!


Cheers,
Alex

> ---
>  man/man7/suffixes.7 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
> index 4c8b3f27a..8487bb5a1 100644
> --- a/man/man7/suffixes.7
> +++ b/man/man7/suffixes.7
> @@ -216,6 +216,7 @@ T}
>  \&.tar.Z	\f[B]tar\f[](1) archive compressed with \f[B]compress\f[](1)
>  \&.tar.bz2	\f[B]tar\f[](1) archive compressed with \f[B]bzip2\f[](1)
>  \&.tar.gz	\f[B]tar\f[](1) archive compressed with \f[B]gzip\f[](1)
> +\&.tar.xz	\f[B]tar\f[](1) archive compressed with \f[B]xz\f[](1)
>  \&.taz	\f[B]tar\f[](1) archive compressed with \f[B]compress\f[](1)
>  \&.tcl	tcl source code
>  \&.tex	TeX or LaTeX source
> @@ -246,6 +247,7 @@ T}
>  \&.xpm	X11 pixmap source
>  \&.xs	Perl xsub file produced by h2xs
>  \&.xsl	XSL stylesheet
> +\&.xz	file compressed with \f[B]xz\f[](1)
>  \&.y	\f[B]yacc\f[](1) or \f[B]bison\f[](1) (parser generator) files
>  \&.z	T{
>  File compressed using
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--fuwuhfnro6p5ph53
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoBAfwACgkQ64mZXMKQ
wqlU9g//VgWCfO1DvBxlxkVMM0j9PaIrHSFCDEgTo/A8777ZGlDrlAwEad745day
DyWr8OpGgFQET2q0LNOnPBgjn1TkbUnopPtWEs2l+8KH5xlh3hieGzbOYQIQWJE8
SBSazJl2An9+1xtlPfOwQaQA6tUTwJ48usW8c9nAgwSfrsGtR/e82fd15XLPRN8p
D/OMuuNTYNGAVzYO/iy0HUb+J1nPLx9u5jX1JRs3sBOpr4FzQ7KvUszCooS+C/Tk
sNREp4sM3QQuS4zkt4xn2sFxSBH+bM2p1ExYutHI0VqxS1cnF1D3v6fB3anjHjeo
xM+sQAPHK5p/+kXuFX8DLrO8yU7w3uaqwKLiYttDDOc6AM+8YppJSCQqg+TmWprj
k1SJTtl5xS8vfV7zwrMqZzCgcz/3ZhEY5ODPl+itwTsAGiW6W1Qr7tcDAYUxFijR
F7XbkeHwXDm/doHt2w8HL3wubI3ZQGlWoW7F0frOttI8l6v4d5vL6pyWSTy5MhI5
nHuwbofqH4TYF8C8Kfyg2qsoCA3zNXdb7xMIyItzxTg7ycpF6t+3rx8u3WzWOWHw
5PfdatKXJnzaSQfjUVPDBnfnms3KwwEeKUd+qSOjYLbBo/AvdCPLZQ1BtFp+Ly3P
1pWTJSFkTe0ZrCFP6JtfmNOOw9vIb3F4f74+We/BkCGwSl59jIo=
=77G0
-----END PGP SIGNATURE-----

--fuwuhfnro6p5ph53--

