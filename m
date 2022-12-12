Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEFBE64A751
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 19:41:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233392AbiLLSlP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 13:41:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232773AbiLLSkw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 13:40:52 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDCD118387
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 10:38:47 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1445ca00781so9514434fac.1
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 10:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5u34DZ2giijsqAdKGFhgOHP9wR/uRuh1z2drFNPyjVg=;
        b=HZ2C0ug06XD5i3o2KgAGQtDs5MPtxUlyIxxm4Kh4HkxGJtzGW3yBTUuinjiCAENx3T
         CUi3jDThltc0hqlWF2PxDX83N76FRZS+rvQ9ToErucabVwlfwK28oI9j2LGDhdOhSEeS
         2fZDvlqQdXvrfLZ/ELUa5qWaGBIFDz7VuGLLO7mcJ2hvLPiNETc0yTO3vWXVEEnDZzaV
         TmcNfzXypoir3YAYflhZADVj0EtXeu3LsCXtc7RxGK7vs8MSdu7QJ7VFJLtAR+be6v5o
         gjACRkVxfoTawQTNykhOFVGavfAe42kbbFh0yNdWj/xrCOzEDy40htB0Z2QUP5y6ArfU
         6gdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5u34DZ2giijsqAdKGFhgOHP9wR/uRuh1z2drFNPyjVg=;
        b=gvDaWfVAUVGcXiNOvDBu7TzmwEkpOo9V+v5vJs1kTfcOPNeIE1bGd137eZAzlRHz4D
         eMrpoctt910ll8bkPcH80dIMNOnQTG2MDYnGg5KcXrJdEacYKbo4W0VpTBIXZ+i4zPZH
         1W2fmjTa2atdOGJVzFbvz37WqbplrtfJo1EVo+DOjGMpOVbVwPisSDb1tjIggFst5iRV
         iftd1kXQVBcKK+TyYSYr9CR8WvB0nK4dHbHhn37z4WO6LpB0XJ8H5MYTwKDOi46X74xO
         uexblUv4ZZJHZlJ1dBgtT7FH7j+Phj+ufprAewqhuCjKDhRfJCXHbm4RXiV2Eh7lnWAw
         x34A==
X-Gm-Message-State: ANoB5pmbdhbBiNqtpnAdu0Rj5ROlxdmuN4eOMHpBFYqlaDAnuP760ZvM
        oM5g0XRPm2uiGDZxiLA+lDPKERukRKnDWQ==
X-Google-Smtp-Source: AA0mqf7ochRjv40BnMhn6h0pR2U+vw6dBz8nay/PRIgPbJa9NgKNKodaAgcr9vfgUFa29OhVMyaSXA==
X-Received: by 2002:a05:6871:87:b0:148:592f:83d2 with SMTP id u7-20020a056871008700b00148592f83d2mr2182025oaa.6.1670870322342;
        Mon, 12 Dec 2022 10:38:42 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r20-20020a05687080d400b0012d939eb0bfsm268772oab.34.2022.12.12.10.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 10:38:41 -0800 (PST)
Date:   Mon, 12 Dec 2022 12:38:40 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: groff man(7) extensions (was: [PATCH 1/3] strcpy.3: Rewrite page to
 document all string-copying functions)
Message-ID: <20221212183840.jhkgkxllwmxr5p3p@illithid>
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
 <20221212142418.27615-1-alx@kernel.org>
 <cfb105a2-4bdb-c317-60b0-0771cc6201e8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2yjhmlj5zekcox2y"
Content-Disposition: inline
In-Reply-To: <cfb105a2-4bdb-c317-60b0-0771cc6201e8@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2yjhmlj5zekcox2y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-12T18:33:52+0100, Alejandro Colomar wrote:
> On 12/12/22 15:24, Alejandro Colomar wrote:
> > +.\" ----- RETURN VALUE :: Deprecated ---------------------------------=
-/
> > +.SS Deprecated
> > +The following functions return
> > +the length of the total string that they tried to create
> > +(as if truncation didn't occur).
> > +.IP \(bu 3
> > +.BR strlcpy (3bsd),
> > +.BR strlcat (3bsd)
> > +.PP
> > +The following function returns
> > +the length of the destination string, or
> > +.B \-E2BIG
> > +on truncation.
> > +.IP \(bu 3
> > +.BR strscpy (9)
> > +.PP
> > +The following functions return the
> > +.I dst
> > +pointer,
> > +which is useless.
> > +.PD 0
> > +.IP \(bu 3
> > +.BR strcpy (3),
> > +.BR strcat (3)
> > +.IP \(bu
> > +.BR strncpy (3)
> > +.IP \(bu
> > +.BR strncat (3)
> > +.PD
>=20
> I realized that the above doesn't produce exactly what I wanted.  I
> wanted this:
>=20
>        The following functions return the dst pointer, which is useless.
>=20
>        =E2=80=A2  strcpy(3), strcat(3)
>        =E2=80=A2  strncpy(3)
>        =E2=80=A2  strncat(3)
>=20
> But I got this:
>=20
>        The following functions return the dst pointer, which is useless.
>        =E2=80=A2  strcpy(3), strcat(3)
>        =E2=80=A2  strncpy(3)
>        =E2=80=A2  strncat(3)
>=20
> I see various possible solutions, but which would you recommend?
>=20
> I've thought of:
>=20
> [
> [...]
> .PP
> .PD 0
> .IP \(bu 3
> [...]
> ]
>=20
> or
>=20
> [
> [...]
> .IP \(bu 3
> .PD 0
> [...]
> ]
>=20
> I was thinking about your future (I hope) .LS and .LE, and how they
> would also fit in here.

Either is fine; if it were me, after threatening another radical
innovation, I would probably go with the latter, using ".PD 0" _after_
the first `IP` macro.  The hazard there is that if you re-order the
list, you might move the ".PD 0" with it accidentally.  Your earlier
approach avoids that at the cost of a _seemingly_ useless `PP` call.

Paragraphing macros in man(7) are not enclosures; they are spot
marks.[1]  This is an impedance mismatch with the brains of people who
grew up on HTML/XML.

Also, you don't need to keep restating the indentation amount ("3").

  Horizontal and vertical spacing
    The indentation argument accepted by .RS, .IP, .TP, and the
    deprecated .HP is a number plus an optional scaling unit.  If no
    scaling unit is given, the man package assumes "n".  An indentation
    specified in a call to .IP, .TP, or the deprecated .HP persists
    until (1) another of these macros is called with an explicit
    indentation argument, or (2) .SH, .SS, or .P or its synonyms is
    called; these clear the indentation entirely. [...]

(ms(7) works this way, too, though its macro repertoire differs a
bit.[2])

I haven't given much more thought to `LS` and `LE`.  I haven't soured on
them; I simply have more urgent fish to fry.  The possibility of having
`LS` accept an argument to set the paragraph indentation so that `IP` or
`TP` items can be rearranged freely within has occurred to me.  So has
making the inter-paragraph distance itself an argument (possibly just a
Boolean).  So has support for auto-enumerated lists.  But then I wonder
if man(7) authors really need a macro that is as tricked-out as
mdoc(7)'s list macros, which take up about 5 of its 31 U.S. letter-sized
pages of documentation.  That's heavy.

Here's a list of man(7) extensions to which I have given consideration.

	KS/KE	Keeps.  Easy.[3]  Harmlessly ignorable by other
		implementations.
	LS/LE	List enclosure.  Throws a semantic hint (e.g., for HTML
		output) and eliminates final use case of `PD` macro.[4]
	DC/TG	Semantics at last.  Sure to rouse anger in people who
		decided long ago that man(7) can't do this.[5]  Having
		looked more closely at mdoc(7) since writing that, I
		think `DC` should accept a _pair_ of arguments as its
		second and third parameters for bracketing purposes.
		But again, most man page authors would never need to
		mess with `DC` at all.

`DS`/`DE` have been squatted on by groff man(7) for 13 years and have
precedent going back at least to DEC Ultrix, but apart from using them
as a sort of ersatz tbl(1) for people who don't want to use to use
tbl(1),[6] I haven't been able to come up with any use cases for it.

Regards,
Branden

[1] For the curious, all the paragraphing macros in groff man(7) call
    the same common macro.  (They all perform additional operations.)

=2E\" Break a paragraph.  Restore defaults, except for indentation.
=2Ede an-break-paragraph
=2E  ft R
=2E  ps \\n[PS]u
=2E  vs \\n[VS]u
=2E  sp \\n[PD]u
=2E  ns

   This internal macro name is subject to change.

[2] The new ms(7) manual for groff 1.23 appears to have stabilized.[7]
    Here's a URL to a work area I use to proof-read groff documentation.
    I invite you (and others) to check out ms.2022-12-07.pdf, or
    whatever version is there at the time.

    https://www.dropbox.com/sh/17ftu3z31couf07/AAC_9kq0ZA-Ra2ZhmZFWlLuva?dl=
=3D0

[3] I initially shied away from dealing with nested diversions, but I
    think I know how to cope with them now.  It seems that in a lot of
    cases, "bubbling up" as illustrated in groff Git's tbl(1) page is
    all that is required.

[4] https://lists.gnu.org/archive/html/groff/2022-05/msg00026.html
[5] https://lore.kernel.org/linux-man/20220724172947.qlunrfnje56yaasv@illit=
hid/
[6] https://lore.kernel.org/linux-man/20220722222045.y7i3yc7d6agygien@illit=
hid/

[7] By saying this, I increase my ability to find a flaw in it, or for
    a reader to report one.  We use all the QA tools at our disposal.

--2yjhmlj5zekcox2y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOXdSQACgkQ0Z6cfXEm
bc7j4g/+JgSWOo6iPlJxbEr5mGBRiC6bmKXvo7cVmdD3Sc8OgB0JuYExsaH0J+Aa
H73OfpP07e2CjA1tEmc34cVsQ6z1WRHbPtgfYKSmIGOedDSI5GuxlJW8jN5BhW2C
F2H+6pMnbhWrF4QR5BqiT6QeSfbLjNhVRSHe5p/noOxxkBVP8wfHEfwzynHUnm81
1d15rm0PeBoHh1/R8t4+uu/3rwO+ET5y9csJE0zxxyaj+3vPX+vscrEc7yyB9ixI
ycP6+SGxSBZ9NXl1NkCoWRTRG+PsO/pg4g0pj1dMXccHZvQsQeFNwg4TzdhOj7Co
jq7KGOWhOwP9O8yjfYD++BdKQvclhcP9vA/4fYH+4O6egIPnfwIRg6zvavJaBsjl
x1KkLTeaHNkoDfwOa0BaWrrirzuSLQNItbNLTY4krJXVTIyQ7GWRG5vhbz9MTuCh
vJ6nQ1SRGQ5JWn/WtiTKYVcWNW8GSrPiAoZOm8uS9I9o9h9mMJQgDnSq6s21+C/6
yXiDFchZH+8+9bvt9LtNhWdn8ZrdpY/FLnawbYI6UEwvmUhDosDKUr0ugSgmLm2s
1EU5iRp2MQlX4Lg2Gb2mT1RnW3z70vzE9iBe0s9uQ5zwBNMU/YbTKUhTOp7SpdlF
YyAmQtt3RwMul9wFssO779EX6U2X7kQYpRikKlSRXl3ny8dmBe0=
=uN9H
-----END PGP SIGNATURE-----

--2yjhmlj5zekcox2y--
