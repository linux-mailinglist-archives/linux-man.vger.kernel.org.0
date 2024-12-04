Return-Path: <linux-man+bounces-2102-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE29E45D7
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 21:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 800C6168440
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 20:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613FD18DF6E;
	Wed,  4 Dec 2024 20:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/uG5S5I"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212C41531E8
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733344524; cv=none; b=IEDqSVciGGgbhhFpsmGosRGbLicneVxR6lqq8FUo8CCaGZjpkzGux1CUDJ+ewj7NOXTnD5jeJj5rhVZvsGtn1t0knPKVXCjj6CzqI6nx9b5ZCXW6Ewya3zIaPIFuMgbCAisN8wAQxlZSs70opyeXcWggGdGTsj1cVzJME8f2O6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733344524; c=relaxed/simple;
	bh=WKfcSoHJpJwsvMb1b71cxn2gHvsl3Pzgk6eM9XBEfa4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LKcjrx/SYCsikwSU7NR3JWP4RSKK+x36vP04cIQOH0BtENw2cvrPlFUqbNKgeOebaJ+oJN9BNWSbaZIE81XrS6wYX2zimRD81esAwsrEtrv+pVZ4VBqBIhZUjF14Ls/ajLmA4mjLotOZzbGPcGI42Wsi4ztaUL8qHfDexF4c2A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/uG5S5I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D11A6C4CECD;
	Wed,  4 Dec 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733344523;
	bh=WKfcSoHJpJwsvMb1b71cxn2gHvsl3Pzgk6eM9XBEfa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m/uG5S5IZkE1b1JS0xqMbyfzDBnOFqsVpMX5Qs3aOpbTdun/PWXeeOI//U645z7iP
	 Upb+a8i77bOY7V5njYSowOrnZfHcm/XHOM8kVuuhFUD8XbcDGwJ0A1+d6XarQkxoyx
	 8B5o4L3bVUqY2KK6x8R71QCnt1+5fCzCe3jntqen7TVST0txwuFxUSzn73tdqqgYOy
	 M7HGWT59VKrxyFXXmZpgg9huV1OIVQBHivpy2n+h1cGNkyHtbFGWud6m5yJPVPEGfT
	 CUhpOgTQTDYzswNPeT8+JtzIG1eJ9/V0CkK1V7x7hhW/tCOg+K1nJ3oHbTVLJVKCvX
	 khL016pTo9xbA==
Date: Wed, 4 Dec 2024 21:35:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Luis Claudio R. Goncalves" <lgoncalv@redhat.com>
Cc: tyberry@redhat.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <20241204203520.iu4mayydvyagjehg@devuan>
References: <Z0XzU9R9Kx0RoeUG@redhat.com>
 <20241128113548.zgq6qizi6ieid6fy@devuan>
 <Z0o1izFIKYzSrci-@uudg.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lde7onqy2b55qwgz"
Content-Disposition: inline
In-Reply-To: <Z0o1izFIKYzSrci-@uudg.org>


--lde7onqy2b55qwgz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
MIME-Version: 1.0

Hi Luis, Tyonnchie,

On Fri, Nov 29, 2024 at 06:43:39PM -0300, Luis Claudio R. Goncalves wrote:
> On Thu, Nov 28, 2024 at 12:35:48PM +0100, Alejandro Colomar wrote:
> > Hi Tyonnchie,
> >=20
> > On Tue, Nov 26, 2024 at 11:12:03AM -0500, tyberry@redhat.com wrote:
> > > If the page could not be offlined madvise will return -EBUSY. This mi=
ght occur if the page is currently in use or locked.
> >=20
> > Could you show this in a small example program (if possible)?
> > Like 30 lines or so.  If not, it's okay.
>=20
> Hi Alejandro!
>=20
> Given the ongoing holidays, let me take the liberty of giving some context
> in order to keep the conversation going.
>=20
> We received reports of failed LTP madvise11[1] tests. The errors looked
> like this:
>=20
>     madvise11.c:409: TINFO: Spawning 4 threads, with a total of 640 memor=
y pages
>     madvise11.c:132: TFAIL: madvise failed: EBUSY (16)
>     madvise11.c:163: TINFO: Thread  [0]  returned 16, failed.
>     madvise11.c:191: TFAIL: thread  [0]  - exited with errors
>     madvise11.c:163: TINFO: Thread  [2]  returned 0, succeeded.
>     madvise11.c:163: TINFO: Thread  [3]  returned 0, succeeded.
>     madvise11.c:163: TINFO: Thread  [1]  returned 0, succeeded.
>     madvise11.c:361: TINFO: Restore 629 Soft-offlined pages
>     madvise11.c:290: TWARN: write(3,0x7ffce114b8a0,8) failed: EBUSY (16)
>=20
> Clearly the problem had to do with -EBUSY being returned by a madvise()
> operation. The bug was initially reported on kernels with PREEMPT_RT
> enabled but we soon observed that the problem also happened with the stock
> kernel, though requiring more repetitions to trigger issue.
>=20
> After debug and investigation we observed that the -EBUSY return was a va=
lid
> case in the kernel code and was not being handled by the test. A fix was
> sent to the LTP project by Li Wang[2], specifically for the madvise11 tes=
t.
>=20
> In this process, we noticed that the man pages did not mention -EBUSY as a
> possible result of a failed offlining operation, as described by Tyonnchi=
e.
>=20
> I hope this helps!

Thanks!  I've applied the patch, with some tweaks:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D3205359a3a7079d9d40a50388e851874729a827a>

I added an Acked-by on your behalf, Luis.


Have a lovely night!
Alex

>=20
> Best regards,
> Luis
>=20
> [1] https://github.com/linux-test-project/ltp/blob/master/testcases/kerne=
l/syscalls/madvise/madvise11.c
> [2] https://lists.linux.it/pipermail/ltp/2024-May/038310.html
>=20
>=20
> > Have a lovely day!
> > Alex
> >=20
> > >=20
> > > Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>
> > >=20
> > > ---
> > >=20
> > > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > > index 4f2210ee2..c10dcd599 100644
> > > --- a/man/man2/madvise.2
> > > +++ b/man/man2/madvise.2
> > > @@ -702,6 +702,13 @@ The map exists, but the area maps something that=
 isn't a file.
> > >  .BR MADV_COLLAPSE )
> > >  Could not charge hugepage to cgroup: cgroup limit exceeded.
> > >  .TP
> > > +.B EBUSY
> > > +(for
> > > +.B MADV_SOFT_OFFLINE )
> > > +If any pages within the add+length range could not be offlined,
> > > +madvise will return -EBUSY.
> > > +This might occur if the page is currently in use or locked.
> > > +.TP
> > >  .B EFAULT
> > >  .I advice
> > >  is
> > >=20
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20
> ---end quoted text---



--=20
<https://www.alejandro-colomar.es/>

--lde7onqy2b55qwgz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdQvQgACgkQnowa+77/
2zL9VA//Qh+keEW7r1ziNeZAoeeFJ+vvkH5G84oyYBvl8fUflRch9J1HY4WgcC0R
GoSm9whVaQUK6g1YDp0jkKPpSigOxkyrDvacX71iP69o9f1fOL+88IX1zPc5T5a/
jqX+HpLQ4nL4JDmztVoOrJWqY+T1ar2eWIlKSPFnmjLF+8kDjcjX+AL+pCPLQDuM
t1x1+z7gT9KZYxd8nBgO1USbv2sNh4ujiFvlvNhOeIc1VTYvQZhTHtwxXfVC4BIj
RjyLixfJVHqCgu30N3swtaPX6YgjuTzbmgT7ts7NNyDKjFF3b0Xgf2/66hu77mpV
4kZKKINpxK+REXgatBa5OvEEL2suXKbxrUmiaiGDN3tO74RrX63ARNiOThPHrnbS
+0cccq7pk+gxMam/v0wPglq+hf3VqKhkNcE/Shygik5AcU0Ahw8GJwPSRXCxkczG
RaIOt6xtVV8Hqdgq++gQDXloQPFS7wfqh5Kk/dUSfxfKmly5wDwLcjmd4ezhzpJM
L7nwGXsYNiFv9ugfm3QeznMzzqYd+ZYct6e/9NJDTJmx1BXZUOnIXMKLUb5usIye
r+eWdquMjLAqcNskvqguRTx6qr/gmfL4WixhGYbRHibL45j4Xi1SvSXbA/Tcpnod
xTBXHb5IHa8MCnomfykfOo8klQ7D2ymoYE8RJShsrRdpXop2ebk=
=nU1y
-----END PGP SIGNATURE-----

--lde7onqy2b55qwgz--

