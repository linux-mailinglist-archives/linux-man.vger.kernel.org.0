Return-Path: <linux-man+bounces-550-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD362874539
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 01:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E059F1C211FB
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 00:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7336C1848;
	Thu,  7 Mar 2024 00:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhmhllWs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3514517FF
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 00:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709772138; cv=none; b=DNWrfOSR3xoTCFkmEWFYVYdyf95GCvlxtXcv0tgaRFh3//aLxjwytHHSCAH5GaBUbl8a2G0F1fhbKQjsRKKrRM04K5SVrwLCZdvs5k5jginH8B6ykDdqXHD2RhzWWYc/eMbYt21J5DWqKq0tXLdhFKvUOPCMtUAan4+8w3fqiIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709772138; c=relaxed/simple;
	bh=bA0gOK0LC/XXpndlQqo5E/5SrrNyKiDCTiUeMKAlc5Y=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwiNOc0TwOBtanfkf0223kKaKtfterEiaq3sIk3bhqVvUwXPgYfe5OKe6xKasE28hAaHHTMzRerY1RF24ZELOLPYLDcBE2QYJ9PL04dbxTIN4DF86mgwtmrV0TN7NdykfwjDM3lljEZCFyEM5NmFzuhOS04INmQTNEhl6n5ftTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhmhllWs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09F7CC433F1;
	Thu,  7 Mar 2024 00:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709772137;
	bh=bA0gOK0LC/XXpndlQqo5E/5SrrNyKiDCTiUeMKAlc5Y=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=OhmhllWsWjGUokbXJGse+v+yBWEVlUHFFko3OOYgi9JFArocIFVsjl5YwxFn5lUL4
	 MvMLTUYBkjaPpAVqD5b6nfhvftIN00frKuzsd5iIH61yL8ZjvLiLRTpeYzWGQfoQyt
	 5GWR4Sb/li+QiV8foG4XmUReVRvv0BakDVL7s790BIZVNa2skbwZX/MfCZzfh81VU9
	 1Psllqa90bKk04RiCZlpKSuAHmRqWv9mmRzGlZkfC5YhUnUJFvzmjK7fW5pf0zE1s7
	 mHQEOLbYFlL9YFO8Qg1q+9aaXIYF9Gb101xy0CNBZRTV1+nqACEDbnv88QWqT2/aJU
	 srt/1AQ5YYCZg==
Date: Thu, 7 Mar 2024 01:42:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <ZekNZuR3nRczAIqX@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lQ2lPyzqANtR8Tmz"
Content-Disposition: inline
In-Reply-To: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>


--lQ2lPyzqANtR8Tmz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 7 Mar 2024 01:42:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section

Hi Guillem!

On Thu, Mar 07, 2024 at 12:22:58AM +0100, Guillem Jover wrote:
> Hi!
>=20
> I just realized the other day that we have currently a problem with
> the order priority for a couple of the manual pages in (at least) the
> 3type sub-section.

Yup, we do:

alx@debian:~$ man -wa timeval
/usr/share/man/man3/timeval.3bsd.gz
/usr/local/man/man3type/timeval.3type
/usr/share/man/man3/timeval.3type.gz
alx@debian:~$ man -w timeval
/usr/share/man/man3/timeval.3bsd.gz

> These pages have been provided by libbsd in the
> 3bsd sub-section for some time, and that sorts earlier than 3type.
> This has not been a problem for the section 3 pages, as then those
> will always be preferred if present over the 3bsd ones. This also
> means I might be reluctant to add new 3bsd manual pages related to
> types, to avoid future occlusions.

If you want to add a page for a type that glibc doesn't provide, feel
free to do so.  I even encourage you to use 3type, although that might
be inconsistent with the rest of libbsd, so you may prefer to keep 3bsd.

If you want to add a page for a type that is provided by glibc, just let
me know, and I can provide the page instead.  (Although it would be rare
that you provide a page for a type that glibc provides.)

> I think this only affects timeval.3* and timespec.3*.

I think so.

> But I'm not
> sure how best this would be solved though. :/ Hmm perhaps thinking
> about it, I could rewrite these manual pages and only provide them
> for the TIMEVAL_TO_TIMESPEC and TIMESPEC_TO_TIMEVAL macros.

Actually, glibc provides these macros, so I should probably write pages
for those too.  Maybe I can write something and then just drop the
libbsd pages.  BTW, why do you provide those macros if glibc also
provides them?  Maybe they are recent additions to glibc?


alx@debian:~/src/gnu/glibc/master$ grepc TIMEVAL_TO_TIMESPEC .
=2E/time/sys/time.h:# define TIMEVAL_TO_TIMESPEC(tv, ts) {                 =
                  \
	(ts)->tv_sec =3D (tv)->tv_sec;                                    \
	(ts)->tv_nsec =3D (tv)->tv_usec * 1000;                           \
}
alx@debian:~/src/gnu/glibc/master$ grepc TIMESPEC_TO_TIMEVAL .
=2E/time/sys/time.h:# define TIMESPEC_TO_TIMEVAL(tv, ts) {                 =
                  \
	(tv)->tv_sec =3D (ts)->tv_sec;                                    \
	(tv)->tv_usec =3D (ts)->tv_nsec / 1000;                           \
}


>=20
> But perhaps this is a more general problem as =C2=ABt=C2=BB sorts pretty =
late,
> for example later than =C2=AB3cxx=C2=BB, =C2=AB3ncurses=C2=BB, =C2=AB3per=
l=C2=BB, =C2=AB3pm=C2=BB, =C2=AB3p=C2=BB or
> =C2=AB3posix=C2=BB. And ah, now I recalled the SECTION option in man-db, =
which
> on my system already lists 3type before many others, but I guess the

Yeah, I remember talking to Colin Watson to have the new sections in the
right priority.

            1 n l 8 3 0 2 3type 3posix 3pm 3perl 3am 5 4 9 6 7

> problem is still that unlisted sub-sections get folded into their
> parent section, so perhaps some of these need to be proposed for
> addition there. Not sure about other man pagers though.

I think projects shouldn't use their own subsection.  They should
instead use the same sections, in this case 3type, and use LIBRARY to
document the library needed to get the thing.

And in cases wher various projects offer the same page exact page, maybe
/etc/alternatives should decide.

>=20
> (BTW, I very much like that these types are provided on their own
> manual pages, and their own sub-section, thanks for that!)

Thanks!!  I had to fight a bit for them.  It's good to read positive
feedback.  :)

>=20
> Thanks,
> Guillem

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--lQ2lPyzqANtR8Tmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXpDWYACgkQnowa+77/
2zIlMQ/5ATegR0Ha4xhJGKBQClf3tksVRwUiaBeidjibPM1FC2Vz9MLyKVFVPLg7
MEOpLyxHWnwJ+BoD/p3+XCC1F/lDUcPh6tIXBNfE/oTj9RNoMqxsMOTDkuLhm/Gm
XEvNo2LR8U2FhndYDIbQ+8aBpNql4BcCpJa6qKyjHKABGr8O6J0ZjgodObAkekHz
LYdd3rjDw2qs9uldOhQsebB4CQQAzjkOmD3AUbWFUirr7Y+91NWn2WeD4belVCE0
PPFPAeqJELeazykZPAf7ovtNQ3I1F83+IuGk7l1+7CmQyZCJfTHK9RsnDG8FBAyH
rY4jH9HCJ9CVLvaEAUkD4RWrKi66ZFU2bdh1YhicE/T8W3tnJFyFdkTR7b6ZbosK
yeQr0MRWHpRxlxRvvLvrnqsrkR8x9Ki0ElOxiFUEtgXH6Ki2yZs+tBCPThCenHsK
5/lAND0gq4RTMG5y0ZD423XPfzV8fbq2oWH8MGcAvCzNAKsuNxDP7C+OFrs/uIMQ
3oUDeOi2U0gej3tN3DlXUCefbbYe1+UVJCINCSSJlnfMhBPnVsiX656Dqf856Ju3
lPbirfn6f24pY5dGkzW3diy6lnejeel29Yv3GeQtliM2yJUUZbtBhG5e8QF8chc9
/lqb0tg0vNdXSJ+1efU5tbDT/r31iSp2ksxyOF85RwRxjObfTTc=
=s8gF
-----END PGP SIGNATURE-----

--lQ2lPyzqANtR8Tmz--

