Return-Path: <linux-man+bounces-749-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0A88A4248
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CE9D1F215B9
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 12:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECD03B297;
	Sun, 14 Apr 2024 12:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2lmQIwt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9F37707
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 12:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713097538; cv=none; b=Sbpi9locrvt9ZwshujMJeVx3UyarWCETW6GD05nBbfgvBTYQk3gUrgs2wsjGcrz2mCr+1RigHfaJAebly1xq3khNabcJkgEuSlR59PHkaRMCC7g1SSmVqODs2qUOP66aYLZuBHOuXYg6038OeBMQcWvKvD8yKA310Qxy04ykHBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713097538; c=relaxed/simple;
	bh=XL8BhrFC/Sk2ind8VUZg+pHFGxrlW81OGECWtIVP6us=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XG8TuyMIMH5oyzk79t+QmB5X8/YMWHaeTPEypFFanclrO7mjkC5aNgqK3u7oKY0IHGq1GTjrKThTHwXRt9UCvGUdh0omHBGRPuZ7Zu2Y/BCTARK62xaCEwoDDHnEuH63qAbDo5JO1DeJyhsKspk46/MhqpkE4XcL/OvEWK9/ymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2lmQIwt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08822C072AA;
	Sun, 14 Apr 2024 12:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713097537;
	bh=XL8BhrFC/Sk2ind8VUZg+pHFGxrlW81OGECWtIVP6us=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k2lmQIwtq/94jEc3wF4M8LN2jUvzCY7FHyf2D6+Cxhte7nWUZBJrpz4rttYedCgfS
	 xlFx5+n8tJfSJe2SQWAOnH3HVRNDEUsZ30a0Ym81vjz24Lzd4taDYOIa3YK3Ag6JNj
	 6FoUHBwEe3NcNK/Y5y8SWAC8ZqQDXfp23Puyl+RR0buif98y1VrHhX287QerD3lzfN
	 Jw3NcrInvaUNtg+eIpYM4WL9fRe8shUYm1kq/UTJySO5SXgyDfIag9ebLgrziwIBMR
	 8HaZCU2tZEeFmDjQE7sUtnnOjaiPdDEd4Auao7z/p2btk6mfi1KmbGwj5LqLTtEIHs
	 8wmEAvsTRK/Kw==
Date: Sun, 14 Apr 2024 14:25:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhvLPvqHzpw2Jl3o@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <ZhvA5QR1xg4BEWvI@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MZxcbVHEseooQPe0"
Content-Disposition: inline
In-Reply-To: <20240414120145.xa5sryqprufsvhqi@illithid>


--MZxcbVHEseooQPe0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 14:25:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden!

On Sun, Apr 14, 2024 at 07:01:45AM -0500, G. Branden Robinson wrote:
> At 2024-04-14T13:41:24+0200, Alejandro Colomar wrote:
> > Another thing I want to do, as mentioned in the groff bug, is to
> > remove our an.tmac.  Is there any change we can use a minimal
> > definition that we can cat(1) to the system an.tmac?  Or maybe instead
> > of cat(1)ing it, tell groff(1) to use our definition in addition to
> > -man.
>=20
> Deri had been using the cover page document to append to man(7) macros
> definitions, which basically accomplished this.
>=20
> I've since refactored everything that hyperlinked book generation needed
> in that respect into groff's "an.tmac" (in Git), leaving the cover page
> to do only cover page things.
>=20
> https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in

Hmmm.  I notice that your cover page has a few things that we have as
part of the prepare.pl script:
<https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n7>
<https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in#n42>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/mk/=
build/pdf/book/prepare.pl#n86>

Maybe we could do the same, to reduce the work of prepare.pl?


Our front page is also clean from an.tmac stuff.  We have the an.tmac
fork here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/mk/=
build/pdf/book/an.tmac>
And the front page is:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/mk/=
build/pdf/book/front.roff>

However, our an.tmac is not for appending, but for replacing man(7).  :(
I'd like to get rid of that an.tmac fork.  Does your message mean that
if I use groff git HEAD to build our book I can just drop the fork and
use man(7), and groff(1) will do the right thing?


Also, what does .t mean (in GMPfront.t.in)?  I changed the file
extension to .roff (so, <front.roff>) in the Linux man-pages, as it's
just a roff(7) file.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--MZxcbVHEseooQPe0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYbyzgACgkQnowa+77/
2zLzVg//RJBPx/dXAGncnIdgmT/HzwBrmsTH1sVjvvsPLKxJF3StwrlUJL4/ZMIS
TaosTM3yF1Qplxef5+baieQfAx3zOicEDs4vPifogUrPqAx288ECghrUcu9k902B
nJTkHotejE8Abr6gMeo3mU0h9H/f+2/JdLrvP+iw9Sm963TRzHP7KSRenMwJ2zEK
tSNS6fkHJG6pLx/YmINYYfIooyeP9qwgDxusffWgCg/ivDqMFklOMyC76uXBYJt7
0QqeUcpzbvhCMogYYy4jE4LZJcpZ8U8WJfOd3I0gWJW0lJ8TFIeMFocRa+bNgtFo
DAHdetJw0yMPZKb3pEb6l2N2ezzgJ4vHN7p+//eFXVBcJXjYHGKvb/fVw40S+OJT
6WrXbbj7mcrK30BDhW+zrdEDFSZ9ay8Ljn9UYNylKIdxqBZHNawLzkOW5+C4+R8G
aoyRXJ0b+Mrms6wb+dKjALKJFGyWjU9cNrwlWjzYUXD6wNatGsDnZNoW5afjtOox
+U98wZn8hfuhiIU0EHhq76yijXKNrhM7GbmVddTY77tGCY6AGkP1Xh45pI/Oop3p
Lhn9mYJnDLP5dFfoZQtY06FltqU/we2I+POHPBv3geZ6xXVHeKQCbK8Sq9YQYtCb
/x17TVtQfa9Q6mbc+CANb+s4S3Fo+grrtRReQRi1cYzNedxVLMQ=
=5Kmk
-----END PGP SIGNATURE-----

--MZxcbVHEseooQPe0--

