Return-Path: <linux-man+bounces-2373-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5408AA2DBC0
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 10:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2709165690
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 09:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCA5146D6A;
	Sun,  9 Feb 2025 09:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRPDjeH+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10693FD4
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 09:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739092565; cv=none; b=uvIt7s0msHu2xIq50kXc8Ru4Wzz2plbc7+Jcq28IG7E6hGe8LZXwd/zg9mslTHkx4+Sioe2Tque3TEOkhWtHWz1Go4lGHdU6AqRcpw9JsTtu6QaKuYj7o6NoAze26BVkLmW0onsZTCQIfQikVrYquT96g3qtqU6UdtPLIQPky4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739092565; c=relaxed/simple;
	bh=G9see2hCdJDOwgYMkKi0eU85JEFgAJXuCNScM5Htbns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uqi/Dk+gy3Zt7WmONv6YGi0UCA7buylJ8soSq99BN2re7w4VLinwdjf3CsRk4I8bu3VTGanrhDs6RLHYdm/k00whUgz3hBv7tdjrgV3f0YbfisHfC313xLeVi8fa5u2nAH39grCgiqDpnO6KCcV+ExMTOGAbepBo+1pJazXQCKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRPDjeH+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E84C4CEDD;
	Sun,  9 Feb 2025 09:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739092564;
	bh=G9see2hCdJDOwgYMkKi0eU85JEFgAJXuCNScM5Htbns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rRPDjeH+1+asF1TjOzs58DMlh2ntW4zyJLYBHwrvEqMuyElZ+dK1R2smG2Sb41cEL
	 osOZaZOZnfaqkDL+pPG7H93Atctw+Rf/1rM+/8DyvXdwMEj2HMayLXL9ajfgMcXtqB
	 nketP2TaGI2R3kwXvEMH+TDOM8BbPzsipakCsCbCFoemxSTrQglaKDEYwJ2ql1TJKX
	 0F/JnYvo/gHd6Z27FbowGRkUVvqD9KcvVAsDN0EnWXh16bCQIKvui1vRZi1Jt2ZrbN
	 F5HCxY14vw0abdZhtm05eQk9ymg7U/zXYuM/JRvv3WqqqWnAX/JOWxg8JXSU40d/WW
	 gHGsu8yThv2eg==
Date: Sun, 9 Feb 2025 10:16:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
Message-ID: <on3wt75buovfutl6n5slbmymcav4mkwbm5siexkbt5wxkuidws@pamis2zxekjq>
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
 <qrlytrdkrmaebyntohfmnczxjgzdoky3jxtilghgxe6ookw5qk@qfkxpzlu3bbf>
 <CAMdZqKHLX0LeHNxKxW94LugHmrk52LrG3SOLG9ObzYzED+hwvg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dfbbabvtjnsoy3av"
Content-Disposition: inline
In-Reply-To: <CAMdZqKHLX0LeHNxKxW94LugHmrk52LrG3SOLG9ObzYzED+hwvg@mail.gmail.com>


--dfbbabvtjnsoy3av
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
 <qrlytrdkrmaebyntohfmnczxjgzdoky3jxtilghgxe6ookw5qk@qfkxpzlu3bbf>
 <CAMdZqKHLX0LeHNxKxW94LugHmrk52LrG3SOLG9ObzYzED+hwvg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKHLX0LeHNxKxW94LugHmrk52LrG3SOLG9ObzYzED+hwvg@mail.gmail.com>

Hi Mark,

On Sat, Feb 08, 2025 at 05:25:33PM -0800, Mark Harris wrote:
> > > - Calls to these functions are not technically equivalent to any
> > >   clock_* function call; at least the return value will be different.
> >
> > It would be interesting to clarify if they are equivalent except for the
> > return value.
>=20
> The clock_* functions also specify that errno is set to certain values
> on error, but the timespec_* functions do not guarantee this.  So
> instead I just state that the time and resolution are the same.

Makes sense.

> > >  .SH RETURN VALUE
> > > -On success,
> > > +.BR timespec_get ()
> > > +returns the nonzero value
> >
> > I think I'd remove "value".  What do you think?
>=20
> Ok, if you think that is sufficiently clear I will remove "value" and
> s/represents/is/ (below).

Yeah, that sounds good.

> > > +.I base
> > > +if it represents a supported time base
> > > +and the current time was successfully retrieved, or 0 otherwise.
> >
> > D'oh.  Someone designed another non-standard return value.  <facepalm/>
>=20
> I agree that the return value is unusual, but of the dozens of
> interfaces to get high resolution time we have finally stumbled onto
> one that Linux, BSD, macOS, and Windows could all agree to support (at
> least for TIME_UTC), and the unusual return value is less ugly than a
> bunch of #ifdefs.

Yeah, that's good.  I'm just complaining that these people could have
just spent a little bit more on the design of the API, and returned a
0/-1 code as is usual for standard APIs.  Returning the base is just
nonsense, because the caller already has it, unless I'm missing some
weird use case that they had in mind.  :)

I see the revision in my mailbox; I'll check it in a moment.  Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dfbbabvtjnsoy3av
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeocnEACgkQnowa+77/
2zKhwhAAn2DAQ9prEPhsjCIeO1LJWsb7QJcd9x2dPpV9Qt2T9shIOITZyJtCRnHi
p6HAmcy778HdSTYbQ8AHvyTmkMtlKxxl2RjkDURs12+izATPCl1eMzUvxO2E0TMk
oTxv3PYnHUkNkun0wkqaxjFWZ8SulKwkrfzVSNdW6+DqnPQXn8I4UxEQp515odxN
rJIKKe3jNQ3SnwyBXIPELIAJEoIz5I2YdcuoQT2vDlyI8tclRZuaXBX0NSoMhLXe
DFFryawbVw9qPy1IeED0EZYRJlmVojQ8R7HRUpuoXsPgo0riZBEt4Xqreuh1JI3D
3LPFznnqXG30p5C+yOFZFs6pKUFYQV4MSAYS+kh+4YkV5M8zDDJMKxe7nwrx1x3y
bfBuCN1BAwWbJKCUW23W9rqU9Ut3w6BRhy2GzLqFmejp9/WmUof2oCbWDM1PrTcP
vsUos+wZHSwf4cEp4lk+wsEqapU4w6jQcHD6QxSnUkkSmmLbFSzBisrHcsuW1LfV
lYblrwxZkOsYXTD6Eise22gtRqdsYSnOEB+WSrTXs8LlJsU8R5J2/Glm+qu+cjQR
YzNGNx8o4GE5oyfkujPQkEYX/rGiiAnr4zbjFfpsGUeNLv5hGpqjmazr3mMjxI0J
OYcHOMYgweowSk9AlMUXy3lOCF3r2BeiT93IJxXy4m7C+eNkUOo=
=P/+x
-----END PGP SIGNATURE-----

--dfbbabvtjnsoy3av--

