Return-Path: <linux-man+bounces-3245-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 957E0AF7DE4
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 18:30:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28129545819
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 16:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE8E24C09E;
	Thu,  3 Jul 2025 16:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaFscnOb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F30248F64
	for <linux-man@vger.kernel.org>; Thu,  3 Jul 2025 16:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751560131; cv=none; b=LMAYeDCnhA62QNr2QWh8xh4yk9gHx2PPu01VQNOvI1DpdAYlmaLA4EZphNqHAiuXlIH4rZ+4HEpx9s+ViwKPk0BYYufsi3fHT6iE+bjl2S4H6EY8NNG2EySUzkUuCLaou1pW1sVZ9LeUKnmlKe9+/YEROCCBAFidP2ukRP3SR4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751560131; c=relaxed/simple;
	bh=SsAdKwIFJTSMwStEpfjeZ6i1/TTsg6bunnR3b7WJHS8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IJ2wb87UrkLbhQzJdAmGn6L9Ue3OZs5j12yzDWbt/dIupXfarErUirT/vGxnKT/pohc6+UnjYkf4MQL2Q7CLSs/3vf65G70pKyetu/OiHQaN3MUJLWJgI3n1VydDGY9ZP6QykZejg+USh9aNk4RmYxDWMtFe4EVbwdBTGW776R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaFscnOb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89D04C4CEE3;
	Thu,  3 Jul 2025 16:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751560130;
	bh=SsAdKwIFJTSMwStEpfjeZ6i1/TTsg6bunnR3b7WJHS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EaFscnObXvYtZP6WTL7sTGb7z36R3LjXm16NAla2fVtMJvCsZTZsxbTfshHDLnKJ4
	 KOxk64Ulp9ewSgl7/GOTT4pkj/VUe0hB/sNukqlwbdLauIHL7ljHMzwHmuWi4HgfTy
	 vSWOlXORJkEmgnt/LCfIPmL4EF3J5w/4Q8bmpngb1UBXbzki3Vi0g6XHJorZx00Tlw
	 2z7Dhq4LY6rJJMuPLTVCJsiP0susWnY+Vriz2jsJwXxh1BT/5ABdEOnEDKy9GPVn6T
	 Y2ejPI9enzF1tWmmYDYHxyWzO7dQHAXV1Uuzq5qhamw2kiywiTQslNv2NQMZ9RIDWU
	 D7YHf4s8CkSBw==
Date: Thu, 3 Jul 2025 18:28:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <yyj5l3eyeppjexobe3mo7m4d3gx75uijklcem5x27e5oda76a7@scxrpc7su4v7>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
 <20250703081717.GK12583@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="egmrkx5xotr5rsc5"
Content-Disposition: inline
In-Reply-To: <20250703081717.GK12583@qaa.vinc17.org>


--egmrkx5xotr5rsc5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
 <20250703081717.GK12583@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250703081717.GK12583@qaa.vinc17.org>

Hi Vincent,

On Thu, Jul 03, 2025 at 10:17:17AM +0200, Vincent Lefevre wrote:
> Hi Alejandro,
>=20
> On 2025-07-03 04:58:03 +0200, Alejandro Colomar wrote:
> > Hi Vincent,
> >=20
> > On Thu, Jul 03, 2025 at 04:34:51AM +0200, Vincent Lefevre wrote:
> > > On 2025-07-02 16:41:28 +0200, Alejandro Colomar wrote:
> > > > On Wed, Jul 02, 2025 at 11:25:16AM +0200, Vincent Lefevre wrote:
> > > [...]
> > > > > --- a/man/man2/timerfd_create.2
> > > > > +++ b/man/man2/timerfd_create.2
> > > > > @@ -639,12 +639,12 @@ main(int argc, char *argv[])
> > > > >  {
> > > > >      int                fd;
> > > > >      ssize_t            s;
> > > > > -    uint64_t           exp, tot_exp, max_exp;
> > > > > +    uint64_t           ex, tot_ex, max_ex;
> > > >=20
> > > > How about using 'to' for timeout?  Do you think it makes sense?
> > >=20
> > > As described by the man page, this is more a timer expiration
> > > (many occurrences of words starting with "expir") than a timeout
> > > (a single occurrence - shouldn't this be "expiration time"?).
> > > So, for these 3 variables, instead of "exp", perhaps "te" for
> > > "timer expiration"?
> >=20
> > I still think to or te (or ex) are too unreadable (and I tend to prefer
> > one-letter variables when it is clear from the context, to be clear).
> > How about expir?
>=20
> OK for expir (with the reformatting of a line that would become
> too long as a consequence). That's even clearer than exp.
>=20
> > > > >      struct timespec    now;
> > > > >      struct itimerspec  new_value;
> > > > >  \&
> > > > >      if (argc !=3D 2 && argc !=3D 4) {
> > > > > -        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]=
\[rs]n",
> > > > > +        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\=
[rs]n",
> > > >=20
> > > > And here saying max\-timeout.
> > >=20
> > > One could actually let max\-exp. Or say max\-timer\-exp (the line
> > > would not be too large).
> >=20
> > Or timer_exp and max\-timer\-exp as you propose here.  That sounds quite
> > readable.
>=20
> The use of "max" in the name is important as there are several
> timer expirations and one gives here the maximum number of such
> expirations. It could also be "max\-expir" or "max\-#expir"[*].
> What do you think?

How about max-num-expir?

>=20
> [*] https://academia.stackexchange.com/questions/90816/abbreviation-of-nu=
mber-of-in-a-table-heading
>=20
> > > [...]
> > > > > --- a/man/man3/frexp.3
> > > > > +++ b/man/man3/frexp.3
> > > > > @@ -14,9 +14,9 @@ Math library
> > > > >  .nf
> > > > >  .B #include <math.h>
> > > > >  .P
> > > > > -.BI "double frexp(double " x ", int *" exp );
> > > > > -.BI "float frexpf(float " x ", int *" exp );
> > > > > -.BI "long double frexpl(long double " x ", int *" exp );
> > > > > +.BI "double frexp(double " x ", int *" p );
> > > > > +.BI "float frexpf(float " x ", int *" p );
> > > > > +.BI "long double frexpl(long double " x ", int *" p );
> > > >=20
> > > > Here I think I'd use 'e' for exponent.  What do you think?
> > >=20
> > > One could do that (this was more or less my initial idea,
> > > and I'm wondering why the committee chose p).
> >=20
> > The committee has chosen many bad names.  Let's not follow them.
> > Indeed, now that I'm member of the committee, I'm trying to fix that
> > among other things.
>=20
> Great. FYI, here's what I sent to the CFP list yesterday, as there
> are also remaining "exp" in the standard:

Do you want me to write a proposal?  Or will the CFP write one?


Have a lovely day!
Alex

> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80

[...]

> However, exp is a standard library function, thus the exp identifier
> is reserved for any use. So the above prototypes are incorrect.

[...]

> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
>=20
> > > BTW, for frexp, this is a pointer, while for ldexp, this is
> > > an integer. So, should there be a difference (e.g. pe for
> > > the pointer to the exponent, and e for the exponent)?
> >=20
> > Hmmmm, I think not.  From the context it should be obvious.
>=20
> So, OK for "e".
>=20
> Regards,
>=20
> --=20
> Vincent Lef=C3=A8vre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
> 100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
> Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

--=20
<https://www.alejandro-colomar.es/>

--egmrkx5xotr5rsc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhmr6sACgkQ64mZXMKQ
wqnFPg/9EPd8WAgsq5tEQfbcHolBP8EXJkv5KKobORBsDPyeHYv0RB43M9pEXypf
WqObpqV5nCzquwEHPbAwLdmUp1fObhQm+b7/fMY8/yRvJPteUlsv7lS8qq/RMSXe
BSGU8okWwNOslM/eHRdOTAkdC66vvqGssijAKhZy6VGvsbimBwqlCfCsE+CQHnjC
xRSrdxS6MCeOgeQPg748DSxTatlQIDJZUGOGlCvWoK93Rw8nJE8fXqu1kZjTN/Zw
qSysmSn0O3v79xIXhXiLgrlyAMDAnQmjVfKibjO9+IlJ3JxNZa405hHyqzQIoLf8
KVEM6QDtrnHY7WtxJMdPY8xBfWMv0y6axRGdEFrdeFMjAJ7lMNJU6X5MddWMImqc
qVTjjUo8kIamHeNW+51fJkvruOvQZbBgsgsDLgElaBBwy/0YaqPzx1bfvQRoZlt3
d/wFwFey8rWtxCDq34nYMEyWdPI8Cb2wiG51mGtTIenei6YkrbDIEsuEpLYRVdjU
5XElsCmo2KSN027kBZJPUTWK15KuHQJ2qlKS6nTmGyaNdnAwAVwTmuPonTjq8v6k
FT5N3UDT3KzC5UDM0QrqMrvMRvD5q8KDdRLRfS5RW1K73S895I80vQzpvjVk8E24
yjCODe44tUTXSykBV+v/46wJ26Aaw//cgW4zHxNFvYRFSiQBf8o=
=fMGH
-----END PGP SIGNATURE-----

--egmrkx5xotr5rsc5--

