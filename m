Return-Path: <linux-man+bounces-2106-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CBB9E472A
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 22:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12AA9B3485B
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 20:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CCA818FC92;
	Wed,  4 Dec 2024 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYW9jUxp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5E718FC8C
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 20:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733345513; cv=none; b=r/k3jdNNipmvVp8vxR4sYrEPbizsHeC5APoZ6+LOXfQbEu6QM4zMqlMYmsZ8nOBi8/ysr2AZ67A60bcIt90VihGoWd4BaXaanfm8Cc09Z0a2H0ZITN+3XgJNfgCPZX7RVeJuHdwDFaCZjUy9/ZdryT9sTS7DI/8F1AMO1ZuS2xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733345513; c=relaxed/simple;
	bh=XajUE4aDyhcKaR5vGNNypG4sdO6+0WpyfNfxKfNVzLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V0qmK7iwNDRLOyu3rosTh6mk8cn/MOJ96RWdh4GKlR9HWPMQFNc3BMEiclE+DejBn67WbMCeeuoTyKuWV9IwH0gP1C2jEqwqw9hej7mUzOU7ovIVY+BZcI82PdBM2JHA4DBynh6IkcGzyOzY9J6Qo4ArDnEg2IsFq3AtqMcUUI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYW9jUxp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95617C4CECD;
	Wed,  4 Dec 2024 20:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733345512;
	bh=XajUE4aDyhcKaR5vGNNypG4sdO6+0WpyfNfxKfNVzLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QYW9jUxpKIE9gUJIDLEbedZFEsKPyudA0IaWcB92AmvTRnKHEtsOQ1lvwWGD6PgrL
	 cwSQFIVkRTsDWt9BMHaf53zIEdU3x/QuF0f1l5VnikjHSdkIudP07eMu5ohqkbacYf
	 eIfTMH+QCJMOfAlEyTcLG4ySQkH2iW+nfDqO8Nky8dg3g2HnWUniok4vFIWZPQ0L5D
	 I5ixnpbqVkKCkdXg9OffM4o+bHKcMJ12M7RKOCAAKhRpPJTaJzQAYsbxU6beHLiKla
	 4WHns/pvk95V75c5KQUBz7vr2vus1Nu7Bwo+302QFJQmZNBupSV0MOxVWvOxJgXLO+
	 cqLjDPqNR2XdA==
Date: Wed, 4 Dec 2024 21:51:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Luis Claudio R. Goncalves" <lgoncalv@redhat.com>
Cc: tyberry@redhat.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <20241204205149.zbk3jq55j7e2fip7@devuan>
References: <Z0XzU9R9Kx0RoeUG@redhat.com>
 <20241128113548.zgq6qizi6ieid6fy@devuan>
 <Z0o1izFIKYzSrci-@uudg.org>
 <20241204203520.iu4mayydvyagjehg@devuan>
 <Z1C_YFaKjO9_mp-N@uudg.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vmcd3hgb6b5lbtkh"
Content-Disposition: inline
In-Reply-To: <Z1C_YFaKjO9_mp-N@uudg.org>


--vmcd3hgb6b5lbtkh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
MIME-Version: 1.0

On Wed, Dec 04, 2024 at 05:45:20PM -0300, Luis Claudio R. Goncalves wrote:

[...]

> > > I hope this helps!
> >=20
> > Thanks!  I've applied the patch, with some tweaks:
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3D3205359a3a7079d9d40a50388e851874729a827a>
> >=20
> > I added an Acked-by on your behalf, Luis.
>=20
> Thank you!
>=20
> You have all my respect for the great work you and many others do
> with the man pages!

Thank you very much!  :-}

Cheers,
Alex

>=20
> Luis

--=20
<https://www.alejandro-colomar.es/>

--vmcd3hgb6b5lbtkh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdQwOUACgkQnowa+77/
2zLgtA/9HgPuT4WIGwiwpY5JIf2qDyGTR7wueQLa5H/XNONbSRdV/HOD1JNdSn6R
YCHSrN5iGfGmjGigE99tJzvZB92OG2Ky4nniq1TjBuRcq5C86f+o5/SzfXYJ8CKx
waBYU8MVCoDPAg/kbPI6HY7o8cM+bVGn3qhkPHlnaReA5/GwqT/V2UG0tw0IwfIo
RDJwPmcrmynmawLLD6pdxj+B7AddjcZjr8CtMtk9vw2Hi2CRQFY8Ll9bfMJxQcj9
SKmy/7aJybiio3MQOk2pzBEGfdGlrHtNSpUqpK2IRal9zRatUr6s31tc71L26H1K
NRyK3VrRs4x575bFRsHKKRWIy8l5rnZ9gVfFKHXGHSoP3UfLf4Awxz9rz2l47Gcz
Ttd5iXPKimOSvXLIljfhjHcZ0Ikb5v7Jd+CuKIzgGqDQBuNF3eq40XsNvuBvvKOl
IUF6m3lXRY6hlE9xzKNQ9TIPCXEA4kvTSxJv0PX/MVeqxKDTvsnADFPgrvlqF2na
3PU8ZnfEit2Yu959oTsJ2HG9ymZm81UNhu3e+xAkpg1IATD6x4XfQ0VvGeuVmJBl
iCToE1CmF7rwCXhhAsTaub7u0CdZXDCcOnBAsWyczt14N8gUN/EAjWjom4pDEl2+
+tBgfS3hG+Fd4RBVdH6AK7ORpe0buja/KN/2hFxmqAh6kR43ek4=
=dbMv
-----END PGP SIGNATURE-----

--vmcd3hgb6b5lbtkh--

