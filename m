Return-Path: <linux-man+bounces-3242-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62690AF6866
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 04:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26A3A487D1D
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 02:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6352192F8;
	Thu,  3 Jul 2025 02:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHKvxJpl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AFD19ABDE
	for <linux-man@vger.kernel.org>; Thu,  3 Jul 2025 02:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751511486; cv=none; b=Z5hi/wW4OTVe0OUZZHk3sbgNlWrvPwQOOzLc38bho1+/2+9GaP6u7W1ZK4pbsVZ8xI5imNwT29/9K4T+qXalCaU8/n2MBuNNFMSJDAronx7PevUzrESqKPZWmu1g8JZdP1IIVaR5G01weGQ6stonHVhur+rGknDRPJK/hYxiEgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751511486; c=relaxed/simple;
	bh=2VTrf1iM5Hnvv2MEJSXdb0vEN/vmwLj6sHQuyqh5Sd4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NKM5xnlBdxgpUUqio9TbA9Dj+mCx+CwuXbPydl/+fWA8oAhImwdFNDNVnASEAy8GhCyFu8YVfaO5g0HwG9f6C8S2C4Kn8f4DE5Nezc6sloYKI3kgEnu609T20sRjW/AM/ahhud8+UyP6DjhxuosLEb9Jly0lbbYqACLKh4k7PvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHKvxJpl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386D4C4CEE7;
	Thu,  3 Jul 2025 02:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751511485;
	bh=2VTrf1iM5Hnvv2MEJSXdb0vEN/vmwLj6sHQuyqh5Sd4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JHKvxJplgBogOn12q5yDmgy/yyynXt4TuYzjXKZIRudAfGsXzy6C5In/EaGOyIGxO
	 jR12AWxgMwRz4NOSRi3Rl7GxBdEKNu4hyehZ1Z/Thw10LY6EMH1a1is0EtaZS10vOC
	 DUNmEXngywpB64myggbALnTiJBvmPq2JWet1CPtkSkKHnqmqj1UWCjEXK68GZv+Z/1
	 MHAz/eK5of/RvYKA2XqgE14bm0QCDhx2LpboKxN0S99r+wI36tEnePAMInmJhcFDFe
	 x64Cif6bl7yyI+GRIpylhuhfLNCRClrUIa70a4ALb03i7IIHGAovEUcrDstHNEnJSa
	 ouOi06J0AdaHQ==
Date: Thu, 3 Jul 2025 04:58:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mrlkwiyzjx4o4foz"
Content-Disposition: inline
In-Reply-To: <20250703023451.GJ12583@qaa.vinc17.org>


--mrlkwiyzjx4o4foz
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
MIME-Version: 1.0
In-Reply-To: <20250703023451.GJ12583@qaa.vinc17.org>

Hi Vincent,

On Thu, Jul 03, 2025 at 04:34:51AM +0200, Vincent Lefevre wrote:
> On 2025-07-02 16:41:28 +0200, Alejandro Colomar wrote:
> > On Wed, Jul 02, 2025 at 11:25:16AM +0200, Vincent Lefevre wrote:
> [...]
> > > --- a/man/man2/timerfd_create.2
> > > +++ b/man/man2/timerfd_create.2
> > > @@ -639,12 +639,12 @@ main(int argc, char *argv[])
> > >  {
> > >      int                fd;
> > >      ssize_t            s;
> > > -    uint64_t           exp, tot_exp, max_exp;
> > > +    uint64_t           ex, tot_ex, max_ex;
> >=20
> > How about using 'to' for timeout?  Do you think it makes sense?
>=20
> As described by the man page, this is more a timer expiration
> (many occurrences of words starting with "expir") than a timeout
> (a single occurrence - shouldn't this be "expiration time"?).
> So, for these 3 variables, instead of "exp", perhaps "te" for
> "timer expiration"?

I still think to or te (or ex) are too unreadable (and I tend to prefer
one-letter variables when it is clear from the context, to be clear).
How about expir?

>=20
> > >      struct timespec    now;
> > >      struct itimerspec  new_value;
> > >  \&
> > >      if (argc !=3D 2 && argc !=3D 4) {
> > > -        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs=
]n",
> > > +        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\[rs]=
n",
> >=20
> > And here saying max\-timeout.
>=20
> One could actually let max\-exp. Or say max\-timer\-exp (the line
> would not be too large).

Or timer_exp and max\-timer\-exp as you propose here.  That sounds quite
readable.

> [...]
> > > --- a/man/man3/frexp.3
> > > +++ b/man/man3/frexp.3
> > > @@ -14,9 +14,9 @@ Math library
> > >  .nf
> > >  .B #include <math.h>
> > >  .P
> > > -.BI "double frexp(double " x ", int *" exp );
> > > -.BI "float frexpf(float " x ", int *" exp );
> > > -.BI "long double frexpl(long double " x ", int *" exp );
> > > +.BI "double frexp(double " x ", int *" p );
> > > +.BI "float frexpf(float " x ", int *" p );
> > > +.BI "long double frexpl(long double " x ", int *" p );
> >=20
> > Here I think I'd use 'e' for exponent.  What do you think?
>=20
> One could do that (this was more or less my initial idea,
> and I'm wondering why the committee chose p).

The committee has chosen many bad names.  Let's not follow them.
Indeed, now that I'm member of the committee, I'm trying to fix that
among other things.

Here's one of my proposals for fixing names in the standard:
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3577.txt>

But there's much more than that coming soon.

> BTW, for frexp, this is a pointer, while for ldexp, this is
> an integer. So, should there be a difference (e.g. pe for
> the pointer to the exponent, and e for the exponent)?

Hmmmm, I think not.  From the context it should be obvious.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mrlkwiyzjx4o4foz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhl8bUACgkQ64mZXMKQ
wqkHzBAAoPFySgRSY9zMUm8NskWqTOXdkn7Lai1/PySjXNeIUyC65KP3PEdqBOOZ
7gTmzrFGez34YSIIgNXGuj/Vfxe86ZDGJnTM5gOwA2rVIpfpIpGz/Vnoe9Yw29nG
ptszYp+Vgflkudkz7H5xry16/texz7Sz5s+nBoRTs/sa83yEV7Wd7eeeGrrzv35r
HwebY412V+dZxCbwSkRGbbtuMeF43+VhJF5syOFj6IhY0pr2D6+MbMb8z9FeHJZT
LcSZZyaXhqRvtpWBJ+rpamOXikKBG+uRteaIoYd7hxOPJFpf+t9Vp9laGccxup0X
4Of+j/dbns4rBc8XTKc1L0zbLWQjl/eD3aKXi0Qzn5b04Y2wNhpeNF52qWUzaeIw
Cz265lxSjfuS3OAksgb+gNHZokIhdxd84m/WNy9g9oC9hkZPKrYDHmSF65rFLBY7
Im41Cr3vm0GB1QjQWawb9kcKOyf/UxSodu666b7KHnWwVC/D3CmrpbxtvS4Z6GZu
3t8PsOgoBRUghlViBCcwJw6QCAOH456gbWh9cOdunmXIbl3o3Ufjo0yC/lY2B3St
zcQHYZNYjYumWYS0VvKZGgbx2AH7cOtvO4mMUXutTAXOkzqX41L0bmF1j2Sdb2EG
AYjRfvpF5l0kjzLFZXBJHhn/GY5JCzoKAsscti044eF6WcbdFWs=
=303F
-----END PGP SIGNATURE-----

--mrlkwiyzjx4o4foz--

