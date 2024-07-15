Return-Path: <linux-man+bounces-1475-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEAF931D2A
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 00:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C101A1C21D95
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 22:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0329513E02B;
	Mon, 15 Jul 2024 22:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tl3jgM7C"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCED13DBB1
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 22:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721082516; cv=none; b=QkQzS59QmfDpZ8p0rtdiY0ZXtQh4LugY+vSUsOB6UYJogpLzJj+MYwx6xx11Sm4VlaRjG0CJvWGaFFn2s858xInQxNRjT1//PDybH1F4Gqvht7KqyM8CO6husz1v3G4TkYw64OC+8gI20H1Lyzh9O2k3GTXQKXsbt0P/DN74T0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721082516; c=relaxed/simple;
	bh=iIgo4LrSgEZFlIeKd+QpTWpjNnA8dK5sDeaBZPB9lpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQIHHuGyeOOmxoCiQsSdVxU3flugtMifz1CpKPyKmoodxIP0G27hPc1csBGxVDJcQNeKcun7fo2cUMz7QrnyBfFa5xzvFWhHtQ9S0GTHmG51hmnTDCBCzwf/HDc6tVdkbhhmzgzb5NtbK+0Cr2ZRIrfgCUMpSjMgnciZZHbmsmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tl3jgM7C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D035C32782;
	Mon, 15 Jul 2024 22:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721082516;
	bh=iIgo4LrSgEZFlIeKd+QpTWpjNnA8dK5sDeaBZPB9lpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tl3jgM7C8KO/P9XYpBcJhB+HekRN65OVteSgskprVkTHUJJYdwA9mqMxXuczxONvB
	 Y6nI46HLA9D01S0dcd/inm7uJeiPaISm6yjkTiEtXrc9dr6cNw+OC9lJw6qnGQWavF
	 zAje8SvSSPOY7YWvsVzfwbtXWfmzpdINfgEmYMw8KKdNMsfmgvLVVURJIpogKKfORm
	 mHblP3Pt7ZncHr2mNEJb2nUkS/0ohY0YEC5EJFNvmLoXbiVgKCi5j15sgqpMoGPWI4
	 Z+zVM594xRNenwZ5DPKxCyLzmD1v0HZNZDt8EbmMkmoc/67g3MYos3fqhFvzlIR4bE
	 rN2tRr1yKOrUw==
Date: Tue, 16 Jul 2024 00:28:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
Message-ID: <vgcyaz5f64qntnbccwsnt7fzyyimpwkl4zmw3m3h5vksf4ro4d@63g3mjgxnzmb>
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
 <hrbz4sgmavikjl2lb3hmsztmyfmwo3rwzqbfuzfgkrpeuq34ds@wjluxxazndcv>
 <CAAHpriMNx5QnxaOGF+O0+4909jwvhFOdyA3dm6zSOH_23V0W-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="spexixgnox775zvs"
Content-Disposition: inline
In-Reply-To: <CAAHpriMNx5QnxaOGF+O0+4909jwvhFOdyA3dm6zSOH_23V0W-g@mail.gmail.com>


--spexixgnox775zvs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
 <hrbz4sgmavikjl2lb3hmsztmyfmwo3rwzqbfuzfgkrpeuq34ds@wjluxxazndcv>
 <CAAHpriMNx5QnxaOGF+O0+4909jwvhFOdyA3dm6zSOH_23V0W-g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAHpriMNx5QnxaOGF+O0+4909jwvhFOdyA3dm6zSOH_23V0W-g@mail.gmail.com>

Hi Keith,

On Mon, Jul 15, 2024 at 02:47:19PM GMT, Keith Thompson wrote:
> On Mon, Jul 15, 2024 at 2:29=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> > > This patch copies the description from POSIX
> > > https://pubs.opengroup.org/onlinepubs/9699919799/functions/memccpy.ht=
ml
> > > with the parameter names and added paragraph break retained from the
> > > current version. The updated description is:
> > >
> > >        The memccpy() function copies bytes from memory area src into
> > > dest, stopping after the first occurrence of byte c (converted to an
> > > unsigned char)
> >
> > I'd remove the parenthesis.  That conversion is of course, no?  For the
> > standard, it makes sense to be pedantic, but for a user, I doubt the
> > value of that statement.
>=20
> My personal preference is for the man page to be pedantic, but I'm
> fine either way.

The thing is, that detail is important to implementations.  The user
can pass a byte as a char, signed char, unsigned char, or an int, and
all of them will work, so it doesn't really care what the function does
internally.

> > Especially with this function.  My personal recommendation, after having
> > researched so much about strings these last years, is that this function
> > is useless (unless you're restricted to ISO C, and even then, it is,
> > because you can write better functions as wrappers to ISO C functions).
>=20
> I've never used memccpy() myself.  I suggest that the perceived
> usefulness of a standardized function is not particularly relevant
> to whether it should be documented.

I agree that it should be well documented.  And while I prefer all pages
to be short, I think this one has more reasons.  An obscure detail like
that... hmmm, not sure.  Let's keep it out, and if other readers think
it is important, let's add it later.

> > May I ask if you have any specific need for string handling?  I'm
> > developing a string library, libs, and I'm interested in feedback of
> > possible users (for now, the targeted user is shadow utils).
>=20
> I became aware of this via this article:
> https://nrk.neocities.org/articles/not-a-fan-of-strlcpy

Hmm, interesting.  Thanks!

That article seems to use memccpy(3) as a home-made strtcpy()  (and the
interface it proposes as mystrcpy_trunc() is basically strtcpy().

	inline ssize_t
	strtcpy(char *restrict d, const char *restrict s, size_t dsize)
	{
		bool    trunc;
		size_t  dlen, slen;

		slen =3D strnlen(s, dsize);
		trunc =3D (slen =3D=3D dsize);
		dlen =3D slen - trunc;

		stpcpy(mempcpy(d, s, dlen), "");

		if (trunc) {
			errno =3D E2BIG;
			return -1;
		}

		return dlen;
	}

It can be written in terms of memccpy(3), but mempcpy(3)+strnlen(3) is
faster, and to me also reads better, even if it's slightly more code.

	inline ssize_t
	strtcpy(char *restrict d, const char *restrict s, size_t dsize)
	{
		char  *p;

		p =3D memccpy(d, s, '\0', dsize);
		if (p =3D=3D NULL) {
			stpcpy(d + dsize - 1, "");
			errno =3D E2BIG;
			return -1;
		}

		return p - d;
	}

> linked from Hacker News:
> https://news.ycombinator.com/item?id=3D40967069
>=20
> I read the man page to learn about memccpy() and noticed the ambiguity,
> then found that the POSIX description seems better.

Thanks for that!

> My interest is
> improving the man page, not fixing a problem that affects me..

Good.

> [...]
> > > +.BR memccpy()
> >
> > Missing a space here before the ().
>=20
> Oops.
>=20
> [...]
>=20
> > > +bytes are copied, whichever
> > > +comes first.
> >
> > Please break after the comma.
>=20
> I can produce a new patch if you like, or you can modify it as you
> wish before applying it.  Do you want me to produce a new patch?

Nah, I'll amend it.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--spexixgnox775zvs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaVoosACgkQnowa+77/
2zIsnBAAphgy8ZmWvE7Oks0/Nr34uKlxEFjWHf6NCEZ1ge1vfZTH6iAtMKux93Uk
R0hpb7YR2tZI8Bs3ejb7F0SDdtGdQbei3+RKZkuqYMgk+Xk1xG/ydpEZo9GU7cJ7
xA+94c0mXtCFdZTsHkQPMQp61YgCTfUm5lfzzVZ5uvsrCeMhgJ1pmvmRD+bXdRfC
ZiR7weqSwQ/8GEiS89AR6f8XLYgEiiymRLwk90r5Dr/hewG8DRC6Ga+VJpXd732T
lzDExKSqNXlRmhhIZhvvi4mDjUYcYRb+2KSnvLdYFl49uTm6vr87w+6/ZCv4TU6Y
Vw6PTaXSTtIUBZOeOj9LUdYin0vYTfQQa+iB3rruEUExOMy+xOiKOAD38I7ISbzz
CfxAlLpJfEKEIYQWHHv03GXjfB07H0jAjsbnfBy823ih3dI6RnXyb8XJrckv9naY
VvwXCg1sf8fdgstGU0NRYa2LICjQJNklTS2v3v7laatB1NDpgupUtBswpx+GJCiF
qz0rmmiWtlAm1IJp+lfBFaQSJ6cPM6sIm13amK3IRIYJOWKCtVCAPPPFpwpJeqSR
pQ5EVI6bQOUbrJwn+ujwEeiWTGDgBSI9X6tVEiGvOjlVDhqQ6tKN5VJadaMpqZV7
M0numU2wP614sPRNS9iTyBFdxfAPTGMwFlI9VVI0iCuayxol7mM=
=kqbk
-----END PGP SIGNATURE-----

--spexixgnox775zvs--

