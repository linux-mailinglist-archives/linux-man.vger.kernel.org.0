Return-Path: <linux-man+bounces-5304-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uoplFjYw1GmUsAcAu9opvQ
	(envelope-from <linux-man+bounces-5304-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Apr 2026 00:14:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DB73A7C48
	for <lists+linux-man@lfdr.de>; Tue, 07 Apr 2026 00:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E4EC3010806
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2026 22:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C7E38E5EB;
	Mon,  6 Apr 2026 22:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZmHo/ao"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E811D388E42
	for <linux-man@vger.kernel.org>; Mon,  6 Apr 2026 22:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775513647; cv=none; b=cqJDjLNVrtRr/2EGepJhbMs9KcjwBpgj7RI9ZZLjj6vNlAiTQ1lx+QfbqYFdXyKgDQW4pwiWDfU5HnQhKxz+HZqftcYtdNS9RM1Y3dYhGm1NyO2pE6zW4u2GuUgGPD7cuPAVoyMuhrlIP9xZXQx94Fz59dDHvoVCzorBn1thpDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775513647; c=relaxed/simple;
	bh=VTXKObxfWEs0cLI0aT+QKmrkLmS4YZfgqi0CIDcgPuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TGaomz8c0TWB4ELeGxA3VIje2XvdtOaOKXmzPWQfH0bOCG2FLrVQsymapgyjvXzJorxY1DzrX95C1SX29frU6YWsM401QU3QGtIHCXtNW0/n792aDrlx3kRlN7h8GFqSiKKRaUJ6fhvf4dMAYRX2GqQFcMhc1ViOCRUHwRylwSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZmHo/ao; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60937C4CEF7;
	Mon,  6 Apr 2026 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775513646;
	bh=VTXKObxfWEs0cLI0aT+QKmrkLmS4YZfgqi0CIDcgPuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DZmHo/aovEB3VoA0diJ59ZkKoCWVRTg+i79imMIqJW+4qSf+tXbrc7noYVWByed7e
	 e+0P9OALYS2sMy1AiPHcWiyb2qc84kRK49w8IVhy383uwoh219ExQ/PBjoudvMIUxx
	 TwbyodMZF4erWOmTITNjYU9dqdT1uRBZ/kQx/8Syg24aDd/BXRNWM39yi8w3TqEXqt
	 1mdu/21s7yP3q+chlnk8dsx2S7BNvIgctsx2oZFuCb8JH8tEBhf7GCKP8VgbtQXRhV
	 mQGUa/lEbraZGQ5mm5FjpmhhA3mf99dig5Bsf8GtU0jzxNhNXw96kUh7yMcE13bVMe
	 Dmswyr37Q32RQ==
Date: Tue, 7 Apr 2026 00:14:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: vursc <vursc@vursc.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/getdents.2: Document system call interface
 of getdents64
Message-ID: <adQvZyzzkkjQ2KQK@debian>
References: <20260406053554.150929-1-vursc@vursc.org>
 <20260406092113.184487-2-vursc@vursc.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oggqzcv6tiflcruy"
Content-Disposition: inline
In-Reply-To: <20260406092113.184487-2-vursc@vursc.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5304-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 49DB73A7C48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--oggqzcv6tiflcruy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: vursc <vursc@vursc.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/getdents.2: Document system call interface
 of getdents64
Message-ID: <adQvZyzzkkjQ2KQK@debian>
References: <20260406053554.150929-1-vursc@vursc.org>
 <20260406092113.184487-2-vursc@vursc.org>
MIME-Version: 1.0
In-Reply-To: <20260406092113.184487-2-vursc@vursc.org>

Hi vursc,

On 2026-04-06T09:21:14+0000, vursc wrote:
> The count argument of the getdents64 system call is assumed to not exceed
> INT_MAX. The glibc function accepts a size_t and passes INT_MAX to the ke=
rnel
> if count exceeds INT_MAX.
>=20
> Also document the dirent64 structure in glibc.
>=20
> Signed-off-by: vursc <vursc@vursc.org>

Thanks!  I applied the patch.  Just FYI, there was a warning:

	Applying: man/man2/getdents.2: Document system call interface of getdents64
	.../rebase-apply/patch:42: trailing whitespace.
	.I dirent64=20
	warning: 1 line adds whitespace errors.

I've amended it (it was just a trailing white space).

> ---
>  man/man2/getdents.2 | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
> index 8c5bbebbc..de91f3800 100644
> --- a/man/man2/getdents.2
> +++ b/man/man2/getdents.2
> @@ -42,7 +42,6 @@ These are not the interfaces you are interested in.
>  Look at
>  .BR readdir (3)
>  for the POSIX-conforming C library interface.
> -This page documents the bare kernel system call interfaces.
>  .SS getdents()
>  The system call
>  .BR getdents ()
> @@ -216,10 +215,31 @@ using
>  .BR syscall (2).
>  In that case you will need to define the
>  .I linux_dirent
> -or
> -.I linux_dirent64
>  structure yourself.
>  .P
> +The
> +.B getdents64

I've changed this to

	.BR getdents64 ()


Have a lovely night!
Alex

> +system call accepts an
> +.B unsigned int
> +argument
> +.I count
> +and assumes that
> +.I count
> +does not exceed
> +.BR INT_MAX .
> +The glibc wrapper function sets
> +.I count
> +to
> +.B INT_MAX
> +if it exceeds
> +.BR INT_MAX .
> +glibc defines a
> +.I dirent64=20
> +structure, which is similar to
> +.I linux_dirent64
> +but with a 256-byte
> +.IR d_name .
> +.P
>  Probably, you want to use
>  .BR readdir (3)
>  instead of these system calls.
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--oggqzcv6tiflcruy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnUMCkACgkQ64mZXMKQ
wqn+Uw//cUqfW7epvh3PPM1UdrbnY05OaWBVetIDyu7tWfjo6HiqOonThRhDbx7/
YHKtf9eTzzbw84j74Ld/ayDjAz9ZKWoHtTuHvsAeplm/j2tEJR2MM/8jEPGKT1T0
t3aZlGjqVq4rc8s3IJO6zmG1riUZblmMKPXWZiXGBYvNmff3YE8Tjjvh7kU/NUXi
kAMK464tOWhncEND0xsKerCaR0+IuPZjSOg0ynRTekIi/rYLbM2B1h4nVhXBBxBH
opSomf5AiaUh6S0feCWyrlfs3CNgfqYu3b9dOWb2nVDGd1DiLrOs/ruIn8KLFWhi
hQlKswDhHNNjnQapUsQF6beZOO1baUI2oQfj/McIH6BVQkFCEa9VG6k0dvR8xYpy
cxHUjtLo+scnpTqxwZwuh1BFTlq8LfsBFVelfbctGuWnoN2heMKVM5sE4yM8ap2T
n+urKvNP3elba0ieAGiSciebtvTY236FAdrlBvoRZtLkioNWp5ObXmxfnr8fsbjC
ZwDhQ4sRemBTZGRDnSeSfLExdw2nVH96oG3FqxirnsfvM0Ar32o7iDI0rWg3uKdl
IQv7VzLW+vNhDojCd4TPoyTv3Wtu3gXLv/jPfSaEURibUFuOFpoSOgIcZW9KDsIT
rTug+ekBrBezziCjd3PSp4aGSngc5/GatC3pH0jjqEydJjPi848=
=Ajd0
-----END PGP SIGNATURE-----

--oggqzcv6tiflcruy--

