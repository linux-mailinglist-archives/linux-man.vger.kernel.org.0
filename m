Return-Path: <linux-man+bounces-94-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F89A7EFEC4
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 10:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A1B5B209E1
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 09:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09586D311;
	Sat, 18 Nov 2023 09:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZS0aMyG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8278101FE
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8002BC433C9;
	Sat, 18 Nov 2023 09:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700300048;
	bh=aYtXjD6l/TyTtY1eq4y5oQj7JS6JT4HXqQsK5uJzrkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dZS0aMyGQZxe0g3pJcmAUtoIMZw+HNF+NBEI2dnGbM/WCA4nMUFh7mHy6KGdwNRhy
	 YRimMKwC7Mk+9EjawL6xOMmSMzNbEzp3+ZYKk+nbJy4qs8Uv9koMc15mGRLbCArNVZ
	 4XXSX9DVN+3y5o+WVlZ3YE9lxOwJj876ESVBvK/hp6z5mzgm5nE9YsOCQR6CQ8+lmN
	 ErXi7W2uMHM3JCZJKC+7853ZuDB+q7IeXCFwpV1C+dXFjvYsHMIHtY1JJ4itU9nKdP
	 +E/Fp/QZlhpXec3b+lWTC8Nv9KDsoSnJl5YZrfnV6ueQIrG5Yz6fAaPkXEL+eSrAwF
	 l9I0Wr7h3NI3A==
Date: Sat, 18 Nov 2023 10:37:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: PDF book of unreleased pages (was: strncpy clarify result may not be
 null terminated)
Message-ID: <ZViF1JsZdhobXaWV@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>
 <ZVAB2S-IxKLABk_w@debian>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="42gvlq/vq2qKrFUG"
Content-Disposition: inline
In-Reply-To: <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>


--42gvlq/vq2qKrFUG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 18 Nov 2023 10:37:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: PDF book of unreleased pages (was: strncpy clarify result may not be
 null terminated)

On Fri, Nov 17, 2023 at 09:46:47PM +0000, Jonny Grant wrote:
> Thank you for your swift replies Alejandro and incorporating changes.

:-)

> >> I was reading again
> >> https://man7.org/linux/man-pages/man7/string_copying.7.html
> >>
> >> Sharing some comments, I realise not latest man page, if you have a ne=
w one online I could read that. I was reading man-pages 6.04, perhaps some =
already updated.
> >=20
> > You can check this one:
> >=20
> > <https://www.alejandro-colomar.es/share/dist/man-pages/6/6.05/6.05.01/m=
an-pages-6.05.01.pdf#string_copying_7>
> > also available here:
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-page=
s-6.05.01.pdf#string_copying_7>
> >=20
> > And of course, you can install them from source, or read them from the
> > repository itself.
>=20
> That's good if you have your online PDF version of unreleased versions I =
could read through.

I have that as a goal, but need some help.  The thing is: we have
<./scripts/LinuxManBook/>, which contains a Perl script and some helper
stuff for it.  It was contributed by gropdf(1)'s maintainer Deri James.

Currently, that script does a lot of magic which produces the book from
all of the pages.

I'd like to be able to split the script into several smaller scripts
that can be run on each page, and then another script that merges all of
them into the single PDF file.  That would be something I can merge into
the Makefiles so that we can run a `make build-pdf` and if I touch a
single page, it would only update the relevant part, reusing as much as
possible from previous runs.

Since I don't understand Perl, and don't know much of gropdf(1) either,
I need help.

Maybe Deri or Branden can help with that.  If anyone else understands it
and can also help, that's very welcome too!

Then I could install a hook in my server that runs

	$ make build-pdf docdir=3D/srv/www/...

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--42gvlq/vq2qKrFUG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVYhc0ACgkQnowa+77/
2zLwqBAAjYxWueWb84OhfwkS44jgF+0Lppv4qz5Won7YK6F8cGcIO54t5apiprwW
+GKgpPScpUXG75KtMiS1BHidIp4ImbaJBUkuoSiVhXz30c18s8swYdGOSGq0+7yc
uWSt0OKdEOc/HWlrSnadafV1ZPT2JYTjuDUwhOz6ZdR6wc/SZa30ibNeT2cjHkQH
eSp9q44Fr/r7eVu0HrBsHKcvDVOPtXqFHCgPPf1Dw4CrrcVtNC9DWDTNZdja6F1p
sZo1XlZt04rRKiQ/ARQSAqSvl9QTVbxia52En/NxRmjV5dNRHDgLuicTsiB32+0B
75LeyI35HF+IfUVZz4x3iwu7DZsYJ4weTi2IVvtRj03si+iI5Whd1MW/xNWM1zJc
g+9NCV1orZlcHmtQHnjWi7m1nlym5bnyDNAOcYySlRv78H8vc5zN2xSKW1GHQYpo
r1WLb3hOgqx2auX4/ejP9gLhopOt/ck2M2wxiBHTedqyLqj5F3wLRGYJx+yKJgHI
ryudpXTfz3vIFwaQuiiLm3mEjX6YUmqNkqGqfo1NVAustBBcDA3afMMZy2q/MMYt
weENAq1/fvB+95pCxOJMqVG6DSMMAPXdn6WrLZRXYkbMKVN18GuabWjeOQQ4yPUp
LTb7MNFIFuMGbVz6TgYIitvtwm+/NyICw87lrXS9QvkB+x5ssog=
=Gr2T
-----END PGP SIGNATURE-----

--42gvlq/vq2qKrFUG--

