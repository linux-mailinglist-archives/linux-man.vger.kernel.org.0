Return-Path: <linux-man+bounces-1678-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E095D4A9
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 19:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9CE81C20E82
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 17:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887A818F2F6;
	Fri, 23 Aug 2024 17:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+8p5KvB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497EE1885B9
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 17:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724435294; cv=none; b=rnXe9HaiX7eWQHOivvbf5UGBsdQ6hI/G6gtMNBm0+K2MR8QdkO7RWz+t0qPkPmZ97B5hRSzMqFUw95jTa+rYkghZyLiiPbdHk2i5dQL+vEH2qHpDG6Ih+DhXLPQlgCuhql4z7tNt4dtiIu+LXtW/JUNo+eeXoBMLR95i9d0aUWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724435294; c=relaxed/simple;
	bh=r4Xtt7eBSsWKqN3+VIbL5/SqwYYiE09G9X5wE+1qB2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YeW31xwaL6DGQi2ASjfG1KZ3ndMP5pf2NM3CSyjV9W38mowXXinKIKCAM1ZHyL9x6tWXSq2GwA7k2uS2itlUpjpY29j8kEHIoPjFZYDulmsn+wLYTmKcYAwugaUjn2PKUeXfUvtKjZU9fXGD0pve7WxBmngR0lANlXAPACVDTJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+8p5KvB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53104C32786;
	Fri, 23 Aug 2024 17:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724435293;
	bh=r4Xtt7eBSsWKqN3+VIbL5/SqwYYiE09G9X5wE+1qB2w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E+8p5KvBOesH55/2J2UAgwtmaAi2YAYEz72L6KLiTB/HiPQ7OW3lNL/KN7bvvHRiN
	 DxWd/6Ky/906EhtO/RP7gKBJ6Tv4P+OlSXuEynYXggnuYtPDzViEeukChvUzJLLsAW
	 T7Z1aFrQdTLgcYlBxcWWPLHd+5XZUgj2fqzq6WCUHEfpWyYJiRhLvoZYYc/2qiJzyE
	 02qRvmjiYMdE3aUyXQJpFAQyU0beDpfXMZ7maREtw/MXCLMz+9PUh5xbGsv+Xp4h/A
	 /RyeN9rkU2TL/DfsgjJhC5E8X4Bd6sWvcGqEMPqAkM4j6gRB8bgyNjGBH/Lpl7dISv
	 Bw/gWfPgFw2EA==
Date: Fri, 23 Aug 2024 19:48:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, Vincent Lefevre <vincent@vinc17.net>
Cc: Xi Ruoyao <xry111@xry111.site>, Paul Eggert <eggert@cs.ucla.edu>, 
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, 
	carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>, austin-group-l@opengroup.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
References: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dcvhh5z6ssbmelji"
Content-Disposition: inline
In-Reply-To: <20240823152617.GI2713@cventin.lip.ens-lyon.fr>


--dcvhh5z6ssbmelji
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, Vincent Lefevre <vincent@vinc17.net>
Cc: Xi Ruoyao <xry111@xry111.site>, Paul Eggert <eggert@cs.ucla.edu>, 
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, 
	carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>, austin-group-l@opengroup.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20240823152617.GI2713@cventin.lip.ens-lyon.fr>

[CC +=3D austin-group-l@opengroup.org]

(Although I'm not sure if that mailing list is open.  maybe it rejects
 mail from this account.  Please anyone bounce it if you find that it
 doesn't reach the list.)

[CC +=3D Robert, Geoff, Andrew]

Hi Vincent, Robert, Geoff, Andrew,

On Fri, Aug 23, 2024 at 05:26:17PM GMT, Vincent Lefevre wrote:
> On 2024-08-23 16:18:21 +0200, Alejandro Colomar wrote:
> > Hi Vincent,
> >=20
> > On Fri, Aug 23, 2024 at 03:54:49PM GMT, Vincent Lefevre wrote:
> > > On 2024-08-23 15:12:16 +0200, Alejandro Colomar wrote:
> > > > Looking at the WG14 document logs, it seems it was added in n3147:
> > > > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
> > >=20
> > > Thanks for the reference. Additional details can be found
> > > in CD2 ballot at
> > >=20
> > >   https://open-std.org/JTC1/SC22/WG14/www/docs/n3148.doc
> >=20
> > It's interesting that WG14 claims that they're not aware of any existing
> > implementations that would modify tm_wday on failure.
>=20
> AFAIK, this is not a claim from WG14, but from the one who submitted
> the GB-159 comment. The claim is

True.

>   There is some existing practice where application code sets tm_wday
>   to an out-of-range sentinel value and checks whether it was changed
>   by mktime, and we are not aware of any implementation where this
>   does not work.
>=20
> and this is rather vague: we do not know whether this existing practice
> is common

=46rom what I can find with Debian's <https://codesearch.debian.net>,
there's more than one.  Still negligible compared to the amount of
bogus checks comparing the return value with -1, but a decent number.
I'm not sure we can call that common, though.

	boost
	python
	ceph

And one project has the redundant code suggested by POSIX:

	pypy

> and which implementations have been checked.

Robert, Geoff, Andrew, can you please clarify?

> > Although it's weird, because WG14 attributes that claim to the Austin
> > Group, and
>=20
> The comment attributes the issues to the Austin Group, but perhaps
> not all the details.
>=20
> > > which references the POSIX bug
> > >=20
> > >   https://austingroupbugs.net/view.php?id=3D1614
> >=20
> > I don't see any discussion about tm_wday in that Austin Group bug.  :|
> > Maybe it happened in a mailing list or elsewhere.
>=20
> Yes, perhaps in the austin-group-l mailing-list.

Robert, Geoff, Andrew, can you please clarify where is the discussion
that led to the following change?:

On page 1331 line 44327 section mktime(), change:

    The mktime() function shall return the specified time since the Epoch e=
ncoded as a value of type time_t. If the time since the Epoch cannot be rep=
resented, the function shall return the value (time_t)-1 [CX]and set errno =
to indicate the error[/CX].

to:

    The mktime() function shall return the calculated time since the Epoch =
encoded as a value of type time_t. If the time since the Epoch cannot be re=
presented as a time_t [CX]or the value to be returned in the tm_year member=
 of the structure pointed to by timeptr cannot be represented as an int[/CX=
], the function shall return the value (time_t)-1 [CX]and set errno to [EOV=
ERFLOW], and shall not change the value of the tm_wday component of the str=
ucture.[/CX]

    [CX]Since (time_t)-1 is a valid return value for a successful call to m=
ktime(), an application wishing to check for error situations should set tm=
_wday to a value less than 0 or greater than 6 before calling mktime(). On =
return, if tm_wday has not changed an error has occurred.[/CX]

We haven't found any mention at all in the Austin bug #1614, other than
the change itself, which is weird.  There must have been something
elsewhere.  (I do like the change, but I'd like to understand what
research was done.)

> > (If any implementation does not conform, at least it should
> > be feasible to fix that implementation to conform.)
>=20
> That's something new in the future C23 standard.

(And in POSIX.1-2024.)

> So I don't think
> that older implementations (stable releases) would change.

You could argue with them that there's no way to test for errors other
than this method, so if they don't fix their implementations, they are
effectively broken.  Or you may need to assume that under older
standards, it was impossible to check for mktime(3) errors.  Do not use
implementations that conform to broken standards.  :)

> > > This is the test I suggested: a check that mktime() returns -1,
> >=20
> > I think that test suggested by POSIX is bogus (redundant).  If mktime(3)
> > has failed, tm_wday is unchanged.  If it has succeeded, tm_wday must be
> > changed.  Thus, the return value is meaningless for the purpose of
> > determining if it has failed.
>=20
> Yes, after some thoughts, I agree.
>=20
> However, it should be said that with pre-C23 implementations,
> it is not guaranteed to detect failures.

Under a pre-C23 (and pre-POSIX.1-2024) implementation, there was no
method that would guarantee detecting failures.  Or rather, there was no
method that would be free of false positives.  You could always test the
return for -1, and reject some valid dates.  Choose your poison.

> Said otherwise, the change from
>=20
>   if (mktime(&time_str) =3D=3D -1)
>=20
> to
>=20
>   if (time_str.tm_wday =3D=3D -1)
>=20
> will avoid spurious failures (the case where -1 is a valid calendar
> value), but it might make some failures be undetected, though no
> implementations with such an issue are known.
>=20
> > > and since it can be a valid value, a second test on tm_wday
> > > (where the input, which is ignored, has an invalid value such
> > > as -1 here, or INT_MAX in your case; note that -1 may be more
> > > efficient with some processors, and shorter to write).
> >=20
> > I didn't use -1 because I thought some weird weeks might contain 8 days
> > (for some of those weird timezone adjustments), and that that might
> > cause wday -1 to actually exist.
>=20
> This is invalid and could cause crashes in programs, or worse.
> In C17:
>=20
>   int tm_wday; // days since Sunday -- [0, 6]

Hmmm, nice.  I guess if a weekday was ever added, it would be given a
name, and thus it would probably either repeat one of the sevenn, or be
an eigth day, but not a -1th day.  (Even if just because politicians
don't think of negative week days.)  So I guess it's safe to assume that
tm_wday -1 will never exist.

Good.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dcvhh5z6ssbmelji
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbIy1MACgkQnowa+77/
2zKPRA/+KAVVfZtIqkSL4IvL+KxHygc3eyWVk7l+ZplbRZllDOKogjH9sA0GSLMh
gH9gaXeurq50RotUAJI/qGlR9Qfv6ndoi0PS70y0zUuEVOPJlKoCXkKjy5mVVQS3
LfR/vKwDHFasALxPlWdLsNa1Jy2SlV64yY5MuLVPlJ73WG9tia4KbaB9HRM9vUR1
a/0g+uSGyH/4ALPmvTk6IxBAblOP64bJZjR7YphiW40NHMq5XtO7Gg4p0/Fha3CD
DwndT20YrCuHxQdcN7ndGz1ZlY+JNerpBkq62TrrUDyTIcmAYc6VDknBxfcUv5DC
eqmEMxS1DfzSdqS+ayvV+GFtKk6qgbgI6hQc9qlzidqfSLv9jLnGtrp8yHSdAXSc
IMKXE8GJzRWQcn6tOqzKqOKVvFChJSTYNBIKK3YEwC66y7wd0Y5sZjx3BWX3TCQz
O03dNnAL+6npJPI1XF8LIkyps+e6IfpKK6oy3z7myEfkKbdPNLHDMaNL1HDlLHZv
x9fS79/fHFdEPWT20gzW4ufoAADtg+ZmQRhmEqMXYIfDc80syKZfqyNjUiB/ZFtt
Y9L4mKj76bnBaadtLNqrzNGYjNHaYrrFr2h87wyERpk5PHTtxmBAZMWNDOHU0Mnr
H44VIx+Fvnru5f/IhVEZfaY2f4T+yh7iYbsi3huh8qoWEIfYtOA=
=oZAr
-----END PGP SIGNATURE-----

--dcvhh5z6ssbmelji--

