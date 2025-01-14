Return-Path: <linux-man+bounces-2220-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AC8A0F108
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 01:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28C5D3A6B72
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 00:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADEFC4A1D;
	Tue, 14 Jan 2025 00:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2wmRVwb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A90A4A02
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 00:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736813208; cv=none; b=VgQaJTD68W0BYg2shYPMeFlAKP/DwlXfBXIgvbyV/YGK2f+sm1VBWdorEycals/HsNTphOeKqsrsnK6uANpWg04v1/vVLM8bFid1es2hKNIJJrlhjyo585KRhLu7VlKFdjERgsoS3/LOZ/yjYaXlZKfpYDJAJgCw9kG+vi3e6rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736813208; c=relaxed/simple;
	bh=UhFg1VnitI7iqgyaah5zYIxkfLPhqDKz1k9w+I7W7VQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uKIy6ZUoHbE5EJdeL4VJqX5fjf3ImnaOGkaNGt2I5GEpSruDOycPFAj7LLvP/4vbaiInuv7jr23HoRVZokv2nqIrQuU9B9pUC2K3uWk/jEMhnellwFKZdjz4EbaL3YXPqNVv/ekzTyddX2XZvdsUnBhvVfnErlCpUpsmvGgNa5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2wmRVwb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E239C4CED6;
	Tue, 14 Jan 2025 00:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736813207;
	bh=UhFg1VnitI7iqgyaah5zYIxkfLPhqDKz1k9w+I7W7VQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O2wmRVwb2tdCwgbt89TiCFtnoSZaDHMk2xZYucUhERwtcC3snOcPsP8P3mCtwo7Di
	 cJAvw/gBbfUNy/TsFtRui4gnntEpMPWva75T30tU9sKNhJUR4eJZIKCL2kcufipXty
	 pWitoQcT985clIQBrc1TK6g11/Ji8+Q0YfHiRn6arJDYM25axbX7zg99hki1yenAAZ
	 ftiZzG8rJyexS8dYerDC2jRI/5y3gAWvZNXj1t7p/yveke1ImhRETy7cSvU2wc1KLg
	 u0TVoEvfn6lHR2e4eYy3mLpZ4LlBGIcb6GT1iWG9Oh+ZP30cLszeStmE5DQi/zKQI8
	 oetDbHXHQTnbg==
Date: Tue, 14 Jan 2025 01:06:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/fork.2: Add _exit to example
Message-ID: <pwp6j7tc3wgh2us75wbpa3loi7mowntgift3cb4e35gno4l4ob@rl2nzoqpmklw>
References: <tngwcffbrzbfkj6vrxgxpekrp3bzuftdy2mzow56xyfkrcna2w@nbgr2ourerxo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jk67o24xkw4kpu76"
Content-Disposition: inline
In-Reply-To: <tngwcffbrzbfkj6vrxgxpekrp3bzuftdy2mzow56xyfkrcna2w@nbgr2ourerxo>


--jk67o24xkw4kpu76
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/fork.2: Add _exit to example
References: <tngwcffbrzbfkj6vrxgxpekrp3bzuftdy2mzow56xyfkrcna2w@nbgr2ourerxo>
MIME-Version: 1.0
In-Reply-To: <tngwcffbrzbfkj6vrxgxpekrp3bzuftdy2mzow56xyfkrcna2w@nbgr2ourerxo>

Hi Tobias,

On Mon, Jan 13, 2025 at 05:40:43PM +0100, Tobias Stoeckmann wrote:
> The _exit function is a better choice for exiting a child in many
> cases. Most prominently it avoids calls of functions registered with

We use two spaces to separate sentences.  See:

$ cat CONTRIBUTING.d/patches/description | sed -n '/Style guide/,+6p'
    Style guide
	URIs should always be enclosed in <>.

	The correct inter-sentence space amount is two.  See some
	history about this:
	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.co=
m/?p=3D324>

> atexit by the parent.
>=20
> There are valid reasons to call exit and the example is actually one
> of them: Flush FILE based output. Since atexit is never called, we
> could just stay with exit.
>=20
> Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>

Thanks!  I've applied the patch, with some minor tweaks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D476bf6d993c13edf8a80c4e874a1d4bf6ff7eb45>

> ---
> As discussed with alx@ on shadow project, this might still be of
> interest to raise awareness of _exit's existence.
> ---
>  man/man2/fork.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/fork.2 b/man/man2/fork.2
> index 601391277..b4f7ffde9 100644
> --- a/man/man2/fork.2
> +++ b/man/man2/fork.2
> @@ -326,7 +326,8 @@ main(void)
>          exit(EXIT_FAILURE);
>      case 0:
>          puts("Child exiting.");
> -        exit(EXIT_SUCCESS);
> +	fflush(stdout);
> +        _exit(EXIT_SUCCESS);

This mixes tabs and spaces (we use 4 spaces for indentation).  I've
amended that.

Have a lovely night!
Alex

>      default:
>          printf("Child is PID %jd\[rs]n", (intmax_t) pid);
>          puts("Parent exiting.");
> @@ -339,6 +340,7 @@ main(void)
>  .BR clone (2),
>  .BR execve (2),
>  .BR exit (2),
> +.BR _exit (2),
>  .BR setrlimit (2),
>  .BR unshare (2),
>  .BR vfork (2),
> --
> 2.48.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--jk67o24xkw4kpu76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeFqp8ACgkQnowa+77/
2zK56hAAiHt9kndn1dqC39LLfXz801K6IjQnZ9fe+/uRzr7S8ok33vefBEv2C2pQ
ZSLQ1oyJlW33u5gvyNVwCpfspnsjBVbtoiOkjgGPuEe2elH6IpxUkGFVRs9SzysM
291rUmMhFSXgfb7KlR+YyW+H0xMvHs0p+CFP+FKQW5IjK1o3lqmbPEyJlqg+HcbA
a3e3D0q3IeUaUi3Q2ooaPu2Fxhno/RKNSRqCgDV4/Zs+f10yr5vJmKJcZ7IfsM2v
A2PXjhL8XaDjmJN+YdFw0GiXBUM7j0G//KOX7UZJwRJUJmBg8CgjHeDSmig3WTXw
qi/70VwW4xCcNPFx0HEZkjz/Z/NYNONqdKMEwBBwJZ0MXp//Nfawq276nMhg4VAW
3DwbT767uy3RhVqeyqMJJs5Oqt3BlD5YGE28Da+vtIF0X/IZa+TKhVNpBRAKNQm5
4kTZX4DrWagx+c07IZfnT/Tmr4sACGNQysmLWk/61vQUH6uuvTla99FF3bsZM7UC
O4l7cJ5FMll8APB8K9Gm4zQA24Q84cg9am7rWg2WJh8TQLkbBo/n5yYaTfXSC5vc
EOinCV9myxtDL13wdLGOyVtURFl1KUpnsGqOQLowHQ0pfSvo9PdNUZQrKQO94VyJ
hk3qPgBXEBX6ngRgSxcJAMKbbvR+XKaTzZxtOGKsc7dCWC+/sWU=
=5MMk
-----END PGP SIGNATURE-----

--jk67o24xkw4kpu76--

