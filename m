Return-Path: <linux-man+bounces-3976-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D15B9EF1E
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 13:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3A093BF98B
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 11:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEC662FB629;
	Thu, 25 Sep 2025 11:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO5fRZsz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0852EB5B5
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 11:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800347; cv=none; b=Ei1wFbA6duvhuAA4ncnhi1ZjMZMUMFKtwWwfOLfA/aL4K8y2ClC38TckMJwFumPuMUjTidDs5BigHTdshgwmseeKaaWpy/imFOjvCJGpLOa00y0iRfWjVudgrcyDsFQ8xqg5wELOX8SNVMxEIidSRBNPRRNz/GHGndabE69YqrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800347; c=relaxed/simple;
	bh=97qZ6yMbRDlPftUfNpNRE9LxX4qIiiuDbU2rtZV0NuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NQGfvzcv6gh2R4GIRLTuAYim758RvOF7Z0eGeLrdYgC3cvwKQsEWtoXvuaQZrfVuPprnSvOuFQgZL2zP/Ucg/kTVlBEXKx68TqOU5/ydexY+VmUeGuxHsT6yG4CMxz4ogZeJcRqoekk6P5maY72tbObK/R1TzLSknP87N1EvYd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO5fRZsz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 391F0C4CEF0;
	Thu, 25 Sep 2025 11:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758800347;
	bh=97qZ6yMbRDlPftUfNpNRE9LxX4qIiiuDbU2rtZV0NuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AO5fRZsz0MwN8E/Vz/7coP2MeClmA7tsUI1rvHo2LaMDSDb1YqmsfDZA1Sd+xhvHS
	 UVVt5v4W4j4L3TWw116Up4wjX8ftcSSuJLX4MeSlBFKKacAS8iLCHj5dj7hqtHKj1Z
	 n2WARaVJrdhMNRRYLf44/FsMG4TxF8vmv4IAJmZXTHua12dJTAhxxzbJfz3t88JkHv
	 8Je06XEZxksKOC8P/zexAdj24jNhXiZBHtLVjRyvmMHpk9hcMt39LwLZLXrU5sAtPf
	 h+hkzrx9I9oKhlOpc5x1/SvHig7hNu0SY3g8ZaDp7hvZiyua8DkV8dhtgXUkjxYLXI
	 7M0DF/zwIOrPA==
Date: Thu, 25 Sep 2025 13:39:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kele Huang <kele@cs.columbia.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/6] This is a set of patches to fix grammar issues
Message-ID: <zgsjt2kpddfcso3gpp4jns5bknrquclbaswxbzvtoqwpi4aug4@znkbh7nsxmua>
References: <20250922035934.446271-1-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k546d5dwnac2nfcp"
Content-Disposition: inline
In-Reply-To: <20250922035934.446271-1-kele@cs.columbia.edu>


--k546d5dwnac2nfcp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kele Huang <kele@cs.columbia.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/6] This is a set of patches to fix grammar issues
Message-ID: <zgsjt2kpddfcso3gpp4jns5bknrquclbaswxbzvtoqwpi4aug4@znkbh7nsxmua>
References: <20250922035934.446271-1-kele@cs.columbia.edu>
MIME-Version: 1.0
In-Reply-To: <20250922035934.446271-1-kele@cs.columbia.edu>

Hi Kele,

On Sun, Sep 21, 2025 at 11:59:28PM -0400, Kele Huang wrote:
> - Patch 1: Fix grammar in man/man2/getitimer.2
> - Patch 2: Fix grammar in man/man2/setns.2
> - Patch 3: Fix grammar in man/man2/unshare.2
> - Patch 4: Fix grammar in man/man2/rt_sigqueueinfo.2
> - Patch 5: Fix grammar in man/man2/msgop.2
> - Patch 6: Fix grammar in man/man2/fanotify_mark.2

Thanks!  I've applied all except patch 6 (because of Branden's comment).
If you want to re-submit part of patch 6, please do so.


Have a lovely day!
Alex

>=20
> *** BLURB HERE ***
>=20
> Kele Huang (6):
>   man/man2/getitimer.2: grfix
>   man/man2/setns.2: grfix
>   man/man2/unshare.2: grfix
>   man/man2/rt_sigqueueinfo.2: grfix
>   man/man2/msgop.2: grfix
>   man/man2/fanotify_mark.2: grfix
>=20
>  man/man2/fanotify_mark.2   | 14 +++++++-------
>  man/man2/getitimer.2       |  2 +-
>  man/man2/msgop.2           |  2 +-
>  man/man2/rt_sigqueueinfo.2 |  2 +-
>  man/man2/setns.2           |  2 +-
>  man/man2/unshare.2         |  2 +-
>  6 files changed, 12 insertions(+), 12 deletions(-)
>=20
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--k546d5dwnac2nfcp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjVKdYACgkQ64mZXMKQ
wqlHfBAAgDfQADcUdrUZ3p+cXM5tHkjxJl/KGIiZRjUoXslXU9lqj0AVPfnrjbyl
1LwqEtpEKzQ1zAUCvLmar9L16be2Dw6pEaiA66R82IPd7IrHrpRCPBKaxVC1rU+f
0AKwWHnT/6eww3494XO7phCPxnpoLisLHBkS1OkpXUU9DYjODog9esw+DCOvw0qj
RHHUqnYMg9igpXOOXqN6yxUXZWidVS/okGtpDudEMMEJGi1GQhZ7aYvVtCK+NI9J
/rKwxpTC1ig7uoHKegjlQGN9pb+M9t7OorPSS6s8zeBYobgxqb+EHZhCYkfoDtQC
XM5mPURS+n7RQkTI4+6r6B0tXTnVMjGhFQiUyN1nodpYHC9K3Ytnqd/QN34n23Sp
7aesjHtDKf+Cqf6DBjHBCDXSn8U3DYMHiIjQKZpjyEJtzf3EbifmKVlEATN3uWnR
4hRpuwTIw4s3WQk49G6aDJvCJUX3umZAlMkZwcrMvaPdWLUKubkn0j94Pt1hsE4b
RI9vKBLqHwG46HNYBxS4+JsXbvvKtS5iVaZy6RTpZTgLPEZxTzXPIa/BWrm7nVCp
kJEHK2Fr8gu+YdhnM8LI6zjFi2YhdTJyUOzYQ5qY+P9AMK6DVcHVaw7qAJXdsxG1
sFligmueOkMndKKJhppcYAgyWFEzcQD0jBJhC2BC8D1yGOLFMgo=
=Cq9w
-----END PGP SIGNATURE-----

--k546d5dwnac2nfcp--

