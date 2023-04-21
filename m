Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9719E6EA099
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:27:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231484AbjDUA13 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbjDUA12 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:27:28 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C392F1A4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:27:26 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E9A1B6B00;
        Fri, 21 Apr 2023 02:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682036846;
        bh=ADDAhN1cYVgKHFJtMUq1+ZRfTmUv25VZnPnvby3Hpwk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YqDAhqzs3zo/gV/95wJ5DEyb3al+wOJnkQlFhnjD2MwojqG1hvinuvxnfSsyjEVAD
         4IEdE9wpN8lnJZKp5sE2ft9p3plpGBUxQtpww8JxGlP81mVTwg9h4xgpXpM+pra2EC
         hKAcs/cKuP6COGsn5yGdn4WO2au3g/nn/iD2/SpyhFtUhpfn9ingfU9PYeaOmCD+s6
         xV6Ss9xvuAlN9WXBzSF0IuI7nh4NzH5OUvJM6wsjdGMnyxItWCvejRL80v5M0eaCgC
         mtf8FAnhjtkqMSWMjJNuZhZIIzlvHq70jspOTm41B8IGj+lD9p1Dn5+T1R9qw9IHEu
         UC9qUGG9h7oOw==
Date:   Fri, 21 Apr 2023 02:27:24 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6 3/8] regex.3: Desoupify regfree() description
Message-ID: <2n5iwmnzvwdraarfe4z2ompj3nslrxt5g4zu4pcp55peeciace@vncn6wact322>
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vmmifj6lmhhbfjjo"
Content-Disposition: inline
In-Reply-To: <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vmmifj6lmhhbfjjo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 01:35:43AM +0200, Alejandro Colomar wrote:
> On 4/20/23 21:37, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/regex.3 b/man3/regex.3
> > index 3f1529583..e3dd72a74 100644
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -225,12 +225,10 @@ .SS Error reporting
> >  .IR errbuf ;
> >  the error string is always null-terminated, and truncated to fit.
> >  .SS Freeing
> > -Supplying
> >  .BR regfree ()
> > -with a precompiled pattern buffer,
> > -.IR preg ,
> > -will free the memory allocated to the pattern buffer by the compiling
> > -process,
> > +invalidates the pattern buffer at
> While this ("invalidates") is true, it omits the most important informati=
on:
> it frees the object.
It doesn't.

> I think it's better to say that it frees (or
> deallocates) the object and any memory allocated within it, since that
> already implies invalidating it (due to
> <https://port70.net/~nsz/c/c11/n1570.html#6.2.4p2> and
> <https://port70.net/~nsz/c/c11/n1570.html#7.22.3p1>),
For the precise reasons listed here:
the regex_t object continues to exist.
regcomp() doesn't allocate *preg, and regfree() doesn't deallocate it.

> and also tells why
> it's necessary to call this function.  Otherwise, it's not clear why we
> should call it.  Why would I want to invalidate a buffer?
Admittedly, it does also "free any memory allocated by regcomp( )
associated with preg." (Issue 8 Draft 2.1), yeah.
Maybe it's my neurosis that I consider "may no longer be passed to
regexec()" the primary effect here.

Updated to
  regfree() invalidates the pattern buffer at *preg, freeing any
  associated memory; *preg must have been initialized via regcomp().

Best,

--vmmifj6lmhhbfjjo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB2GgACgkQvP0LAY0m
WPG8EBAAreEmSiYLH53VGrBkkYLOMNg1O1grhI22MGl4t7yS9eaxNR6OYMDRD3Lk
eEA60c4BxIzJqz+DAQSQ7oFL8uEPCGxsQDkzxDXDdY4ga2sPY9NjiDIbhMO0kgI3
lQrBMy+V9otQjUz4rnJcm5fpCAC6maFnQTTUkoTV3EpGmx7oqUXbwmkV4weynEMC
a2oMq+PDW+fJNZyi8QwMEsDJCsn2KN0xF1+EGz7PJw/uSvnNgIV1TyWNJmC3hcx2
3N/luhLzo5q7QDjatDYUpiGAtH30dc3ieI4h0P512R6MhQ/D5fEZULqWCaL3XIaT
QzoUywyLxETtcx9+WpRUnWhzTuRe+GB2T4B9lJjrWwikJX/UjaOWyoJRuOz/T+1I
FWxPa0SIhqP37l2jbXeNODlWRzNrZvgf7asB7n7rg3PLA9wK+DgxMlZ6/579k8/K
bDVCAw6OdI6k52AjwfyvDRQKDO6Ub4WvXcdFmDknDHiEJXPbGSdMS9fcnqbH4ta8
gg3GN/t46eEvBcK/xChg11mF7pYTjOJ7sYKMFtAwdm/t2bpDiaxx+McqnOXcPjuu
stJwe27sDfHYA6sOKjK/bbV2N8J9Ua5U9lrUFLdiXPsKnex38U/W9eIrxZbqByDP
rcL1Lbi5CAHi52Y7orMCbkHjj0iAj3Ew+uw5qOzoUae9AfdNOns=
=aqXY
-----END PGP SIGNATURE-----

--vmmifj6lmhhbfjjo--
