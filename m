Return-Path: <linux-man+bounces-5612-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNDaCB54F2ruFggAu9opvQ
	(envelope-from <linux-man+bounces-5612-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 01:02:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 721615EAD54
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 01:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30A4731273F3
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 22:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91593C942C;
	Wed, 27 May 2026 22:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmCAFRcl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807873C3BE5;
	Wed, 27 May 2026 22:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779922790; cv=none; b=dyxu2HkXX/8ll43JZGd/XVRzL+OMU0SU6O+MEvx/5rNfmZNryPIB35JpYd8rOKBZLCMicPgDprYUM58w+vaMwFsS3dZ8d/5AVdfcTtBuyNxjc1wY/14vfts7TQEgsmf+2DDArAAv/hdHjGoYMMcxI4lLJhuJXz3SNUSLrOE2E8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779922790; c=relaxed/simple;
	bh=oQgI+Cpt5Cjxq5aXu+mjJw6wzyd5STwTq+YPT6wYOz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r5XiKWivQ9hFvpAgzF/JNy2eaulj5d9MlIybxZ2wr4CgMkIH1hWGR31iauvLT9eEVvaZx2DFEaqjCJ1ao/0GfPjFJOlfI9bAuQQryUediu8XnoMAbs7TW1kG4EEZEA9Y+YGWSmP8JdFYBkn2oEC/nbx6EH2VVSis7gW8tjiJD3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmCAFRcl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9A8F1F000E9;
	Wed, 27 May 2026 22:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779922789;
	bh=2fmxC0as6KB14C/4wMktDVeqEbR+gAWpUdu5rwDaqhQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fmCAFRclm76H7SXK35o1n3gV60ReoROS34TBCcPlbqLKk5IH+PbedczEsIr0m9Leh
	 UO5LqjaUoJ+EalPjXZXwG8KylWP8thzln0ybY56k0nuPyUsBys59O94kks90IBtFf0
	 7zV2zeWEzHEcSoF/zDkwklCu9OG4SMWW1G6N9NXAZFyAb/JToDU75wE5vOZpWt8dzv
	 h2sToDwAU1OMHUYv4L0efIZqBNyfTYFk7A7qxvJb8RXhrAC+1oFL5oo96jD+/7SZDo
	 K8KiDkUY7Ue2vfN5BwN7a2j1hfXPHlKxxjFG+o/uDGOxTh+EzIs4q3Q17K2dWvWTJ3
	 n9rGXXCPsRxhg==
Date: Thu, 28 May 2026 00:59:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man3/errno.3: clarify ENOTSUP and EOPNOTSUPP
Message-ID: <ahd3SmZZqnzP0-O2@devuan>
References: <20260527181549.2237547-1-safinaskar@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jupvnftsgti6v3vj"
Content-Disposition: inline
In-Reply-To: <20260527181549.2237547-1-safinaskar@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5612-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,opengroup.org:url,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 721615EAD54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--jupvnftsgti6v3vj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man3/errno.3: clarify ENOTSUP and EOPNOTSUPP
Message-ID: <ahd3SmZZqnzP0-O2@devuan>
References: <20260527181549.2237547-1-safinaskar@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260527181549.2237547-1-safinaskar@gmail.com>

Hi Askar,

On 2026-05-27T18:15:48+0000, Askar Safin wrote:
> As revealed by Christian Brauner recently
> ( https://lore.kernel.org/all/20260527-fotowettbewerb-abwinken-einfach-83=
db3411945b@brauner/ ),
> EOPNOTSUPP is widely used on Linux to mean "Operation not supported",
> as opposed to "Operation not supported on socket".
>=20
> Also, as seen in POSIX issue 8:
> https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/errno.h.html
> POSIX doesn't require ENOTSUP and EOPNOTSUPP to be distinct, so
> let's update that, too.
>=20
> Signed-off-by: Askar Safin <safinaskar@gmail.com>

I've applied the patch; thanks!


Have a lovely night!
Alex

> ---
>  man/man3/errno.3 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/errno.3 b/man/man3/errno.3
> index a070dab..fdd2710 100644
> --- a/man/man3/errno.3
> +++ b/man/man3/errno.3
> @@ -477,13 +477,14 @@ Name not unique on network.
>  No such device or address (POSIX.1-2001).
>  .TP
>  .B EOPNOTSUPP
> -Operation not supported on socket (POSIX.1-2001).
> +Operation not supported (POSIX.1-2001).
> +According to POSIX.1 this is "Operation not supported on socket",
> +but on Linux it effectively means just "Operation not supported".
>  .IP
>  .RB ( ENOTSUP
>  and
>  .B EOPNOTSUPP
> -have the same value on Linux, but
> -according to POSIX.1 these error values should be distinct.)
> +have the same value on Linux.)
>  .TP
>  .B EOVERFLOW
>  Value too large to be stored in data type (POSIX.1-2001).
>=20
> base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--jupvnftsgti6v3vj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoXd2AACgkQ64mZXMKQ
wqnAow/9E60Jk/qH4/yEGYLJNs1arozKvMpYouPq3f8NGCZJBKnRx3PuvfGLH9i3
0rqKszGLReJwBtdXYdd75d+hC+v6ADoTwC4oaCu+gfWdUXPld0zxLS4z9wKg7zbE
ulrcFdw87VglLyCPVGS+zrb85AaG3Gr67Lwz+XI8FNe/f8omCiplH2kpWyGwfml1
6td0HB021IqEVZ8xV2zFeEdIqW6byigWbM3bsdAY3PFvbM5JDALpHVIPKfel2RAW
dmNVrcNdkpl3UMu50K75o6w8rQBAzyimEmkBhcemPvMLWO8odhXoow8ATb9kxp62
NC8R4QhY87Vh6dwotGxnVq8J4Uu75u+z64Ce7Irz19Q3d7PRGPc4U/IanlHpLVcb
/AbOfJ7uHvz6ybxO582yoCPqARbq5UVYjdd2viK6NbULODFx719lRgiTEHpuoiyo
4sRtauibduuQDxVub8mWTFvVWi1iwqHtBlv1kO/NC6/xFEykktMJaA0DYwEazdph
UY5V5fLBPKxTqTDPodHravMAxt7A3a/QaVEKnAo2J3xwXiaLPlHTsfq0IPkauzsH
AhhZx0XppScOJSX5jumYGyFhvmuc9hhj94wsz2eUa64W5keed4UbYzHVprNh+910
kRclE23KAa/kuoesRoGZ0ayx+xcpFCub/3G3v2e8wygmSlIAj1E=
=GfzF
-----END PGP SIGNATURE-----

--jupvnftsgti6v3vj--

