Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B647E5ED1
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:45:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbjKHTpO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjKHTpN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:45:13 -0500
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B018F2118
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:45:11 -0800 (PST)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1f00b95dc43so6526fac.3
        for <linux-man@vger.kernel.org>; Wed, 08 Nov 2023 11:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699472710; x=1700077510; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oy8QcHmGQeQn3SDqp7chTDx4ryDP/w2M47H2ujS2zbs=;
        b=Cg2DNZv3mk6zAnxJgQ6aQvjm1aLvEjwIovM2HRKNgzYIXC+nOWE8xiXZTvVVbA5xZR
         Z7KBynHSSb+SNzpCMFCOUMMqRa0HUtSY2/SSXskBnI9I29g9iqgNIKA7MvCjXZTblZNZ
         tNaS+iYgwB3EWN7C19CvzZKXhwuizRu/d5+7MvtHOGg7KzZAdL4xEmT6CYmtmgan/zbO
         UOb9Yzm0DGR6zwyf3psOTzBtcMjpKjgXjO/Zrd/nbs1uYbVeOf5gt+DnilGkDwrowz7t
         8y3zFT836BCQSRHkpWTj/FofuVsz0rsYrYaeGN1wKj7rhrih+uS1SS6B3rG5pu8BemZl
         vohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699472710; x=1700077510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oy8QcHmGQeQn3SDqp7chTDx4ryDP/w2M47H2ujS2zbs=;
        b=rlbtnUqsUFzSncw0MfX7Tz12+Jp/J50j4+bXVeutXdTuSlWXejcStrP80n4oaru/4+
         +O1eeYOs94UqtMXWwtlExRzOylVvJWma5MnjAKvUg/ZY6gsKEGB+TpvzCn7ZXA2nHmNn
         qeYa8QBzHkcutPzSrttgheNUIfSZ+LO8ppNTN7uo+31a4kgdEfoaImS05phWsNPJ4sHe
         GrAcvjlcRP7oKOeTuLC0jDG+x69qSgzCNiGQ2N3WwdBVzllhMnXg3FK/rj3dMU7KoNZj
         1EfzK/al58XcTXz4EocxGBrZSqvNVrae6EacQr0hwRKSckrTkFdPx1aGgvXj3tmFtkfP
         5oQA==
X-Gm-Message-State: AOJu0YydPVYOWvqyQFHI2Dcdlz+VPZ+qSBY6uRdYQRL6fOhCA83+cCpN
        Jq1wgODf9JR/vN5LugEtn+RaqsF0k2s=
X-Google-Smtp-Source: AGHT+IH7CyvC12nuClX9CkE9qhWVAckyEAVAhYuB23fx9NiWOqZ2WXjMgnfVh1us+C78ha7DumYQsg==
X-Received: by 2002:a05:6870:2a43:b0:1ea:85a:db2e with SMTP id jd3-20020a0568702a4300b001ea085adb2emr3086018oab.45.1699472709782;
        Wed, 08 Nov 2023 11:45:09 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ck4-20020a05687c048400b001f224cbbde1sm18454oac.41.2023.11.08.11.45.07
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 11:45:08 -0800 (PST)
Date:   Wed, 8 Nov 2023 13:45:03 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <20231108194503.vljh2goitqroqceu@illithid>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5ypolkky2nxwvxeq"
Content-Disposition: inline
In-Reply-To: <ZUukRqsFNr7v_2q7@debian>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5ypolkky2nxwvxeq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[bouncing a copy to linux-man with PDF attachment stripped]

Hi Alex,

At 2023-11-08T16:07:42+0100, Alejandro Colomar wrote:
> I understand your point of view, but disagree with it.  Deprecation by
> ISO C or POSIX takes very very long.  We had gets(3) for decades until
> they realized it should be removed from the standards.

I think it likely that the humans involved in the decision-making
processes realized that gets(3) _should_ be removed a long time before
it actually was.  It is often difficult to get to the truth of why there
is so much inertia, particularly when large commercial vendors are
involved; such entities have long traditions of opacity.

Sometimes it is because they send relatively clueless people as
representatives to the standards body, because they don't value
standards development as "real work" (how does it generate profit?),
because it's a handy place to dump someone who's been awarded a
sinecure--or who annoys many colleagues but isn't worth the effort to
fire, or because that person is on an unstated mission to frustrate a
market rival and doesn't care what the collateral damage is.

My favorite example of the last is when Groupe Bull sent a fool[1] to
the ISO 8859 standardization group.  DEC's MCS (multinational character
set) was a sound candidate to become ISO 8859-1 as-was, but it must have
been thought that this would be "handing a victory" to DEC, so the Bull
representative--one source says it was a Belgian--endorsed disruptive
changes that made the encoding objectively worse for representation of
standard French script.

Sometimes Gallic chauvinism has to take a back seat to giving Maynard,
Massachusetts a poke in the eye.

Source attached.  It's in French.

I therefore think it's beneficial for you to pursue your campaign
against strncpy().  Vested interests cling to interfaces for reasons
they won't disclose, and cargo-cult programmers will employ them for
reasons they don't understand.  One of the fruits of discussions like
these is that we can get the actual technical merits and demerits of
such interfaces on the record.

> So we had it in ISO C in C89 and C99, and only in C11 they realized it
> had to be removed.  POSIX hasn't even removed it yet!  I won't
> hesitate to kill a function just because of bureaucracy.

You can't kill it; implementations will retain it practically forever to
keep old code compiling.  But you can sometimes scare away the cargo
cultists by lighting yourself on fire and waving your arms.

> The standard, especially C89, was just a reflection of the
> commonalities of most implementation.  It was a burden of
> implementations to add new stuff or to remove existing stuff.  Later
> revisions of the standards invented more, though.

And for what it's worth, Dennis Ritchie thought they lost the plot by
doing so.[2]

I admire a great deal of what Ritchie achieved, but I'm not confident he
made the right call there.  One elitist explanation I've seen ventured
is that Bell Labs simply had inherently smarter people than most other
software development shops could gather.  _Maybe_ there is some truth to
that, but I would venture a hypothesis less grounded on individual
characteristics.  The CSRC was a _research_ environment.  It was
emphatically not about measuring productivity by counting lines of code,
or "moving fast and breaking stuff", or how many "Ship It" boxes you've
ticket on your projects in the last year.

Google was pretty explicit that suitability for production-line
code output was a design objective for the Go language.[3]  They had
hired tons upon tons of smart people but found that it was hard to get
their "ship it" metrics satisfactorily high when driving all their newly
hired sheep through the mine fields of C (and especially C++[4])
programming.  An old adage says, "it's a poor workman who blames his
tools".  But when nearly every worker to whom you give a set of tools
struggles with high failure rates, it's time to question the fitness of
those tools for the objective you have in mind.  So Google did, and
attempted to recreate for software engineers what Frederick Winslow
Taylor achieved for factory laborers a hundred years ago.  If there's
less room for individual initiative, creativity, or insight, too
bad--those don't keep the share price up.[5]  You're a grunt.  GBTW.

> In this case, since ISO C has no APIs that use strncpy(3), it could
> (and should) already deprecate strncpy(3) from ISO C.  POSIX still
> needs it while it keeps utmpx(5), because there's no other way to
> correctly write to the fixed-width buffers within struct utmpx.

I would like to emphasize that a fixed-width buffer is inherently an
uneasy fit with C-style strings in the first place.  The major selling
point of null-terminated strings is their length flexibility.  They are
the entire reason we don't use Pascal-style strings, upon which C coders
eagerly spit (too easily, when they embarrass themselves with
strncpy()).  And yet fixed-width buffers are traditionally ubiquitous in
C, especially in the days before the GNU Coding Standards (and
programmers' frequent desires for generality and adaptability) spurred C
codes to use dynamic allocation much more aggressively.

Why were these practices in tension is a language as purportedly shot
through with genius as C was?  Because, in my opinion, it was a bit of
unfinished business in the language.  This is why malloc(3) and free(3)
are managed by the runtime rather than defined in the language proper.
Back in 1970s and 1980s, "everybody knew" that you couldn't have safe
dynamic memory allocation without a garbage collector, and there was no
way to have a garbage collector run deterministically in general, a
fatal flaw in real-time applications.

(Even then, there were alternatives to throwing everything explicitly
onto the heap.[6])

Thanks to particular improvements in compiler development (originally
intended for code optimization), static analysis tools, an influential
(if under-recognized) research programming language called Cyclone,[7]
and a new language--Rust--that is making the fruits of these
improvements available to a wide audience, we're learning to be better
programmers.

=2E..against the resistance of C grognards, who of course vociferously
oppose deprecation of strncpy(3), because (they claim) it never caused
_them_ any problems.

> > Also speaking only for myself, the Linux manpages are welcome to
> > discourage the use of any function that you feel is not a wise
> > choicei for new programs, but the word "deprecated" should be
> > reserved for cases where there really has been a declaration of
> > deprecation by us and/or the standards.
>=20
> If a function is deprecated by a standard or other entity, that will be
> reflected in the STANDARDS or HISTORY section.  For deprecation by the
> manual itself, the SYNOPSIS (and BUGS) sections are fine.  In the end,
> the word 'deprecate' isn't any magic.
>=20
> 	From WordNet (r) 3.0 (2006) [wn]:
>=20
> 	  deprecate
> 	      v 1: express strong disapproval of; deplore
>=20
> That term applies to strncpy(3).

Yes, but Zack raises a good point.  Deprecation by ISO, by POSIX, by the
glibc developers, and by the Linux man-pages project are all different
things, and they all have different implications for portability.  It is
helpful for the everyday C programmer to know which of those
implications to infer.

Were I in your shoes, I would use the term "discourage".

"The Linux man-pages project discourages use of strncpy() {for the
reasons listed above, because ...}."

> But yes, we need to make sure that the APIs that need strncpy(3) are
> all deprecated.  If other Unix systems still need utmpx or similar
> stuff, strncpy(3) will still be necessary.

You might also say this: "The deprecated strncpy(3) is mainly used
in conjunction with other deprecated interfaces, like utmpx(5)."

Regards,
Branden

[1] The term "moron" also comes to mind.  Too strong a term?  Just
    applying Hanlon's Razor here.

[2] https://www.computerworld.com/article/2826125/the-future-according-to-d=
ennis-ritchie--a-2000-interview-.html?page=3D2

    This, followed by his death, is why there's never been a third
    edition of _The C Programming Language_, which I guess continues to
    be a best-seller for its publisher, even though it's not a good idea
    for newcomers to C to learn from it, any more than Kernighan &
    Pike's _The Unix Programming Environment_ is.  (Once you've acquired
    a little historical perspective, they're _excellent_ resources!)

[3] https://go.dev/talks/2012/splash.article

    Just read every sentence containing the word "productive".

[4] https://google.github.io/styleguide/cppguide.html

[5] That has to await your elevation to the C-suite, where more
    marketing dollars will be spent burnishing your reputation as a
    "genius" than any level of personal productivity could conceivably
    justify.  See, e.g., Steve Jobs.  Silicon Valley's thought leaders
    are on a work slowdown, you see--their compensation ratio needs to
    be higher[8] or they won't turn their massive brains to the trivial
    problems of cold fusion or room-temperature superconductors.  Atlas
    ain't shrugging yet, but he's leaning over really far, shooting you
    a meaningful look, and clucking about the dire precedent set by this
    year's UAW strike.  Where are the Pinkertons when you need them?
    And what's Erik Prince up to these days?

[6] https://docs.adacore.com/gnat_ugx-docs/html/gnat_ugx/gnat_ugx/the_stack=
s.html
[7] https://en.wikipedia.org/wiki/Cyclone_(programming_language)
[8] https://www.epi.org/publication/ceo-pay-in-2021/

--5ypolkky2nxwvxeq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVL5T8ACgkQ0Z6cfXEm
bc6flw/+OWr5dxAKfSPkpzhOZlPp5JldTJqfV4L9iKtBjfjLyMQxh1Mr1rcgQF3h
hBC4gVdf5Uv5dOgWjpWs1QbzH1y/27nbsXtBonambVIueNR6LPFC8NNOYC8DZZax
IXNXZ0pyHsXpOhp6Gm8Do9zAkRnHHH5PRu5qLHiCZAysJtXtTBHLVXYHYCX2q2S+
TA+ML+VT8dWU6FDaGpfCnOOayJyt1TPbWb2e0CMva6PeFXB0eHFy57Mg/Nn2Pv5z
5UCsWdU5yo0Nnurje/+fg5YjeadI+fU/1m31W+RkwtgDTdETz9aZE4H8T9p0Nq49
8NM5+t3q/xUIOOuficjONL0U6O3FBxWaYxLVB/a4fLzw7TNcIh1kXYan0m+JGNOs
9RqvB+bnJOjWao5F7VA+mZkwTQZX1GH9BkUknVxgh0aVcPxhPOXnLo77PhN0KSN0
VgrLr7yTMbELhKDjz8WEaVqioSHxIJurE32NibRLJ6YN1oCH8uYuM87WsRIhoHoG
izRKgYQpR/TNXbIyn7EXnAyfqP3R99x8Lsm8G1yaXOy1m1J46AAw6imZykYfu6L4
Tlw3DZ3xjbj2BLIBaJosMcM3+NGXy5vxU9C8Z9OYPWpT2iTkH/44b0TBfGmy+/Q2
bn+n+AS+YLWWiEKskIzh9XdAdo+ZjEXVchCYMGPq+G7NGgDB5uc=
=0DBn
-----END PGP SIGNATURE-----

--5ypolkky2nxwvxeq--
