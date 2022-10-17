Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 913A1600CFA
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 12:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbiJQK41 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 06:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbiJQK40 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 06:56:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 05A2727913
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 03:56:24 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E39813B06;
        Mon, 17 Oct 2022 12:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1666004182;
        bh=YGVEOdVqGj8Fca3R7h45u/V4qt7/H7A8z5jRS5yeGBk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aWmqJrK5SN2zkIgOjeSaDgqCy3TXQkxp9YSgbpwHZILP0dY1qaYorUmGIr71d41iH
         YCfDStn207NB6kRRk7pBctDukFxN3B5Eo6yPTFmubC1O520m2OPFnc/25B7iChU0G7
         TI1yA1n0j0ro3lBfTzVWy2K0u0mDHzNddDInWBZMoCANdnP712qntgexXdb/I/sdCi
         f8WhFiGJxNlQadKaTXhub4HJpEApzZZ5rvZ7Z5BC2thMgK5nN/V8DeCgpFzS6g5lUB
         df6sBZgbi/3RHhIKDeqDOCtZ9kG4X5QgWM+bX/sI3xaT0kEfYEBxzuuiEjzTtrbAA9
         o/v/aV7RsoYqDLJnYeR1qqmbQMbVutp8sxqwGTGakLd0V/zGAGDTGyzao3AoXq2UIm
         a35qYLcqP43cWI0RHfJnY0sQkVbspue954x2FrGLFErZXntsVtmRI4gSr98BxJ3TOY
         V+mAvN3Ildp9ohNNako00rLAaSC0pN/zkdxfJah3jlkjDJ0PFYXDm9YM7qd5UnV1Eo
         RnT+GVpnWV8/ZfjJXcOPCzCWWbS95JWMRaPI6/fcUA2DkAoNdycZrDxxrk3zQvgmw9
         2Ppt7fzAGhM/vZGyi+DSPQtA0VO4dbSvMvBuncOWkRVZRchz/7tlpGt8HswsxGcNdo
         gsbQDHz0hxRFPX4ILc2ZCfyE=
Date:   Mon, 17 Oct 2022 12:56:21 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] ascii.7: chase down History to earliest
Message-ID: <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lbruztpo72eag65i"
Content-Disposition: inline
In-Reply-To: <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lbruztpo72eag65i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Oct 17, 2022 at 11:58:06AM +0200, Alex Colomar wrote:
> On 10/17/22 03:22, =D0=BD=D0=B0=D0=B1 wrote:
> > Cf., well, the UNIX Programmer's Manual:
> >    https://www.tuhs.org/Archive/Distributions/Research/Dennis_v1/UNIX_P=
rogrammersManual_Nov71.pdf
> > PDF page 191; yes, the typographical convention here is insane, and
> > the contemprary-correct way to refer to this page from within the manual
> > would be /just/ "/etc/ascii", but, given the context, "/etc/ascii (VII)"
> > makes the most sense to me
> >=20
> > --- a/man7/ascii.7
> > +++ b/man7/ascii.7
> > @@ -134,9 +134,7 @@ F: / ? O _ o DEL
> >   .fi
> >   .SH NOTES
> >   .SS History
> > -An
> > -.B ascii
> > -manual page appeared in Version 7 of AT&T UNIX.
> > +/etc/ascii (VII) appears in the UNIX Programmer's Manual.
>=20
> I wonder if '.BR /etc/ascii (7)' wouldn't be better.
>=20
> Also, shouldn't we clarify the Version 7 of the UNIX Programmer's Manual?
> Or was it only called that way in V7?  I ignore much of history about tho=
se
> times, but I guess older versions also used the exact same title, right?

uhhhh, what do you mean Version 7?
This appears in /the/ UNIX Programmer's Manual.
Before they were versioned or whatever.

So no, (7) is wrong because it's (VII)
(indeed, arabic numbers started in V7).
It's not bold because you can't do that on a typewriter.
You could make the argument for it being together,
but the prevailing convention is either no section at all or
space-before-section, and the page number has the space.

Best,
=D0=BD=D0=B0=D0=B1

--lbruztpo72eag65i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmNNNNMACgkQvP0LAY0m
WPFfPA//cCtj7uscSOes4I8mPtCuXlqEX2sjeqdfYkfYPtC+bhs/jd0kWB17KLZG
gn8CUyfDvruN9lGRoD9BpZ3Kpzmu8BPB6zU4o931noiXl0aE0/fB0oeXttUZylPJ
E+3TYFPK9mYx3cXHIR5anAIHVO+188cuResBTrMUIiqPTLOXVMXHukfxkBgsUUJl
LZSQDoeycLb275qOaXbCiCYXGfq79F1Tx0VAoZxHs6g/mCWycqf4wtf1xSB4+H2B
5Bx+vWfxPtM3cY7KRC8fVKFodIXfrkUWsL76bxHMO0QI70L6dwuXU3IVe+c0xhi4
LSd+BrF8Hi2DWJxlrxBQ41/BgbixgvJDYKWZtwTGj89vWzHW3tiuoQKioMXL7+Qa
YVx/F4SXD9PfBM/HpTgq7wRtNS4kIwDJFvm4mekbp2Cd9yn6I4jdYAtMkWf/Pbzp
GDzmUzNXKujU2SvMz5yBh/AwXr5+VFZx+oJ2HMfTvRDxNw248FLLWT99xPDCRFX4
wH97OLS8yHd9uVEs2mCrDPYANyn0ppam5MmERVzFR9H7dUyBn7JpkSQHwxMdYg0s
roGYAlXDkltF4Qhq+MGcHASfacMlwlXujn7Wyjo4GvkwjIDnC0XS+dmO9rjihMCJ
e99RnTDKJX08PwvcJhu7/vEFxliwZ0dUoA/2TW1pCj3eRwo3OpI=
=rNo6
-----END PGP SIGNATURE-----

--lbruztpo72eag65i--
