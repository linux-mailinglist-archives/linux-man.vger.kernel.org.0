Return-Path: <linux-man+bounces-648-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2875587DDBE
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B8EB1C2088C
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D23C1C2A3;
	Sun, 17 Mar 2024 15:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSM1fqNR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1B21C288
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710688050; cv=none; b=ZzHeooThp8WG9swLPnTJgT1WCSzHxZFXNz2U+ME5iIsnrCS15laLIiuIM9CzSHOD9lUqCWZZzz1ajgJgN+MVvXFi5UrxFBCYLD/SNycp/wbb7E9q7EyXjPDpiMIO6lQomz/fnIwanpN90N4fWe5RVBgi3Trm41z9/5IjX3m0S8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710688050; c=relaxed/simple;
	bh=MUrVcd8bJYkSGT5b9oWKeeLIYeFEmfTJktZCKjVhUqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W9vVmHpM/ECdNfXMn1MFjR2RSwlRxK03ZZ6VR80612Fwwo0CkHBYq086R7xaBMixvBM1naHF0wREU+vPvPkn6Knwg8/D+mSLt8QM6P4t2G7fRhgTkinP0SZlNIZUdEzDqa63El45AXCd4f4qR/P3IqCYnfrYFj/Es5RKpoQeW4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSM1fqNR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4771C433F1;
	Sun, 17 Mar 2024 15:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710688049;
	bh=MUrVcd8bJYkSGT5b9oWKeeLIYeFEmfTJktZCKjVhUqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZSM1fqNRAqLQtdkb6ZxYKNx7DUcHhdkqSKbhIXPEBg07X6rJNaJ2uFzL29WlRf3le
	 JAUf/uo7w4GRYbRHrv3KHXvzCwuwEiZI3TXxTQu3RsyZbCSqC71VbF2sRv1OpmoShl
	 K07K2y/2Ge0L1QQydfi3A2GQC7Jo9n7wII03dXa8rFqX3RjZKe+pOrW+9HiZ8iVoFd
	 DwOanFq01LAJlqPdp0jQjEE46eqhHIfSi/yVkceX24w4rCYxpZVhRWj3IeOuAskAzj
	 Ml4BW1TjgFoLHdD+1CvZUyIx/OnhtjFHRxlxHJGW/oa+o7vJae/Mea1/Zq7aSVk2I0
	 eZPP2TcXgqBtQ==
Date: Sun, 17 Mar 2024 16:07:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 4/6] intro.1: Demonstrate special cases of the cd
 command
Message-ID: <ZfcHLv9ySN3TGGmD@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-7-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5q80TjDm+qgW9Y2C"
Content-Disposition: inline
In-Reply-To: <20240317080850.28564-7-jtbx@disroot.org>


--5q80TjDm+qgW9Y2C
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 16:07:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 4/6] intro.1: Demonstrate special cases of the cd
 command

On Sun, Mar 17, 2024 at 09:08:32PM +1300, Jeremy Baxter wrote:
> ---
>  man1/intro.1 | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man1/intro.1 b/man1/intro.1
> index f0a8d98e0..8102640ba 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -213,6 +213,25 @@ Try using the
>  and
>  .I pwd
>  commands in different ways.
> +.I cd .
> +changes the current directory to the path to the current directory;
> +this does nothing.

=2E and .. are not a special case of cd.  They are a special case of the
file system.

> +.I cd ..
> +changes the current directory to the parent directory of the current
> +directory.
> +For instance, if our current directory is
> +.I /home/aeb
> +and we change the current directory to
> +.IR .. ,
> +the current directory will now be
> +.IR /home .
> +.I cd /
> +changes the current directory to the root of the hierarchy.
> +.I cd \[ti]
> +changes the current directory to the user's home; if I am logged in as
> +.IR aeb ,
> +this command will change my current directory to
> +.IR /home/aeb .
>  .SS Directories
>  The command
>  .I mkdir
> --=20
> 2.44.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--5q80TjDm+qgW9Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3By4ACgkQnowa+77/
2zKMvw//TUm0cWmZ9KqBSgx3Jxg6vm4khFJ8rrmg8xXJmE17lsQiqpgCFLCCGiDt
zMVkUi9mI39QpsNg9xnVqcwZTW5vg+pdsNCfvYVaRddTX7S2YgCi1knRSEd4GSbm
6G/I0GDGTUw4H6JsXztPlzGgnwJQAJVvMOkMEG+AleXXOTXEh4wRdHC1LjJwah6F
COIOtWHApXCnpHRa2l6whsrweAyzXD7dSITSZDpv72Nu1gKPbUYRcur9cA3c2fCw
GrW2COiF+L1XO7txXdIw6AF2rRhF6Jog/TrdPPsJaGLbaD3wboR15waqyDFnAris
8e9a1+oWuQOgu9NUsAEWI5bZUvsPfhhhsQ1zfz+3xhfJI1CDU/zMy79CWeXW+4RY
sUKC6FlyA59Uo+J0K8G1y2nJoVj+tlQ56Pcv084Deez33rxua043BNtP34DzEzQv
qNRZeEVW4RlyzB1aYEnNEtbxygUZjpjp70bchlLN0cRNjGg90o3KtX9uYnoLjm9q
URD+E6JNjqGEog0IIYpJf4j1dpFDHLCQ6iXP41qiEA1I3dMj8j56L/mqm+EfHF6O
I1/vfmMjur62ZETM+U+AKlN27MD8w0235gbttfqk4vkIBZ4MxNg2dhg2qut+yjL+
Q3WRI3stVfXFkzaMCattZte0BugRRM8DPHHc5xfuQLwfIioJCM8=
=VLLr
-----END PGP SIGNATURE-----

--5q80TjDm+qgW9Y2C--

