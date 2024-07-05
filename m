Return-Path: <linux-man+bounces-1347-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47780928F28
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 00:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3219285B2F
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 974CA144D23;
	Fri,  5 Jul 2024 22:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAKruuOT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561D413F432
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 22:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720216931; cv=none; b=AOBupx/Ckh8/gym6yaFHz0YpPhq+R3VMsipNU+h+gn7xMxto+zQcBmNPIxgA4G2nZY/0hk7ZVe4+tqo7VLGTciwGX2Xg+Q25iUK8NMfe335+VgVuhWcrq7czCGPJlUY6v+9KlBcz3mWiUY/OMoRfoyw4KZym3/F5+u3zFkG9V5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720216931; c=relaxed/simple;
	bh=7VtYdvNslXcLMl6Zr+E/RqUHqDp9QoPJPMji9OnNyEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nrAS6iHFpCbdR5OrgdlvP5jd+87xhYL0LsukAzYNHseu79AVcKs1trVySolaXZC4j+RxBwScXFfNht3FC7d+ae/cGeeH6QUDcmla80dP6TRSz4OcnL0s6ydPUTuzlKguG3o1KHf+zhSPzW8mnIZCDoqwi+Z6aQRz5CBlqqfqIzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAKruuOT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1328C116B1;
	Fri,  5 Jul 2024 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720216930;
	bh=7VtYdvNslXcLMl6Zr+E/RqUHqDp9QoPJPMji9OnNyEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IAKruuOT3leWz+Y4kqfb9ikKySxGeTavpSlYCqiGG6LsnTCbbZ1leJiN1Cwurpixm
	 DRZ2991DkJOG0g2ll3jdPIp3j4iRYY23YAn/524Lqv8gLzofBV0uBrL++Avk9SaZq8
	 CHd8LGY4QN4LNqKweBeF9fnTfNFTfAv+euFvlrO2wWjoKxLU/h5sNrdYQoacRsu7E8
	 ea0BwpuSa99COXWrNDrTtT5LTmH/8eZfQ+G5jCyf08yCZaZ75JsIpdiTo2m3fVfDpZ
	 884JP/JlUVehd1HtR9rAPNvAofQ6fmuZrVG1MVbFkuRHJnyIQJnRHEK0VSDAdVeA6w
	 njnzYTk9vB1pg==
Date: Sat, 6 Jul 2024 00:02:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
References: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="72ytn3tda4lu4j4e"
Content-Disposition: inline
In-Reply-To: <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>


--72ytn3tda4lu4j4e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>

Hi Jonathan,

On Fri, Jul 05, 2024 at 10:39:52PM GMT, Jonathan Wakely wrote:
> On Fri, 5 Jul 2024 at 21:55, Alejandro Colomar <alx@kernel.org> wrote:
> >
> > On Fri, Jul 05, 2024 at 09:28:46PM GMT, Jonathan Wakely wrote:
> > > > If we marked endptr as "write_only" (which it might already
> > > > be) then a future warning mechanism for -Wrestrict could
> > > > ignore the content of *endptr.
> > >
> > >
> > > That seems more useful. Add semantic information instead of taking it
> > > away. If the concern is a hypothetical future compiler warning that
> > > would give false positives for perfectly valid uses of strtol, then
> > > the problem is the compiler warning, not strtol. If additional
> > > information can be added to avoid the false positives (and also
> > > possibly optimize the code better), then that wouldn't require a
> > > change to the standard motivated by a hypothetical compiler warning.
> >
> > Let me be a little bit sarcastic.
> >
> > If so, let's take down -Wrestrict at all, because it triggers false
> > positives at the same rate.  How is it even in -Wall and not just
> > -Wextra?
> >
> > Here's a false positive:
> >
> >         $ cat d.c
> >         int is_same_pointer(const char *restrict ca, char *restrict a)
> >         {
> >                 return ca =3D=3D a;
>=20
> This is a strawman argument, because all your example functions have
> been pretty useless and/or not good uses of restrict.
>=20
> Yes, if you put restrict on functions where you don't ever access any
> objects through the pointers, the restrict qualifiers are misleading

That's precisely the case with strtol(3): it doesn't access any objects
through *endptr, and so that pointer need not be restrict.

Then, nptr is a read-only pointer, so is doesn't matter either if it's
accessed or not.

Let's say we add as many attributes as possible to strtol(3):

[[gnu::access(read_only, 1)]]
[[gnu::access(write_only, 1)]]
[[gnu::leaf]]
[[gnu::nothrow]]
[[gnu::null_terminated_string_arg(1)]]
 // [[gnu::access(none, *1)]]
long
alx_strtol(const char *nptr, char **_Nullable restrict endp, int base);

Let's say we could mark *endptr as a 'access(none)' pointer, since it's
not accessed.  Let's say we do that with [[gnu::access(none, *1)]].

Then, do you think the information of that prototype is any different
than a prototype with restrict on the remaining pointers?

[[gnu::access(read_only, 1)]]
[[gnu::access(write_only, 1)]]
[[gnu::leaf]]
[[gnu::nothrow]]
[[gnu::null_terminated_string_arg(1)]]
 // [[gnu::access(none, *1)]]
long
alx_strtol(const char *restrict nptr,
           char *restrict *_Nullable restrict endp, int base);

I don't think so.  Since *endptr is access(none), it certainly cannot
access nptr, and thus the qualifier on nptr is superfluous.

And even without the hypothetical [[gnu::access(none, *1)]]:

-  The callee doesn't care about restrict, because it doesn't access
   any objects via *endptr, so it certainly knows that nptr can be read
   without any concerns about optimization.

-  The caller can't know if strtol(3) accesses *endptr, or nptr, and so
   it can't optimize.  Unless it passes an uninitialized value in
   *endptr, which means the caller knows for sure that nptr won't be
   written, regardless of restrict on it or not.

Please, describe what's the information you think is being added by
having restrict on nptr, on how it would be lost if we remove it.

Cheers,
Alex

> and so compilers might give bad warnings for your bad API.

--=20
<https://www.alejandro-colomar.es/>

--72ytn3tda4lu4j4e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIbVgACgkQnowa+77/
2zJipA//ase8xQvouEDqASJ4XmC6HcqA1ii0XwTAcJW0XCmCun6DwfQERu+qfQUR
uvkeYl6oEFmDSwI/nKkuxmWkZjZQjQgzpKThAUkaLXuNh+FfvXnOT7iIqt1ZINut
ICZMxCgfKlaaVO2FDPqzLz4GxF0z9yTJpEugbwq9Pc8CaZyL09Ey/CY5B6HZV2n8
TTAqXekiiTDiQMt/eT/wkUv3bAMgU+Jb0JesYoSzvGVEMCB8sYXF0HQ+9NRdLggH
GZ86dp2NK7Jy5LRwml1oS2kfG7WUjh7e9TZogLOAmABJnSNLQLE7vJViAJTDHZ4k
HqIk8287A+shrOIQDwHNs636OaY83RYfmCg4RRGR0feH/FLxPrRh25rs8BWpigbE
MG8Ho/OxV6iEdsbm4rC6v7ksY8lWcSyUvaDEyJlatpkqPDotwpDZxKbSVCwhc9Bn
V+BsqVVJh6D6hYR09078Jdfwdrkp/4q2orMX5M3jzrBf85d/VYAcsPf+TaupuJbR
jJTUO9ZRMHLFyd66Vxl3mNCgdamvzJ0gduh5oap5aS2EpHDd6u6aNBLeawEOv5PO
0WOfaa1/RAWm5YzOtM0giIkWAxl8qZf2B6nLWMmnNrRzB5AAkiOq59hCM1t/jg3q
paxno8ZB1RPCDAheKXmWnd2J55DEyczxQ97GgfPta76YQBXPuGo=
=LSwP
-----END PGP SIGNATURE-----

--72ytn3tda4lu4j4e--

