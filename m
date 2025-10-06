Return-Path: <linux-man+bounces-4052-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3F7BBDBC5
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 12:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65CAE18956D7
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 10:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A0D244670;
	Mon,  6 Oct 2025 10:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZfkeappT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3E170A11
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 10:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759747349; cv=none; b=C/3U5Md01gMb6+KfSSdpMzRJ75A1C3jZWzNBEV0AkfzscGlIg6r30G/H1itcTz9Uf1lGvISmtz4Eo5Jxr+d2DiETbuzCfdyxLiXQ8b6HLMyE9TeP9UTvZF0xzGu90cXAKfqmDPgdtLcjW2jghwyFb8mT3NM8zIENauqhkNPQLIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759747349; c=relaxed/simple;
	bh=PsylPPZlk1cLh3kEUNw11KL6v9wH3zOn2iy1XSXEUao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X+UXdNPl0JUG2dSDbaFaHJkL60ellusJ1zPYakf4YPtXwwbsOAISwkzP7v5q9BjZzsM1KTvKr7C3FnFrhs5P2SywmX++Fe+Cw1HopIVqARjZ37/0agPTL5EdJDzcC7bO+yjoYbF5quTDYeCOLdwuMd7+5EOxiTMK9TuSDW4tUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZfkeappT; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-635fde9cd06so4369370d50.0
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 03:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759747347; x=1760352147; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JujWQkKimR8IB/0GOkLBsy4t7eQzqYH/oHHc5nnw3nU=;
        b=ZfkeappTuI5Ii3LRsw+jgJ3jXiBKy/jmApC1XwZY/oOZ51BUiRAlxF5IQpuhfP+/gL
         TAlMdpeofR0aXoOBEBUP38MAsz8CJT40JEgQXjl4w8m4Qq1FQFtwlfujmWO3MKHHpXFF
         VuxdLJrQWSSDmd7k2jesP/lRsqN6jCt6A2tD5e0BXN+7UNPKPh7V1OLaqvW99bEMB5SY
         rEsY02aNTYNHP/w5P/TO++6YiabfIw5DD9QVI3XY/8+q2P+UltVfb4Z3vbtFswTtTVoz
         keBiRYfeHCcKOtxedZuA+AL2PrnuTyoTwV8TKLAVI5HBMzo86+rbfoMGiK/jHFZDKGZ+
         kb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759747347; x=1760352147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JujWQkKimR8IB/0GOkLBsy4t7eQzqYH/oHHc5nnw3nU=;
        b=AJH/Hkl2RkNg5+MK9sckM8YZ7EGlTdkGYgjZo2dc6meC4TUzV7nTAzRZ5t7l2TeVYE
         KWXP3fjM/mpovT+jOc6RNdqkBrDvlgG4ChCFFGle5kPSY8RHhQ6pzdWfJKG4ajGoZ5DH
         H7QsW1aMKF+Vl+3HFq8iB7M0xd4xdtyM7JcEBf9AkEWXlbyR4kcevBNZT9FcWRXn/MGY
         LI61kcbrnPrEj4gW7qRHftCjPycoN1nTmw8Eg2aqXxLnQMyOgBdBZuG8TMMHZs9fd7oa
         s7mGq5zBSnIHo1KCs76RVmHOK5M9thgW2rawEuQGnUgJd/Mt/asNJ38V2W7ADLtYa2WE
         JTkA==
X-Forwarded-Encrypted: i=1; AJvYcCX6uxCtLj3dam1I3TNCA1hT4617UFMENR3saYoilXwnxGxNELIMumpl7T2v3/vGAzWWMXoXvtgL3Ws=@vger.kernel.org
X-Gm-Message-State: AOJu0YzBPsGYviPsIsJ9QYP0drrQbrfe8r8GSlYk64TKCeU0c4Dk2Oa0
	/FjnW1UwJjCLHFyPl5nbYhwBO+qIc1D0yLgqGQ8Y5UpMTduK+BlF+rkr
X-Gm-Gg: ASbGncvQ4/eeRg4y/c9+RoYGCJiTVFs5Dyk3cX8fxDQBi0YTkJOwq/wf7brJIdQcNUY
	3iBbWv4q0Dz/WhyAkb8GYiQjmwRHPpJuja2rHXp9wU0vfeGModUEF99XUsZiLvsyz2l/3sz999Q
	DmuyrHDFAIrMXQT8HKROcM+NE9DG4t+CTViFfv5GMNesvE8dFFAjWh/zGfU7UiMl4Voz5VVwaBi
	jIRql7Er9JGc0faqr+IEZ2o1QtDT569M8UJSeeOU/pILLxnMEfOEMpJNEeu6skFWnYhMbvcKnaG
	vik7LT5FCbAya2NObwAE/NIKxhKG0KT1irGHdPZNGJc+VRjezvSJzK6qxYl8EqZTafynoZGY5VP
	Z6faGoRhV2DVdKq255FXnH74F/Ao5n71YMKle6NqpIFzXPrE=
X-Google-Smtp-Source: AGHT+IEJGKufP9tNkvBtTA6t65MWS1ccGp0eKLu0NADgK8hP1Zyaauk7JuoX/iTZoBrFNqxcPhGXFg==
X-Received: by 2002:a53:b6ca:0:b0:62c:70de:7c9a with SMTP id 956f58d0204a3-63b9a060c6bmr9139735d50.11.1759747346629;
        Mon, 06 Oct 2025 03:42:26 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81c35980sm42017557b3.23.2025.10.06.03.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:42:25 -0700 (PDT)
Date: Mon, 6 Oct 2025 05:42:24 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <20251006104224.yw5dusvjjkw2ymnv@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jxwslhzggcdthfic"
Content-Disposition: inline
In-Reply-To: <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>


--jxwslhzggcdthfic
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: groff build problem involving "ckd_mul" and "ckd_add"
MIME-Version: 1.0

[looping in groff@gnu list]

[was: '^\}$' is (not) changed to a space character]

Hi Alex,

At 2025-10-06T12:25:23+0200, Alejandro Colomar wrote:
> On Mon, Oct 06, 2025 at 03:51:49AM -0500, G. Branden Robinson wrote:
> > Right, but the excess space in the document should not still be
> > present, either.
>=20
> Hmmm, it's weird.  If I produce the PDF in my computer, the space is
> now correct.  However, the PDF book served on my website still has the
> wrong space.  I know it has the correct source code, because it
> doesn't use CW anymore.
>=20
> The only difference I can see is the groff(1) version.  In my computer,
> I have
>=20
> 	GNU groff version 1.23.0.2695-49927
>=20
> but on my server I have
>=20
> 	GNU groff version 1.23.0.1254-19a18
>=20
> But I also tested 1.23.0, and it does the right thing.  Maybe the
> version on my server has a temporary bug that appeared after 1.23.0
> and was fixed before 1.23.0.2695-49927.

That could explain it.  I find bugs I introduced myself all the time.
(Such discoveries often drive new regression test scripts.) This one
doesn't ring a bell, but that doesn't mean much.

> I tried building groff from git HEAD to see if that fixed the issues
> in my server.  However, it seems groff doesn't build at the moment:
>=20
> 	$ make=20
> 	make  all-recursive
> 	make[1]: Entering directory '/srv/alx/src/gnu/groff/master'
> 	make[2]: Entering directory '/srv/alx/src/gnu/groff/master'
> 	  CXX      src/roff/troff/div.o
> 	In file included from src/roff/troff/div.cpp:29:
> 	src/roff/troff/hvunits.h: In member function =E2=80=98units vunits::to_u=
nits()=E2=80=99:
> 	src/roff/troff/hvunits.h:91:7: error: =E2=80=98ckd_mul=E2=80=99 was not =
declared in this scope
> 	   91 |   if (ckd_mul(&r, n, vresolution))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator+(const vu=
nits&, const vunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:105:7: error: =E2=80=98ckd_add=E2=80=99 was not=
 declared in this scope
> 	  105 |   if (ckd_add(&r.n, r.n, y.n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator-(const vu=
nits&, const vunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:114:7: error: =E2=80=98ckd_sub=E2=80=99 was not=
 declared in this scope
> 	  114 |   if (ckd_sub(&r.n, r.n, y.n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator-(const vu=
nits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:123:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  123 |   if (ckd_mul(&r.n, x.n, -1))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator*(const vu=
nits&, int)=E2=80=99:
> 	src/roff/troff/hvunits.h:145:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  145 |   if (ckd_mul(&r.n, x.n, n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator*(int, con=
st vunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:154:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  154 |   if (ckd_mul(&r.n, n, x.n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In member function =E2=80=98units hunits::to_u=
nits()=E2=80=99:
> 	src/roff/troff/hvunits.h:208:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  208 |   if (ckd_mul(&r, n, hresolution))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator+(const hu=
nits&, const hunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:222:7: error: =E2=80=98ckd_add=E2=80=99 was not=
 declared in this scope
> 	  222 |   if (ckd_add(&r.n, r.n, y.n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator-(const hu=
nits&, const hunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:231:7: error: =E2=80=98ckd_sub=E2=80=99 was not=
 declared in this scope
> 	  231 |   if (ckd_sub(&r.n, r.n, y.n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator-(const hu=
nits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:241:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  241 |   if (ckd_mul(&r.n, x.n, -1))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator*(const hu=
nits&, int)=E2=80=99:
> 	src/roff/troff/hvunits.h:263:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  263 |   if (ckd_mul(&r.n, x.n, n))
> 	      |       ^~~~~~~
> 	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator*(int, con=
st hunits&)=E2=80=99:
> 	src/roff/troff/hvunits.h:272:7: error: =E2=80=98ckd_mul=E2=80=99 was not=
 declared in this scope
> 	  272 |   if (ckd_mul(&r.n, x.n, n))
> 	      |       ^~~~~~~
> 	src/roff/troff/div.cpp: In member function =E2=80=98virtual void macro_d=
iversion::output(node*, bool, vunits, vunits, hunits)=E2=80=99:
> 	src/roff/troff/div.cpp:325:7: error: =E2=80=98ckd_add=E2=80=99 was not d=
eclared in this scope
> 	  325 |   if (ckd_add(&new_vpos, vpos, lineht))
> 	      |       ^~~~~~~
> 	make[2]: *** [Makefile:9395: src/roff/troff/div.o] Error 1
> 	make[2]: Leaving directory '/srv/alx/src/gnu/groff/master'
> 	make[1]: *** [Makefile:11776: all-recursive] Error 1
> 	make[1]: Leaving directory '/srv/alx/src/gnu/groff/master'
> 	make: *** [Makefile:6977: all] Error 2
>=20
> Did you forget some #include?

It builds for me and others, like Deri and Grisha Levit.

https://lists.gnu.org/archive/html/groff/2025-10/msg00009.html

Have you "bootstrapped" lately?  That's necessary for Git users when we
bump the version of gnulib we include, which we probably did after
either 1.23.0.2695-49927 or 1.23.0.1254-19a18, and maybe both.  One
thing I do recall is bumping gnulib to get at the checked arithmetic
functions--precisely the ones you see above.

Also, FYI:

$ git describe origin/master
1.23.0-4017-g3ea378d35

I'll probably be bumping gnulib again soon--the version we're using hits
end-of-support in less than three months.

Regards,
Branden

--jxwslhzggcdthfic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjjnQYACgkQ0Z6cfXEm
bc7GWw//bcG2dswRfeXZEz3Fi8wx1LRLEQH6qr+N4wFjsGJE1/xZfAR4Fk9nUM7C
jYFQEq1+XkcWknzM5XB2WOSeBu31Tv6YICTntYkUFx29Ius0TR0VeFgOY97p8D4K
iacdG++BwIUO3x/rS73KPl6ScXZ+xkReasoJ77SPrWTim4a0gu5DI3OstjKmbRuE
ye1XBkO8rn2nO/b/9K2Mn52TrZFvFKLK6dn+IJKisko9us2tPPFYoAelDLzNYIY0
E/22NN+Bc2P0rkhoSHnlfhEtsRzhd6svnYO0z24PmuW8NbCNlZ5IkJSIVt7OayYd
EF9NGuc6k90BKpmxGwDwfQCuX0CGGul3v9HID7Dnsno3LhA6nlTp5gnUgxtLL8U1
CJd3Ckmsfh2QC+LX288ZyGrWVtATGhVDgc8FsMCIBsyk1z4HXS0ULkhtovMpdmE6
GBWXJwVXWEEMQ1CtZEB8VbWrVs3fk3Ju2DFDFlT0GNW59ueS2ZDfKpqQbxOLthCq
H7Q8tt110tpIzJ3M6BhY0eP+eRDnh2oWWrEaO/dBSKNEsDaWzAjHBn8ojwLV59ME
iXVA3b9japvHW3oUe/Bv4KlYD83lyvnh4g6TArVr6OVvuJScdtc24cN3eeFrPOhz
QYdcIiFr9D+fED5u8WsyCnZfk+w4rhLMJYlV8c501YDrQypL/hc=
=PiAU
-----END PGP SIGNATURE-----

--jxwslhzggcdthfic--

