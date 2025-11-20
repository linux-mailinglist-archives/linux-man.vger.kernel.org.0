Return-Path: <linux-man+bounces-4303-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DFDC7493C
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 15:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D040A4E9CEE
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 14:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3864314B74;
	Thu, 20 Nov 2025 14:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7oXyU3o"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A002D2398
	for <linux-man@vger.kernel.org>; Thu, 20 Nov 2025 14:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648654; cv=none; b=aJfF9bkKxufqRitiezApfFESd20muL961cHRmqbjtrukiEPb0TKgjThq1HGMgVp0b3nouKry5E7sbSR6Jp0yAVdLI7khsjdukch+lBWZHv+KXgtacYlvKEfWe/ibeMw0zN7389w0cfUadvJJqSmrobvNDgxQbouA82roh/WBMoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648654; c=relaxed/simple;
	bh=0S/Fd/cE5DVjXK53r/vtR+Aq2ZBakcTkvxiyoesC+2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g84GiBfbUMUDyZeiEE4df2q9FOeg/RJ4BTQzGgC5DdTU6jOs9S01Z9r69VUD3om392aTXlyanX+Tk4AUuX5DO6MWmtx2l5TViC+cjCWjHB/fjmwV1HKboyRZYiGNDyqNHd5K1kGb0+BHT0J1JymztLFjyJw5LZNsnVRN8EBgTIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7oXyU3o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07A61C4CEF1;
	Thu, 20 Nov 2025 14:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763648654;
	bh=0S/Fd/cE5DVjXK53r/vtR+Aq2ZBakcTkvxiyoesC+2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C7oXyU3oVX1cpjQ0rPVeGa0HmyclPAeUWmIaQ3aXjrK6rmLFWVA3t+jjx3gIYzzyU
	 C0xEC2Nljtlg9XlGhuGPXp9fIvVP/7J98pdd0GHr5J7DDBKfivraPTxsBqfnTwHN9X
	 sy4Mfq3Mn9DBaZH4hIobvjwuMO1iBLvRAN8YxiQzg9qrXeLGayP7JR/yBNH2hWDY7u
	 cYYf+Rd2ixQif98tR33GHzY4ohahipY0lPHmiVzlROsJWLqjVwcNFPXe/BH+ELreUX
	 +CGVW2eJLMh5Nhzm6oP6ITeGGqjEg18/3qkRfuDThlfDSLqMpiJDYOhgG+PrhkDHvS
	 x/eSl4wjlOLRg==
Date: Thu, 20 Nov 2025 15:24:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <yxl4q46fevzjqwp4vf43ei2uxwggrdy2clzrricewpub7fapw4@o6gbdqkulukj>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
 <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
 <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
 <f2ab78d0-8acd-481e-af4d-03e76d51c1ee@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lcghtozf5u6kisy2"
Content-Disposition: inline
In-Reply-To: <f2ab78d0-8acd-481e-af4d-03e76d51c1ee@redhat.com>


--lcghtozf5u6kisy2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Andries E. Brouwer" <aeb@cwi.nl>, Vincent Lefevre <vincent@vinc17.net>
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
Message-ID: <yxl4q46fevzjqwp4vf43ei2uxwggrdy2clzrricewpub7fapw4@o6gbdqkulukj>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
 <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
 <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
 <f2ab78d0-8acd-481e-af4d-03e76d51c1ee@redhat.com>
MIME-Version: 1.0
In-Reply-To: <f2ab78d0-8acd-481e-af4d-03e76d51c1ee@redhat.com>

Hi Carlos,

On Thu, Nov 20, 2025 at 08:53:10AM -0500, Carlos O'Donell wrote:
> On 11/20/25 8:36 AM, Alejandro Colomar wrote:
> > I've created a list of people who gave consent for the transformation of
> > their copyright notices.  I've included the Message-ID of the email in
> > which I understand they gave their consent.  Some of those emails were
> > sent to me privately.
> >=20
> > I'll revert the change for people not included in this list.

By "people", I meant anyone/anthing.

> >=20
[...]
> >=20
> > I think I'll only revert proper copyright notices, and not other notices
> > such as "Foo Bar fixed X".
>=20
> And companies?
>=20
> diff --git a/man/man5/nss.5 b/man/man5/nss.5
> index 19e575128..8e76b477f 100644
> --- a/man/man5/nss.5
> +++ b/man/man5/nss.5
> @@ -1,5 +1,4 @@
> -.\" Copyright (C) 2006 Red Hat, Inc. All rights reserved.
> -.\" Author: Ulrich Drepper <drepper@redhat.com>
> +.\" Copyright, The contributors to the Linux man-pages project
>  .\"
>  .\" SPDX-License-Identifier: GPL-2.0-only
>  .\"
>=20
> For example, I'd expect the above change to require corporate legal appro=
val
> to remove the copyright statement.

Yep, I'll also restore those.  Anything not listed above will be
restored.  This specific case, for example, I'd use

	.\" Copyright 2006, Red Hat, Inc.
	.\" Copyright, The contributors to the Linux man-pages project

Does that sound right?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lcghtozf5u6kisy2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkfJIQACgkQ64mZXMKQ
wqlrLBAAkCmjJIDGmkMHY/glaaUdtRZRumFDNtYqZ/0S1VIwmbvKyQZRJnrsTHL0
y64zogqIMYhgSiB3uOW9ruAEt4dyzgd++2FXC1YSt5UoNKgRl3N7GaAcUu0T341H
BrPD2jEUZoi0SQNP9ZM5SxRhfex0QODA5Vny0B8CfrsNauyFfLeUAhOn1HWHxrFi
P4z+Ckl143mgf9LU85QrLh74fHAhJDPJy2dEF4FwYZ4EDLbJ4ONGoFflhCgu3ciy
QxKvQCvAWNcjbePn5t7+Ww5wOWuOdy3t/C3wjd9boAUchELhXpaojeZXiFm5xIvT
Rwf1EWnCHOAKChqiXlIZAtxVX6/kp8rmBifKruSt3JqK/f1V26ooFpSnLxYdzsDT
AO66dY1W58b13aRGJnCro3mOYG/5d69CKOG5HriMpKugKHQnPVCKQbH8vfhVQe9w
Q135KfsfoXXu9PhN64pas1n8o2akQGA6nLSG9yE7ncDwvHuy6icmOmna43X7tSiQ
LkRjZdOjx+P9Ty1QMkYYNL8as1syaKvTbnpVTIXnM8ltGpWD3udy1K8jU8VImH1e
a9A6SuL/QkWVYhyN9l/jJ51mayCxW8DAiajHymUilIf9gNnkuzifXQxTuJfKm39F
dA7GD9TJqTpkVF44hyVA0zp0PKKI7Yvf65/Dz6wf3qSgRMRf7Tc=
=EsfD
-----END PGP SIGNATURE-----

--lcghtozf5u6kisy2--

