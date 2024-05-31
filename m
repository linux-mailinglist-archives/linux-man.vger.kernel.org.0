Return-Path: <linux-man+bounces-1023-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B0C8D6CD7
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 01:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91B96B21EE4
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 23:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3D081AA5;
	Fri, 31 May 2024 23:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPKT1AR/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C4D8C06
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 23:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717198031; cv=none; b=Ur4Fwc0QMoLgVHPGjwgiB9lk/O2jD7YULGkn1k6nQj0m5wrij+JNCRTWKF6wcKN4kM9dlJMAvOD01LKdTvW3wZSV16JmCZhl94Tjj8tbhru461FnHf9dDwitdD8a3trPmULlcR/8YPUzwStj93V8yrFhiF3D2eQNCvrc9J63ZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717198031; c=relaxed/simple;
	bh=QanluKCrLp1hpPtCt8v5sOzbQSBuX65Hue6AbvIZ040=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HMGbPrB3JW9Lv/lhR5R+fhfUUNsvSVn7ZKGjO99NetF9VwrlHQfoErKZsyO5ybiD8bF+5JF8gybayRDyl16yJk54s2zN0U1J41QDFfGrKBPiF/lEzNnkfInZclTA3VCkJOxyT1ZCc5eSUCFnGWna58J93ZahMGlW7uPemxbv8Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPKT1AR/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 327DEC116B1;
	Fri, 31 May 2024 23:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717198030;
	bh=QanluKCrLp1hpPtCt8v5sOzbQSBuX65Hue6AbvIZ040=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CPKT1AR/1JGaogEtjj5iRgnzxDwFdz0SLI38TaXwlP/9mDaDfreEcfeBBlHp3ZIMX
	 r5fKmT+17Ng4hZoVLN+08yUtZiJ5YM2Rr5uy3Rq6OaCT6JQqVuiCKMGumpXbVQaXBd
	 lRPEZqZY1XKKMwmcips/fC/phThUnvqmtqmJPO/fGhGIfIpZpq9yRf+Jny/hY3/a1T
	 0SdcP34/wKWP8kku1M7zPiZR8+N0GmhqzYbNPNMuJP/eUz8mF37RWCjp8IyttCK81U
	 Enz+Cwa8RJWWWyIDorA8qLmFokleSiMKpdr6jF/I8IkPqUIHn2HA4xISGjkahEt8N5
	 dw2zkhYbAt6cA==
Date: Sat, 1 Jun 2024 01:27:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: POSIX conformance document
Message-ID: <u27ch3r74mkuf4k6e6cxteclayjupwvpjplk7xcltnekhxu2hz@rb3xp7mhnaci>
References: <12722244.etNSJPHsjv@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="onshgq2simlbqm3a"
Content-Disposition: inline
In-Reply-To: <12722244.etNSJPHsjv@nimes>


--onshgq2simlbqm3a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: POSIX conformance document
References: <12722244.etNSJPHsjv@nimes>
MIME-Version: 1.0
In-Reply-To: <12722244.etNSJPHsjv@nimes>

Hi Bruno!

On Fri, May 31, 2024 at 11:21:28PM GMT, Bruno Haible wrote:
> POSIX [1] specifies that conforming implementations shall come with a
> "conformance document" that describes "implementation-defined" characteri=
stics
> [2]. Two such example conformance documents are [3], [4].
>=20
> For Linux (or any Linux distro), I cannot find such a document on the web.

Most Linux distros are not UNIX certified.  There have been a few, from
what I read, but don't know much about them.  I found one that is in
the Wikipedia, and which has links to such a document:

<https://en.wikipedia.org/wiki/Inspur_K-UX>
<https://web.archive.org/web/20151210194928/http://www.opengroup.org/csq/re=
pository/RID%3Dinspur/XY1/1.html>

That one is UNIX 03 certified, which is POSIX.1-2001 + XSI extensions.

Maybe that helps.

> Is such a document only considered useful for business/marketing purposes?

Mostly.

> Isn't there some value in it also for regular users and developers?

The documentation for each API usually documents the implementation-
defined behavior, and differences to other systems.  We don't have it
centralized in a single document, but we have something.

While I don't see much usefulness for myself as a user in having a
centralized document for that, I can't discard usefulness for others, or
for myself at a different time.

> Will there be some effort to create such a document for the upcoming
> POSIX.1-2024 standard, for Linux and the GNU libraries and tools?

Heh, I suppose not, unless some company sponsors it, or some individual
feels a strong need for it.  But just guessing.

>=20
> I'm asking because I've collected the answers for all *gettext() functions
> and the msgfmt and xgettext programs (that will be part of this new POSIX=
),
> but I don't know where to best document them. Likely in the manual of
> GNU libc and GNU gettext, right?

Yeah, that could be a good place for it.  The manual pages are in GNU
gettext:

	$ apt-file find -x 'man/man3/[a-z]*gettext.3'
	gettext-base: /usr/share/man/man3/dcgettext.3.gz
	gettext-base: /usr/share/man/man3/dcngettext.3.gz
	gettext-base: /usr/share/man/man3/dgettext.3.gz
	gettext-base: /usr/share/man/man3/dngettext.3.gz
	gettext-base: /usr/share/man/man3/gettext.3.gz
	gettext-base: /usr/share/man/man3/ngettext.3.gz

In the Linux man-pages project I'm documenting differences with POSIX or
the BSDs in the VERSIONS section (see man-pages(7)); sometimes in
CAVEATS, if it's a tricky detail; it depends.  You could send a patch
for their manual pages adding that section documenting the differences
with POSIX, or the implementation details.

>          Bruno
>=20
> [1] https://en.wikipedia.org/wiki/POSIX
> [2] https://pubs.opengroup.org/onlinepubs/9699919799.2018edition/basedefs=
/V1_chap02.html
> [3] https://empyreal96.github.io/nt-info-depot/SourceLevel/base/subsys/po=
six/pcd.doc
> [4] https://www.qnx.com/developers/docs/6.5.0SP1.update/com.qnx.doc.neutr=
ino_prog/posix_conformance.html

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--onshgq2simlbqm3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZaXMUACgkQnowa+77/
2zIW7Q/9HEonwiNFouoZjUXeHBpVMfiwckjXp15gXvZfA/ER/alo6v6wOVQVZR0M
8QioLRR/YLRrypEvT0QnhlTg0Uabl/yQC5zZ0B4oVRfCi6aRsGT51JAuUrt0rUj1
EX/2qA25fHfPR0iP/Umax/cvGq+HYAor8SSaww1lj0VZ2sXsYFVM1V9Dti/f7R+s
Th2G+tJ46/meDAuQr3AyizOJOPCCC03OprBc1Qfv0IqoKNMgFoDm5jgvVbTYriTh
jGS9NUZQqYOBEXxRErslLwjVHk+2kUV3LZ3XSYgGkDOVZRdjTnpYBOLdAWxMdYHX
vtSilKgNvVP9Fy7mzmdCMJl4hLWXJGLzn9BWdwywci+GT53Aj4boiPPmWtm5jiRr
7uz+VcL/CeRlZl+dDi1KRJgeAWjVXaSJw6WT6T11ltLW89qDBaz3LGVLcIfbDyex
RRzkoVGpxGH/LEgsXhscDs9an9/BY6Qn2Rc0MI2UJ6lX+K88YKnMjrKlwmvlmWq/
ZjJphNGpN8V7sXotk2bOoK+lC0gudhau3hiKKK6ErwyVcO4PM3dEcjO8lwejAwph
5jy7pj/pb0k80vGbin2PLJCjhceuqtBvNZsLpP6jQCUoFYLFS892+JVP776od01F
Dh+Yby5avIY4dj+agCCPHXqz6Gg0COBd9YDqZaRWjKXZ32bFpZg=
=EzNl
-----END PGP SIGNATURE-----

--onshgq2simlbqm3a--

