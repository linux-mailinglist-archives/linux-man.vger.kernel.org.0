Return-Path: <linux-man+bounces-4336-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA60C8E2D2
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 13:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 19D6D4E3A7B
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 12:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2496832D421;
	Thu, 27 Nov 2025 12:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDEsWYeo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A55301718
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 12:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764245018; cv=none; b=SmiZJqtYvbSmxCCg/Va1XCCzGIbcWfb9tAyYTKMlzAc/X88mjxwtCaorO//9b3/ags+tZMu+1Tp2JwT+UhImtmWcGQdtMI8ecc7BE3Wchw0k2DxQlhprmgL0abZuiVPDJMTOZKOgP9JjzYotf8FDsKRzvhZRa1k2csVpmyzltAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764245018; c=relaxed/simple;
	bh=523Fefl21kbxL5mE2x8SAWJ6nNam0YQwlFfAq1cGL8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NP89/IQPWIXMhqCSm/2lfVTcChkfMOzp09RRK0+BhZIbohRfVXJle1rKe4LmjrgjYwK9BZuh7ve1mswKohZ8FxbcXMqrqerjhfuukspqGtteg4GKrWlUxZTqFYSPBcSIW+EuOC93vDhR7sD6ub7xgDYd5C67m7CFBDwpe/FMzpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDEsWYeo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF16CC4CEF8;
	Thu, 27 Nov 2025 12:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764245018;
	bh=523Fefl21kbxL5mE2x8SAWJ6nNam0YQwlFfAq1cGL8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PDEsWYeol/i5hmiUU3/UG1UaI6KRG0b5uD7rWw3WtZAwvgsr1ZCMIVnCvrp9rVdFa
	 6n3YAW7gN9eCTEI6Rog/kVTciz6vBv3tO/4GsUvvwCojhrCtOW4yQ1LoWEVRlOEwj+
	 +kF81KFJqjebNYGmP7/0eL2btO+YIIa6Xn0Taar1NIn0xjRHuBWZg5y7sxkW6crHLO
	 Xa0G0GefuaeV4tZ/ilALm4GjUQZ5il6dPK+utv6zj6EO8FHI0DtN5C7ZlRNv4BbEj5
	 6CYK9niV7PVyp+Qn6G6J5uCWFhk+xuiHZJ7FI3ttATUX+/RZeTdyuci62yCwnWhjIy
	 CIcKjL4DBwuqw==
Date: Thu, 27 Nov 2025 13:03:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yedidyah Bar David <didi@redhat.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man3/getgrnam: clarify possible errno values when entry
 not found
Message-ID: <o4ifxxealq5qkvj4k6jwkswiob5yaswxufk7gnoxx4lda3bryd@52dt72skwfyv>
References: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
 <qidkusrnwxbco2sqc6i2bxlh2teegyy73wyfrxgp2f2ifaot5y@sfupwcfhkonz>
 <CAHRwYXuJf=ZFFED=5ras5L+eH_L4tjdBcyxgwHkXMApQNVieLw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pdnudfqhysgvh6cb"
Content-Disposition: inline
In-Reply-To: <CAHRwYXuJf=ZFFED=5ras5L+eH_L4tjdBcyxgwHkXMApQNVieLw@mail.gmail.com>


--pdnudfqhysgvh6cb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Yedidyah Bar David <didi@redhat.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man3/getgrnam: clarify possible errno values when entry
 not found
Message-ID: <o4ifxxealq5qkvj4k6jwkswiob5yaswxufk7gnoxx4lda3bryd@52dt72skwfyv>
References: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
 <qidkusrnwxbco2sqc6i2bxlh2teegyy73wyfrxgp2f2ifaot5y@sfupwcfhkonz>
 <CAHRwYXuJf=ZFFED=5ras5L+eH_L4tjdBcyxgwHkXMApQNVieLw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHRwYXuJf=ZFFED=5ras5L+eH_L4tjdBcyxgwHkXMApQNVieLw@mail.gmail.com>

Hi Yedidyah,

On Thu, Nov 27, 2025 at 08:34:20AM +0200, Yedidyah Bar David wrote:
> On Thu, Nov 27, 2025 at 2:28=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
>=20
> > Hi Simon,
> >
> > On Thu, Nov 27, 2025 at 12:19:20AM +0000, Simon Essien wrote:
> > > man3/getgrnam: clarify possible errno values when entry not found
> > >
> > > Update ERRORS section to clearly separate the POSIX-mandated '0' retu=
rn
> > for 'not found' from the various non-POSIX errno values encountered in
> > different UNIX implementations.
> >
> > The patch does much more than this.  Please send separate patches for
> > logically separate changes.
> >
> >
> > Have a lovely night!
> > Alex
> >
>=20
> My gmail account classified the original message in this thread as SPAM, =
as
> well
> as the other message from this sender.
>=20
> I looked at one of them, thought that gmail got it wrong and pressed
> "report not spam".
>=20
> Then I looked at the other message and started suspecting more. Searching
> the net
> for the email address strengthens my suspicion.

Thanks!

> I suppose the recent discussion about preventing use of AI for submissions
> didn't
> help much so far in actually preventing these, and stronger means will be
> needed :-(.

Yup, I'm suspecting, especially after v2 is also crap.
I've also seen a patch from someone else containing an example program
containing weird UTF space characters that don't even compile.
I suspect that was pasted from some AI chat.  We'll have to be careful
about it.

About stronger means, I'm not sure we can enforce much.  I'm open to
suggestions.  For now, I'll remain careful and skeptic about anything
that looks suspicious.


Have a lovely day!
Alex

>=20
> Best regards,
> --=20
> Didi

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pdnudfqhysgvh6cb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkoPhYACgkQ64mZXMKQ
wqlrgg/+PpmBFmQWcnM7SKE4NbZ2Kd3/w7x0ZcZwhGA+IKEuuwFBqQ3DE5skz5c5
IY1MYjnPHZOoYl5ke7ZY/6M2jVfqxMRYnE6zLS/ItOUJwEnyIHQHOUFoh3dIy+/M
vgmCLDliwKyoJAJpw8XQe8jS3S/XAqK7Ia9isyGZD7DqsKus6JegvVGU8IiZlumI
+EXe1lZDwsBuoT0wf6K3AyCWMm8j7aN9u9t6nqpWN8Qlljh9i0jNtct3//pyNcA9
9xqyNGyEWeqVZ1uI60woLohUgnh/OPQMfEM2u7E1QUKZ5kUslxpPhI/DSl8D0cMm
myLA+TqTTwYgf9OyPHFhLuo29zpzNvK844SIL0sovTvCMCfOOyyjYEc/i27VJbMP
odUM/FT3CjgohZbWmWMBNXJttYtLsoWkw0xhnO8xF5In0TLNDm3FJn2iapnfMZ8w
FKEQXNHVQV2uIaMju1v/O0MUivqXssBcRO63pKbgi8aNcv/A5RhSZIxyRcrfpBD6
anXeizWIcr0vLvPk5usQyXNEKXwxbBRZ2QCQM2EZxKWbrqI/cuz+uPGOp9NLvTq8
07FdO7afvcsFjGwsYO2eon9P2d7JULxn1DHCbk7KYUKr4aM3jmi/tF8UOwIkk5On
HmaC3gi6+Tv+PEID7AdLGpmlviq93rmYLjm5X9w1BvMFSgXQsjg=
=d2e1
-----END PGP SIGNATURE-----

--pdnudfqhysgvh6cb--

