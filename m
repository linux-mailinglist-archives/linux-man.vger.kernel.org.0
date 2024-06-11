Return-Path: <linux-man+bounces-1127-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F321F9042A0
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71D7D1F24AD0
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D26351C42;
	Tue, 11 Jun 2024 17:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfA2LsAv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3C6482ED
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 17:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718127836; cv=none; b=YRl6aaAGPvGjpkDZDm767EiVACz/F9elp8U+MsS3tbHDWwKfQfs33ycx/galiU4f95jmKoVYLhV9lSO0zIMignRbYDo5zp7ibjlE9P3NJ6AR6E8o+nN66zrXo17qkRuN37Rwz+3oInqJdEsSTJ6b8/itqdBdPBmhHKBDswnVSVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718127836; c=relaxed/simple;
	bh=MPfqLUFSXHEg+mfv4kjzMbzKhhn9l+CDed/bSox/2+g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q62BFmPgsRdUrh6MhdMd1ZYIyDEYWsJ3dNNmxAMZK/prxGij6BQa+J0gEZBMFgXxbTysuOJq227cmUmp8efE5R4kS17H8SkA3haKDujXtrJqxYaxZ85B/jhXf/m1ADkM2vCLokMWI39D8Edaq7qp2f0SvxoNqwHFQvS4oRC9tZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfA2LsAv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 039F2C32789;
	Tue, 11 Jun 2024 17:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718127835;
	bh=MPfqLUFSXHEg+mfv4kjzMbzKhhn9l+CDed/bSox/2+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OfA2LsAvoSRYvQdICGvNCbYPGh1yJYLcFrUAY0vsQiC12vTpWS7u123MKSPQkiCHO
	 FeSRNC5+6JFnozZnXeSo3USL5zOklhujmUJdOdBBPRdVkH1Obuqll0LHD2PcEItwV+
	 oAfVG6f055RKW06v+JBRRX9dsX+exMAGKn4Pc+ajjrWnytrqoqntD378+BrQMYI48q
	 6TnnWvuzINfiwZOI0KVqsnLzTHbp67sxpnZ78ic0vE416Mb9unONAOItP2Csbdzo7z
	 8DrYK0n46S+fc7inKYKNXHsheosOnmcAj0B++QJRh3FWueg88mPYrjRq+N7r6Tcl02
	 6hmru4VE3FeCw==
Date: Tue, 11 Jun 2024 19:43:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <hjkeoyc4wa5amugp4sdbm2b4y4zxbgv4lie2ezyctagygnaetj@mjghmuldnpna>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
 <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>
 <ZmiJUHI9PHV1Osge@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pfi5mkhr4e4r64o2"
Content-Disposition: inline
In-Reply-To: <ZmiJUHI9PHV1Osge@LQ3V64L9R2>


--pfi5mkhr4e4r64o2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
 <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>
 <ZmiJUHI9PHV1Osge@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmiJUHI9PHV1Osge@LQ3V64L9R2>

Hi Joe,

On Tue, Jun 11, 2024 at 10:28:48AM GMT, Joe Damato wrote:
> OK, I've included it twice -- once before the ioctls and once before
> the struct, with a comment:
>=20
> .BR "#include <sys/epoll.h>" " /* Definition of " struct " "epoll_params =
" */"

No comment here, please.

> .P
> .B struct epoll_params {
>=20
> Hope that is OK! If not, let me know ;)
>=20
> > > > > Changed this to:
> > > > >=20
> > > > > retrieve on each poll attempt. This value cannot exceed
> > > > > .B NAPI_POLL_WEIGHT
> > > > > (which is 64 as of Linux 6.9), unless the process is run with
> > > > > .B CAP_NET_ADMIN.
> > > > >=20
> > > > > How is that?
> > > >=20
> > > > Much better.  (But still needs to use semantic newlines.)
> > >=20
> > > Hmm, I need to go back and re-read the semantic newline email because=
 I made
> > > this section look like this:
> >=20
> > You may want to also read this commit:
> >=20
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man=
7/man-pages.7?id=3D6ff6f43d68164f99a8c3fb66f4525d145571310c>
> >=20
> > It includes a quote from Brian W. Kernighan, which is a little bit more
> > detailed than man-pages(7) about it.
>=20
> I just read that and will continue read it a few more times. I will
> try to better understand how to format the man page text as you've
> explained.
>=20
> Please accept my apologies if I've still gotten it wrong in the v3,
> I'm not quite sure I've totally wrapped my head around when/where
> are good places to wrap long lines that exceed 80 characters.

No problems; if there are only a few small issues, I'll fix them while
applying.  Otherwise, as long as you're patient, I am too.  :)

Clause boundaries aren't as easy to spot as sentence boundaries.
Prepositions are usually good places.  'that' is usually a good place
too.  Separating the subject or an adverbial group from the rest of the
sentence is also a good choice.  But it's in the end a matter of taste.
It's maybe easier to see the places where you wouldn't want to break it,
such as:

	the maximum number of packets that the network
	stack will retrieve on each poll attempt.

because 'network stack' is an noun group (or whatever it's called in
English).

> > > .P
> > > .I argp.busy_poll_budget
> > > the maximum number of packets that the network stack will retrieve on=
 each poll attempt.
> > > This value cannot exceed
> > > .B NAPI_POLL_WEIGHT
> > > (which is 64 as of Linux 6.9), unless the process is run with
> > > .B CAP_NET_ADMIN.
> > >=20
> > > But I get the feeling this is still incorrect.
> >=20
> > Yep; it's incorrect.  We have a strict limit on column 80, so you'd need
> > to find a good break point in the middle.  I'd say
> >=20
> > 	s/retrieve on/retrieve\non/
> >=20
> > (although there are other good break points, such as for example maybe
> > before 'retrieve').
> >=20
> > and also break after the comma.
> >=20
> > However, it was more correct than the previous, which continued the line
> > after a period, which is a no-no.  :)
>=20
> Thanks, I've made the change you've suggested above and am
> re-reading each line looking for anything over 80 chars that I can
> break on punctuation or any other clause.
>=20
> I have already broken lines at periods and simple cases like that,
> but I am sure to be missing a few.

Okay; as long as there's nothing egregious, that should be good.  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--pfi5mkhr4e4r64o2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZojM4ACgkQnowa+77/
2zLYFA//bClreqJ0kAkHcjEhXbElbjLrRzCKPBKAtYaLGBY8YTlk3nCZly0e1l7o
STBQo8tgk1/70iZmCuciUKMrX5KtaQcOjxK9thBiUc2dUJqj6u4zZ24liPjiA7zd
PodmLV6Ju0FQUETvFBqDpCoy3by4CKIhOZPckh9GrH/kt6+bPSc4eBTO07vueiUo
bVQaaJj9//Q5EKf8TcBvh6j7rTKPb5J8j7VljpgCBCdLCjl06WKVGcHQqSIapZgX
Azl33UMSfVptGeOqVv76ht6kY6V1UQGayxZjpGT/9iW30U0Fa/+iDfdIWrBOLwqN
jrAHSUHuwkKZKsudzfPFMle2ThEvCtywx7Rmvenoeom5KWlZp+S/R5/Ppf6z0HrQ
KhetLcAJCaJAGN71g8B2vdw2KQ/2zc9/jJBzNFcisayQrKuSaVV59YVIaV/bN7sq
zNrzaomDWvU8ANHiEe9f43BEgVtELdFXt11kCNFsi2dXTleUJRiEG8mVHES03NIe
r9vYeJwQ279gnDgEj47H+6T69Hg9m26rGjyh4OzEtjwHx0iTnski8RbTF9ZFaU3U
i/GqwN1EV+qA/LhQOqr95nsnz6MgjP900ZrGNHTVNLDWwD/6yKyhzI0TAHkGIDmt
5qgQyHSj8bhvgMdnu99gA0OanEGdUQ2Rkq+h6PQ/zlZlS2/9cOo=
=YsXK
-----END PGP SIGNATURE-----

--pfi5mkhr4e4r64o2--

