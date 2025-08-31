Return-Path: <linux-man+bounces-3786-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD170B3D46A
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:43:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B51F18994C0
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A6E212555;
	Sun, 31 Aug 2025 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPoVamuz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131722566
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658619; cv=none; b=lDRaNJRk9dYnEUxkRWvJxMhNMebGpsQgyEivKXWCMY2b6pqcD2n2jGTdLOCzSkuQLeA7GIMFwD20hFYwgYIm5Tkc6OqMsoc2GF/aEHExJgeiPZlE8uK/aNWAK6AsF1R4O0AjttC3CGV60234SqYE7JvrlDoBObaevjkHY1SfRQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658619; c=relaxed/simple;
	bh=cQun53Gl+wymf7Neo8UYlYRkEsV2nWLjkgyRalnBRas=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=md4NkxoI1bePCU2Eg7ti5OP0OMB/uSF9el1WgNJJ/th5AnfWTOJFiXWRmdRYXU4NghkctmUuH8EBMgvXPxQIZ3enRfQZxTjdPk0XqQq+GhUVJVxfa+7egwnMRkbWsUCf2spU/LS6rQ+WNnfG31IMVCeSVAvCEU/eixqWoJXQXrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPoVamuz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E07C4CEED;
	Sun, 31 Aug 2025 16:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658618;
	bh=cQun53Gl+wymf7Neo8UYlYRkEsV2nWLjkgyRalnBRas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BPoVamuzSPZbG6ABcWzxFHEnQtU1StFSwft/aXeiMrgqkEBhcykboAMH/u1WC5S8i
	 PFOTl9E5C4gmcXkqMv0dqpqACsTNWntLtNHgZOwSlOVpQIxaOArhVPYpqw698PcLPe
	 tskZEvfjfRsIWCcjn6VBtXv76uINXgdBN+u1ynNWNqQtgH+L95ja6J7EoDOX7oFUIa
	 ZT7tOod03/GQWru/wkr3Ea42Sc1UsfgcXlvs9V0YXzz81F7N0EAGidWBbYIsZyYGNo
	 Rgr1NMHyRJbl9CmwFUd0bl8/LZX9qKZ42Mj0028BHmJEpsMKETl5Q0/EmzjD4LbCj0
	 q4diBwkzSoNng==
Date: Sun, 31 Aug 2025 18:43:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getrpcent_r.3
Message-ID: <bj437znuohouyfth45eevyrlbywxzbt65urtdm5o254axj57hd@3rmek5ldbgqh>
References: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p7ayvw7sw3bujesp"
Content-Disposition: inline
In-Reply-To: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>


--p7ayvw7sw3bujesp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getrpcent_r.3
References: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSfE4bvw0ZzPu@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<result> =E2=86=92 I<*result> ?

This was fixed last year:

	c9af0ac6e039 (2024-11-17; "getrpcent_r.3: tfix")

Cheers,
Alex

>=20
> "On error, record not found (B<getrpcbyname_r>(), B<getrpcbynumber_r>()),=
 or "
> "end of input (B<getrpcent_r>())  I<result> is set to NULL."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--p7ayvw7sw3bujesp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0e7UACgkQ64mZXMKQ
wqmXnw/9Ei8Dv8oH/PhEn8J6XnhAnuue/S5a7Gbm8k0Zqn5A5SeGTvzUk/IAq7L3
GS1UG7LXj8WPegXeIF0Q5q8xjjPIv3zAw9cFnmZn3KvV5gjiaQflJLBvSyIjsM3p
mHGziFRqxLrJquC6v4yfR6cwuMRubMJFFme+gml8bLtOXV0hCVqWr/m1yFo6VwU5
DUWrzpLdViIiB5Q+P5kE0BLe423WstyK+DG/VcWJ91G+zt3QLm5mToUS+AfeAqPh
DmC1onm8vu7e/8beSLIgfGgod/tPYdFnGcWZjmRc4fv4exo+ywraIKu9rZGPyaZE
QlY1Y8F3eOV/ss5rqdlTfu71xiPOhkK4M3pQ/D/rmAwz6ipNjB4rsrDafU7jlNcR
rFFF79DsSZUvRBrHaPbGYtdJ6c2ceVJ9IUeCk0BsgdBz6azQ/mRkkNp+xIJALM1o
6i9zi5HoPi3jfTfDj1uxGtgfNcTO/TBuT8SVMkSxzK2dRzWDZZvamDIQL4i5xVVo
SXKPRJ48M/gsWOcTZn5CCB47YW5nSL69x1zklrcFNOOvkeNJYzwJOdm2IUus0NSQ
6VhXB9558Doe4YJJy9wYlMsVtEOZz5FV2WV1HSpwUkY2q9BlKlVpd9xAFySh5Bbm
RcMuvTnVjkxrhFgo+8jVVF8hEqDI+fDG3z+DFo5d7AzCS2Gy8ts=
=edJ6
-----END PGP SIGNATURE-----

--p7ayvw7sw3bujesp--

