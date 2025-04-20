Return-Path: <linux-man+bounces-2785-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA3CA9478A
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 12:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FDFE3AF37F
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 10:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 923D31E377F;
	Sun, 20 Apr 2025 10:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFrr5Hw4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528801E1E10
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 10:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745146586; cv=none; b=iV+EB54vSBouuLi/bhhcv0omZgW6I2o/YTIQ5A58FVcwLwzAzmH+9Qu+XH3PYS6YBSmOu2tgGOFxPhWU8deYnJCjYbdJy2LBUgUxDmaJ0z2aPWsau2s8DOKPY2cIITfstlOCJoEE5KwbByVy8AwoSjyhaGUvi4OJAHN0WnFoJVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745146586; c=relaxed/simple;
	bh=Tj9r5zCmFgzc1gQqp/meOxrvCBdRnZmMK04FwZMLCjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k8YgrDBcxvcBEhpj5wcaOUjBxqZUxHfbY3wOQsH7Wf95omrdZMhW9vFtZ4GHlOOobGurYm9gWg2FxNQbYAaeS9SxxsYV5oYG/5+MeMPo9X5B2j6zEwMrQ77I5wu6CkqO9REE509FP7tisQT4jkWN0Aa3ghJzElHWT8BDl/ua0sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFrr5Hw4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92656C4CEE2;
	Sun, 20 Apr 2025 10:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745146585;
	bh=Tj9r5zCmFgzc1gQqp/meOxrvCBdRnZmMK04FwZMLCjY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OFrr5Hw4kG6eo1Xs7s6Ffo2nb7jn5w9RQpSEsMWW/7uxIMTFlO0QMxTG/SQJaSYmP
	 84TZ92L6g+cSsKRC6yAfa3bXMDUGOWdEyOOnIbmpHYHvemLmoGYw9XLzZ0G/9MkdTY
	 5k0lNLlwV95vkDK1wwNqowyK0RuaZlQ2yrz3F4bRq1rHObgJ1HkD2GWX/vi/TXdEfJ
	 gjclLWcqcBL2IsrI3e+1wfrUuh65YDBrBpMNJIMep2yLL7CiKmPBmF4dSgXYI/YqrB
	 yOc0iUfJkURljRStBu6JLb3dkV4LCagQo/WtNT26/Eoivo9giMzBCrdqRUY7j78z7i
	 A5inWfSHyGl1Q==
Date: Sun, 20 Apr 2025 12:56:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Solomon Tan <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: SLIST_REMOVAL number of arguments
Message-ID: <tzx7sgns2uopu75s5gipw2yxkpg6drun2esl5feoazulkqjnqd@hoayn3jqoe5p>
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ojynqbqnhjamxq2"
Content-Disposition: inline
In-Reply-To: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>


--6ojynqbqnhjamxq2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Solomon Tan <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: SLIST_REMOVAL number of arguments
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
MIME-Version: 1.0
In-Reply-To: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>

Hi Solomon!

On Sun, Apr 20, 2025 at 06:07:32PM +0800, Solomon Tan wrote:
> Kindly forgive me if I'm mistaken, but might there be an error in the
> man pages on the number of arguments in `SLIST_REMOVE`?
>=20
> The SYNOPSIS in https://man7.org/linux/man-pages/man3/slist.3.html states=
 that there are three arguments.
> ```
>        void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm,
>                                SLIST_ENTRY NAME);
> ```
>=20
> However, the EXAMPLE and the source indicate that there should be four. Q=
uoting the source:
>=20
> ```
> #define    SLIST_REMOVE(head, elm, type, field) do {            \
> ```

	alx@debian:~/src/gnu/glibc/master$ grepc SLIST_REMOVE .
	./misc/sys/queue.h:#define	SLIST_REMOVE(head, elm, type, field) do {	\
		if ((head)->slh_first =3D=3D (elm)) {				\
			SLIST_REMOVE_HEAD((head), field);			\
		}								\
		else {								\
			struct type *curelm =3D (head)->slh_first;		\
			while(curelm->field.sle_next !=3D (elm))			\
				curelm =3D curelm->field.sle_next;		\
			curelm->field.sle_next =3D				\
			    curelm->field.sle_next->field.sle_next;		\
		}								\
	} while (/*CONSTCOND*/0)

> Should the SYNOPSIS be the following instead?
> ```
>        void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm, TYPE,
>                                SLIST_ENTRY NAME);
> ```

Yep, this seems a mistake I made in 2020.  A fix should include the
following tag:

Fixes: bb8164dec0c4 (2020-10-22; "slist.3: ffix: Use man markup")


Do you want to send a patch, or should I do it?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6ojynqbqnhjamxq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgE0tUACgkQ64mZXMKQ
wqmJAw/+IyHkkv2HibOC51HP+04WgCI5t0Fr4HOXRPCXj1fExmqad709HkJTfr6E
lxL4E5mfoE59+jGFmgaYefZpwJkL/zZx5SsHJiyHF+7gjwPNQTEc0p8pONoAQHCq
qohr0+R9f6wbUt9e7D6NcHBMolrXu6eLAHoRy0hDTkA3QT9818xRVpIYl0ArFOp6
sBDgkmzrGauATY6AWk9jh0pzP7WE2XNJb7dna5UsW4/mmDgostejGqCJNuuMzPEc
FOlL/G0TI+Zz9Bam6qJVuGiRKgH6XJSjMVNxa01unVa1SE6Rjk45aEtuFsJ2rDdV
G3Hq4r/l/2lCL0IYnBOUIg+lhWT585K0JQruaM0zRPSFgqJGl4BCjM4fuELl4MAC
bg5L3xU/iMd5x/ry4RBOM86Ez1+hq9fAS9sBf4JS6BNjRcFH+SxBLb3CMSF8YjrZ
yfVQ25IVOhi3PfpAhuFj7nCzx2zo6Ewu117wkxrcEyOcE9iFtyZZMU8LqavuVGkX
SBuzyMOOgls3giru106CRBZ92XRido/HASzuKRZVoPGeW7dVoVd46YnX7kOpUHuy
fL9tBuXCV/1zpbMuFhDynZtPnyjbfsj4svh0Z/eJ7ukbl7fZB2JtWachZxyQpXZz
Vqmyq3Vsg85eWTZZp/47ktn2pk+WaidV+HAmAu3C3F8M54n0u2Y=
=1Jna
-----END PGP SIGNATURE-----

--6ojynqbqnhjamxq2--

