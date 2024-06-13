Return-Path: <linux-man+bounces-1168-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D560D905F7F
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 02:03:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7225228326A
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 00:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A06E38F;
	Thu, 13 Jun 2024 00:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgH9+vXh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28417389
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 00:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718236979; cv=none; b=Iyzv7kTXtxWRxReo0YE3cqF0nA5Fj8sTIEQjcogtZEIzDJFi1BG4r6niYzEQBCEV4TyYsDGpWdHFhTecUkNe86BdjaOEjF0uXHuE71lzLdp3uAt2UJznKbFHf84Kxpf+NSN/nnAAqU5Ry5JwY3D4cSCI2LDhNuwreYnBEd+FwX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718236979; c=relaxed/simple;
	bh=xrUDwkRFDL46LzvJbRjue2ndbiFv6We8lgg3HaKUXVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rb9GnKNxkiSTWa+1h0i+xOJMP+p3Pb3BS9nukO208VbIoKYMWmx8o1ZUUvTa8PnzqAMi7FDvcdap/wEA+LhnLiMbvnidRY/PZc8y+LD5cf2YmvmX5l1+7BaxUpx+SWXMT7s2aq2zvr+3ubnOOMt7YUny0L6cN2p9Kq9rRHRH1OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgH9+vXh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89CAAC116B1;
	Thu, 13 Jun 2024 00:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718236978;
	bh=xrUDwkRFDL46LzvJbRjue2ndbiFv6We8lgg3HaKUXVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AgH9+vXhhTFB/I7mWoULlHXow2jCRv+gvLRkC0K/6pFtaXAcTf6qBTlqjjpI3LYOj
	 QCLPtBaV69MCJmIjAAYimjgzlowsKYkBbBtQD2+I5RVlvYt2/DKihSPLX0fKRRDRPe
	 ua4pp0QMvZKrmuEohix1NRrH5dXajOWI2QtyK031YLtgO9MY3tQ1as30ynR1xxv2eM
	 Mg/UNneRVye+DSlYP9swB2Nb9kqbM7/8lQqdxkJYhVvUq0DXBNdaIlvw7V5wf34pxf
	 osoXu5IlUp7ac5yHGwjUnMuKP0MROc1X1v5OBIffax8PURuYZv8tVqaHHmwno3fJ0t
	 4aJL9aWNJ7UPw==
Date: Thu, 13 Jun 2024 02:02:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] sched_setattr: Break EINVAL into separate blocks
Message-ID: <qmtgngtkcjvcnxatokwvpp3u5bvytgaq46slautuudczugrmxs@geogz6dwtqtc>
References: <20240612204504.2651521-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="isqlync6jdwnkzlr"
Content-Disposition: inline
In-Reply-To: <20240612204504.2651521-1-briannorris@chromium.org>


--isqlync6jdwnkzlr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] sched_setattr: Break EINVAL into separate blocks
References: <20240612204504.2651521-1-briannorris@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20240612204504.2651521-1-briannorris@chromium.org>

Hi Brian,

On Wed, Jun 12, 2024 at 01:44:52PM GMT, Brian Norris wrote:
> The current EINVAL description has a complex boolean expression, and I'm
> planning to add one more condition to it. Let's separate it into
> different EINVAL descriptions to make it easier to read. Tweak the
> punctuation a bit too while I'm at it.
>=20
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Patch applied.  Thanks!

Have a lovely night!
Alex

> ---
> v2:
>  * split out from patch 2 and reworked
>=20
>  man/man2/sched_setattr.2 | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> index 5d7061bd6e3a..0c866a786748 100644
> --- a/man/man2/sched_setattr.2
> +++ b/man/man2/sched_setattr.2
> @@ -349,16 +349,21 @@ .SH ERRORS
>  .TP
>  .B EINVAL
>  .I attr.sched_policy
> -is not one of the recognized policies;
> +is not one of the recognized policies.
> +.TP
> +.B EINVAL
>  .I attr.sched_flags
>  contains a flag other than
> -.BR SCHED_FLAG_RESET_ON_FORK ;
> -or
> +.BR SCHED_FLAG_RESET_ON_FORK .
> +.TP
> +.B EINVAL
>  .I attr.sched_priority
> -is invalid; or
> +is invalid.
> +.TP
> +.B EINVAL
>  .I attr.sched_policy
>  is
> -.B SCHED_DEADLINE
> +.BR SCHED_DEADLINE ,
>  and the deadline scheduling parameters in
>  .I attr
>  are invalid.
> --=20
> 2.45.2.505.gda0bf45e8d-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--isqlync6jdwnkzlr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZqNy8ACgkQnowa+77/
2zIR5BAAkFvDtMXTYLAbHm1CQoZ5w7CIkR8WBBjAySHz7MdhNYrW/quCtL+njJiG
0EpK41R2DC9c0WXwh+fjSH9ZyGWU5xFHHDh1RkGy5t7gqAbHWcKJb+lYsDG4ZDVL
Kxto62jCH2bMj7SYedegET9rm1w+ngp0NGeVwJRRSZQoc7swt2ZPG6j3aoS/73t7
n7AjyzXuy7iW0jfNsNJG0DKBmhmpMLAaZV7FwFqmyKUeowFlX5UYdIm5cAZGwuj7
VowBAscoFSVHCnpdg6cUUhayuCyJ8RK3UguaBNiRCSDAD2khDybcvCEB8IK/Ig9v
bn2b3F0NmVnrWhW64BkPHOAk6zqqU5X1KxlPmNpuliF/oer+DmCzKoCK3zhpspUJ
7dLIaOLLE+IxEETvoT7LKztmcpPuIKfwhEHC8QWwQrMaITcnOGCC5KCV42n0d6Iu
u8LmEDX/tv++t4Tv9ktv7PU/iHIvZJyuMHilLIqasM2q0RzgSjs08ztGNF3KHSjV
+GfN8Zj6u95N5ipvT2t2CYxVmi2XY2uVMsSIS7206+GXvMB3tRIBL5GJBRw6g6Cx
EPPjPab+DwuIrjdqOG51Z/+zYHYQscHG6XAPCrjymyDsdRU4zEFptc06c8zPYEuA
3YJQlQjkLo5MT+u9XSMgZKcM00UUH48YgA7Wxhxqsunk6hlR8o4=
=1Sse
-----END PGP SIGNATURE-----

--isqlync6jdwnkzlr--

