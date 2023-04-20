Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44C1C6E9F9A
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 01:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231634AbjDTXF1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 19:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229887AbjDTXF0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 19:05:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40C9A1BD8
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:05:19 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4F4C06A10;
        Fri, 21 Apr 2023 01:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682031917;
        bh=TNNNUo/nnHde2/WmBkn/DDjcVhr2gm7/lmvt4lnquds=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i0Ke8tztnPZabz7N9POIHBFnY7fhyQlutPukxnd6EQ+oRRjlUIziq77/YcoOgYqS1
         DZXw8+MkyYK3fGKd0EEABSHyEAcDBr/PK0onQkKDAoj7xPaK3lJAvEqLd6IfRktXo7
         WDxDgaxrUVyC+FIXniN4Qvmjm65Gr3jbAYNLvXkk8b7CwBq7pMLWlTBwIPR0ID/Z74
         2KALSuVF7fcxQ9Y1Va2gpWS757lDSUZdv8pAqP9JSJulg4rVmGlmgjvh3qDJBSukTr
         edMK3HaL5xm92/Z25qwMhL7SiPmBWVxRsWk9u+7zDzNu8sX68sCi2cqqXmI5iHV3ox
         iJOKAf7C9bdXA==
Date:   Fri, 21 Apr 2023 01:05:16 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Message-ID: <dmlqqnkeoymou274zzizwwgg52crrqykjigwltcqh2edgufsqi@hvowksazvdj3>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
 <kq2rpdxdwgk6oiccjzqyjerz5hutdsros2ewreggsbuxhbsyoe@hhbnxxou3xff>
 <35d79669-8782-b95e-42ea-f4ca36a98315@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lc532uont5llyted"
Content-Disposition: inline
In-Reply-To: <35d79669-8782-b95e-42ea-f4ca36a98315@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lc532uont5llyted
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Apr 21, 2023 at 12:45:16AM +0200, Alejandro Colomar wrote:
> On 4/20/23 20:46, =D0=BD=D0=B0=D0=B1 wrote:
> > On Thu, Apr 20, 2023 at 07:23:39PM +0200, Alejandro Colomar wrote:
> >> If preg is NULL, then I think any
> >> error returned by a call to one of these APIs would be valid.
> > That's unspecified.
> I don't think so.  POSIX says a "previous call".  It doesn't say the
> "latest" or "immediately preceeding" or similar wording.  Don't you
> understand the same from that paragraph?
I read "a previous" as a shorthand for "the last non-zero value returned
by regcomp( ) or regexec( )" from above originally; but yeah, now that
you mention it, "just any returned error" is a valid read.

I think just "must be latest if preg passed" is what ended up in v6
on the grounds of realism; if it's also the recise letter of POSIX then
all the better.

Best,

--lc532uont5llyted
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBxSkACgkQvP0LAY0m
WPGnzA//WdbnN0BtiqQcWQiB76Qje2fRo9l19NHHe+uGhBdD3Mv2QgjICMjVyc5J
KFUsmeKAdZGUk6UKlKZ0q/x7TeezhjlKcW70C9obmJx6K0RTxRFnptg87FNp6PKD
NEgKfS+s7ceHWN8JzgG+m8MQ1m6ehaHYh9OxOc6oMkkJG1CLS7qW6Dpa3eMRFrnQ
NiX6DZQWDzQJKvN0XmtW2X9bCOsps5QZ/WesbJafkBwkC+aLDHpXfkz5yhhAobKm
0xcPv8hBJVDw8mOik8yIHzOKyKuh96N+qrYbysn/tBnaGVtyM0b2I7kKErGoLHe2
jjl9e8Y6oZ99HmTCsDxSlm5juClAnezfA7GU87cbxRbzJei+SvOfELCZApmnTyTw
9/+FADw1XRnmJNeUDSj3CbMsP5TQC7+owfVMPemvYR3sEqaAVl7Kc8V4wBuoFVVu
62UaxvSqMGc1Gj+jyb2qTg+GIUgiXuBJRt8kwvp0lUT/W5SD3jA5lg+eyr40Bn5b
D0LiTHmjuoiXOn9K+6F1CZ6JCfOYGa3JawHbaO9yIpOE4D3+Pr5hA3Ir8zbbPPri
N+rG7uBIk+7fqmcOimgFrHpFwETrWY63MMYn75ubfX7E4kQEPH/Mlh3rsw/z9vd0
hk4C3oQ3anEg2SHWFB509i2DBYc+nJICRjxs3Cpx2ckTYbxoiEc=
=1U7X
-----END PGP SIGNATURE-----

--lc532uont5llyted--
