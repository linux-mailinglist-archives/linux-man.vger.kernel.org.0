Return-Path: <linux-man+bounces-993-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6558CF3E6
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 12:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EFF31F21CBB
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 10:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A97944D;
	Sun, 26 May 2024 10:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqW04jg6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF56F9DE
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 10:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716718294; cv=none; b=fiHQNbgL7EZU3KwGTnLa/0ejdvO7eqEz98EbKajU2+M3Emb2dHt9pHPpUa9/RFN3ybzIVVqFnbNqb+VGUkET7iJUFKgdIjHvh6XXHyCzJpmbqKv396nSoVGD0ByZnLcgz2jtW0vjT3lagKSArTs2pKp/lwNWm4m1Jw34Ckqep2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716718294; c=relaxed/simple;
	bh=G4WCGm2upM5KirLH/YxRb5CAXGATDxMqMn0tRKSW+Kk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MRwyfO8CtXWykBa6Uy3TM0V4QzX4ioW3wsm258ZSRAdHIJaEXcwZ8YVgQ1Xv+vyJnCfpA1rFIYolqME06KoLcEozuW6xdbryj2wn7nBvcwc6jbH+F5i30rRrnOQ26v1NZ3LqXQk2RM3Fc8TQ3kFKy/uLzXOVu0yFqIvw5TV7sSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqW04jg6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 743C2C32781;
	Sun, 26 May 2024 10:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716718294;
	bh=G4WCGm2upM5KirLH/YxRb5CAXGATDxMqMn0tRKSW+Kk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OqW04jg6v0phWg4CsaKz1K8BI1Jfxv5i4NW5+6TG7enLquTiQHC83JItdqqK6jAdw
	 k9HR4NRv4rq1ds63Au0z07mvSnFNYsJxq0EdfIBPpihM358m7q1ae/qWqvw6EtOqRt
	 8UzmiyHhFeomQpXzA6kI/7xKa1c3UtKj4R7FeJeKTpVUj4JibLFuf+uo6i6fMIfFjg
	 vpDVSpODfgh2FcRTAD7uA0cJCqoBNXTpVjhSM+DGl5R2b0iw0QqVrSKcMjUWgQDyeT
	 8wfohu+W4RqlMUBDLgiIrwi9GzCwaNxDBfoVh/pesfbsQHw7p1iqD2Ej+cVJXHmor5
	 CwPOyQ8VN+lCQ==
Date: Sun, 26 May 2024 12:11:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: make literals bold
Message-ID: <vb4mvm26odiq5a2uqf5qghf4usazf442xufwj5mreuqdljgyb6@fwbitagsccox>
References: <20240520105956.71532-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gbhu7ofbpzxs67aw"
Content-Disposition: inline
In-Reply-To: <20240520105956.71532-1-technoboy85@gmail.com>


--gbhu7ofbpzxs67aw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: make literals bold
References: <20240520105956.71532-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240520105956.71532-1-technoboy85@gmail.com>

Hi Matteo,

On Mon, May 20, 2024 at 12:59:56PM GMT, technoboy85@gmail.com wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> Format the equal signs in the procfs mount options in bold to make it
> clear that they are literal values.
>=20
> Signed-off-by: Matteo Croce <teknoraver@meta.com>

Patch applied; thanks.

Have a lovely day!
Alex

> ---
>  man/man5/proc.5 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man5/proc.5 b/man/man5/proc.5
> index 5ae8fbf0c..d3bc28ff0 100644
> --- a/man/man5/proc.5
> +++ b/man/man5/proc.5
> @@ -33,7 +33,7 @@ The
>  .B proc
>  filesystem supports the following mount options:
>  .TP
> -.BR hidepid "=3D\fIn\fP (since Linux 3.3)"
> +.BR hidepid=3D "\fIn\fP (since Linux 3.3)"
>  .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
>  This option controls who can access the information in
>  .IR /proc/ pid
> @@ -91,7 +91,7 @@ some daemon is running with elevated privileges,
>  whether another user is running some sensitive program,
>  whether other users are running any program at all, and so on).
>  .TP
> -.BR gid "=3D\fIgid\fP (since Linux 3.3)"
> +.BR gid=3D "\fIgid\fP (since Linux 3.3)"
>  .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
>  Specifies the ID of a group whose members are authorized to
>  learn process information otherwise prohibited by
> @@ -106,7 +106,7 @@ nonroot users into the
>  file.
>  .RE
>  .TP
> -.BR subset =3D pid " (since Linux 5.8)"
> +.BR subset=3Dpid " (since Linux 5.8)"
>  .\" commit 6814ef2d992af09451bbeda4770daa204461329e
>  Show only the specified subset of procfs,
>  hiding all top level files and directories in the procfs
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--gbhu7ofbpzxs67aw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTCtMACgkQnowa+77/
2zJABw//fiQFHnoRzI5rjUuzN727pv8/VfRxzmdMYep5cFkDW4lpgQgpMnRDR4FH
EB2pZqNsM6xslnL/O6brNgN/GWPFDvYS2ws6RXnxMP7i1m4Tc2u7XgUUY1ekEdsQ
yRslEsFJ1gXtIKvBEJzvJszMZxZ6QZrR1Z4hN+y9yqbbPubeNV6n0wqHNtTC+25P
FTpcsi7GogpT9e7LVYUfwFi3OFpWSY7XElhVgjvQ9FVXlTM1yqge4QOZltZwf2Bs
HkS97j80Rc4T3+qJdsjl6NDKxCwnRDVs+dqJQfg7XYltpCXpbfPNfx/M4J75QwOm
ht4+5DggB7Nm4qbGcKVYDE3ItT33FyrfEm64A87ZNk2K+vfLW+j6MPtH7MUpz6iU
88vi9bOnSYYbn0Z0pdGPQxNz0NsSmuJJvlB3hjCi4iirkN/s9ftdVWlxKnpRmUJo
7vP+DC8+ch/CiJyNU8s1jZlKhp/4LauATOS4EeLHMrco2hGHhZsDAHrBprNGU9wI
Xj2RR9UIR2579q8KUC2zeBH2y7OyVDCKYpeYNcI7mcqMnVgXjGO/dGJp6jpXa/Fg
5seTT/Y1S73bpYRs6mDCeeTaIFTQmLETx9892DQLPvOR59xT0UqT7kdQQBhsgYMr
32sBSSwvIwbZZpbWWzcwdIn+6AlGL+x7I+o7e1S5mC/hI0ZBiOI=
=k12J
-----END PGP SIGNATURE-----

--gbhu7ofbpzxs67aw--

