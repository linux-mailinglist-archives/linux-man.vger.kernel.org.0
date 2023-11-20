Return-Path: <linux-man+bounces-106-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EC67F0A2A
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 01:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFF68280C3E
	for <lists+linux-man@lfdr.de>; Mon, 20 Nov 2023 00:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD34A32;
	Mon, 20 Nov 2023 00:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h8Gj6jU7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F746C0
	for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 16:46:41 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3b2f4a5ccebso2783617b6e.3
        for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 16:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700441200; x=1701046000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fMeGDzsTAE18dsJZcBz6vQChmvB+QOMAmCzBHePyWMY=;
        b=h8Gj6jU79R4D8n8BjHhLKoUFJooRRPXUufLE00rOWpKQCPuz6052aNKZR8wk8CdR/5
         lW2kBC8gVvBVW/P0kV6xnu7yxGng9euF/ep9KbtKl9IDisU2AZRiD9R252siWKec2gtu
         xtVncazMqqN0OesOXYf1XtS9VaVxwHytk446Jfzx8t7HuPZMoR4rwneFvA12goHphz+S
         BgDtT2kzbdcDQwaVi94n6E18MCja2zGblusyOKVwy5aSZpN3q2uSouJIEtWOoM32vaQP
         ojoFaYNEAFya/YzUrUQ9nCGeZ7O7MT8nFUQWu/Q/iHgnHUjewAG50Lv3BnmFLeoMPTR0
         4i6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700441200; x=1701046000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fMeGDzsTAE18dsJZcBz6vQChmvB+QOMAmCzBHePyWMY=;
        b=a3289NP5qF8cm/AkvlL0pa8wYLrg1RPtTtivDabSA+5wWhxhfewo2kl0GcS58o0LPU
         zqpPfny1NKeq5QFHrxV1L9u9tU1FmWB5Q/TnMrQFlLXAnRG1M6xYbkCPTI8eMgQ0vdia
         qMXUjLvpnP9DvIWN+5TWFi9ABjG5aGGFB+MVN33Ir7twFTPr7Icf26Si+TQ/f3zofK8M
         2VjmYgNgQtuQhM45o4zt79/uE3D6s/FSlGH8I8Jx3j0y5vbE0D36n2C70dzQr+EQ7ucE
         5wkiu49lb8VtOs8QW6cFBVHuuI+kB3xnqNxCFQhAuSxzDwk2NTcXRvX4ABkzc3SBlUUj
         O0Tw==
X-Gm-Message-State: AOJu0Yz5Qb20S2VC0Szvu8uFxrggK1ieLtm9RSFlmggporI/xx5uDsBb
	/FoTy9ORHAJzjzl0CSY9p9a14wkdqiE=
X-Google-Smtp-Source: AGHT+IE+tZULbzPXgU9xuL1HJtKaxhqHSrs+0oklHOrLW4REy7IARtw9553TMLmJK3HgxE4kRl2e4A==
X-Received: by 2002:a05:6808:180d:b0:3af:6ce1:91fc with SMTP id bh13-20020a056808180d00b003af6ce191fcmr8775006oib.21.1700441200195;
        Sun, 19 Nov 2023 16:46:40 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w16-20020a056808091000b003ae36d664a9sm1113340oih.39.2023.11.19.16.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 16:46:39 -0800 (PST)
Date: Sun, 19 Nov 2023 18:46:29 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)
Message-ID: <20231120004525.acgivh3htslijygr@illithid>
References: <ZUo6btEFD_z_3NcF@devuan>
 <4567510.7DdL66CAHx@pip>
 <ZVlitX4dWaC2m-2S@devuan>
 <12344046.3XHVMEB1Be@pip>
 <ZVp24b1vXfoS8ABi@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l5fxslis6imsykn4"
Content-Disposition: inline
In-Reply-To: <ZVp24b1vXfoS8ABi@devuan>


--l5fxslis6imsykn4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex and Deri,

I'm going to address just a few small parts of this message...

At 2023-11-19T21:58:03+0100, Alejandro Colomar wrote:
> You can always `find ... | xargs cat | troff /dev/stdin`

=2E..not if you need to preprocess any of the input.  With tbl(1), for
instance.

> My problem is probably that I don't know what's done by `gropdf`, and
> what's done by `troff -Tpdf`.  I was hoping that `troff -Tpdf` still
> didn't need to know about the entire book, and that only gropdf(1)
> would need that.

This stuff is documented in groff's Texinfo manual, and in the groff(1)
and roff(7) man pages.

Here's an excerpt of the last.

Using roff
       When you read a man page, often a roff is the program rendering
       it.  Some roff implementations provide wrapper programs that make
       it easy to use the roff system from the shell=E2=80=99s command line.
       These can be specific to a macro package, like mmroff(1), or more
       general.  groff(1) provides command=E2=80=90line options sparing the=
 user
       from constructing the long, order=E2=80=90dependent pipelines famili=
ar to
       AT&T troff users.  Further, a heuristic program, grog(1), is
       available to infer from a document=E2=80=99s contents which groff
       arguments should be used to process it.

   The roff pipeline
       A typical roff document is prepared by running one or more
       processors in series, followed by a a formatter program and then
       an output driver (or =E2=80=9Cdevice postprocessor=E2=80=9D).  Commo=
nly, these
       programs are structured into a pipeline; that is, each is run in
       sequence such that the output of one is taken as the input to the
       next, without passing through secondary storage.  (On non=E2=80=90Un=
ix
       systems, pipelines may have to be simulated with temporary
       files.)

        $ preproc1 < input=E2=80=90file | preproc2 | ... | troff [option] .=
=2E. \
            | output=E2=80=90driver

       Once all preprocessors have run, they deliver pure roff language
       input to the formatter, which in turn generates a document in a
       page description language that is then interpreted by a
       postprocessor for viewing, printing, or further processing.

gropdf(1) is the output driver for the PDF "device".  So "groff -T pdf
input.tr" and "troff -T pdf input.tr | gropdf" are equivalent.

(Yes, you still need the `-T pdf` arguments, even to troff proper.

roff(7) again:

Concepts
[...]
       When a device=E2=80=90independent roff formatter starts up, it obtai=
ns
       information about the device for which it is preparing output
       from the latter=E2=80=99s description file (see groff_font(5)).  An
       essential property is the length of the output line, such as =E2=80=
=9C6.5
       inches=E2=80=9D.
)

> > Your model of slicing and dicing man pages to be processed
> > individually is doable using a website to serve the individual
> > pages, see:-
> >=20
> > http://chuzzlewit.co.uk/WebManPDF.pl/man:/2/accept
> >=20
> > This is running on a 1" cube no more powerful than a raspberry pi 3.
> > The difference is that the "magic sauce" added to each man page sets
> > the links to external http calls back to itself to produce another
> > man page, rather than internal links to another part of the pdf. You
> > can get an index of all the man pages, on the (very old) system,
> > here.
> >=20
> > http://chuzzlewit.co.uk/
>=20
> Yep, I've seen that server :)

Is it just me, or are the fonts not getting embedded in the PDFs
generated by chuzzlewit?  They look fine on my desktop machine but
pretty bad on my Android tablet.

Regards,
Branden

--l5fxslis6imsykn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVarGUACgkQ0Z6cfXEm
bc52nw//dkfdSfZAzXTxL19fpL8FK79GMAbVTnS8Lmmd2+Zt3pNEXBOEEJM147H9
Bg0HLqYzUSXr+i5fB2pie0gx+bnXkHP6LJ+9jkTVmJmQBt1gxKTjkaLpvo7bU5xm
8vWs2aJ5V9vo80u3bPa7ipARNBKISlu4SxbeeacIKLvlVY6IuAPgygeuOrWoImm5
Z3V0VgN6GLqnnXY29ssxn5fgXXw1glUMYv9ksh/kKmx5P6IOSToDt23ickJt45Vr
hHT8jDELuv0oYh/+OJNHPjx2TVLfcQtKHBcUxRW2z2cgMf4nHNa0IptcJGRiPScl
8qM6hKaQ+wj9/584W0hu1PSfWPbOlnGg0/tKEJRcgvL6e1a2TBSeG22c860U0Trb
S1f/FLC3NTz55Hk1LLe4Lq4xOuyqkIfFKm4C40pP78ryDcLUnZyPu8CQwMXXrC/H
KvdYTRAovP+139pLKuxXIDBnjqWzjvsgvhcI/PxinydNAJF65dHDyZPNbfaC9SSc
tmDGL3XEDmhfv6uRKlFso3+zISRnUkz8pnDSkB15Ai4KebTxiBvyiNKxP9UdZz7Z
ze1uYiAWcM8izWj4BvDutGuj+18Utj9mJwA/GKkDSb4FR4adkacM8p44Ph+Z1aG2
7eLQ6u10XBzkLpGiqU6icAiiaiWXnJHS4We/Ux7poTad3TM1NEw=
=gEpe
-----END PGP SIGNATURE-----

--l5fxslis6imsykn4--

