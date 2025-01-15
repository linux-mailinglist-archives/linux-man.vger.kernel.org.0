Return-Path: <linux-man+bounces-2238-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FBDA12926
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02AFE1612E6
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 16:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0FC192D69;
	Wed, 15 Jan 2025 16:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4EqfNVl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE991304B0
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 16:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736959670; cv=none; b=FlODNWHuDAeNDyJFtzJs68ncrSZUXff2WJueJABpLoB0m4YjQ8p3pS7NkW9Y4EtNYD+Ot7/hIZTnVyGmVDWIyBW3iQ1eJQKifP+6QOj+RlLrSnl7hMAgLYvYqfEvZwM0YElO8HZM3qaYSc8nLw1p9azx6iKbmexq9BLQykDPB9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736959670; c=relaxed/simple;
	bh=HT+B+wegoilDrgdtGX9JuckRHjMoRthJRX3gKnP6Qf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PsSibAYDYhxKoq64C5w3ClyszMWPuUN2LZQNUsZh0Ifm/eZ1/HlA8119dJ1xZRD4wMGXWrCpQPKvd42LkvrxmgDPRqSwBWc61duRAOJP/mfGxam9nU4w3aq5RDxpEwm8KxqZ2fP3rPJaGm0L7w3ogdTOid1amfWdjhTNrU49v4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4EqfNVl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C37E6C4CED1;
	Wed, 15 Jan 2025 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736959669;
	bh=HT+B+wegoilDrgdtGX9JuckRHjMoRthJRX3gKnP6Qf4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r4EqfNVlrgo7YwFCNmxVXVAWM6YcEH3hks8pVf6Qee13InvQkIkIGgghTjBqQli40
	 XEFQqs69S7DsDJjiNfqIxJwPfEBsxxpg1ND45NJpvrjuRPWDNwsPnZKFm1YJos4SIN
	 2yuLeSfv9q0fwbX/gptZnJfobAnG9qd9SPuUoWRu4K/jrJBbebGaY07IJexSjFBh7H
	 b9beklYYHf8yKQgHA5fklnZMEOF151wzniX47ThDLfnqRcwzTlhheFccvTVMmLuYhW
	 YgQB/mT7hr1gbOfy+9v/OUbmE6LIXChvOvGosPyoNhvFXcVakYIK/n89y9SpV/yEdv
	 Z8HaeokIpS/2w==
Date: Wed, 15 Jan 2025 17:47:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <btbgsc6gxcspjihye3nm6wippj433j6qwdyxi6mqsyujer3s5k@o4sgqstgofmp>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
 <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>
 <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7uyt3d2u6oysftul"
Content-Disposition: inline
In-Reply-To: <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>


--7uyt3d2u6oysftul
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
 <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>
 <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>
MIME-Version: 1.0
In-Reply-To: <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>

Hi Jason,

On Wed, Jan 15, 2025 at 11:21:02AM -0500, Jason Yundt wrote:
> > Makes sense.  How about a null-terminated string?
>=20
> The term null-terminated string still has some of the problems that I
> mentioned earlier.  Specifically, people think of null-terminated
> strings as sequences of characters.  It=E2=80=99s easier to understand ho=
w the
> kernel handles paths if you think of paths as sequences of bytes, not as
> sequences of characters.

Hmmm, okay.  Maybe I'm too biased as a C programmer, and this being a
generic page for users it makes sense to use other terms.
=20
> That being said, I think that you misunderstood my two questions.  You
> told me the current state of things.  I=E2=80=99m not asking about the cu=
rrent
> state of things, I=E2=80=99m asking about a hypothetical future where pro=
grams
> started to =E2=80=9Cassume the Portable Filename Character Set (or at mos=
t some
> subset of ASCII), and fail hard outside of that=E2=80=9D.  If we start ma=
king
> that recommendation and programs start following that recommendation,
> then it sounds like I wouldn=E2=80=99t be able to do anything with a larg=
e part
> of my music collection,

You could rename that music into something usable, and then use it.  :)

> and it sounds like I wouldn=E2=80=99t be able to use the
> symbolic links that are in my /dev/disks/by-partlabel directory.  Am I
> understanding your recommendation correctly?

I would be happy in a world where all tools are restricted to the
portable filename character set.  I once toyed with a patch for
enforcing such filenames in the kernel, just for fun.

On the other hand, I see the usefulness for others in programs trying to
work with other stuff.  So the manual page makes sense, and I'll swallow
my disagreement.  :-)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7uyt3d2u6oysftul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeH5rgACgkQnowa+77/
2zJNOQ//U6chffQIvBIIVaTuSm0NVsJ34xNyAojmjQXda/Xj+dVIu9aRfV1Wn25H
f/tImfY1ZfbA5k/TxzIfjFoIR4dxyvex43CIYOds/TVMdSrUn4XR2zEenJ0ltVK6
uyOeaF8QAoeFftz1voQLAuor1Mnnfm9TgeJX04MqBWQVOVDJIa1EGRdNxynq77Rf
I0RH0FeJkHV3fsbw75/l0osTjDTVQAAMPz0Iz4lVitfw6tK7yK6hINqzN5jKcKLk
Vih2RxVdhEUjHNI05enw8YO4MPpzCc5341wIliV8ihmce0jdWhnbxkbExXqm2vWq
HGY9xPTqy1x6D0SKDfnL1SoAv+oE5bduy/TyJlgb8H4PTgUYXG2fTJRFDPureOX0
N4C1GhVICTbhRvaRsCi8VgA3NW0o9upT8DiDZpwvIzEk9RIs8CXBhbjD3VmN9aX2
uv6LqZKL1o/ln8IqFfQ/i21X1mYXYCqZTWf5xAuHuE/zPU3dQtcZoR44GV9byRL7
NL0nORWfdVRUg9yPPwRoASFyfRnbsqEnU4TwLfHJu8eRhGnEvWdVFrtZNo2tFawP
p9qYYogL5NXHlY2kogPQSvxS7JFM517GWjQodBtW0gkb2EJ1C1GCGWlv38JK/MPa
ndzPTLj4F1r+ZSoM1fsx4i9Xbcs9V0ZgEGkKuVHe4+I7TPIHnjA=
=6i8o
-----END PGP SIGNATURE-----

--7uyt3d2u6oysftul--

