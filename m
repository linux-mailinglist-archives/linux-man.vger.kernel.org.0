Return-Path: <linux-man+bounces-2440-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D79DA35F32
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 14:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BAAD1887F64
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 13:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E0A264A8B;
	Fri, 14 Feb 2025 13:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMteLS6q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE98264A7F
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 13:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739539758; cv=none; b=KYAS9OVz+RsR9YWR6RSa9k8RFC6YQMHEvQWMs9CBWSuLB0vyb8XmggpP8jclvaZNNwgAX/UOmnh1FR77BIK1wxRMd9GUgCXMsV9aaXrXYyGorSRlxUnKoh2VvbV0S8f6CUO39AQqdTEHXfwiuLmvdUiDSm4efgkUiHxarrOze6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739539758; c=relaxed/simple;
	bh=e0hTuwqsiJY/9pL3Xk931uePWyZaz5zZ1rNum40/U8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pxvXfeBRwr/HrRHNYDueTzOQ+Cqjje2YXUafqfW5yC0n6akjZgVnYSmN1uqZ04RLELR9KcFHHOCJ8zwtyw/6YW/d65GORyCu3xUZi7q0yRy/IKTaIsJlxVz1SVyU0rvfAzmzvN66hSdTik4zxMFUQiCZXjcnbFZ5OQzzdnw030w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMteLS6q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03B01C4CED1;
	Fri, 14 Feb 2025 13:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739539756;
	bh=e0hTuwqsiJY/9pL3Xk931uePWyZaz5zZ1rNum40/U8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZMteLS6qXaQO+3rmLgdSF3IzW5gOtgBw3nDHbp8PeUmWlZrAEHTaEP943aRTPZHKQ
	 yw14+qoogcbH2fYXPBw1c+wRpRBsXQn+ep7GzlbjQdOHY9YYkputpdbkGliR/H50fH
	 Sz2HrCu+hI70Cgus2Nk1aJ2PpPJxod5nzvbbrTRjrFjTomF+YTb22k0aOoftSikVi7
	 ootSdniVWO4logsolB4MZeAfTNDJbG4JyBLlHCdEHp+cgjnVu6tQhSWHEl14hAsWaR
	 tGJuHrT+0zJcYfwN5t1vKPjJPDrzSvWKWIMnLjabvXP7+b05vANI3jRLkklYcU64Sj
	 Lt7+zbLcE5qkQ==
Date: Fri, 14 Feb 2025 14:29:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but glibc wrapper cannot
Message-ID: <tegc72whqitfyu2572hi7bughzdakrfavduslmhku5sgtfulia@srqoayuk5eet>
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ew2fypcd3shjvbkx"
Content-Disposition: inline
In-Reply-To: <20250214125023.2798287-1-safinaskar@zohomail.com>


--ew2fypcd3shjvbkx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but glibc wrapper cannot
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250214125023.2798287-1-safinaskar@zohomail.com>

On Fri, Feb 14, 2025 at 03:50:23PM +0300, Askar Safin wrote:
> I verified using expirement that glibc wrapper getcwd actually never retu=
rns "(unreachable)".

Hi Askar,

Could you please show the experiment in the commit message?


Have a lovely day!
Alex


> Also I have read glibc sources for all 3 functions documented here.
> All they don't return "(unreachable)".
> Also I changed "pathname" to "pathnames".
>=20
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man3/getcwd.3 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 685585a60..685a280a1 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -245,8 +245,10 @@ process (e.g., because the process set a new filesys=
tem root using
>  without changing its current directory into the new root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
> -When dealing with pathname from untrusted sources, callers of the
> -functions described in this page
> +When dealing with pathnames from untrusted sources, callers of the
> +raw
> +.BR getcwd ()
> +system call
>  should consider checking whether the returned pathname starts
>  with '/' or '(' to avoid misinterpreting an unreachable path
>  as a relative pathname.
> --=20
> 2.39.5
>=20

--=20
<https://www.alejandro-colomar.es/>

--ew2fypcd3shjvbkx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmevRVIACgkQ64mZXMKQ
wqkxWA//dbjQRAZlbObLh/21IlzR1vV6xju/wLIzmchQNYUD58fw5fKEnUnqCCUn
RLwJeyZa9fysLlLOLmuqSjDUpiRtR8awELZJUALGSXRiMUQwtEl6D/gAVqwePASk
5ed0EN84BUCZ+PTh8FC7oq/KElloJ752UTTWNSnORUyf6Ye7U+q2OuWSOObbTlXT
O3ca01Bgmi0Maw2zgg2G021neCpemAPKCV31B78djl2VAHrYHGgw3/e2neJC9VAb
K9nXBPAGNFMLi6hHvBUmuUarURSRQhJMc7HDYcvmB+H3Ez/2LwmUMMxVyTpEUbt1
sY37yqrtp4HepPZDMLLvLdSOuCP6XJLCckkcntxss+JI7LplcfjX98plN/J61Lm/
LMgAB1SnP4UlibH9KL2gCmkZag/cm9WgSUK9fgmIVF1y03fDW8hzTVLzYMKMoORh
zwkyZI1mRpEsRXXA45PH8Y31n4QIUv51q+u9vWJ5w6s6gJdW2iHZ8ftWqcteXNJe
VAOQjt9d85ZvvCJjjadRIjNxt2aiNNKyBufRTDZhEywQAKSY4Rq90tQto6wLbZBX
4/ZAhU437B4OQOSgcBf4kY01gACnnnA20u7u82YaycOkXmAJQ4DqE+5VZgyCuike
d3Gi4PlFWc/oGNpwU0kQ9xRzxkruLPlUaXfcNZdwSN8kSGZEsQo=
=XjVc
-----END PGP SIGNATURE-----

--ew2fypcd3shjvbkx--

