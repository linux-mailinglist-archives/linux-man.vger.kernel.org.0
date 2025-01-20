Return-Path: <linux-man+bounces-2273-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AED27A1701E
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 17:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 098A83A9F8E
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 16:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2430D19BA6;
	Mon, 20 Jan 2025 16:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPZhZIHK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B091E9B28
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 16:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390310; cv=none; b=PRnrPBDAF/FJqYvDL7rvtf3XoagsZNfeFPmuAxSM/kR+ucrbDiQ8WBhKfXeLxLbOTYvWg9EbITT6UfduAPfFNDcOKakUPkJobEdQMupXUrdR3fAoLlq+TCxjy79fsUwxlJkp9O9XWHll/5QauvTC1e2j+A3jkfhMr06uPTiHMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390310; c=relaxed/simple;
	bh=Gb1Ekhn5nWFiMITQBA7SLHfTJqsBtgiTlLX5WFP83Ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ktoyglAYdGKcSSHNdNUb/O8eybhOainVIbVx2mJtYFzYC8BhsDf/Ab10y1M5EKCWeS/lhwHYRgYjxN2nKF+4l50uonCzfAjKUwiW504ABb1GZqFOFKJybVM1kXNXCAfdCxI99dioPVNWMeu2qMqvvcdn/S/C25uAdi68wIbu6A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPZhZIHK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FA32C4CEDD;
	Mon, 20 Jan 2025 16:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737390310;
	bh=Gb1Ekhn5nWFiMITQBA7SLHfTJqsBtgiTlLX5WFP83Ws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UPZhZIHKEcsGcZzZcbcjmycQPU9PxBjLQ95nBqlvezp/F/YfEt/mB6HLmv8KuD2Ro
	 kuapYW/4oIR2tINyUK/d5NmdGsIaxCGzcVnW7Hv8+7r1YzkjOlO74AmWdIFe4Pj5Bd
	 7E6I96TABrgOzrYfEELeh1c1hiXyeuUWtI4CBz387tq6Kb89zZzF7eILUVKEUfHzWQ
	 KyS+2OAsSjfijVD5yz3uLB8ZLW5P9q9f22LypuKW83qGX/1FtaWH4rhg7D/C0EaEPu
	 1WtbHvWLOD6OeptKRlGuXW3EobfGGrUJckz/uX09OJWhGxOWZGR+2usIzSpFdrV9cx
	 EdK3n6TMt+MRQ==
Date: Mon, 20 Jan 2025 17:25:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v7] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <arwah5yblqhmlrsbeiww2mvrr7l3rq4w3l4mqjf45643uxpdq5@epown3sr3gc7>
References: <20250120134222.29136-1-jason@jasonyundt.email>
 <44lwfhugenusvqlbykuedke74oblz6m4tgboy35g6s7zzgq4fe@po5tmyuu6dhh>
 <rkhy3pzu65hqqqx4a5n5yid43zj22q322tsjndfw7kbgd3yui4@ozjs3ckn3n6o>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j77n6vxzc2pylwzm"
Content-Disposition: inline
In-Reply-To: <rkhy3pzu65hqqqx4a5n5yid43zj22q322tsjndfw7kbgd3yui4@ozjs3ckn3n6o>


--j77n6vxzc2pylwzm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v7] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250120134222.29136-1-jason@jasonyundt.email>
 <44lwfhugenusvqlbykuedke74oblz6m4tgboy35g6s7zzgq4fe@po5tmyuu6dhh>
 <rkhy3pzu65hqqqx4a5n5yid43zj22q322tsjndfw7kbgd3yui4@ozjs3ckn3n6o>
MIME-Version: 1.0
In-Reply-To: <rkhy3pzu65hqqqx4a5n5yid43zj22q322tsjndfw7kbgd3yui4@ozjs3ckn3n6o>

Hi Jason,

On Mon, Jan 20, 2025 at 10:54:38AM -0500, Jason Yundt wrote:
> On Mon, Jan 20, 2025 at 03:22:05PM +0100, Alejandro Colomar wrote:
> > > +    char *locale_pathname =3D malloc(locale_pathname_size);
> > > +    if (locale_pathname =3D=3D NULL) {
> > > +	err(EXIT_FAILURE, "malloc");
> > > +    }
> > > +\&
> > > +    iconv_t cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
> > > +    if (cd =3D=3D (iconv_t) \- 1) {
> > > +        err(EXIT_FAILURE, "iconv_open");
> > > +    }
> > > +    char *inbuf =3D (char *) utf32_pathname;
> > > +    size_t inbytesleft =3D sizeof utf32_pathname;
> > > +    char *outbuf =3D locale_pathname;
> > > +    size_t outbytesleft =3D locale_pathname_size;
> > > +    size_t iconv_result =3D
> > > +        iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
> > > +    if (iconv_result =3D=3D \-1) {
> > > +        err(EXIT_FAILURE, "iconv");
> > > +    }
> > > +    // This ensures that the conversion is 100% complete.
> > > +    // See iconv(3) for details.
> > > +    iconv_result =3D
> > > +        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
> > > +    if (iconv_result =3D=3D \-1) {
> > > +        err(EXIT_FAILURE, "iconv");
> > > +    }
> >=20
> > Do we really need two calls?  Why?
>=20
> iconv(3) says =E2=80=9CIn each series of calls to iconv(), the last shoul=
d be
> one with inbuf or *inbuf equal to NULL, in order to flush out any
> partially converted input.=E2=80=9D  To me, that quote makes it sound lik=
e you
> should always call iconv() at least twice and that inbuf (or *inbuf)
> should be NULL the last time that you call iconv().  I don=E2=80=99t know=
 why
> the man page says that you should always call iconv() at least twice.

I suspect that we can call it just once since we provided enough space.

  The conversion can stop for five reasons:

     =E2=80=A2  An invalid multibyte sequence ...

     =E2=80=A2  A multibyte sequence is encountered that is valid but  that=
  cannot  be
        translated to the character encoding of the output.  ...

     =E2=80=A2  The  input  byte  sequence  has  been entirely converted, t=
hat is, *in=E2=80=90
        bytesleft has gone down to 0.  In this case, iconv() returns the nu=
mber
        of nonreversible conversions performed during this call.

     =E2=80=A2  An incomplete multibyte sequence is encountered in the inpu=
t, ...

     =E2=80=A2  The  output  buffer  has no more room ...

I don't see anything listed that would make reasonable a second call.
Maybe we should improve the wording in iconv(3), but we should be
careful.  For now I'll leave it untouched.  But please call it only
once.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--j77n6vxzc2pylwzm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOeOwACgkQnowa+77/
2zKFPg/9F0EmXWjhlkJgCizlJULXy0kSD0iSHAAdIQGNtoFWlJZWdy4L0wyWuD9F
Tf4LyMBKfG/E3F6TqCeAL8c06tpi7w+itOHYCJ6bUOzbHhRqixnNWDtPSIwXyCyu
6WYnppdXXKhniCcpYipObN9ohDeecpIR360aBUmfL9Wez+OtPGYQe3GQNP2ui2eu
oNt14qUdU50/DS3Zkib/nwb08Mq1njRBSG/2WsSeMsdBwZ3MTvddXvF50Uqyf9Y0
fwuS83DCYJG1mvjti3cAWbV1DeTTPQdqy1Q82ZvkbZanRMXDt/mlfwla8cIYsEtf
sxPslERBXcuz25OBNbMFil3X7J8Z3F2JxvtrQNkHRNQaEyhF2X2EbvMq9Ru/0JwW
3JQABM5haOAsTfaNE2ZmFNCkxMR+2AfAzzHzP3hSE0ZbxOHrzsZm1xueqGNUA0Zr
omL/3ZBjbQYI61iumKvXqNWmB0hCiX1Vu1ftRT5qEEWbtZRBINhGcctWURy2qKmW
l3UOaPm8ZcTrjcR1XAtVPM3sbD7Xsc439nqaVzQ2GUcCIfgVojavyUB9ocUNi8LO
r91cuS/OZ4r16w1fCEMSqyx8jWVd2BRzIywRBvJQ/ap76aXj5bor2YPP4ijQ0vl4
Cz5veWiFaahRvK32e2qbnCOUsTQIDhEzBnYZIoaFrd3qVNIKg/Y=
=FOvk
-----END PGP SIGNATURE-----

--j77n6vxzc2pylwzm--

