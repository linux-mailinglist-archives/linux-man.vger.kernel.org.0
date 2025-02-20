Return-Path: <linux-man+bounces-2492-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1171EA3D9B6
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 13:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E33BD17C2A1
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 12:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E93B1F584F;
	Thu, 20 Feb 2025 12:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp82JZG4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F38D1F584E
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 12:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740053910; cv=none; b=fRUe4VmPHaQkyFYNHPTlKlOACc+bXJxTyC7yggoMn4amnPQKtrTm9qPV/kT6ON5cs2IhUK4BFGDFqGyHOBu4wIV9qeA1EnY6smoHZDXhzS92iAmjrbY0tMAdt4cWQYcWr7HNUKFL1B/1EItdEnplbk+Cykh72oL8GvoAeYOnpB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740053910; c=relaxed/simple;
	bh=Sawz54H81Y+nJzrEGpkbL/2hEVyIaHnwKYQ8rbppfe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZG48ydpohUPdD5w0EC7rajv1uCBaWQbaZXGVFj3QUGa3tg1sG+AldWMJHx+nEWSOYPlImyHJ8q+POlPsnLC1z8P6WrmQuGqBtwedCafb/VEYUA5AoxV+aewBjCD0JoY66e74aoEAqcDM4qHAQ/3U3dP6FnWGJB9qmhHZCxH0eVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp82JZG4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D1FC4CEE6;
	Thu, 20 Feb 2025 12:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740053909;
	bh=Sawz54H81Y+nJzrEGpkbL/2hEVyIaHnwKYQ8rbppfe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mp82JZG4hPPM1TKUjGRZwE58qbpUlV9/GO5YSu3H269H4xjb1Ige6U6BXjNpuqErQ
	 LushfOvyfgJKVlIPN7fRnhlZKDkgB+p20Pv0T1GkiBXhB4Ph7pPnmUbEZlEzDSNg1G
	 BGpN4L2sAz8pXSKSimXFxB+dRkxU2WhPRbZDVA3n90g1XIxXzsoGHFd7RIyEyU3gm3
	 lj8gEur+EoqXtPuRZbVfec/vkSMIkLF1ORcc4MVhLb7E1OmnwvAfMP4kcZAAeSarH0
	 3xZnD9IWhErX7UexIDa/Y+ZRQ1HRkl4H0Ib7PZU7UgUA9pISv4wBemGrFf2PRJv8fa
	 LkcXQQTekW/cQ==
Date: Thu, 20 Feb 2025 13:18:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <xsogcn7ta4j24np4diop3uiyg2ulqqkrpxvrpshcslkefgmdhd@eljyq62r3fjp>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bu2ttjobrslcn3c7"
Content-Disposition: inline
In-Reply-To: <20250220091926.3985504-1-safinaskar@zohomail.com>


--bu2ttjobrslcn3c7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250220091926.3985504-1-safinaskar@zohomail.com>

Hi Askar, Carlos,

On Thu, Feb 20, 2025 at 09:19:24AM +0000, Askar Safin wrote:
> changes since v3:
> - small edit to commit message
>=20
> Askar Safin (2):
>   man/man3/getcwd.3: say more clear that syscall can return
>     "(unreachable)", but modern glibc wrapper cannot
>   man/man3/getcwd.3: tfix (pathname =3D> pathnames)

I've applied both patches.  Thanks for the patch and the review!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D32148703be51b3db5277c82e6e2d21ddfedeee4e>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D82fc3796b345caa08653dcba8ef6db37d9a4c05c>

I've applied some amends to the second patch (both in the commit message
and the diff itself.  I'll comment some of those in a response to that
email.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--bu2ttjobrslcn3c7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme3HYoACgkQ64mZXMKQ
wqk4uBAAviLEOK1a/kZsGBlM80tGR04HlczRsZIhR09C0jaij074JHXumr3MUU4G
6ZCvIWLrP0UAPluSl3CLDz2N8zt1Js7vz3Oq9ZH9mjy1HyFi5DICUmUpvx98pC+6
+x20I+0zN1lx3k2Imd/h3GxsZv3yLdNzsF2j6MdeQQi+t34CtSd4Vj7apnFoYiA5
+zgzAx1TSAnGPZeff9XPAK9Z8IdI4KKS86Hqf74JpEzhDSRcpLP+sC5uDoY16gRS
ghhkUHNvqf0IrBqWyqZUl6GpNvDjeJ4q2Kz/P17FMBehM4fqqyPKhrgVHCh+R1fa
RiTNlDilc5A6w45vFnuMKgMkR/yjrouEr1Q+op4w5Wbt8VTcewi4ugsK0691cwgC
qdFUyv8woLaTIQ+vI16hgLeFdF34+PdoosSEG6sMcLhZVypfv9JHxvGXrcWsp93Y
fA1KK0dOm6peCfPqIZvIdKRnFwxRQWNvR9kGD2gD8wXF4z2V0nNEz4fkhmI9RfNy
6m2DyPNCXq9Sy+d4qWaUpElj+yRmYjS+gQoSeQZL7YjsRR9SwHkZTa39FhZcn9ky
rvnz/cRuJ/ujy2zEIaDFrv/dt60jP/qZUEVV0XXQgjGGr+zNBQ+C/IR0iUnTvcpW
YRyFaIZFHRukm4beRo37ZRuebhaNjtA43coiWjt3kKk71W7TysA=
=9DDm
-----END PGP SIGNATURE-----

--bu2ttjobrslcn3c7--

