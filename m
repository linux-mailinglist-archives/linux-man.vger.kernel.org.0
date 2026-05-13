Return-Path: <linux-man+bounces-5494-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJmKCMb5BGqNRAIAu9opvQ
	(envelope-from <linux-man+bounces-5494-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 00:23:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D2053B664
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 00:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3453D3061529
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 22:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8D0391517;
	Wed, 13 May 2026 22:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRQhyEXT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D471338D019
	for <linux-man@vger.kernel.org>; Wed, 13 May 2026 22:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778710965; cv=none; b=TbjRAQDFjiGfDKijGK/L9y9J5pztmYke7yurtlyOlKsKlckLiDmIUOVF8IcYzpUZGz11RF2Bt+qwjzGtMdirttGi1EoBewRrBmJpsj1hDpiPyzQvDqFjM09zOshYVZb2/w3l45G8T2Mm9kTG43RRfGssf3Wtgozk98Gbs7+3Jaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778710965; c=relaxed/simple;
	bh=N47OKfbC1y/FeyTzh6p90oP+2wAByTZISer7cIUEhu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ijGbmit5bFo8o2OjKSgiKQOkLTYXz+ihANcWmV+webjxiQCgvqI2lVPXnG2xfGjXXbJgJ1hY3msAKy4qvLaU9sDrSVA5atpzd6POVsNSiZ4m/CV7fZe//H6qBczDCMeq9l5pgYAI6gZsULTp9sBI91D4SK1zIKUI0rpD8LrsFT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRQhyEXT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE0DBC19425;
	Wed, 13 May 2026 22:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778710965;
	bh=N47OKfbC1y/FeyTzh6p90oP+2wAByTZISer7cIUEhu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hRQhyEXTmMyrgKYUSMeQ0nbUZZOG42OdqOzXgOzdHBlehDhf4wdJeRFVKlczCFuVM
	 2z4pLSiK0QXgPCg6WBNV43cljiCcg8egiI4vlbjPo/TGeUT2/TSa9jwSGCdiAA8t4t
	 3fzBypxV99UYI0QddKzPpU+6FSfG+ie548UWCCTRHb/HLsYQMwIF3+FAfKfwjS/ra1
	 Uo7F5IGoQae1tWrK57y3Pt8uUxT6rA9dIWVqH83GwSbbkO2ljgqT5VCMMamKpCcrAU
	 6czO+Y1Xf4danM54KJpTIg8EoZQStyrCd0AABjy1Zq1zHMAO+lv6xq33rp08Kml9xk
	 vvHtp02OvXUAw==
Date: Thu, 14 May 2026 00:22:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Voss <mail@tvoss.eu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/copy_file_range.2: ffix
Message-ID: <agT5mZwAGQzlcHSe@devuan>
References: <b9f152d28bcff7ae45189138485e122d696defe6.1778709713.git.mail@tvoss.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ovaoff4etnzfidqk"
Content-Disposition: inline
In-Reply-To: <b9f152d28bcff7ae45189138485e122d696defe6.1778709713.git.mail@tvoss.eu>
X-Rspamd-Queue-Id: 77D2053B664
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5494-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tvoss.eu:email]
X-Rspamd-Action: no action


--ovaoff4etnzfidqk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Voss <mail@tvoss.eu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/copy_file_range.2: ffix
Message-ID: <agT5mZwAGQzlcHSe@devuan>
References: <b9f152d28bcff7ae45189138485e122d696defe6.1778709713.git.mail@tvoss.eu>
MIME-Version: 1.0
In-Reply-To: <b9f152d28bcff7ae45189138485e122d696defe6.1778709713.git.mail@tvoss.eu>

On 2026-05-14T00:01:53+0200, Thomas Voss wrote:
> Hi!

Hi Thomas!

>=20
> Just came across this formatting issue in copy_file_range(2).  I went
> ahead and wrote a quick fix and also did some searching for similar bugs
> across the rest of the manuals with Awk, but didn=E2=80=99t come across
> anything.
>=20
> =E2=80=94 Thomas
>=20
> Signed-off-by: Thomas Voss <mail@tvoss.eu>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man2/copy_file_range.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
> index de502867d..a8ed82c4f 100644
> --- a/man/man2/copy_file_range.2
> +++ b/man/man2/copy_file_range.2
> @@ -211,7 +211,8 @@ provided a user-space fallback implementation when th=
e kernel did not
>  implement this system call.
>  .\" glibc.git 5a659ccc0ec2 (2019-06-28; "io: Remove copy_file_range emul=
ation [BZ #24744]")
>  Since glibc 2.30, that fallback has been removed; the function now
> -fails with ENOSYS if the kernel lacks support for .BR copy_file_range ().
> +fails with ENOSYS if the kernel lacks support for
> +.BR copy_file_range ().
>  .SH NOTES
>  If
>  .I fd_in
> --=20
> 2.54.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ovaoff4etnzfidqk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoE+bEACgkQ64mZXMKQ
wqkk+BAAgt7FlKPQGzeiAs1oW/41IvfIXLVEh9bcwOUn/nRKVRXCXlTqnmM6iuLI
OGMHK6hMCOLuigLyHX0Zr2i7yq+W/EKTt1gQtI+AO2TrgHQdP/GAcrBrUdph4l6R
uHFgItzntGH4qjGrjWNYy9c9FfQ2qYtDpvWxQsY4dpNUK6p5NTak1cmjttYGF9p/
NBZeVM0UQCQwfA9pqa6v5rl7w3B1zN3CPzZu7+43SKJn4bkWOcNPbsec8hXtYkuV
j2cMHJ+nkfZznZOEZ+A+xX0GzIainvh8GdxCrTBhzOf5EI7u0xaIe/MLeketMXG8
WINuKdlC3c0a1Eau2Me1RAlU8uBKehAbljxxVYo+3lToDOHz8cwdq+L+aBcFn5q5
R5icnZHNGKkiUTAVQpV63+iI5Zx8BUk9jWxXPVU80iq6+ALtgPnuHuwNfZn/9XBf
/EgISQOP4nIbilVZNGgx2K+awsjfQdtjoMGHBrmrq/G5iqh3102jDskzfWfat/pH
W887pat4nIJ4mrDg0djARVyosY9Np5u7CiocZ5TTDVdfloZ9nmVAsDfXLRIwOoen
Mn0Xk3TnSHf7B00vij8BwBvyK43RFI3rKwXHUbhXygIJvpWfAiTwfi+d8wW1zpkH
A8crVfE10dG6mKN0uxOKGCsTU71hKrl+vx24MFPgWgK1JpnVGII=
=nyq5
-----END PGP SIGNATURE-----

--ovaoff4etnzfidqk--

