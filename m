Return-Path: <linux-man+bounces-107-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A557F0F3D
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 10:40:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7D91F2309F
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 09:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08BE1171D;
	Mon, 20 Nov 2023 09:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrY9Tk3m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BD411C91
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 09:40:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1977AC433C8;
	Mon, 20 Nov 2023 09:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700473239;
	bh=/ioPf1bk9m60VfW4BvRVKHWyotHnW2Fop+XGCaJK/p4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CrY9Tk3mM1QRcNEWs70/8+tygjGEt0DVkHhCLMENmCZDqIHWBNUUC27FpiIKeVy4F
	 4dQxAQmwfwme0qOB8mY+fWyqGeyckvvnR/+KSYdDqEaFYj3fX2/+SnZXqbO0MfUOgi
	 Pia2F/p3COuc/YzL/TYYONYPCjRfia3cDXCNnZEomCvoEHfHecubDN7Ciq5/DQUm+8
	 Ga1uQw0WF/awp9kY70M9Lru4X65JYCfUQjETVzUNWNwnLWA6TTyteV2+aZNOowPJXo
	 j22jjbLnuDwKozR/S7kXoE0pd6NBbmXKszMAyFqZ/zWSG5ObFitb3AOuTMigOeE9hW
	 +92ptojcx6DXA==
Date: Mon, 20 Nov 2023 10:43:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)
Message-ID: <ZVsqX_suG6VJe0BG@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <4567510.7DdL66CAHx@pip>
 <ZVlitX4dWaC2m-2S@devuan>
 <12344046.3XHVMEB1Be@pip>
 <ZVp24b1vXfoS8ABi@devuan>
 <20231120004525.acgivh3htslijygr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7tdFf1Z6rRYk1MT"
Content-Disposition: inline
In-Reply-To: <20231120004525.acgivh3htslijygr@illithid>


--i7tdFf1Z6rRYk1MT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Nov 2023 10:43:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)

Hi Branden,

On Sun, Nov 19, 2023 at 06:46:29PM -0600, G. Branden Robinson wrote:
> Hi Alex and Deri,
>=20
> I'm going to address just a few small parts of this message...
>=20
> At 2023-11-19T21:58:03+0100, Alejandro Colomar wrote:
> > You can always `find ... | xargs cat | troff /dev/stdin`
>=20
> ...not if you need to preprocess any of the input.  With tbl(1), for
> instance.

What I mean is that I can preprocess individually:

find ... | while read f; do eqn $f > $f.troff; done

And only process together in a single invocation what _needs_ to be done
in a single invocation:

find ... | xargs cat | gropdf /dev/stdin

I guess that preprocessors can be run per-file.
I know that gropdf(1) must be run with the entire book as input.
But I don't know if `troff -Tpdf` needs to see the entire book at once,
or if it can process each file separately.

In my laptop, the pipeline for building the Linux Man Book takes 23.3 s.
I've split the processing of the book so that I produce every
intermediary file in the pipeline (except pic(1), which I think we don't
need).  From that, I've seen the times it takes for each program to do
its job (and importantly, the overall time wasn't slower; it took again
23.3 s): preconv(1) takes 0.04 s; tbl(1) takes 0.06 s; eqn(1) takes
0.05 s; troff(1) takes 2.8 s; and gropdf(1) takes 17.6 s.

The time taken by gropdf(1) is mandatory, since it can't process the
individual files separately.  But if we can reduce the time taken by all
other programs close to 0, it would be good.  It depends on which
programs need to see the entire book, and which can process each file
separately.

Nevertheless, I think it's interesting to process the book per-file, as
much as possible, even if the overall time won't change significantly.
It is a good documentation of what needs to be processed together and
what not, when building a PDF document with groff.

> > My problem is probably that I don't know what's done by `gropdf`, and
> > what's done by `troff -Tpdf`.  I was hoping that `troff -Tpdf` still
> > didn't need to know about the entire book, and that only gropdf(1)
> > would need that.
>=20
> This stuff is documented in groff's Texinfo manual, and in the groff(1)
> and roff(7) man pages.
>=20
> Here's an excerpt of the last.
>=20
> Using roff
>        When you read a man page, often a roff is the program rendering
>        it.  Some roff implementations provide wrapper programs that make
>        it easy to use the roff system from the shell=E2=80=99s command li=
ne.
>        These can be specific to a macro package, like mmroff(1), or more
>        general.  groff(1) provides command=E2=80=90line options sparing t=
he user
>        from constructing the long, order=E2=80=90dependent pipelines fami=
liar to
>        AT&T troff users.  Further, a heuristic program, grog(1), is
>        available to infer from a document=E2=80=99s contents which groff
>        arguments should be used to process it.
>=20
>    The roff pipeline
>        A typical roff document is prepared by running one or more
>        processors in series, followed by a a formatter program and then
>        an output driver (or =E2=80=9Cdevice postprocessor=E2=80=9D).  Com=
monly, these
>        programs are structured into a pipeline; that is, each is run in
>        sequence such that the output of one is taken as the input to the
>        next, without passing through secondary storage.  (On non=E2=80=90=
Unix
>        systems, pipelines may have to be simulated with temporary
>        files.)
>=20
>         $ preproc1 < input=E2=80=90file | preproc2 | ... | troff [option]=
 ... \
>             | output=E2=80=90driver
>=20
>        Once all preprocessors have run, they deliver pure roff language
>        input to the formatter, which in turn generates a document in a
>        page description language that is then interpreted by a
>        postprocessor for viewing, printing, or further processing.
>=20
> gropdf(1) is the output driver for the PDF "device".  So "groff -T pdf
> input.tr" and "troff -T pdf input.tr | gropdf" are equivalent.
>=20
> (Yes, you still need the `-T pdf` arguments, even to troff proper.

This doesn't answer my doubt.  For generating a book, does troff(1) need
to see the entire book, or it enough if gropdf(1) does?  My guess is
that troff(1) also needs to see the entire book, but I don't know for
sure.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--i7tdFf1Z6rRYk1MT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVbKlkACgkQnowa+77/
2zJ6bA/6A0lb/lgMOwYx5gKUPK17ngaSEqtuWOKuRKmNFC/jv520bXOkYkOoe8w1
7pX46krgahg6rAQxfqjiJaJNOF6veYAE1xe2L9v4bQpPnFwE0uKWm/oFPGBo11Y2
J2F1ABOu2A5LAAktSG/Y+kXInEWo/cUu6r82rKEjFlPRg8edNCJdD7sfZOmiae8/
qpJz+qIr630lSOXN1Hnxj60TMq0IuPf0QCoItwCDNup0OeBxkZVUg9pucw6ztJjJ
F5iSK3+KKukqSLRnUgrNnATDTPAYjpHsVDWaCSMNcYJ/nYqpDQ8t1l/glphybXle
btsmTIKlj9BthP6PAzJueM+HApvDzQh19QexVXFx9lkylaP+Ogsu11Mdu3U64vwF
VeXRVAmXCWFwipdpEF2NBl7hir7qWrcrBWiLcfv0V8hHKWVCNbsbPkorukeoXP79
EfzUiYOMAqRj+I/FN0NRCGWsJpVrP92mVAQ5G77ZTbuPNwoY3lTh4DiYb0G0uwQ5
lwx/8iEuDWon9zMBLvtJ+AkFrm3kDaAdFRYLm7xYN4LlvxZJrWuKFTl3Gu/n+hkY
gzsOU0vtud9EDluyTqKUi9acC+aSFMX3JNT4N44gTM1JpvLoktyNMeWJtt34N73x
9Cvjk8TJKe2+7ybZaNMsupRsP9wVqLabS8348w1dgYhkfvFbHMk=
=POwr
-----END PGP SIGNATURE-----

--i7tdFf1Z6rRYk1MT--

