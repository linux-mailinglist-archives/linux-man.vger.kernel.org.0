Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C1367DE715
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 22:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234379AbjKAUyv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 16:54:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232713AbjKAUyu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 16:54:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9198A10E
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 13:54:44 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E53DC433C8;
        Wed,  1 Nov 2023 20:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698872084;
        bh=elG8iGdOKIOzDjoOfY0I4BWWDUuVdr1S8tiWdq8oMdU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=es2e9hECNdIUQ9QVFAfTmjX3WBirAMZmoOMYI/ljMJzZdk2HpGVtziwTGtkxsi/up
         FET+9DW6J/Fl9JuD4qcVKTBeZL/zgXy0J6zR5CZo8K6vxGXD6GhDnyqI5IN/WO6bN7
         Iaq1mW7DPCkw0vEZMP0hCXrWbwY1ihs1l9ApCxhMf6aC8GuDtJ18Sd0a6Vd/dGcKOL
         p+gmV3JKMjuKIDdRkRYjp0J7YMjKKwK5I3fV+FilBb3Y+zyunEgefQkno78/iQ6v6g
         lSD8Uioh512yD2YwHqQmxKm24uogHpqghbF6IMDNvY3fqN/PrYV/F38aDXG1PjpKiC
         GjL7idYvLUqig==
Date:   Wed, 1 Nov 2023 21:54:35 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: Issue in man page clog.3
Message-ID: <ZUK7EQC2sOZrYFlZ@debian>
References: <ZUJoBtadvsPTwFXh@debian>
 <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de>
 <20231101165632.44yxu5zr5gzbl7po@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="G0YM/UBKWJ0Nh0E9"
Content-Disposition: inline
In-Reply-To: <20231101165632.44yxu5zr5gzbl7po@illithid>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,URI_DOTEDU
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--G0YM/UBKWJ0Nh0E9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 21:54:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: Issue in man page clog.3

Hi Branden,

On Wed, Nov 01, 2023 at 11:56:32AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-11-01T16:00:16+0100, Alejandro Colomar wrote:
> > On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    [-pi,pi] means both -pi and pi are included, this does not
> > > make sense, either one must be out of the interval?
> > >=20
> > > "The logarithm B<clog>()  is the inverse function of the exponential
> > > " "B<cexp>(3).  Thus, if I<y\\ =3D\\ clog(z)>, then I<z\\ =3D\\
> > > cexp(y)>.  The " "imaginary part of I<y> is chosen in the interval
> > > [-pi,pi]."
> >=20
> > I don't know this function.  Please suggest a fix, and CC glibc so
> > that they can review the change.
>=20
> The complex logarithm is the inverse function of the complex
> exponential, with which you may be familiar if you've taken a course in
> ordinary differential equations.

Yup, I have.  This reminds me of some old TODO I had: take a course on
multivariable calculus from a professor I like:
<https://www2.math.upenn.edu/~ghrist/BLUE.html>

The course on single-variable calculus from him was quite good.
<https://www2.math.upenn.edu/~ghrist/calculus.html>

>=20
> Euler's formula famously relates the trigonometric and exponential
> functions.
>=20
> exp(i*x) =3D cos x + i sin x
>=20
> While the exponential function is aperiodic, that is for y=3Dexp(x), no
> value of y ever occurs more than once for any real x, this is not true
> of a complex x or (equivalently[1]), the complex exponential, or real x
> multiplied by the imaginary unit i as seen in Euler's formula.
>=20
> (Recall that for any x, sin(x) and cos(x) take on values in the interval
> [-1, 1], and i is a constant imaginary unit that we can interpret as a
> y axis.  Thus the complex exponential maps any real x to a point on the
> unit circle.)

e^(ix) is something I can visualize thanks to Euler, and e^(ix + y),
well, not so much, but by combination of e^(ix) and e^y I can
understand, but

>=20
> In other words, for us to have an inverse function for the complex
> exponential, we must impose a restriction on its range, lest it give us
> an infinite vector of solutions.  Geometrically, the complex logarithm
> asks, "given a point on the unit circle, which value of x to the complex
> exponential corresponds to it?"  But there is so single answer to that
> question.  It is still a useful one to ask, so we can apply a constraint
> on the range of the solution which will make the complex logarithm
> one-to-one.

I can't yet visualize a complex or simple imaginary logarithm.  I'm not
so imaginative at the moment.  :|

>=20
> We do a similar thing for the arc sine function.  Given a value c in
> [-1, 1], what angle theta has c as its sine?  There is an unbounded
> number of answers.  If you plot y=3Dsin(x), you will see that y takes on
> every real value from -1 to 1,[2] repeatedly and unendingly.
>=20
> At any rate, I think this statement:
>=20
> > > Issue:    [-pi,pi] means both -pi and pi are included, this does not
> > >           make sense, either one must be out of the interval?
>=20
> Needs more support.  clog(1) =3D pi and clog(-1) =3D -pi.  The limits of
> machine representation are applicable here, so you'll only ever get
> values "close to" =C2=B1pi anyway.
>=20
> Also, POSIX and the ISO C committee didn't seem troubled by this;
> the same closed interval is issued in POSIX Issue 8 Draft 3, which says
> (in so many words) that the function's definition comes from ISO C99.
>=20
> Oh, now that I'm about ready to send this, I see Jakub Wilk made the
> same point far more concisely.  Who's surprised?
>=20
> Regards,
> Branden
>=20
> [1] ...by applying of properties of powers such as x^(ab) =3D x^a * x^b.
>=20
> [2] I, uh, don't actually have a proof of the claim "every value".  And
>     in fact I am unlikely to ever have one.  Per Niven's theorem, the
>     elementary trigonometric functions never take any rational values
>     _except_ 0, =C2=B11, and =C2=B11/2.[3]  This may be a startling resul=
t to
>     insightful students of elementary calculus, as, if one is paying
>     attention, one should then wonder why we can say with certainty that
>     any of these functions are differentiable, since there are jump
>     discontinuities in them--in fact a countably infinite number of
>     such discontinuities.[4]

You mean discontinuities in the representation, right?  Not in the
function, I presume.

Students should have in mind that a representation cannot be perfect in
some cases.  You can ask the same student to measure the rope that
circles a circumference of radius 1; it'll have a hard time with the
ruler.  :P

Cheers,
Alex

>=20
>     Since our domain of discourse is computer arithmetic with finite
>     precision, it's an academic question, as with sufficient precision
>     you can have a sine function that will produce every representable
>     value within the function's range[5].
>=20
> [3] https://en.wikipedia.org/wiki/Niven%27s_theorem
>=20
> [4] I think it's a set of measure zero but I am now exceeding the limits
>     of my training.  I need more topology and theory of functions of a
>     real variable.  And to learn Lebesgue integration.
>=20
> [5] I don't actually have a proof of that, either.  It seems not
>     impossible to me that the way IEEE floating point is defined means
>     that functions with the properties that trig functions have might
>     skip some representable values due to the nonlinearity of that
>     representation (the magnitude of error in floating-point math is not
>     constant, which is a reason some applications prefer fixed-point).
>     An "obvious" possibility is the set of rational values that have a
>     precise floating point representation in base 2, so 1/4th, -1/8th,
>     and so.  I need more numerical analysis, too.[6]  Anyway, one
>     counterexample disproves my claim, so let's settle for "almost
>     every", where we are using "almost" in a hand-wavy manner, not the
>     way someone studying the Dirichlet indicator function might.
>=20
> [6] Obligatory citation of mandatory reading (Goldberg 1991):
>=20
>     https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/02Numerics/Doubl=
e/paper.pdf
>=20
>     Press et al.'s books on numerical methods ("numerical recipes in
>     $LANG") are surprisingly controversial.



--=20
<https://www.alejandro-colomar.es/>

--G0YM/UBKWJ0Nh0E9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCuwsACgkQnowa+77/
2zImrBAAhmguiCA17B5Ga24Jcqp89waFzeQZdp8xIKW+YUYMHc8ag8ck5bDc9EA4
wbO+Ewm0vPAz6NH8r+NSRj6Bi157h11NvfbeWG/CIqC6VaBbmOkueT5vQ6xtETC7
BiaCAj5AWYv+5BiXpO3XlQgChpKGRxs/qd23gVYQ2ymLNTtqqcAhru1jVzCNVjI3
wL2CZJwTG/CVmbdDWVbn/UwPwP3xJdOOENxmw1kxFX2NTg7tcz/9NmWdRt6FpBms
v3CVs6J3pWiZWRXG5+pGl1wja/gz0+0ZuJ4ovpHhq36eRGQgLDF8ocaQKYFIGIGT
oan7Or//sfiR8lGKqiRBXz/Bkz1xIeOXgVZeN3cczH8MLAve0xl8KsCUcOeUbT92
wuE1vckZMHGDsiA27vEZ0ym8WoPG2aTlVxv+vk1mlrS4JM7z1eLHvddl+CFq+R3/
5MWDcR90psReIf5tfd9l3ZLYTqHiz1Me/Kq5w8ZrI6I5xY5sSAl3EQejmktfaSUC
Zj4Mt27+3djysCqjSPBiZG8KrMk1kGsX3GdDEWtvBKjbiIl95oSEOosY0ql0dfp4
N/tQaqrsc+e3CnQioWa7ZyLIoy66tbMJf/K8Oqe32/RA20gVhFDdniYLsCsu7FPO
XVk8+cmeZOIRT7grWSco1VMxIm0Koysj+aeIZteML74NQL9v5eo=
=YO7A
-----END PGP SIGNATURE-----

--G0YM/UBKWJ0Nh0E9--
