Return-Path: <linux-man+bounces-2998-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA615AC0BA0
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 14:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29B8FA25FC7
	for <lists+linux-man@lfdr.de>; Thu, 22 May 2025 12:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3598428A3FC;
	Thu, 22 May 2025 12:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eyczp+tP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EF9381BA
	for <linux-man@vger.kernel.org>; Thu, 22 May 2025 12:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747917220; cv=none; b=qzRk5sbyjrXacJ4L8CvCWk3V9+0hTKmlN97Ul0XQ+nOVFlMYmvTyMvR5X1/jue4LwA76lm80EiWmVZDS8gmSQI79ysNC3IobNUhvPHvcIMUdviCwdI0bq2zqO62iylUXYqgCs+EgMay2zXDm8GX9ycJkBu/NarS+5dOMeuPjTa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747917220; c=relaxed/simple;
	bh=cj4VnhsvLNo5n30B3m3QIJFNqbk+PNiLdy+QqSgMlzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9huvP9Q7iNWiuN4FtOkmZCaV/J8ydrJWL5erfL/saVOCtMoimp8p4XJnBQdZWuukePGVy5Lvxq7pH5/0HtiX8LkdnyoUjXoUPIXHyNrj+HMwJZlEI8Em2Hm018D5aDMukdwXzgj5z860L8QhpcTGaoXjdasNvr6MB292VrZiHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eyczp+tP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA557C4CEE4;
	Thu, 22 May 2025 12:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747917219;
	bh=cj4VnhsvLNo5n30B3m3QIJFNqbk+PNiLdy+QqSgMlzg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eyczp+tP5yuJDDs5PrY8H9PbVCwoFCEgxS0BLsIOk42tCecUURymXjRzEbFx8JMaX
	 Is/4EQ4DFvTwW5BAv01C7xgpOy+DRQjY3HsqhpiNlrjpAcAOVHLlKm5h0vy0T/F/vT
	 aEC9080xIZ2807lPgLLESgRYdkXd5cJOueL4MSxiMRr5Emh4VSUv6f8lPin6bQbG4j
	 GbWqLXWGuKpmi9NjFNIsJpEPuFkS8jJECo8YV9zMgKpr4qw0dzvdcF3AS9/5rA7Vda
	 y3H9n55z7cnKyjM9z9It0hUH33TQBrCw1AS2ZH/Z8dEQoxOeEcMsa02+CokfRBSn/k
	 kAEAFOP8vw4EA==
Date: Thu, 22 May 2025 14:33:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: x86-64 + x32 syscall numbers go in
 eax
Message-ID: <5xv352dejlorj4umghas2lgstwfhwwied3i4lsvdftvdedwrwz@7xj6ryxkbd3t>
References: <20250518234507.404608-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kwdnmsk6m5zneecy"
Content-Disposition: inline
In-Reply-To: <20250518234507.404608-1-benjamin.p.kallus.gr@dartmouth.edu>


--kwdnmsk6m5zneecy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: x86-64 + x32 syscall numbers go in
 eax
References: <20250518234507.404608-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20250518234507.404608-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

On Sun, May 18, 2025 at 07:45:07PM -0400, Ben Kallus wrote:
> The kernel sign-extends eax before dispatching syscalls.
> From arch/x86/entry/entry_64.S:
> >	movslq	%eax, %rsi
> >	IBRS_ENTER
> >	UNTRAIN_RET
> >	CLEAR_BRANCH_HISTORY
> >
> >	call	do_syscall_64		/* returns with IRQs disabled */
>=20
> This patch updates syscall.2 to document this. ARM64 exhibits a
> similar behavior (w8 is extended), which is already documented.
>=20
> Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D125f3b3c3ee3b99f94e08214f610bde06a9bb754>


Have a lovely day!
Alex

> ---
>  man/man2/syscall.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
> index a6b93699c..b946dcc41 100644
> --- a/man/man2/syscall.2
> +++ b/man/man2/syscall.2
> @@ -190,8 +190,8 @@ superh	trapa #31	r3	r0	r1	-	4, 6
>  sparc/32	t 0x10	g1	o0	o1	psr/csr	1, 6
>  sparc/64	t 0x6d	g1	o0	o1	psr/csr	1, 6
>  tile	swint1	R10	R00	-	R01	1
> -x86-64	syscall	rax	rax	rdx	-	5
> -x32	syscall	rax	rax	rdx	-	5
> +x86-64	syscall	eax	rax	rdx	-	5
> +x32	syscall	eax	rax	rdx	-	5
>  xtensa	syscall	a2	a2	-	-
>  .TE
>  .P
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--kwdnmsk6m5zneecy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgvGaAACgkQ64mZXMKQ
wqn0qRAAlEL9mRtoNVxtduGxdQhlByAiERSuXO9CKNnUdjiCcqTJs1FEMOW8/KBT
1Djq6pCOrwDjGwDFTyAxhRn0ezCedTx7ncrB50nVwzZK3wO+F/1EYmDzuEihwPIj
xdugVfIe6z5r88yPV8VxtCyQcfFSCpqvCjbvNiJS3I7nhJpWyGIym5jIeHRNLiTl
6U92tfb2SDSKdyzIwHICYMloDP/qnbWg4v11b6HApDmWhRFZuAs5GfosyoC5KUaz
GvppCx6e3A2ALWRBImVftna6chJYZacqjMVVwj4x3/bQ6z3ki8Ucd9xYYuo32Ctp
NGjp246gt2UMnh/dOFBqZhqjD1XVatnTTvoE5YL2I4jKXcnVAQmEx03YFPL7EyuZ
HW4bKDY+WLiehZHb+qNmJE7XpVNG3cpJz5gT1wXRCflJ4Cr56+UyC9OShI6L5UH+
i44SqICb4sBY6R+Ozf3Ck7Yq+7678YGlq2DgZ3JX4m9SKwujuBzfiXFRT5kFVUYi
FCYT3QJLJDXdDvkw7Df7KHlwQhtJ5Yqa3lOoSy1anwfXpaoi5PF3dn5rsSjgVDqV
56j6Wo6J87lMfev0kkCc5zWHe3BqfI7R5qZ/M+WH9aG/fbRJcfjewlgd331oj2pQ
YLXTijWK3MtxEKqjGH8KhLkpnoTveq1WdIvrVa14XbF8hcKD8N4=
=+B/J
-----END PGP SIGNATURE-----

--kwdnmsk6m5zneecy--

