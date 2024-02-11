Return-Path: <linux-man+bounces-430-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617B850C60
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 00:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 986A11C20B47
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 23:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9E617564;
	Sun, 11 Feb 2024 23:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN0Cl0cd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF15F1755F
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707695424; cv=none; b=USJWU3Y3q/1fltqpp7e0TCSlU/LpAM0f3Ph0s2A3sygO4jvMTkivvfNcSEkxYgiAepVQeOZomNZSvWZI8Pf4A+k/DjunPbYAqJ6t7wn/SYJaHu46i6v64Uh23oVs4vvl932B1RSEapUXyXav/CpMef/6zpv1/R/YDxA7v8Pmw+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707695424; c=relaxed/simple;
	bh=Nw9w35XDZkwDMKaJ/gRE5zMRVvNEQcJGTPqdG9dTMMY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FzfmdN+F2Vpm7XmF1qMa9Mo8nge++QwuFB3tYib5IHt6FlTlfMFXY1Y/78pYlnO/LsHrP/dITNFqJFcqS3I8JSKZVgDR+9LyHsOt8gbwAQZYOPXCZGk0zQQrNXqvndHzkoMYFcaEMbkUwtDp+XHvZxEbLMFPnbC2Bk/5Ex1UBUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN0Cl0cd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B60B5C433C7;
	Sun, 11 Feb 2024 23:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707695423;
	bh=Nw9w35XDZkwDMKaJ/gRE5zMRVvNEQcJGTPqdG9dTMMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VN0Cl0cdmBY3NWVa5BEc9ra7XOJZhRzHtYkmkkYMamiGyuaQQ2RGpHKb97MwB5CsQ
	 x3OT2O6L/qN3YC1bwq2PpCKeHaESf9VfXLcRIZxdIFSVf/R6d9WmFH2UMT23S6HNnm
	 sdK2GAuMIS6zJY7TdQvI+J+UmJrvw4i/qV2kYSQpoYL5ckAYT1sH4I3G9uj9XKcFaD
	 x84O8sbVDn4jTErd2ATFVEaVp2Use6UahN6TYvObe+N1L5P5OQ8xi1Skm/9bmeirqz
	 gCHA945Ct4qxFvOqaOenza5Nx4nVDFXC4A58Qr2D6HfxRFyzFl5LIghYWqSHrFBMaF
	 2gbu3Q7T/1iyg==
Date: Mon, 12 Feb 2024 00:50:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] pthread_create.3: re-do the architecture/default
 stack size mapping
Message-ID: <ZcldPK7GQ29Erk7x@debian>
References: <Zckv-93zIsXvmc3G@debian>
 <vbphhcgfcdrf6qdmtdkrelbbviivsrzgbh3pdr4rbrczfl6qko@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MCgZRtfq8oCSkMTe"
Content-Disposition: inline
In-Reply-To: <vbphhcgfcdrf6qdmtdkrelbbviivsrzgbh3pdr4rbrczfl6qko@tarta.nabijaczleweli.xyz>


--MCgZRtfq8oCSkMTe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Feb 2024 00:50:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] pthread_create.3: re-do the architecture/default
 stack size mapping

Hi =D0=BD=D0=B0=D0=B1,

On Sun, Feb 11, 2024 at 11:27:46PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Currently, the page lists 2 of the 3 x86 architectures, no ARM(!),
> old PowerPC only, and most egregiously itanium,
> which linux doesn't target.
>=20
> Per glibc 2.38:
>   $ git grep ARCH_STACK_DEFAULT_SIZE
>   aarch64     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   arc         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   arm         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   csky        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   loongarch   #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   m68k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   microblaze  #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   mips        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   nios2       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   or1k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   riscv       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   s390        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   sh          #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   sparc32     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>   x86         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
>=20
>   alpha       #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>   powerpc     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>   sparc64     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
>=20
>   hppa        #define ARCH_STACK_DEFAULT_SIZE  (8 * 1024 * 1024)
>=20
>   ia64        #define ARCH_STACK_DEFAULT_SIZE (32 * 1024 * 1024)
>=20
> I cut PA-RISC and the Alpha. They have 10 and 6 popcon entries,
> respectively, and AFAICT they haven't seen a processor released
> in over a decade, they aren't relevant to any modern reader.
>=20
> Similarly, use "POWER" instead of "PowerPC" =E2=80=92 the consensus brand=
ing
> is "POWER"+version (POWER8/POWER9); PowerPC is itself a POWER variant
> and doesn't really deserve its own special mention, especially in 2024.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks.

Have a lovely night!
Alex

> ---
>  man3/pthread_create.3 | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
>=20
> diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
> index 66c67a6ff..fd6253bf4 100644
> --- a/man3/pthread_create.3
> +++ b/man3/pthread_create.3
> @@ -200,23 +200,8 @@ .SH NOTES
>  If the
>  .B RLIMIT_STACK
>  resource limit is set to "unlimited",
> -a per-architecture value is used for the stack size.
> -Here is the value for a few architectures:
> -.RS
> -.TS
> -allbox;
> -lb lb
> -l r.
> -Architecture	Default stack size
> -i386	2 MB
> -IA-64	32 MB
> -PowerPC	4 MB
> -S/390	2 MB
> -Sparc-32	2 MB
> -Sparc-64	4 MB
> -x86_64	2 MB
> -.TE
> -.RE
> +a per-architecture value is used for the stack size:
> +2 MB on most architectures; 4 MB on POWER and Sparc-64.
>  .SH BUGS
>  In the obsolete LinuxThreads implementation,
>  each of the threads in a process has a different process ID.
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--MCgZRtfq8oCSkMTe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJXTwACgkQnowa+77/
2zKFUw//emz2ZIpmPOumzfWcub5TXwb6G66UKERl4EjDW1mBaCmfrW7IBMzjpDtR
PmrOdw8lpDrpYSNMfO8DzmMy0eSACtw8l561J3HKZcR2UbbXmnU/5mN4fTc/TrI9
qaWlgPz5THD7dujAyxsyyMxqYIXEJthbCj0vFs4K+Nddq/J3n82niyA8cctFJGh5
414rl0Nwp33SL9vfmkuASiZAaqpcRFB4cJiLfCBqBYulmrr8+V3HCchQcGf5rUly
lzeLMhgekY84gOraqiGRu0uegjft5Oka+BgKgAbXrtvt3oAB88URcKR0DSb5MKe4
AgLGWomoPwDyozca0s3Vu0VVTJ5P2ukt5KAVnk/wsr7XmC+UQSbBtObJ7d0IGz8a
iroful1o6epnkdzpsy540rTLtWE1qljPyMjUIgsEL4zHcaeDrwZOedEddC/mXIo+
Yn9kwjqt6K08RWQQj9E2qyGX7V3ioMohSkWxXZ1u/xnZJ0dMweC8tfTwrI54aaic
czf3lB5BUr451N93d/gcB6X4zpGQdQTZTYDmPleQV4ERVbq6Xaq2IFFufzhwT0js
FGWXDtUUV4DP1pj3s4KCn15zjEklh73xlhCCukEkwGlecBcecM7Wi/sfL/qgv3+5
NVbsDCdVpRqxbK8MxgzJga+z8LtWx0qWtz7CFJFR82eIHhXiwk4=
=HvE+
-----END PGP SIGNATURE-----

--MCgZRtfq8oCSkMTe--

