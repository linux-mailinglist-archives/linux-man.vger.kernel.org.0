Return-Path: <linux-man+bounces-1024-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BEE8D715A
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 19:29:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAD9F1C20BB2
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 17:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E97E154457;
	Sat,  1 Jun 2024 17:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA5W9HUp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDFD1EA8F
	for <linux-man@vger.kernel.org>; Sat,  1 Jun 2024 17:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717262974; cv=none; b=rAlaH52sDx4PbquGMmDnvEsG99DJvVqMtAEUYzyLoGSBD+piD2416MDDdvC/KEvW4gr7vmJV5bHEcO8gFT45ZrVowKXqSDWlaJIjUeztYFjFMiY63dYcyTnTYmSD0bh/9EG7HnIy99f90r8vgLv1Ew9XTzLHesUnDQ07gD5ymRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717262974; c=relaxed/simple;
	bh=vvzxosZXYAtGNbnrP0BndAQ6t7xz7TCnLN7OtY1+gWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pJOudPfvsr1OlbXVUyXnMuoRM2rH22TeWLyYir1MJtSv2RGpUE9DmSHiKrLGVEXPNI5Fo0Hn7pZ8v1DBEyFsSqH/IoaIHlczSYNt4vpvtQ3Qtb/s+i4URy5HPVxoEDiy9jKkq/8u0q9PnjmkDG0l3LfT7Tt+AVtuKvksiUxeEGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA5W9HUp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84904C116B1;
	Sat,  1 Jun 2024 17:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717262972;
	bh=vvzxosZXYAtGNbnrP0BndAQ6t7xz7TCnLN7OtY1+gWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dA5W9HUpNykeedP1evdn3IxqSkfbSPegq2j5mPjpKYmfhIfJangJBi2FmUB1NXBwP
	 7ySaj83AseQwxn5xyYCIxLzJ8LEZlj/Z/V25ZcITWgYoYYGv9W6nFiJZFyHZSMfBCH
	 bJHIuuUeGegLSs52A7AL/lZxkGUuPXXAmJl910BE70TtMhJs43RGvUQJPkuSkfd5W5
	 t/3KeDsilEYHiXR9VoTXyurXzkNJnoc22MWdA/1TLKKPtgsn7YDlXlUiNXaRl+GdX0
	 lCs5E7UPRmL5irjCMGOAQ681parOHwlLHZ0J0HinVoUqPi43DE2MQj82JiCXfE/r+J
	 CDg3CjLg1A12Q==
Date: Sat, 1 Jun 2024 19:29:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Bruno Haible <bruno@clisp.org>, 
	Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: POSIX conformance document
Message-ID: <rht6bpna7h3rdqwe3sjdmr476bo6yyzfueewx2buqw53od26tj@uatnifbxrfb7>
References: <12722244.etNSJPHsjv@nimes>
 <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kh6iaq276qromndz"
Content-Disposition: inline
In-Reply-To: <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>


--kh6iaq276qromndz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Bruno Haible <bruno@clisp.org>, 
	Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: POSIX conformance document
References: <12722244.etNSJPHsjv@nimes>
 <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <bf16e9f9-80ec-4f66-b11f-284ddac1952e@SystematicSW.ab.ca>

Hi Brian,

On Sat, Jun 01, 2024 at 09:15:23AM GMT, Brian Inglis wrote:
> On 2024-05-31 15:21, Bruno Haible wrote:
> [Alex has contacted them about POSIX man pages,

This is a reference to
<https://lore.kernel.org/linux-man/25806cfb-8845-e4d4-6c18-6b02cb8c92ab@ker=
nel.org/T/#u>

I'll ping Andrew Josey about it.

> and hopefully may get info
> about updating POSIX man pages to 2024:

I hope they'll do.

> latest draft standard has been
> approved by IEEE and Open Group Board, internal publication of the standa=
rd
> with final front matter is due 2024-06-14, ISO/IEC ballot closes
> 2024-06-28.]

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--kh6iaq276qromndz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZbWnkACgkQnowa+77/
2zKpIg/9G3MiCBKdjF6Lu9Tl+qRvGkeTFHfdsbCC/uKrtw4Ulp39r5sKKEs997aw
jnFancPBR2xgPv9e0QWDFoxYtgeU4zexkTr/p6zTtjtLXF31Uo6Led1X0ZzTRgXy
7LIhfbg4vrdQtIPDhT6fuP73QWFcUaw20Buj+vCmS7AbnVbof1vRKTyq1o8AXDip
DzquidzbHwGt3waeC88V8VmqEdnazuAX1wb5S+539xBrr/52inV6GdS2M3YozKNU
Ft5sBrjorSJ8cqDgwemAJvn41UswYiMSK3NU56+4anUgR2UlIJzZmQYIwt626Pg7
5+fWDBWtVd6Xa1Qa5sgVwhXqzg410MilH7m/T9PvOakduBY1gji3NUA2O3wdLzjr
B98ZK7wqdSkx2jWvctGTG0Pq4Ygrb3k+vCDT348FG3gQIYAN8OHEnGG0gFEomAaP
RNuFJj9tRuYuF1mvH6woJ8+jl0IGgzpWqA0oGa40QOa4oUx/RzdNovwOrld2qcLU
5Xq9pqbgcKO/IXvablK3Cyg2XWUIopu0Ir3+VJti9q7OQRwxVuKcI3CVRbwEfYdz
IeGk698JMPHSoSTjjFGGuCdN1cnsRf+WjpfnPUl+XJdQCeFn9Zbbv4fAA1tpHqE2
Dk8x6bT4eIPj3j/semNy0zM/8leWZP4yg3JZqaVm3FS1PWelumE=
=mVTm
-----END PGP SIGNATURE-----

--kh6iaq276qromndz--

