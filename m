Return-Path: <linux-man+bounces-2134-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2E09E6FDC
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 15:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B71C2188373A
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 14:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36158206F25;
	Fri,  6 Dec 2024 14:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zfj1ANUF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1FF2E859
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 14:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733494382; cv=none; b=Kcaflo1mCy3UDm9ucrj3Q5TlqQJuN9ac++8PgDCo5iCrR3NOTuzHflo3/Fc1aCXmKcOG800wderaG63U54Pwqi1/iIEERcKlZAUzgioSu8ULNQ09OtwBDu45dXVoWgCc20c4I7goTLTd/CnRnCVImalLy5fkSeahlu0nr5zfJ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733494382; c=relaxed/simple;
	bh=LMhKj5WajDoltnYG0q15Py1Hkc22zJCall7yzonJiR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HsWDkNH/2waNnSkFiF6Xhw/2LEhRUg9xpXguUZiFNiOzaPeuyyvUzBH1nRHHlHzP55wYu4tmxsSz9l5oN89ez6ADjPpFBkCdyyyp9vFOv9ul6bpF8xQGctR17o5ITS9EL5r6ngsQupNiL34LbwCOzqVl7wzrxJPfl3lp9hduuak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zfj1ANUF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D335DC4CED1;
	Fri,  6 Dec 2024 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733494381;
	bh=LMhKj5WajDoltnYG0q15Py1Hkc22zJCall7yzonJiR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zfj1ANUFFl/gbTYX9JCn0nXsTwkz0HuhIwwT2TkPXgK5/mtcPbBa5jaLyomChX1Pz
	 aW+Q7cqj5GL5N0G6SFGT20ITyr/L4AbTPGsUL1jZMt9ZAFNnQw2k6JbuCyN0fXkJQ8
	 blo7uRlRdTWkyKQIZRHp0JVouw7WiEG0akqAI+AGctIx1oowHj4xtxZIXuRH7AnGcQ
	 wF0QNncLDQihE0Zi6HJD3yK6nTeH2QRr5FUf+iXt6ifuz5C4B+ByRCwidUaSsVpexu
	 IW6s+yvtOcO0FP5YVo89ayv3t1Ejx2+3Sywzi/9oPGl4zZBTVYAc4C+g1FMQXL0t5V
	 TIikJZ1ivIGkA==
Date: Fri, 6 Dec 2024 15:12:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Anhad Singh <andypython@protonmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man8: ld.so: fix grammer mistake
Message-ID: <20241206141258.ko6dteq2khutlbg4@devuan>
References: <20241206071814.55913-1-andypython@protonmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7cnrjerka455nzdu"
Content-Disposition: inline
In-Reply-To: <20241206071814.55913-1-andypython@protonmail.com>


--7cnrjerka455nzdu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man8: ld.so: fix grammer mistake
MIME-Version: 1.0

Hi Anhad,

On Fri, Dec 06, 2024 at 07:18:23AM +0000, Anhad Singh wrote:
> The revised phrase "...one or more of the following..." is more clear.
>=20
> Signed-off-by: Anhad Singh <andypython@protonmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D119ca28ddcdefdf77e507cc9c61c9280702794b2>

Have a lovely day!
Alex

> ---
>  man/man8/ld.so.8 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man8/ld.so.8 b/man/man8/ld.so.8
> index 23cddb9..9ac471f 100644
> --- a/man/man8/ld.so.8
> +++ b/man/man8/ld.so.8
> @@ -548,7 +548,7 @@ one can observe all run-time function bindings.
>  .TP
>  .BR LD_DEBUG " (since glibc 2.1)"
>  Output verbose debugging information about operation of the dynamic link=
er.
> -The content of this variable is one of more of the following categories,
> +The content of this variable is one or more of the following categories,
>  separated by colons, commas, or (if the value is quoted) spaces:
>  .RS
>  .TP 12
> --=20
> 2.47.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--7cnrjerka455nzdu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdTBlsACgkQnowa+77/
2zIEkA/9FWdHJx/4DGL5J2erEuPS5KPbaLqK7VfLsu2czZ3Evv2ud1sFJoz0eHvH
C9jz7GyGZyIFrmwxUyxy0cbf5jDPZNF/xEvoBWtrmQp5efLlgV4RApuP0i1C4E5h
Yjayp5DIdbnmvJ6WxbyCrmLIA5uGolBwgrmZ0xxkrTEfTac7URyxtLl3Bn4Y56Ys
ioK5mEkQAlVaATEaIxwcb8xqt9lB1x3gaqIIRj+ICXCkn243zUKWGLwidcGu3nlz
BkWsbT8HpWh3KqeRpSRcjIiZs6rVGvy2Pq1N23HOvsV8PBIManvyRl1LpIhHa0MS
er33+M13oo2e8+X8Eigcb371qoJMGfs7j0md8iUKzZDAWll2VrDrnIISkjrgMlEx
eZKUZia4lZqvHXrPnxglfbE5RDDwbKCICzOUlGDqHYNCFBqQXAOTU477LPqlJY+e
Vz9dmXMTL728Z3s3pOf7mK5zXcYOUQ111Hw0GhJ4Ofx3mEZ42YdiZX4WlXLGxWRP
KybmGsd7nKYMApSpNrlQQ0uXwz9aVAURHiERdP+yanPmNoid1CdpXTbEtSGjAoiR
LXrwAGfhUS3LvJBDkm078Cp6NRZaRCWhCJXYWZooPRlxDj7zWqjdw2RDtPF8+6bh
U2uyedtwIlExTMQqep2rw6bPej2wzHnJRhCraZ+uz4284eixaQs=
=oBGR
-----END PGP SIGNATURE-----

--7cnrjerka455nzdu--

