Return-Path: <linux-man+bounces-14-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAF77E7F35
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B3401C20F88
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4C73E47D;
	Fri, 10 Nov 2023 17:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pynw7rWN"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626FC3E463
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:47:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F033C2E5E5
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:19:05 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3DC3C433C9;
	Fri, 10 Nov 2023 11:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699615145;
	bh=84pjUGdCdwoC1zIvc4Q8AaHO6UKFoFV8GDxaFmICZw4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=pynw7rWNWgtOrQSQvbWagCN/GHllDJnkw30pkRtKEvi6aOtXzIL45DcdfW+FStl2j
	 yCpCXu/FF3g4wGpF+ehluSz87NL2urTH5l36//oCwHnw0jB//n6pnH+znodhQuSYaw
	 WJZU1xC4YagEmRS2WuVRnuzNC6kViKNczRdIRCLtGsBb2fKtJzQjTWX9SHqCWiCHJ8
	 0N+mkjH2gP6ot9+MKz3pfRAYaftrDqWsajvSRNTGs0YDg0Tc9Escmk87Akh0mrw1vr
	 DhDVGPBOwc0nDOh2eflLAIAL9nMrJUrbiebet/wzV5jfZvP4Sor2w/j+ZrL772JBGl
	 OLsMkFjs9tQgQ==
Date: Fri, 10 Nov 2023 12:18:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU4RpotBDOkzHnbi@debian>
References: <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <ZU3WhDRpJj0GWnSp@dj3ntoo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g7oKzSHJ59i43Uqn"
Content-Disposition: inline
In-Reply-To: <ZU3WhDRpJj0GWnSp@dj3ntoo>


--g7oKzSHJ59i43Uqn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 12:18:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Oskari,

On Fri, Nov 10, 2023 at 01:06:44AM -0600, Oskari Pirhonen wrote:
> On Thu, Nov 09, 2023 at 13:23:14 +0100, Alejandro Colomar wrote:
> > Don't worry.  strncpy(3) won't be deprecated, thanks to tar(1).  ;)
> >=20
>=20
> Just please don't tar and feather [1] the people who use it ;)

Hmmm, it just caught me after a year fixing broken strncpy(3) calls.  I
was a bit unfair.  I'm sorry if I wasn't so nice.  Hopefully, we've all
learnt something about string-copying functions.  :)

> > We could maybe add a list of ways people have tried to be clever with
> > strncpy(3) in the past and failed, and then explain why those uses are
> > broken.  This could be in a BUGS section.
> >=20
>=20
> This would be a very fun read.

I'll write it then!  :D

>=20
> ... snip ...
>=20
> > > > Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so=
 no,
> > > > it's not correct code.  It's rather dangerous code that just happen=
s to
> > > > not be vulnerable most of the time.
> > >=20
> > > So will all the custom strlen(3)+memcpy(3)-based replacements suddenl=
y be
> > > immune to off-by-one bugs?
> >=20
> > Slightly.  Here's the typical use of strlen(3)+strcpy(3):
> >=20
> > if (strlen(src) >=3D dsize)
> > 	goto error;
> > strcpy(dst, src);
> >=20
> > There's no +1 or -1 in that code, so it's hard to make an off-by-one
> > mistake.  Okay, you may have seen that it has a '>=3D', which one could
> > accidentally replace by a '>', causing an off-by-one.  I'd wrap that
> > thing in a strxcpy() wrapper so you avoid repetition.=20
> >=20
>=20
> Might I go so far as to recommend strnlen(3) instead of strlen(3)? That
> way, instead of blindly looking for a null terminator, you stop after a
> predetermined max length. Especially nice for untrusted input where you
> can't make assumptions on the "fitness for a purpose" of what's being
> fed in.
>=20
>     if (src =3D=3D NULL || strnlen(src, dsize) =3D=3D dsize)
>         goto error;
>     strcpy(dst, src);

A NULL check shouldn't be necessary (no other copying functions have,
and that's not a big deal with them, although I have mixed feelings
about things like memcpy(dst, NULL, 0)).

About strnlen(3), you're right, and Paul also pointed that out.  See the
other mail I sent to the list with an inline implementation of strxcpy()
using strnlen(3).

>=20
> This, of course, assumes you have POSIX at your disposal.

I always assume this.  If not, please ask your vendor to provide a POSIX
layer.  Or at least the parts of POSIX that can be implemented in a
free-standing implementation.  Or stop using that vendor.

>=20
> I'm writing this before going to bed. I did briefly sanity check it with
> a simple test prog, but it would be quite ironic if I missed something
> wouldn't it...

Looks good at first glance.  :)

Cheers,
Alex

>=20
> - Oskari
>=20
> [1]: https://en.wikipedia.org/wiki/Tarring_and_feathering



--=20
<https://www.alejandro-colomar.es/>

--g7oKzSHJ59i43Uqn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOEaAACgkQnowa+77/
2zJWnw/7Be5C9gcOGBfyfoh3CIso1i/TIrX/dgeIV+lB6B5jL6kaaZ4gdwZbcb6W
0WajgCDFHiLrXpSHKKNbrGDS2Tt1sUDgLGzxWb/Mb4JVke+XbdNo3SmQj9aXwr/A
9pWRCocQ9b4QS9B1Kp81f+AO0WWGnq+nCvWsvWLNECji2dttqwHWqSChQx+3jHlT
W5JUtO0hdvvlhDStzcDksPipAkm0QNXxFcIOhE1mSAeDPEqi3ad+L1DqT5Mx3VHW
O4rKdfFDcRbdqaHQPQoPln2rG9P6Or3y8kIPAqAFnAoMmOboz+4aTG39O0SDt12V
qu9MyliFrhJNykFU1B1ek0y4ZQsybdy0NongEyfKZwm68FBUtYnKa3XwpwpL+CqD
ki8ojnv3J/RtXCNEvE5NrjH30Ih4avEG7HsYLxgDGl7A+iPaif1xJpQ4zWTt0mpy
n0+ZHFLUraWldKZ4FxQqZinZ21nggKyO0wRTBV/8M7OIEpmp6iVP24acdTGZibtT
pAYWaQx3TdW8FnjREF0VjJAFoSXiVjsR/obyxzZb5cMUQ4Lrn7nWmnhfNLOTtqXv
DyBprguKl1CA1Wya0CYU8XBj2O3MCbIhH9O4L6BRah4cSUmOdcytKr0sdyY8OvK7
1BGEri93QSdR4u1odarXAgrXyoDpO91LsSyt96bwEpz0PBkzGWA=
=vgA7
-----END PGP SIGNATURE-----

--g7oKzSHJ59i43Uqn--

