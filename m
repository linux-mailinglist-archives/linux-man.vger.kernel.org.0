Return-Path: <linux-man+bounces-1808-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558E9B91C9
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66B401C2427A
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91B21A4E98;
	Fri,  1 Nov 2024 13:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4kVIYO7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D3B19AD5C
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 13:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730467010; cv=none; b=NbsLVRNw92MGrq5fX9/IjOQ8P4EEnvR0dacbu7hFCznNUgB8Vn+DjZjTjQVmvx/u17TjPwH+4ZVfYMvCs/6hZtKlbladTaQSBPlcuwFaDT8BX18C6TPA5N9zqzRyyr8IZILdHIwXivdSWLmmGKLCZSOELQUpx0Xs2VwXozHl1GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730467010; c=relaxed/simple;
	bh=C/f637+4TINwcJ3SE2Zc82agJkDHUn69B291PBawylA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oUXVfLFqcp7jE3/5Iny2mAObk71BCaBtlppzncENbNexmF5LBaNtxFDN0xw9Emx4ep6DY2swGGSsq5XgB9AziA64cKRv8bU52xAPykDtlBj542xgvCHBrmiQpsiyfH8LmyFXqTPYv+HbcbzaFDRVta8G1fhVWQud6OnIOQdNsq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4kVIYO7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE818C4CED1;
	Fri,  1 Nov 2024 13:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730467010;
	bh=C/f637+4TINwcJ3SE2Zc82agJkDHUn69B291PBawylA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F4kVIYO7EDAYfH5NXmakhYXmOVaiYSHdq2mSR90ktCKyn2zQvcfE1e5boTonQl8aL
	 qkWPuF2gBMcUHakSqY3kwGrhjQHDwlckyRfsgz+HrBXquyVAl4StjL9XiLiga3v0Cs
	 n3pepNWCnZSLYsTj95HqJeUmNuXEODbWxED2bSc7opk3B+47R4joNw/Ive+t8UvUd8
	 axwTqYgRnQ444XZXuQcWRoFH875+78yQTZOxRzmXKzP0rzh3KrQunn/d6pVPI2NQdI
	 qJSZAgjdKp1PHgNOIkNaMM9fkJDZvs5hmfIb3YpPv97ctK32p/ZB25zqfbgg2HQWx4
	 qMzxPh+Ws7lBA==
Date: Fri, 1 Nov 2024 14:16:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kratochvil <jan@jankratochvil.net>
Cc: Florian Weimer <fw@deneb.enyo.de>, linux-man@vger.kernel.org
Subject: Re: [patchv3] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
Message-ID: <20241101131646.pv4ksngmvj3b4znv@devuan>
References: <ZwZ8wiQz6hYtQxV2@host2.jankratochvil.net>
 <8734l4fdt8.fsf@mid.deneb.enyo.de>
 <Zwe-ipF5N82CTN64@host2.jankratochvil.net>
 <87ttdkdu0b.fsf@mid.deneb.enyo.de>
 <ZwfK-LmLeU0gQjLe@host2.jankratochvil.net>
 <20241101131011.4vvwbww2ls7oqatb@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rs2zux5ubtqyfdlw"
Content-Disposition: inline
In-Reply-To: <20241101131011.4vvwbww2ls7oqatb@devuan>


--rs2zux5ubtqyfdlw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [patchv3] pthread_cond_wait and pthread_cond_timedwait can also
 return EPERM
MIME-Version: 1.0

Hi Jan, Florian,

On Fri, Nov 01, 2024 at 02:10:16PM +0100, Alejandro Colomar wrote:
> Hi Jan,
>=20
> On Thu, Oct 10, 2024 at 08:39:20PM +0800, Jan Kratochvil wrote:
> > On Thu, 10 Oct 2024 20:25:56 +0800, Florian Weimer wrote:
> > > Indeed, POSIX disallows EINTR for all three wait functions.
> >=20
> > Fixed.
> >=20
> >=20
> > Jan
> >=20
> > Signed-off-by: Jan Kratochvil <jan@jankratochvil.net>
> > Reviewed-by: Florian Weimer <fw@deneb.enyo.de>
>=20
> Patch applied.  Thank you both!

Sorry, no; I've removed the patch.  It does two things, but I prefer if
you send two patches, each of which changes one thing, and please
provide a more detailed commit message.  Thanks.

Cheers,
Alex

>=20
> Have a lovely day!
> Alex
>=20
> > diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
> > index 42e7eac..df1f631 100644
> > --- a/man/man3/pthread_cond_init.3
> > +++ b/man/man3/pthread_cond_init.3
> > @@ -141,22 +141,28 @@ and a non-zero error code on error.
> >  .
> >  .SH ERRORS
> >  \fBpthread_cond_init\fP,
> > -\fBpthread_cond_signal\fP,
> > -\fBpthread_cond_broadcast\fP,
> > -and \fBpthread_cond_wait\fP
> > +\fBpthread_cond_signal\fP
> > +and \fBpthread_cond_broadcast\fP,
> >  never return an error code.
> >  .P
> > +The \fBpthread_cond_wait\fP function returns
> > +the following error codes on error:
> > +.RS
> > +.TP
> > +\fBEPERM\fP
> > +\fBmutex\fP is not locked.
> > +.RE
> > +.P
> >  The \fBpthread_cond_timedwait\fP function returns
> >  the following error codes on error:
> >  .RS
> >  .TP
> > +\fBEPERM\fP
> > +\fBmutex\fP is not locked.
> > +.TP
> >  \fBETIMEDOUT\fP
> >  The condition variable was not signaled
> >  until the timeout specified by \fIabstime\fP.
> > -.TP
> > -\fBEINTR\fP
> > -\fBpthread_cond_timedwait\fP was interrupted by a signal.
> > -.RE
> >  .P
> >  The \fBpthread_cond_destroy\fP function returns
> >  the following error code on error:
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--rs2zux5ubtqyfdlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck1L4ACgkQnowa+77/
2zIxuhAAj3GBXMXxC6YO32d+6rhsUhmLKnOMuRe2/2XO7F9YGKV1UDquycMOe3zs
5U+5wxabJG5vcTLuYcvq/Trhv8fq114CWAMEL7vXcvmjaTy82VIweBDP3uW6vJZv
xbcgjwFn3Oq9fs0xz6N2CPM0ncGSGcRhVJGc0m9dt0GMckJgSCSvT0EYfU364fpH
Hzz+vahAajC2q+WcJanuo7rKc8DAh4TJH4QP2zw60+rh3GllQNyMv/gM2NN2OY3a
Jr7Jzusd+DoA3a8Ef6aeJwpi+JP4Qf2tnJsDW4Ulj2aYtbiFr+VG2iIptXeA1v+m
WOtmAeew3two57vGJmOA1mGntuCZUUxUKbUse1cgqp1kOTILy/XWI7Rt62iJWMMy
lmJ5VhRG2SfsLwDEM1wTKFA+vpfd8D2oVvpf/UMsxKVwR/PDrASAxJQsFtqlJnjf
tMYN/qm7KtBQSOQ3CbsTucv227Cb8vbp3yNrvNKyhr1Bg2kWujfusMDqX63Qni2j
U+dC6EZt4CqB8mBxb4UMjdRj7ZS/KOEnkNyFQrELMFqyQmy3AyKhkW64C9S0b9G8
0y+AY5pvDspoXrs7W1nlLwykL55Hqs9WbBcMRDCTJoCp14UnGjG9lOZKK2n+PrOV
NK5nyTR0rBOJg7ni+9D/5JeKoeMJ8C9JH7MRuXGSwj1Icwye9YY=
=eLLI
-----END PGP SIGNATURE-----

--rs2zux5ubtqyfdlw--

