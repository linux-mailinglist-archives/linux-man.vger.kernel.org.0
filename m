Return-Path: <linux-man+bounces-3498-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C41BB2C8F3
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 789435E9042
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC59298CB2;
	Tue, 19 Aug 2025 15:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bf7wKD9y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D51B28C849
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619195; cv=none; b=WAi2sROhG3Xf0bFt93cPTMVVJzvyVz8jPBMwR7qXTSfAG9sUpXRtkgVdmifBhve6r1oXAztjedO+LUmQQ2n2z2mEx8dKVaVkAYfc2zkY4z9lLIVuRIzMPEt6eTSym+f617GdqjmYZCits+8974xNt5+Pa5fH/r7aeTBH8zwWn6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619195; c=relaxed/simple;
	bh=qE1rFkNA/JO1XWBFWeS6DczMEQ/cdH6qxgtvUXaL7+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ddPOy7NGKX2hGTu0LQjesVQdGbhb3TiXk3qZjQaTFsEKFEJ5zvkInJmQbDkO3J4jyhH33U77V6CkiiDFs0s0bQLIvK1DK0hyifQO53bmlE1Q0TfpyNzB9JW3PO6CxXoQ6SCoeXXnDITde8TnkvqYKTOkVvSb/wbdWw/CR3ikdPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bf7wKD9y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3B1AC4CEF1;
	Tue, 19 Aug 2025 15:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755619194;
	bh=qE1rFkNA/JO1XWBFWeS6DczMEQ/cdH6qxgtvUXaL7+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bf7wKD9y8qWU8rFEekF3BTaFWSdJj632NnzCFOhRBAz6wAsnqIWuKXpmVd4ocqEDa
	 cknbZBgyufWCmtDfLNySx0q1l2kz4XJGwvovOoOAjUWnNrGeJWdDx+7TOAIx7EbUng
	 Gv28+hhqo7LXTr24ir8GXD4tWQ3nv1hxw6j9U7sxdp73IaGbk2jyFUztCysIALtHwC
	 Y7bWStGPeALQRyS62nFIyCktLmAMPldS/cefhdlagVU0cczynzV33svlRlGAhxB5d6
	 /UH/fdWHihQSlUcYbmsSrIMZvlSoaOKuzO6K1BfLF6jMmpFogDXCkqFfuGLZjUYYaY
	 K0cEgShbctLqA==
Date: Tue, 19 Aug 2025 17:59:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] Remove pread and pwrite from list of syscalls, ever
 existed in removed archs
Message-ID: <5ihusjpxzf24egm2fr6sptrin4h4wyhzz5lnrxcdwi6ysb2e3x@fgazn6e4u3gi>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-3-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vvnycjm4xvhuvcuz"
Content-Disposition: inline
In-Reply-To: <20250819155400.763253-3-safinaskar@zohomail.com>


--vvnycjm4xvhuvcuz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] Remove pread and pwrite from list of syscalls, ever
 existed in removed archs
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-3-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250819155400.763253-3-safinaskar@zohomail.com>

Hi Askar,

> Subject: Re: [PATCH 2/2] Remove pread and pwrite from list of syscalls,
> ever existed in removed archs

On Tue, Aug 19, 2025 at 03:54:00PM +0000, Askar Safin wrote:
> They were merely renamed, as explained earlier in this man

Could you please further clarify the commit message?  I'm not sure
I understand it.


Have a lovely day!
Alex

>=20
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man2/syscalls.2 | 16 ----------------
>  1 file changed, 16 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 142204839..947974ebe 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -1028,16 +1028,6 @@ this system call was never available to user space.
>  Some system calls only ever existed on Linux architectures that have
>  since been removed from the kernel:
>  .TP
> -AVR32 (port removed in Linux 4.12)
> -.RS
> -.PD 0
> -.IP \[bu] 3
> -.BR pread (2)
> -.IP \[bu]
> -.BR pwrite (2)
> -.PD
> -.RE
> -.TP
>  Blackfin (port removed in Linux 4.17)
>  .RS
>  .PD 0
> @@ -1048,12 +1038,6 @@ Blackfin (port removed in Linux 4.17)
>  .BR dma_memcpy (2)
>  (added in Linux 2.6.22)
>  .IP \[bu]
> -.BR pread (2)
> -(added in Linux 2.6.22)
> -.IP \[bu]
> -.BR pwrite (2)
> -(added in Linux 2.6.22)
> -.IP \[bu]
>  .BR sram_alloc (2)
>  (added in Linux 2.6.22)
>  .IP \[bu]
> --=20
> 2.47.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--vvnycjm4xvhuvcuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikn24ACgkQ64mZXMKQ
wqkPMRAAsYku6FIhHv0OI2PnI+lYps/5Zbnot/vjXhRR1+0Qxr2deH97amNZvgS5
zYO/lYMeckPBLNt9P49bXgImGL5Xcm5A98B2nnRwo5CvfS0L02wju9TChQq1aIXr
clggc0w/OwX4j6qptrL+BMewpFAKiaN9kTddFXV4/71OG4ILa5sMP8rrbcbMhoni
IRwjuYgS0FjOk8HOoGlFzCTyTE3oz7i70VVPTBbq/rAy7Z71DkQZLYSmZA9Vp0uY
GQB3thikd7zlllixT8KahgPBGLIcdFElRW1xp/Mm4pDoJTlJcKIqcgbHkBiN0Xr8
u3JaQx/G2KD+6UMMHQts5z7o4DwEChgEaEvylRciooBK4L5jLXOlXm8DVy741dK1
/xSUVY4/rPEzBgKjqScQyRYowYHZTITMXLRmsoIfw9UUI3BM/imfGlw5qR91IJyi
rirzUb4Q+Kl30SfNKarTl4Mz5wPZKXHz0eKx8l2H/FFU/LaiTye3xQiLJXGMYeCk
x7Blc3MkNTmwkzWUn5l0E8bUZOMlcnxgXq2lFLlR/99G+RAOLkRx7js1yvAEvN9r
8SQfD2fEM8SUi4i3wgIaX40QWw9Kx7CEG0Kv4nmD/mdJaVBQGVj6LxqTbcAcma/r
bf0cnQZENBziJ5qwYh/RI0G7vp7+ZjXxrkqFTcCVGrtOaqpptN8=
=wz+P
-----END PGP SIGNATURE-----

--vvnycjm4xvhuvcuz--

