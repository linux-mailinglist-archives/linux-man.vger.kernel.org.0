Return-Path: <linux-man+bounces-486-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4E186A368
	for <lists+linux-man@lfdr.de>; Wed, 28 Feb 2024 00:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC4D81C2382E
	for <lists+linux-man@lfdr.de>; Tue, 27 Feb 2024 23:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCDD5645C;
	Tue, 27 Feb 2024 23:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUAbD0+S"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA856442
	for <linux-man@vger.kernel.org>; Tue, 27 Feb 2024 23:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709075680; cv=none; b=tLFrbRgp0eiTis0upRW22mOk1hnd9HLRH5XPJlOE0fone0d3LafvluI0dYtZgIxHU/xvmhYJGI5vAERoIHYFoC8i+n5Z1iG9i2pfLtL9MlLUusQMeyJ5ueasCScqSGLVqeHynRLTNnlO5dIP/watjJj7hrT8gM0kIDdmI/pQKbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709075680; c=relaxed/simple;
	bh=D5JdCRRPJq0qQN9X1x+hzuJ/7ANkh9s+XzXaTpiG97I=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JkMHlL05351EKzHiGvdnycoaqT16wdElYxxdDUoc/KZAKkWEm/KXLVZfgcBEknjJJ8Hb33iZgeBYYeNUKWGUZkO1sWN5gG+1jw98Crw6fv9D1s3cYJW6tIbw0aUdTJeO9sjw4JIrEHgNY86CmcRRoGwo1V84wrS5BGtmdjLNypA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUAbD0+S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC1CAC433F1;
	Tue, 27 Feb 2024 23:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709075679;
	bh=D5JdCRRPJq0qQN9X1x+hzuJ/7ANkh9s+XzXaTpiG97I=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=DUAbD0+SoY6sCdo3ABe9sJ71umIp/boUahx7TTN0vMiBhPoTZnNUk/iSqNgvu32DJ
	 01SVN1rwUSV7OYDzwfn3Yv0ppCKMiH1X5ChtfZ5mY+4kmy4fgEILY8b+mmySIA2Wqf
	 u57KxCIanVjsuut9TtkYB0nncYd5wqN7v4u8j6hS6L1/fleJnmOUGSdwHnmsgajjua
	 Vpip35swEth8YXj/Sn4712Rded90hzfPbcDiwtPECiZFcjqoH5sVRSfl8M4DsORLup
	 /ybNkEHYZOOcuWkaQx/70OSMIOJm71tFQ8OrNlHzhkZNgE0R2dOetQEu7zjeWsaK/d
	 f24FN7kaqL5SQ==
Date: Wed, 28 Feb 2024 00:14:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 1/2] process_madvise.2: Document the glibc wrapper
Message-ID: <Zd5s3K5sI9012d-I@debian>
References: <20240225122250.441157-2-alx@kernel.org>
 <Zd5fMGvIlmhQyONs@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FmOcsLICw2wh4ik5"
Content-Disposition: inline
In-Reply-To: <Zd5fMGvIlmhQyONs@thunder.hadrons.org>


--FmOcsLICw2wh4ik5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 00:14:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Florian Weimer <fweimer@redhat.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 1/2] process_madvise.2: Document the glibc wrapper

Hi!

On Tue, Feb 27, 2024 at 11:16:16PM +0100, Guillem Jover wrote:
> Hi!
>=20
> On Sun, 2024-02-25 at 13:23:22 +0100, Alejandro Colomar wrote:
> > diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> > index 53fd57598..ed8739663 100644
> > --- a/man2/process_madvise.2
> > +++ b/man2/process_madvise.2
> > @@ -187,6 +176,7 @@ .SH STANDARDS
> >  Linux.
> >  .SH HISTORY
> >  Linux 5.10.
> > +glibc 2.36.
> >  .\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
>=20
> This commit id seems to belong to Linux, so perhaps keep it after the
> Linux version reference?

Yup!  Thanks.  Since I already pushed that to master, I've written a
fix.  I'll push it tomorrow, if it looks good to you.

Havea lovely night!
Alex

---

commit 22c0efa9a291c666c0b44a74b9a7ff4a04a7f674 (HEAD -> contrib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Wed Feb 28 00:10:23 2024 +0100

    process_madvise.2: Fix comments about commit ids
   =20
    Move the comment about the Linux commit id, specify that it's a Linux
    commit, and add the glibc commit id too.
   =20
    Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=3D27380>
    Link: <https://lore.kernel.org/linux-man/Zd5fMGvIlmhQyONs@thunder.hadro=
ns.org/T/#m9129640e1293a94ff1606a2f973522f40c968306>
    Reported-by: Guillem Jover <guillem@hadrons.org>
    Cc: Florian Weimer <fweimer@redhat.com>
    Cc: Carlos O'Donell <carlos@redhat.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 2d91924ca..2c9f0b3f9 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -176,8 +176,9 @@ .SH STANDARDS
 Linux.
 .SH HISTORY
 Linux 5.10.
+.\" Linux commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
 glibc 2.36.
-.\" commit ecb8ac8b1f146915aa6b96449b66dd48984caacc
+.\" glibc commit d19ee3473d68ca0e794f3a8b7677a0983ae1342e
 .P
 Support for this system call is optional,
 depending on the setting of the

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--FmOcsLICw2wh4ik5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXebNwACgkQnowa+77/
2zLEkRAAqis0mYpkoD4W/bDJfQzS3O2L+8rOq6zPZ187bBYW4MJsw6EVzG0NZH6g
ICP6ZiFwkvcbkQ/0dHKui5VewrTsgXhyuOT1mQnkcxBh6Y6ON1W3MQupeA2bMOxK
dTQLiIDdf4zLk3tJ+eOR17XEfK8U+AyEg6fwCib9eLELNNaJlwGaDXrvmXDVsDtE
W+Zu3Mr1WvrnNwP/0qMlCzvtDZNwrAcfOt+B8PJsYJJVTLzK9XDdcCmMLm2b94Ej
S8Z6FB3CFsNzbjTEZSokq3qai6KBmsVzJwWK39HZUbYgxmCLprXqVOpcoLwcHaZb
PNKIEL4gWhMVleAZt3FcxE56aT+olTrXHFxpc9k3OiHg1Iv38iHnmHGGrIaWH1Sb
d9xMf8EjYt7/5WZHl+CfXV6Vt2cPdEPYN91nhS6X3M+Yp76RSXlA8GATZMIKuB0e
vlAe9Pr/csP/UatliL4XYloQbP9hNGX3atv82pbEzFqBYCLofSIOAR4Zsowec/++
qg3aPxchwcvJf2GRO0o8FJmyDZumKeihUaoNfNqmlCNSuRToxMp/F0zii14u8r7H
nhEiyhdUShfd5ZQ61Fa1nx2EMUxnpZCrCxrrnsOJ+MPbO1+tGtM4T/lTQ5MOJgFQ
L84oZr06S5PR4FtPRi8FeO3wPuKRx7qWj/pWX5jxMmA2EZe4yHs=
=ntux
-----END PGP SIGNATURE-----

--FmOcsLICw2wh4ik5--

