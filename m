Return-Path: <linux-man+bounces-1899-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6B39C65F9
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 01:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A017B2DD2C
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 23:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C64621B42A;
	Tue, 12 Nov 2024 23:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE7BvSgB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DF420ADDB
	for <linux-man@vger.kernel.org>; Tue, 12 Nov 2024 23:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731454549; cv=none; b=Yexr2eeX+3HEcnruOeGFUnZ0LhgKQdzzK72/m4zs+OMOh6p5dTj/Cfakapsu5kvjgG5NhVse4qEsD7L1ForFitAH5jk4xo7jMzi2Ba3Dk3AMxIlaG1U+6R0gRh0WEOoFMFWHtNOUNfM8DH+dgdhrOD48Q+EZvFGjkgYFHbuVWLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731454549; c=relaxed/simple;
	bh=5wIk14m9i48/hcirmlXYwYxQb2VBlWZE++9E8KuVICE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ibwy7oX7u/qfRgTBXxT6+w0oDX7fO88sqXaeD74RldCRnOL4DA6wXluodeHcb3wlE7Nbp+QaOEwzz9BardXMaWu5VQOas8MXWiYIUpMMub3rNN5dxUpB/vccCHHPH4kpAL6BzHRAi8r3fjDoFkiuWiV+P3uNPCdFUy+lnjRk6HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE7BvSgB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B4CC4CECD;
	Tue, 12 Nov 2024 23:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731454548;
	bh=5wIk14m9i48/hcirmlXYwYxQb2VBlWZE++9E8KuVICE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LE7BvSgBrsEzyCZegFyzMsBS7BcvpvXBx16IiZOtBjaZRcvFqUtXam5LpKVhAsM7P
	 C3K9kww8TyD4kHi7NNsvGWVNrbeTg1jVsmJbAoVUhQWVRUii1JSgp758V9bbwPbp32
	 n4I6yhOzthMFJmhU4mdDyA9QwgzCeKxNKfdsYvUilxxxW13mOAnpDzZ/qkXO1iIjyi
	 tbKzyGgFJ47k7CXrrKS4dzhkrWm8UO3PFDyyAJ2yLqktx9qq6zrvHntuD7t4LsHig0
	 fIt/vwGRl9IiP/hCQGOE6HwMIaQkjKCKxilzFZlJZ8p9azetyfboU8aT4+061fzdYi
	 /va1DM6O+tK0A==
Date: Wed, 13 Nov 2024 00:35:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, bgeffon@google.com, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] mremap.2: Update information about
 MREMAP_DONTUNMAP restrictions
Message-ID: <e32hemtogjfgdclaao5oms4uezl7jss34ekdzcitf3r7qxuqsd@ok7tqhu4oe5o>
References: <20241105041700.1386571-1-alexhenrie24@gmail.com>
 <20241111061139.206404-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nsvrghmtksw4j2l6"
Content-Disposition: inline
In-Reply-To: <20241111061139.206404-1-alexhenrie24@gmail.com>


--nsvrghmtksw4j2l6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, bgeffon@google.com, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] mremap.2: Update information about
 MREMAP_DONTUNMAP restrictions
References: <20241105041700.1386571-1-alexhenrie24@gmail.com>
 <20241111061139.206404-1-alexhenrie24@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241111061139.206404-1-alexhenrie24@gmail.com>

Hi Alex,

On Sun, Nov 10, 2024 at 11:10:19PM GMT, Alex Henrie wrote:
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3Da4609387859f0281951f5e476d9f76d7fb9ab321>
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> ---
> Changes in v2:
> - Move link to Link line in commit message
> - Consistently position the word "only"
> - Use .B instead of .BR for a word followed by a space
>=20
> Thanks to Alejandro for your feedback.

Thank you for the patch!

I've applied it.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5cd75b8958eed06365849fce4d70582e19ab7fdf>

Have a lovely night!
Alex

> ---
>  man/man2/mremap.2 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
> index 53e0bcf2d..62bf17b76 100644
> --- a/man/man2/mremap.2
> +++ b/man/man2/mremap.2
> @@ -106,7 +106,13 @@ remaps a mapping to a new address but does not unmap=
 the mapping at
>  .IP
>  The
>  .B MREMAP_DONTUNMAP
> -flag can be used only with private anonymous mappings
> +flag can be used only with mappings that are not
> +.B VM_DONTEXPAND
> +or
> +.BR VM_MIXEDMAP .
> +Before Linux 5.13, the
> +.B MREMAP_DONTUNMAP
> +flag could be used only with private anonymous mappings
>  (see the description of
>  .B MAP_PRIVATE
>  and
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--nsvrghmtksw4j2l6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcz5lEACgkQnowa+77/
2zITcg//fAbOja0+xYk7pOSwv5nsIEFNQbDX2M1dg+9zhR292z+Z3R5RpIEhTa9a
pvdM6k2YLePsw+QYH7vu0d4x0t4Oyd+4GUnt3+c+PPvXPp6fw8/E2EU/uXJxDNeQ
mY+GXHHlGLReRrp8nxfwnSsykBVx6wlMDoxMvBXg6wkz0B/m3sDZRGMPgYFkGbZ3
PldWUDW1Dud36SoZcqpN174EKLoQDIDXSAXJuHMWOfQh/vzjnmsrb+cAfpLd2nLe
aPSCgIfFOKeoTrJma+SBZ85TVpfMeiFFoHuKpLUmqbKESEtebiWtpfhzMtTTYKi3
5ne5KGQh5LkHg5p4TP97ftwBbNe9Zi93H3uQzLr6+hXdIuISWdfXzbLlvA3YEaHS
eGga6s02n0DX0Rf3gLRFmVlmsPe/Hp8YkKK6b7PuidUc1fmel6+nAb7xSfKMg94u
MgV3uuQdj1GaaUoyiljkvR7BGYUGYYq1pynQIaBJBGOK1lgbr9ppkt1eToubjHpO
8C3wkR8POKMCG5AiUNJ04mT4/uiSjWxgxx6QyJDwOshhRYsGeR/JhBar5nH3ock5
n6Pkbzc3JYN2+dVmUpXcA9APXXGU8XiCUKyhK9bD7tRq76EXmj9C1OK1AOtCR2oS
gCTlyOk7Ht0dpUG2ICL8YUjpulk3EQACA+J+I+yjUXW2P1TMFYM=
=eHA9
-----END PGP SIGNATURE-----

--nsvrghmtksw4j2l6--

