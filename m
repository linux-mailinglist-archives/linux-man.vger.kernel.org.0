Return-Path: <linux-man+bounces-1679-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1287B95D536
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B125B1F214F1
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 18:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260A01922D7;
	Fri, 23 Aug 2024 18:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS4ppVnA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE2E190682
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 18:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724437064; cv=none; b=IqlMA1lJmzx9e491yEFlCJrhPn5MIBXqholf+O+l5QaqK86jOHzPOGjEFlqwiOcE8SZKEJjIvEoV7r5nd69tAyCKQvO8/CCmZQD0tgtwccLOy83lCZhYCwVTXeoJLRVmUEStKwJs2okyjkZNcqoPIlzY7cmZ5mB4HFfC7TMnnNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724437064; c=relaxed/simple;
	bh=LE37w6wpSR31leI7XLMS90VCFkg09vWbuAiBcRd2XJ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pPpHenqMzippY0nIsFUnhOFEip/eR+UfRtcSN7lEFL3soxxPRbT+tO3MYdZR7wERbLgW3uwcGWpubZoPnbVY3OrAIWzcbQ0yXwZr5hP8kPOHHidM+60US7QLrjuekbN630Oh6wIWb+TVC6oFCi9CmH0NIY+ycmzjLugP/oBg5XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS4ppVnA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD177C32786;
	Fri, 23 Aug 2024 18:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724437064;
	bh=LE37w6wpSR31leI7XLMS90VCFkg09vWbuAiBcRd2XJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mS4ppVnA7uTyAL3szUq/Z4VReVz9a5yv56jH7uWG8LAsuMm5oWDfbhtCb6yDBtJ1T
	 xbVn1FVzUu8HRhw2/lUSno51U3lAksqyMRc6jsYlsVxlMsKm4zkaEdqr3PB1VLqvBW
	 2dBhgOgg62mM9x1186blHxlCuMeH3o2uyor+nrET3rURcOvuWp08+LAJUGq8QogHfD
	 2B7rarLs77HmyfxcT5s5leX8JouNX0VnSNXp7vSq20U41wg5O6m0lP/EhKWukE1yGG
	 Yk1nH/HtG2dUJc/vELdVKyjRyVb30b9V1dLfp8eohc34z3Ibpvvcif7+l+R4YbcjVQ
	 CByMSYwpM3I4w==
Date: Fri, 23 Aug 2024 20:17:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>, 
	"Michael T. Kerrisk" <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
Message-ID: <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rv636jn6si6vxvfy"
Content-Disposition: inline
In-Reply-To: <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>


--rv636jn6si6vxvfy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>, 
	"Michael T. Kerrisk" <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>

[TO +=3D mtk]

Hi Paul,

On Fri, Aug 23, 2024 at 10:44:56AM GMT, Paul Eggert wrote:
> On 2024-08-23 07:37, Alejandro Colomar wrote:
> >      ++    if (tm.tm_wday =3D=3D \-1)
>=20
> 'if (tm.tm_wday < 0)' is a bit faster on typical machines. (There are
> multiple instances of this issue.)

I had the costume of checking errors with <0, and Michael Kerrisk
convinced me of using =3D=3D-1 because it's more explicit for the reader.
I now prefer =3D=3D-1.  I find that when I read <0, it's sometimes unclear
whether the author really intended to reject all negatives values or
not, and it also requires that I check the specific API to know if
other negative values are possible.  On the contrary, -1 is usual for
meaning an error, and rarely is the time when I need to check that it
actually means an error.

(And tangentially, I don't think anyone who calls mktime(3) will be
 worried about a single instruction.  But I see that this discussion
 applies in other places where that might be more meaningful.)

> > +To determine if
>=20
> "if" -> "whether"

Thanks.

>=20
> > +    printf("%jd\[rs]n", (intmax_t) t);
>=20
> This is not portable in general, as time_t might be unsigned. You could u=
se
> strftime instead of printf. But see below for a better suggestion.

Out of curiosity, in systems where time_t is unsigned, does a mktime(3)
call with a time representing a time before Epoch result in an error, or
is it stored as a huge time_t value?

Does any existing system (or historic one) use an unsigned time_t, or is
that only hypothetical?

> > +    tm.tm_year  =3D atoi(*p++) \- 1900;
>=20
> This doesn't work for the year 2147485547 (2**31 + 1899), which mktime can
> handle on typical machines with 32-bit int and 64-bit time_t. Also, all t=
he
> atoi calls silently mess up if the argument overflows or is syntactically
> invalid.

We extensively use atoi(3) in the EXAMPLES sections where we intend to
communicate to the user that they should add error handling and call
strtol(3) (or something better, cough) but that for brevity we don't.

The program serves to illustrate how mktime(3) works, and how its errors
are handled.

>=20
> To simplify the example, I suggest not doing I/O or parsing. Just have a
> function that accepts a struct tm *, and returns true or false and updates
> the struct tm when it returns true. That would avoid the issues with prin=
tf
> and atoi.

But then it wouldn't allow the reader to interact with the function as
easily.  They'd need to recompile the program every time.  We try that
example programs are interactive when it makes sense, and I think this
one makes sense.  The small oddities in the parsing are obviously wrong
so that they are not copied.

Thanks for the review!


Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--rv636jn6si6vxvfy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI0j8ACgkQnowa+77/
2zKPdw//dfOjBHLD3xtp6eMNKIqCeQRCOxV4odzeIPbPVF2ptlrTydHkm7GvQ+aX
4Ctiu6+jHZbTY8fgEV1DhU43v91ULTgR9ATRnPkYfcj6DezgX9NzDiPe5zm3EV/X
qh4g2sk/43FGVxG3rT3xtmxcRYz2FMT4GSib1XlaAncAZWRhH/flITEvdE9M96gq
cFM9iFGT+6j0iIJOGaOVy/8m48GdLxxg4/VRplGd4j2G9eRLaqrPDtvo+kFkXR0s
cLiHLQQZpZQA/yDehOZKzP8Pmv49k8rb7G5IcdXTnTJoYmsgDIoKYKOtcMI0IcGr
7Tc95eH7zIT6o1lZ0zkE2nLH6mzyZ3FBRcA7W/dYCdu4s4JItpm7nq9F9SuU3zl1
Tj/oGRtOAF7StKzlg41CSazknupJbGHMC66blj4/tq1nOyJkWQQ0EKwe7MUruHDI
A76oI5ixw56Nm5mwtuAbbLeFVHcU+kDAfmIePJqo9BGko0X6q7LeGYwTOlWuU3c9
D+Kqev4ju5GX5jxyk56WB1fWZmv1fYF8HyIO+Sx2sc9t8yWIP6zKoSaMQ7Ucw3Jf
uoltOdya+qC0Yxw3Vuv4gjFbu7NDNGUHa7hCSCNEoQG7oc4egm8hT5ioSXQPfEjN
igoYy8fe/clHL8DqESnhoK+y9/bb7Q8+vUGuI5TP3trpmlv5Xm4=
=VLO3
-----END PGP SIGNATURE-----

--rv636jn6si6vxvfy--

