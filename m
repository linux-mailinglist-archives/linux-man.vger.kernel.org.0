Return-Path: <linux-man+bounces-274-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 593C981B597
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 13:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3DECB233FF
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 12:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 809A16E59A;
	Thu, 21 Dec 2023 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em4ElZ17"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E236E2B3;
	Thu, 21 Dec 2023 12:15:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A74EC433C7;
	Thu, 21 Dec 2023 12:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703160932;
	bh=BbU0PP8oYWJdM9bAVDZTUjeJS2wucv05BGpqxRDvan4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=em4ElZ17lGvvcurK6W6ClBaDMa4NA5krzm1vGOHhw+V9u5AghPSMhw2y18BoWz2aa
	 s2jXZ1s8vDiiFO3lkTAS7vUp9au+CwHQwpbAd96x3Z9DfihfcatuzUtywMVPok9Cm+
	 dSNsYzECyjOhOTiCA1H853Sc5JgxqsDjbaxa7tNNdecbE9sf9oSQazukseYiN0LPGT
	 9Igzt2o58Gjwtbv5HNbYcyLXtRyNInVnY2/i3/ra7lwP02TIDxWU/H036kGKXvYYft
	 tho3ssmJ5nujl1LsikLHRePVF4k67MDHeqr5LB6BDwML0PL67X5vXlcf8jH+AERF2x
	 2Lg5wUWey3/XA==
Date: Thu, 21 Dec 2023 13:15:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>,
	Alexey Tikhonov <atikhono@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH] unix.7: SO_PEERCRED: Mention listen(2)
Message-ID: <ZYQsYametqHWshUZ@debian>
References: <CABPeg3Z5p2yapwEwPdHqDZiDL-W_gVgMc39A0Kdd95LNd+OwHA@mail.gmail.com>
 <20231221014911.39497-1-kuniyu@amazon.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eszc7SolOqkaafF8"
Content-Disposition: inline
In-Reply-To: <20231221014911.39497-1-kuniyu@amazon.com>


--eszc7SolOqkaafF8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 13:15:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>,
	Alexey Tikhonov <atikhono@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH] unix.7: SO_PEERCRED: Mention listen(2)

Hi Kuniyuki, Alexey,

On Thu, Dec 21, 2023 at 10:49:11AM +0900, Kuniyuki Iwashima wrote:
> From: Alexey Tikhonov <atikhono@redhat.com>
> Date: Wed, 20 Dec 2023 18:28:34 +0100
> > In case of connected AF_UNIX stream sockets, server-side
> > credentials are set at the time of a call to listen(2),
> > not when client-side calls connect(2).
> >=20
> > This is important if server side process changes UID/GID
> > after listen(2) and before connect(2).
> >=20
> > Reproducer is available in https://bugzilla.redhat.com/show_bug.cgi?id=
=3D2247682
> >=20
> > Behavior was confirmed in the email thread
> > https://lore.kernel.org/linux-man/CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8=
Z+gf2kznWouErA@mail.gmail.com/
> >=20
> > Signed-off-by: Alexey Tikhonov <atikhono@redhat.com>
>=20
> Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
>=20
> Thanks!

Thank you both for the patch and review!

Patch applied:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db34c2340657cfe467a0c2cde4933422bddf4348b>

Have a lovely day,
Alex

> > ---
> >  man7/unix.7 | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man7/unix.7 b/man7/unix.7
> > index e9edad467..71cdfc758 100644
> > --- a/man7/unix.7
> > +++ b/man7/unix.7
> > @@ -331,7 +331,8 @@ This read-only socket option returns the
> >  credentials of the peer process connected to this socket.
> >  The returned credentials are those that were in effect at the time
> >  of the call to
> > -.BR connect (2)
> > +.BR connect (2),
> > +.BR listen (2),
> >  or
> >  .BR socketpair (2).
> >  .IP
> > --=20
> > 2.41.0

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--eszc7SolOqkaafF8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWELGEACgkQnowa+77/
2zK0gA//eDdNC3swAfCFYJyS3bLB/V8kyIL2aFnfPeuE/HgdPDCAGCMDmqta34AU
Ts2xuWXy3GkKUwxnoGeNEDGuINMQGhYOdAEkstyuJpRbu9ewjoeVpDL/U9fFJqW8
U64DWNZrBbXWaXMgPG1rTqd1TXmVg4gVBZna8G9r2+aqoLodMnLHdB6GjQtQUdSA
spTpj7H1XHmPLyqJP28JxhZxpe9qy6qBpjBGladkedN6nbmGfc26n3pogf0s+6lO
5sIbDa000ciVPAuPzN0LRhdSQRpfrwz8ucqf3+e70P5pBdQ6tPQAogTI+XvVS7v5
Ctq0AGcWVDKX0z1VJI8Nrz3Wn3TkWPLKe6Evr01OKjI88CKT5WKmnV0K8PAd+5Mz
qIKSrSPrPDusFN/jk9osL0F5x00ETYNZJNx5uUEuGKerYVZBOCCCDLgTo7D1tebF
6rsJ3tX+rYYdVFarEFzno0I3J0QiOSLq1q9qX5EK2Hrkhc3FkPbz+dReshTnirw0
0fNihiGuCetnauxR4x8VikrS3G6WaTOmBQ1Xk1rVWl+l9m7wTY3pp1KdAbraY1kC
3Sr5vJlB+PmR+8+8Rgbvw+JOKsmsbtQwLjzq0aOjMG68zjZUKRkqruXjiaW9jhr6
6XfHd/Ab+tbM6h98A9MsrB94axVwdohto5XdGE/TFNdjF8FyP/o=
=vkWt
-----END PGP SIGNATURE-----

--eszc7SolOqkaafF8--

