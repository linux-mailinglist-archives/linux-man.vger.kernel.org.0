Return-Path: <linux-man+bounces-733-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7478A2127
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 23:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 535091F21387
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 21:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA6D39AC3;
	Thu, 11 Apr 2024 21:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLkTMfjK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED4F9DF
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 21:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712872517; cv=none; b=YECjy1B/W3z7EkUj5GKcIrIg4Lf+KGugOvSdrajfSoX/JEK0GWzp14HA8j2t2q+XOH4Ad0ZZ+9qEG7e3mLKyuCMQz4bs1ilYGTwOUOlvJ0UQA3Zj2KElwKi1reQqVkv5NxkJT4R9gwWpbJBOo5MrPso7in0Sxh2FZvoM2j0J4lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712872517; c=relaxed/simple;
	bh=aXNKQ/oL4aLh5Gmo0l0bwexaQOxNJISJwIf6JHLRmpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bQqpk9puTaGwE2tbJ1Gvl7ojSTWYpkNr+9EM09ttScjSCY/RJiKnFjzjAlbhgozXwudtk5AaMiOqzyMWs4dgTiWNYLeX4kMb9PdQUDap10ufeNU5zBk9Pwa7NaDxeS/A69PlRD6naEntjciv2kbbASnUfE1YZ96/LNWCaNqltNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLkTMfjK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F3C4C072AA;
	Thu, 11 Apr 2024 21:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712872517;
	bh=aXNKQ/oL4aLh5Gmo0l0bwexaQOxNJISJwIf6JHLRmpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NLkTMfjKEZCsgdAxwHfkQFbs3q9kZlDv6MAgcohP0sytJUS7ppZ0v4/O8vZjZings
	 pv23pu+n1jCrRFHSZU86Yvz+OmUgBy8EAO+TRIMgG+yQO6Uyk+JvYX8Hfrn/voBjBl
	 /sgibyyeE+U3rmuWi2blLqjXN2yYEwlU48YwXKeTTREgKZOSMFXCNRhqRDTlD+nNvo
	 rJknzV14jg+EuTpBAd7HEkm7ZrvmhZQhATZBS6k0XWqNNUr4101+x/OsNFSx+FoBPu
	 t9QNxxtG0Eq6qH90OVONRHpzUc5XGeprdPefyXnQzs4Z8Ww5MZZiP3gu7n5bYV+2kN
	 PRJc6XfY+1qRA==
Date: Thu, 11 Apr 2024 23:55:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 218711] New: strftime man page incorrectly claims that TZ
 is used
Message-ID: <ZhhcQh03Uf6XTaLw@debian>
References: <bug-218711-11311@https.bugzilla.kernel.org/>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0EflCXJzSArJ+FMc"
Content-Disposition: inline
In-Reply-To: <bug-218711-11311@https.bugzilla.kernel.org/>


--0EflCXJzSArJ+FMc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Apr 2024 23:55:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 218711] New: strftime man page incorrectly claims that TZ
 is used

On Thu, Apr 11, 2024 at 07:44:43PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218711
>=20
>             Bug ID: 218711
>            Summary: strftime man page incorrectly claims that TZ is used
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: gharris@sonic.net
>         Regression: No
>=20
> The strftime man page says, in the ENVIRONMENT section, that "The environ=
ment
> variables TZ and LC_TIME are used."
>=20
> strftime(), in Linux, does not use the TZ environment variable.  It is pa=
ssed a
> pointer to a struct tm, which contains a time stamp that can reflect eith=
er
> local time or UTC, and formats a string based on the values in that struc=
ture.=20
> If the structure reflects local time, there is no need for any conversion=
 of
> POSIX time to local time, so TZ is not used.  If the structure reflects U=
TC,
> the string will reflect UTC, meaning that, again, there is no need for any
> conversion to local time, so TZ is not used.
>=20
> TZ is *indirectly* used, because, to quote the Single UNIX Specification =
page
> for strftime(), "Local timezone information is used as though strftime() =
called
> tzset().", and, to quote the Single UNIX Specification page for tzset(), =
"The
> tzset() function shall use the value of the environment variable TZ to se=
t time
> conversion information used by ctime, localtime, mktime, and strftime."
>=20
> The reason why strftime is mentioned is that the %Z format specifier is
> "Replaced by the timezone name or abbreviation, or by no bytes if no time=
zone
> information exists."  In systems in which struct tm includes the tm_zone
> member, %Z can use the tm_zone member as the timezone abbreviation, but, =
in
> systems where it does *not* include the tm_zone member, strftime() might,=
 for
> example, have to fall back on using the tzname[] array and the tm_isdst m=
ember
> to select an element of that array.

Hi Guy,

Would you mind sending a patch to the mailing list, according to the
guidelines?

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/mail>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches>

It would be wise to CC Paul Eggert <eggert@cs.ucla.edu>.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--0EflCXJzSArJ+FMc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYYXDkACgkQnowa+77/
2zLmfw//USy5JeL5kIAwPw1o+NG4gbPSPQPAVqTNDysInLNnF+IqPshsg3LhcPCg
1QgO9lq84wX+Z4O3PCBvzQyP082H8yunSjsBtvMF9CvbApxMfYW6oaYC2D+RqaK2
bmaV5fuYJht4KZZnkYiQCwJO0sFUFf9KXhi8RzUdwgPHnELoNmudd0tFEDC8MaSs
0zkyMbpZ9iMzXRawUD7cYwpFlSinnjyaNqTtskUJ0tp2yq3bz+diQUMXdsxJlyKZ
U6D+rLNEzQ5Nu2/kLvdU16hITTDewPcatLRVchf5ApAartoPpEEogT/r++QvK2Eb
8H5MelfM7/7qG0bp4D7Y2RGqHpTukxNyAlc6igXm1a+UsJeoxlwVp2qOJ51KPQsy
HLRuGknCKNjVo/IKMhf1lyESIc9/DpbVRu3OY7yJbMfmLmbXmhWZaO8dABudMAsP
9pB/ufc+eqYga4A4b/RuBTU/gYevW0GHsrxLmHXEEHtHm/aDITeqiuuBri8l6wmZ
5vcWKQ2tHcJ/Mx+FOpH/k/i5pgydn3IA/moXKXzCCgDKJ+w1pgmd+mX4DQvVmyea
AxU0LvhRSsKAXaDj8PgE7dGalFVQGW+LyWZ97IIgFO6tQw1JEdCf/ATfakLR9lTl
v4XkoLfuzNvPZ0ZMRPSE/Aqbji4Lfpw15pXohyXb8kd/7wWyAtY=
=dbsy
-----END PGP SIGNATURE-----

--0EflCXJzSArJ+FMc--

