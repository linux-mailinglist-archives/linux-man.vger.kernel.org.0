Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1F76C8B07
	for <lists+linux-man@lfdr.de>; Sat, 25 Mar 2023 06:08:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjCYFIm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Mar 2023 01:08:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjCYFIm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Mar 2023 01:08:42 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE2119F07
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 22:08:40 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id i5so15708114eda.0
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 22:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679720919;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VS4fL6l0soc43js9oV4tOPHamPSNPZSwJkLqnDGEXVk=;
        b=kZ/wyRi5ly2PASgvowxol5fWZj+LLA2yecryRdIS2Llc6OP/qRV73TwyAyBOxz+xeC
         dbE+bJ6uuQW+9TBpzc/2y8uB/LsEPhk/CFdYjG+J1r22vcnpNCW8NsYEPyfGqmwphdPh
         Tc1+UulyIHG/maQkrvVcGK1HfvWH5LchWW4QZnpq4z4i4pvxur39t2xk64IrYteCqJGj
         GLW4M8eTT9I3tGh/64T62rNzTwz/8kRdkpQR9VH9qSCslRloC3hTe5pOdf/7IZcJpBxd
         YIITUvdhSgGPF57cz7kaRpDmo1MP45Rg9lEytk/w7D9c2yuMO2+KFHARQwMKVtFAbX+k
         bEvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679720919;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VS4fL6l0soc43js9oV4tOPHamPSNPZSwJkLqnDGEXVk=;
        b=gQP7uoOqkDPI5gfUdVKEE55MwmpOmIV2SeRsRXvOsxGrxX4nk62uHpvfUmAl3CF7Pa
         /Zza7JJ17vuGgvy7ldFdHNZyHpSuTGe6OL4zWQpf4VzaJipPWI9c5nfm5LgI0bIGajnu
         SKaXAGYM/6eq0tHHmzUipKy8BLl9Ucx/6MN8V9Fuaat98DwdgkHOLtTsjDqR7qc4/SH3
         L7sNhhm8IsShHhbIb7BDrtQXX5Mm8ss2XNn1kVilm39sXcj6isT8iCIY+oGMPe4YVZN0
         VOBP5+plza9zyIFkTR8udbUM37MwaXMMiw6a5q7BI6z/C0uJNDTmxDetacvCI0ZbE9vT
         ydeg==
X-Gm-Message-State: AAQBX9fvQaA25HVu9g4voi2jOYGd5aYRrKgIDibl3LusbQ0iv4pVEeTY
        piiFeQPuxhJ0xPBZFX8AAro=
X-Google-Smtp-Source: AKy350Zx4dBqZa39u5DaNujYZYFZHZ7LpchghPV+/HEBT1s5OtJaiGD4CKvoNCX9eUQ7LluSXsrNjw==
X-Received: by 2002:a17:906:caa:b0:8b1:3821:1406 with SMTP id k10-20020a1709060caa00b008b138211406mr5393043ejh.45.1679720919311;
        Fri, 24 Mar 2023 22:08:39 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id x11-20020a1709064a8b00b009342fe44911sm8290974eju.123.2023.03.24.22.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 22:08:38 -0700 (PDT)
Date:   Sat, 25 Mar 2023 00:08:32 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Sam James <sam@gentoo.org>, linux-man@vger.kernel.org,
        Tom Schwindl <schwindl@posteo.de>,
        Guillem Jover <guillem@hadrons.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
Subject: Re: [PATCH v2] stdc: some improvements
Message-ID: <ZB6B0KJgvwexgRnR@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Sam James <sam@gentoo.org>, linux-man@vger.kernel.org,
        Tom Schwindl <schwindl@posteo.de>,
        Guillem Jover <guillem@hadrons.org>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
References: <ZB0v95XCMia3ibVj@dj3ntoo>
 <a16c019b-66dd-adc1-769c-8a6fb813e288@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="SiXeBAG12kU1H1dr"
Content-Disposition: inline
In-Reply-To: <a16c019b-66dd-adc1-769c-8a6fb813e288@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--SiXeBAG12kU1H1dr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 24, 2023 at 13:21:58 +0100, Alejandro Colomar wrote:
> Hi Oskari, Sam,
>=20
> On 3/24/23 06:07, Oskari Pirhonen wrote:
> > - Some small stylistic changes such as removing trailing semicolons and
> >   noisy `shift` calls.
>=20
> But they are sooo pretty =3D)  That's a little OCD of mine putting
> semicolons in shell scripts.  Maybe I read too much C, but it feels
> good to see punctuation marks at the end of sentences.  I prefer to
> keep semicolons.
>=20

Style is obviously your call here.

> > - Ensure pcregrep exists. It is installed as pcre2grep on my machine, so
> >   check for both and error out if neither is found. Prefer pcre2grep
> >   (installed by libpcre2) because libpcre is EOL.
>=20
> Hmm, I didn't know about pcre2grep(1).  I've applied the following:
>=20

=2E.. snip ...

> =20
>  libc_summ_c89()
>=20
> > - Make libc_summ() standard-agnostics by passing in the filter
> >   expression and the path to the doc as arguments.
>=20
> It's really standards agnostic except for C89.  ISO C drafts
> are pretty much all the same except for the original one, since
> I was really ANSI C.  That's why C99 and C11 (and C2x if we add
> it) can reuse libc_summ(), but C89 is an exception.
>=20

That's good to know.

> > - Make libc_summ() error out if the doc is not found.
>=20
> The shell already errors out with a quite readable message:
>=20
> $ ./bin/stdc c99 fgets
> ./bin/stdc: line 54: /usr/local/share/doc/c/c99/n1256.foo: No such file o=
r directory
> $ echo $?
> 1
>=20
> Is it not good enough?
>=20

I suppose that is fine for me. I may be too used to having to performing
my own checks for files that I ignored Bash being able to do the same.

> > - Give basic usage information on usage errors.
>=20
> I prefer writing a man page.  It keeps the source code simpler.
> Please keep this suggestion around, and resend it if you feel it's
> necessary after having a man page (1 or 2 weeks maybe).
>=20

Heh. Perhaps you're biased towards man pages ;)

I'll keep it around (rebasing as needed for current and possibly future
edits).

> > - Make the standard version match case insensitive.
>=20
> Okay.
>=20
> >=20
> > Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
>=20
> Please send individual patches for each of the logical changes.
>=20

Whoops. Will do in the future.

> > ---
> > v1 -> v2:
> > - Prefer pcre2grep from libpcre2. Suggested by Sam on IRC.
> >=20
> >  bin/stdc | 101 +++++++++++++++++++++++++++++++++++++------------------
> >  1 file changed, 68 insertions(+), 33 deletions(-)
> >=20
> > diff --git a/bin/stdc b/bin/stdc
> > index 8c725a2..0d322af 100755
> > --- a/bin/stdc
> > +++ b/bin/stdc
> > @@ -1,65 +1,100 @@
> > -#!/bin/bash
> > +#!/usr/bin/env bash
> > =20
> > -set -Eefuo pipefail;
> > +set -Efuo pipefail
>=20
> Why not set -e?  It's not documented in the commit message.
>=20

I forgot to mention that in the message, but it's no longer relevant
since you switched it to just pcre2grep. With `set -e` it was aborting
the script when `type -P` failed.

=2E.. snip ...

> > =20
> > -case "$1" in
> > +case "${1@L}" in
>=20
> I'm not a fan of shell features.  I prefer some command like
>     "$(printf "%s" "$1" | tr [[:upper:]] [[:lower:]])"
> which is much more readable (IMO).  Does that look good to you?
>=20

Fine by me.

> >  c89)
> > -	shift;
> > -	libc_summ_c89 \
> > -	| grep_proto $@;
> > +	libc_summ "$c89_filter" "$c89_doc" \
> > +	| grep_proto "$2"

=2E.. snip ...

> > +esac
> > +
> > +# vim: set noexpandtab:
>=20
> I'm not sure we want vim comments like this one for every file.  Aren't
> they too noisy?  But maybe it's just me.  I use things like the following
> for when I contribute regularly to projects that use a different rule for
> indentation:
>=20
> au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal expandtab
> au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal shiftwidth=
=3D4
> au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal softtabstop=
=3D4
> au bufnewfile,bufread ~/src/linux/man-pages/*/man*/* setlocal tabstop=3D5
>=20
> au bufnewfile,bufread ~/src/nginx/* setlocal expandtab
> au bufnewfile,bufread ~/src/nginx/* setlocal shiftwidth=3D4
> au bufnewfile,bufread ~/src/nginx/* setlocal softtabstop=3D4
> au bufnewfile,bufread ~/src/nginx/* setlocal tabstop=3D5
>=20
> (tabstop=3D5 is for realizing when something is actually a tab, which for
> example happens in Makefiles in NGINX.)
>=20

This is an interesting idea that I've never considered before.

Thanks for at least accepting some of the suggestions.

- Oskari

--SiXeBAG12kU1H1dr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZB6BzAAKCRCp8he9GGIf
EUG5AP9hMGUczNziC2IeDaKaX6yIw3pxlng07/+IKEQjHxiRZwEAmAPBwq68lhl6
jfzIthiohIIDvOGYcDrXrGq7/sH9ZQQ=
=RdFJ
-----END PGP SIGNATURE-----

--SiXeBAG12kU1H1dr--
