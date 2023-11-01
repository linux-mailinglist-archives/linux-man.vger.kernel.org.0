Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0516F7DE4E7
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:56:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344277AbjKAQ4u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:56:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232284AbjKAQ4t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:56:49 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E74EC115
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:56:42 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5872c6529e1so3086eaf.0
        for <linux-man@vger.kernel.org>; Wed, 01 Nov 2023 09:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698857802; x=1699462602; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Htg+k288BxbKHjd5hW92ulo9PufjT2/yA7qoTRx1EYc=;
        b=DV624sOTN349N0F7Y0me1Kx2nOdwxWjV8vnpu7+JQRng32A+hdGJHzIEAMtofQeoqS
         kHiRDagCwEwpeWAiSRnigGAn3w5xIzDKabA+FCvVm9YcvTJM6TdaG+2B9//c2zQmVYFb
         r2OW2Bht7bpgeeMvtURB5RrV/ElXeMIad5vg5Dzg7exWUNv4kMBj1TmgcUhAHD33Ud9g
         OulGo7Czmx/QvNobf7PlXKAqXvkqU6Z7Rdso8Vhci33SXa1IjuT29xFBh+FseMTlNVYG
         W3wzL+uqM5zElMuwCITFDXlN0RZ0T5DYbmzGbj2Pbe/iQM5xtJxUU+6c6bLf3/R79cjm
         nB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698857802; x=1699462602;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Htg+k288BxbKHjd5hW92ulo9PufjT2/yA7qoTRx1EYc=;
        b=lqIp+aCc4IeHHcl78G3wwlOAL4MUttRYTf2VP73I62CGndDwlwx3Pi6Z9mae6VLKJV
         Up5M+FNSYbwzlT4mJJA2bYZuMwEEgDxebuoDChz7BipDTv87sEOfjdXkd2yV3YIJe/4Y
         /iQJv5lb09fpF+0+Yd8nrQ8HoNGjDJXAZ6bQqimy4PlcgOobBG0A25lvIIvtNaHBhs+a
         soFuGzmGxaV7T7ShPm2rEFKPwZHMxYOzfzwEW0UXHnJDtZMydtQZJsN7JbKOTenrzz/M
         EStUzOVu88bOpUZ5TI5oFmNpUVEHcyRP66d0u4DLHbB18SgorWQ8NRbxQcYRCBb156Hu
         SBhg==
X-Gm-Message-State: AOJu0YylHH2HQYsNi7ze9vq5dHHRLIjDkGfhSKR/uk4yqOv/md37Hv0q
        GpmD1n3bQbxBZ7sVmGb43ojaRUqNyek=
X-Google-Smtp-Source: AGHT+IEFf3ETuQ8Y+PKvhY8DAC9L43Fq73Px8gLwU+FKGDQOJRKnbm402r8ubQZGnN2h3g4oEX5Dvw==
X-Received: by 2002:a05:6820:986:b0:583:fc94:c403 with SMTP id cg6-20020a056820098600b00583fc94c403mr16799646oob.0.1698857801864;
        Wed, 01 Nov 2023 09:56:41 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y23-20020a4ad657000000b00581df2cb1e6sm662010oos.32.2023.11.01.09.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 09:56:37 -0700 (PDT)
Date:   Wed, 1 Nov 2023 11:56:32 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: Issue in man page clog.3
Message-ID: <20231101165632.44yxu5zr5gzbl7po@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ad6ywpmxvkbs5l2o"
Content-Disposition: inline
In-Reply-To: <ZUJoBtadvsPTwFXh@debian>
 <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ad6ywpmxvkbs5l2o
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-11-01T16:00:16+0100, Alejandro Colomar wrote:
> On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    [-pi,pi] means both -pi and pi are included, this does not
> > make sense, either one must be out of the interval?
> >=20
> > "The logarithm B<clog>()  is the inverse function of the exponential
> > " "B<cexp>(3).  Thus, if I<y\\ =3D\\ clog(z)>, then I<z\\ =3D\\
> > cexp(y)>.  The " "imaginary part of I<y> is chosen in the interval
> > [-pi,pi]."
>=20
> I don't know this function.  Please suggest a fix, and CC glibc so
> that they can review the change.

The complex logarithm is the inverse function of the complex
exponential, with which you may be familiar if you've taken a course in
ordinary differential equations.

Euler's formula famously relates the trigonometric and exponential
functions.

exp(i*x) =3D cos x + i sin x

While the exponential function is aperiodic, that is for y=3Dexp(x), no
value of y ever occurs more than once for any real x, this is not true
of a complex x or (equivalently[1]), the complex exponential, or real x
multiplied by the imaginary unit i as seen in Euler's formula.

(Recall that for any x, sin(x) and cos(x) take on values in the interval
[-1, 1], and i is a constant imaginary unit that we can interpret as a
y axis.  Thus the complex exponential maps any real x to a point on the
unit circle.)

In other words, for us to have an inverse function for the complex
exponential, we must impose a restriction on its range, lest it give us
an infinite vector of solutions.  Geometrically, the complex logarithm
asks, "given a point on the unit circle, which value of x to the complex
exponential corresponds to it?"  But there is so single answer to that
question.  It is still a useful one to ask, so we can apply a constraint
on the range of the solution which will make the complex logarithm
one-to-one.

We do a similar thing for the arc sine function.  Given a value c in
[-1, 1], what angle theta has c as its sine?  There is an unbounded
number of answers.  If you plot y=3Dsin(x), you will see that y takes on
every real value from -1 to 1,[2] repeatedly and unendingly.

At any rate, I think this statement:

> > Issue:    [-pi,pi] means both -pi and pi are included, this does not
> >           make sense, either one must be out of the interval?

Needs more support.  clog(1) =3D pi and clog(-1) =3D -pi.  The limits of
machine representation are applicable here, so you'll only ever get
values "close to" =B1pi anyway.

Also, POSIX and the ISO C committee didn't seem troubled by this;
the same closed interval is issued in POSIX Issue 8 Draft 3, which says
(in so many words) that the function's definition comes from ISO C99.

Oh, now that I'm about ready to send this, I see Jakub Wilk made the
same point far more concisely.  Who's surprised?

Regards,
Branden

[1] ...by applying of properties of powers such as x^(ab) =3D x^a * x^b.

[2] I, uh, don't actually have a proof of the claim "every value".  And
    in fact I am unlikely to ever have one.  Per Niven's theorem, the
    elementary trigonometric functions never take any rational values
    _except_ 0, =B11, and =B11/2.[3]  This may be a startling result to
    insightful students of elementary calculus, as, if one is paying
    attention, one should then wonder why we can say with certainty that
    any of these functions are differentiable, since there are jump
    discontinuities in them--in fact a countably infinite number of
    such discontinuities.[4]

    Since our domain of discourse is computer arithmetic with finite
    precision, it's an academic question, as with sufficient precision
    you can have a sine function that will produce every representable
    value within the function's range[5].

[3] https://en.wikipedia.org/wiki/Niven%27s_theorem

[4] I think it's a set of measure zero but I am now exceeding the limits
    of my training.  I need more topology and theory of functions of a
    real variable.  And to learn Lebesgue integration.

[5] I don't actually have a proof of that, either.  It seems not
    impossible to me that the way IEEE floating point is defined means
    that functions with the properties that trig functions have might
    skip some representable values due to the nonlinearity of that
    representation (the magnitude of error in floating-point math is not
    constant, which is a reason some applications prefer fixed-point).
    An "obvious" possibility is the set of rational values that have a
    precise floating point representation in base 2, so 1/4th, -1/8th,
    and so.  I need more numerical analysis, too.[6]  Anyway, one
    counterexample disproves my claim, so let's settle for "almost
    every", where we are using "almost" in a hand-wavy manner, not the
    way someone studying the Dirichlet indicator function might.

[6] Obligatory citation of mandatory reading (Goldberg 1991):

    https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/02Numerics/Double/=
paper.pdf

    Press et al.'s books on numerical methods ("numerical recipes in
    $LANG") are surprisingly controversial.

--ad6ywpmxvkbs5l2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVCgzYACgkQ0Z6cfXEm
bc5b1A//XwsuEjKpZ6ATgsyZA1yCy8bdrjdKHnMsk4soWetw5YJwp59WP2ukbGPa
1c7kzfvnn3MpK6o0deDyWSO/SaKVfV2D8x/PcY67mFjJb/dWpVUU+cNM8qs+bCJD
e9T/AFRyS3dzY9w+i1piPKLrimQWHjMoeiM/H+jkbOoCES8EcuhUuR3jEWB6E24/
h69PAxNC8o+9JTENSzms7qgfpTIFTi9DVJIhiTLHfrETgXju6uWkzDBWp0vjwNCf
0mJ/jEjqGisBEkXFUrUCXyGnZ/bz9gWlkPGBuKUsmQI0QrFki3feEAfZCPVEOwhf
nx9x2iintIYRXidSfAWIVJ6Cxh4SAo7nxiylYGqAAKktmjF8OTe3j96dp5pjRVNF
3JxBbdSAU8YKlhQCCvME/7SaRFXCYDFkHj6iO4sLzwgwVic7Q7xW6hZH9MCRuks2
6V1G7Dr04oKV2VH5R0R2ECfNMVp0Do6xclyrtY/sec0OibWgG55zeSMCF6/kcPJR
NWQiQulZRT93JTK8L+y1UrR00+q/6mx0eqRDOAxnP77KOqU2Xyx78+E6tyDjYreg
lFVZpuG6vjUqODJK7rwTI9t4KgnhvRPrFyZQqUHFm7H+GTSKhEaD3tPjJBIgt8dP
4HVuAj+knmHPc9k6+qQHOLxFSypLr0aG08hQu8ltp6iCsNV+7G0=
=zpFs
-----END PGP SIGNATURE-----

--ad6ywpmxvkbs5l2o--
