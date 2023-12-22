Return-Path: <linux-man+bounces-289-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C38B81CD3D
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 17:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AFA3B21D7B
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 16:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CFB24B2B;
	Fri, 22 Dec 2023 16:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YA17zKuK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B5F24B3D
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 16:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D92DC433C8;
	Fri, 22 Dec 2023 16:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703263663;
	bh=UVe1TA1IvibTsXDjckvGFz9TTJwCFaeHnD+QqiTwadc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YA17zKuKC5BwfqzP8BX0WC0XNelfH+kNM0WfW0RdD+9mwh/rwo76bdD77PpN1ZvdU
	 j6sbLRNmcfefwFLR0blQBwMjjBVfri8N3o6KtliBivyLFK5h/V+zdWM4DVUBFGjzGa
	 ztmHv1r87N4w8iRT91FKQZldxX7IJXVJTSsHi9urRxF2qqRS6AtiKSJk9OLsDzrrkc
	 8R3i6kL81FHs2tX0wzHezg6iMa+DmmJmot7chWRj/X5T5BtHFuScHmNCXMjK3f115L
	 IfMe6UfxxYLlH210uRVqLJjxENNfq7troUwiRLV+pVXFiqaorIWLaxAKz644x/evcP
	 /6wkaXdESbnSA==
Date: Fri, 22 Dec 2023 17:47:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation
Message-ID: <ZYW9qyPUjfc9n6qJ@debian>
References: <CAKkEDkWv_wksbcAkUEaFdAQhkhZH1xr+pLidXAvKvV-ka7gE1Q@mail.gmail.com>
 <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com>
 <ZYVpRMcZk2MSg9Yc@debian>
 <CAKkEDkX_kw=5rwn5qcbt45RjWMtSuVNAzYDc2MEkaTr0FwQe3w@mail.gmail.com>
 <ZYWbJXjbQDm-2V8H@debian>
 <CAKkEDkXFZCmtx3MO807OH2YZ7tMB18okx8L54-giREdfcjqdpw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rP5KJ48U7HTEqNPI"
Content-Disposition: inline
In-Reply-To: <CAKkEDkXFZCmtx3MO807OH2YZ7tMB18okx8L54-giREdfcjqdpw@mail.gmail.com>


--rP5KJ48U7HTEqNPI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 17:47:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation

On Fri, Dec 22, 2023 at 08:38:43PM +0530, rajesh wrote:
> That code is useful for debugging with something short, but normally you
> shouldn't call printf(3) from a signal handler.
>=20
> Yes, it makes sense. I agree about no printfs in signal handler. But
> this is a demo to prove that SIGTERM is called and put an entry to
> prove the point.
>=20
> Also so we leave this as a comment and no need to update shutdown man
> pages then?

For now I think there's nothing to update, right.

> Sorry to bug just trying to understand the process more : )

No problem.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--rP5KJ48U7HTEqNPI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFvasACgkQnowa+77/
2zIJ/A//dn5LtiFgIdEo+KG4zc05M8NFg35BJ1iKLBFCiz2WQ4XejC0cneurU3qC
GLcpEd2T8t5plF0YH8yohO4TSP/tkiCvwJg7DIpS+gQvYAxo47g7e8xIOzhfgHyM
gW7DCSD5xg2+RSZH6ScVYXGeG9Zx1VEtsEWQB7rZQMEZGZ5cShHVXjSp9E3oO0Xl
furfuL0Hix3zm8wZFJ6dhxTjWpgYI5z0hiEqKBVuGBHAnJXhbMIVGoSAIDgQ+3mu
KUiLIqA7mODrL7bx9a7L7N8RrflKSbV8edswmbQekrj1tyTzR/ticW7jg9KjEVoh
PbOS40PGKMvFSBYOSr+MpXBFv859tATJyj39tdUNbRrKnGZ4pOEBtl5wxaloQu9Q
UjW189nRIUUiwNDutdxqyP/QlcuFVtW2SsMFBw9IuOKhmSJ+VWXsDSwtWwHg9FO/
+3dGKfXVWUqKEe1o1lz8GpAZbhnVGup+JzUrjmXAXbKCWjmK67Q8VzLt4T5OLYmE
us56aev/kIv0bBgWef4BUeeiFK9H18XkFSJsQwaLKR27wU0KQXwCX91wbSW4LGvW
DQz4KKuJdLEMFeK7gcJQ32icytCNypG9FkY6A3YHC1mLyFCcQUOnfCWNRtZZadiz
HJ1GDrUWENWrQQl5LKBVy7OCbzS1YeH+ZXvFWM5L5vEInLiLc9E=
=WZJY
-----END PGP SIGNATURE-----

--rP5KJ48U7HTEqNPI--

