Return-Path: <linux-man+bounces-752-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 789BA8A4257
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED1212816A5
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 12:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34CEB1EB31;
	Sun, 14 Apr 2024 12:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D35WM700"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D3014292
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 12:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713099418; cv=none; b=kkMz53CNfGkk0Xh3YInxRPVlxLMjf+0bVCyjx74yhXQoZ+086kqlY4YAsuVIeROhx2OK/2aNKV8rzFli/dxQKMncGLOUCBCBbab1BIkpJKHpVO67zSc/ETeYbXkbSVMv0mJHFEY2v0mcCfn6Urdfcd02JDTO0TtezU7BVLpbv5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713099418; c=relaxed/simple;
	bh=XjeM+vpj3VbqplUFJ9DEquAMQLm17j2QX+GaYXa/ybs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=W66gu9gI01QiVfwH8byKhPfmvLNCHfOIshVCtvzUxcVCXQvFDnXyG4+/mHL3258nSJGLzhCb2X4YcMiItHecjk3uXaEJ+XUaigi2SLvqzKs5S0DYfw2iL+CGMgKwAgPuClSbKvwcdWVTiw9a5GuwE/a3JNPvGjVrqsXsnGXswDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D35WM700; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6ea2436de79so1656517a34.1
        for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 05:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713099415; x=1713704215; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YtxqH4KCcqV5UpIplxJVg8jvhmxmo7RkbbnEejTmj/I=;
        b=D35WM700YdQ9w1fL8ljzlsvnTqc6UnSkGmRQVapnpeAw9XFR3gGnOOHAfTT1ttvQS7
         7Znj5nR7jMaltfziJP+AYGScMq5MCTgaStUHG6nO+RRnwpztS5DdmIHBhtJrBo9BiD06
         4TvNdL37bR0uCqEnDUaAY+8OSi4/QJCG6KupzRp0KYweMFNgfVxYeekmTrSa1UOFPvTQ
         3AWgjprKeinexvPQGr6nUdoYtk8t96jjif2CrtF8Bi/B9IOHtCM4hKWEvb8cCLi7Ll/6
         5C2Ot/y0UjaGsO7iaiVXaccE8FZHlhtvm6GIDuugnXJbUoVj/Iw1iXieON3RmE0GPuUW
         9G+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713099415; x=1713704215;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YtxqH4KCcqV5UpIplxJVg8jvhmxmo7RkbbnEejTmj/I=;
        b=Oz3T0692talvOzYtsUdmAF5O/fHISGMy+CvE43Ef8zAL7Yo+T/Yx7zTdBV4+gNYmIB
         HXv21n4cW7CKSJkY/mh0TSLH9Q0msFDQ6nvMs3a7F72nLkCHNtZt2g/XeG7WffbFcYZZ
         gGapYrb6E+nCt5aTPdf8XYmThodkA0Lis95EdxXAub+iBxJJE0PZQ7ZcVw3SazKGIqzl
         8WymDqZs+xZhTo1LC0AAqMwnxJt6NgnSfwrMpV+LRnVOpsc60w5gN1ZSrWBt62XvECVB
         jsb9C1dVhZddY8mQw8YDpaisvVGEU6t68oCOYWgLDjiIcoCzaELdMptQwonnJBnyfpnn
         gzuA==
X-Forwarded-Encrypted: i=1; AJvYcCVQVr72gU3MRYmYYAp7hRACXDIwFZw4N3ViteoEo3lBAd5mATzbSYQ7ZRB1oczxx4q5zlHDpmlDD8qzq/OQJ2W8SFKSugPG5D4X
X-Gm-Message-State: AOJu0YwLk9CYEcn8BRgyvwva/E/CvfHcTvMJ0895LohnCDS8w2I/2MEK
	FqsPZA48oCqKGVNklo1zLAwk9kag8Lf0JBg+6VE+jCKp3MqGJP+5jk6K7w==
X-Google-Smtp-Source: AGHT+IFLZzdaYd4KKaiFp47P3xkQmRPeMJVHY40UCSUoDrn7uy276r/5LkGhBM3iockdoIAgXQ65EQ==
X-Received: by 2002:a9d:590a:0:b0:6eb:78e0:5b83 with SMTP id t10-20020a9d590a000000b006eb78e05b83mr1896725oth.20.1713099415459;
        Sun, 14 Apr 2024 05:56:55 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a056830014e00b006ea18546778sm1441952otp.13.2024.04.14.05.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 05:56:54 -0700 (PDT)
Date: Sun, 14 Apr 2024 07:56:53 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240414125653.h7y7y66yt7cgtgwm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fd7d5d3ocigfcpmh"
Content-Disposition: inline
In-Reply-To: <ZhvLPvqHzpw2Jl3o@debian>
 <ZhvM2Yy6lWGJLhtg@debian>


--fd7d5d3ocigfcpmh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-04-14T14:25:28+0200, Alejandro Colomar wrote:
> On Sun, Apr 14, 2024 at 07:01:45AM -0500, G. Branden Robinson wrote:
> > I've since refactored everything that hyperlinked book generation
> > needed in that respect into groff's "an.tmac" (in Git), leaving the
> > cover page to do only cover page things.
> >=20
> > https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in
>=20
> Hmmm.  I notice that your cover page has a few things that we have as
> part of the prepare.pl script:
> <https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n7>
> <https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n42>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/m=
k/build/pdf/book/prepare.pl#n86>
>=20
> Maybe we could do the same, to reduce the work of prepare.pl?

I didn't look closely at that complicated Perl script, but it seems
likely.  Essentially, anything that didn't need to be parameterized
(i.e., lines you write out with Perl but don't need to do any Perl
variable interpolation in), I would keep in a plain text document.

> Our front page is also clean from an.tmac stuff.  We have the an.tmac
> fork here:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/m=
k/build/pdf/book/an.tmac>

Might be worth diffing that with groff Git HEAD.

> And the front page is:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/m=
k/build/pdf/book/front.roff>

Yup, that's pretty clean and focused.

> However, our an.tmac is not for appending, but for replacing man(7).
> :( I'd like to get rid of that an.tmac fork.  Does your message mean
> that if I use groff git HEAD to build our book I can just drop the
> fork and use man(7), and groff(1) will do the right thing?

I think so, and want to know if it doesn't.  Also, fair warning, Deri
said he observed a CRAZY bad performance regression when building the
Linux man-pages book with groff Git HEAD.  If you can reproduce that,
then I have some work to do.  Let me know.

> Also, what does .t mean (in GMPfront.t.in)?  I changed the file
> extension to .roff (so, <front.roff>) in the Linux man-pages, as it's
> just a roff(7) file.

It was Deri's choice.  Some people have historically used the `t` suffix
to indicate a "troff" file.  I don't employ that practice, personally,
because it's also popular as a suffix for "test script", and troff
documents can also be rendered with nroff.

Personally, I use `.roff` for *roff documents I intend to be portable
between AT&T/DWB troff and GNU troff, and `.groff` for ones that use GNU
extensions.

At 2024-04-14T14:32:25+0200, Alejandro Colomar wrote:
> Hmmmm.  Maybe I should follow v7's tradition and restart the page
> number at each TH.  Let's call it an accidental improvement, and not a
> regression.  :)

I think it's a matter of taste.  This issue came up last month on the
groff list.  As often happens with me, it turned into an episode of Unix
History Detectives.  :-|

https://lists.gnu.org/archive/html/groff/2024-03/msg00163.html

> Although it would be interesting to learn when/why this changed.

The default has never changed in groff as far as I know, and I'm certain
I haven't personally touched it--I'd remember writing the usual 20,000
word essay with 2 dozen citations that usually accompanies my breaks
with tradition.

Regards,
Branden

--fd7d5d3ocigfcpmh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYb0o4ACgkQ0Z6cfXEm
bc7nQBAAllHCRujNRoVpfwFHCAl1PSTOWNwv+ZhgtkARRG7x1DGG7XSXK+yAhDrR
WsPiGJ+A5j3WCgz6ceaclKKsUMWBd2L2uLJJn/9wBv8T1yr9DyU5lKywDD13vQZ9
kOejer0ykBhla/USp5wPiazWEXDPvxh4HQLVDS5j4NpXosD3geh4Vvk9WTyBm3Qd
PLibTd65Zqu19eWMfgMls96RI52o67pJGk0O/P9vUrp3ruamYIRI+USPrTFLWpwV
wUkHO4hx4t59dlB1VC3VqZbL/L95tbr/gpETd7tEdJb/vAiTWiyPb+a3UL+R/1rU
65OWbF+QjEOhQcUrzAbvQ7o4JgWPpeRsa9/GhjkzSv1KxXjsbLMPlMKHAOPTQYu8
iFqLotw6Z29d2vCgUGKgvSvOhlhSpyuEa/yg+Xy2gZnYLRlZeVEUKH2zFGelmVK/
fRXTn452ptV8I83QPOywOq4lsksPRNco/qx0M/dyZbMcrrep0O5bYx/wNzLDa0d2
qR+LA2DvkNmT//kMeOp5H/+4tk7RW4UDzQeJb/LK9jlnVSsS4eZCsC4K/Epf/4aO
qNtXQqs72MWOh7K7fV/mSo0h19b8huZZtq76a4SmSY8nUp+hXxliom8xeMKJ2iB8
Q+zPjP54GMj/dCfaFk7qZosC8FCIFf+u7bezN96sJo98ZvlfUSA=
=urQp
-----END PGP SIGNATURE-----

--fd7d5d3ocigfcpmh--

