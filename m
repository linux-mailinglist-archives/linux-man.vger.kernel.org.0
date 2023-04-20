Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5776E9752
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:37:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232136AbjDTOhh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:37:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232073AbjDTOhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:37:36 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40B373A8B
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:37:33 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5CBD166AE;
        Thu, 20 Apr 2023 16:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682001451;
        bh=/QIC0XzXMQbBJnyI+i7ztxx9JGkRrUBtCB9soJ3yGu0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HjF9z54oBmxCEHKI20zwR5fQrYd4VitkJo0CVRZ2P3mE3piS1Lg3p1W7ncF55Lg0U
         oryeZpNGKFYaPfYA5CqOAw56gqAHUrm5xmoFgJZz5SMpdM+Pp1HhbCt08YLLBSAtH+
         oaLXfciJV/6O1MYdwwfY0lpguQkuJezIMnY2emhoYkKi5LlA8qSb2/Zlvo291ll5Cl
         pu+Ut+LJ99PnEV3eSxOnP4v1aSAJZpR0xDwBtRTGknYu5ZUCtwOEM2uaDYcIZ0xRZV
         yzlAgQ/tUMrhIgudWWM17VtYlb3EAgsLUVZUWFgbxd1xP8jS2KSIq6LgGgkIaWz9Bv
         mzfdhUokSkCWA==
Date:   Thu, 20 Apr 2023 16:37:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 2/6] regex.3: Desoupify function descriptions
Message-ID: <qxwjlj5wpbew4zlr2wqi2rechii6ugmxcefutoippoyy4ousxf@2sqfleyo5ezz>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <93265aabd86cf84d93bf80af1e56b12258f0ab08.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <5077ebc2-d5bf-1869-bf9e-e60e28969efd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="g2stxdxy4yhunp53"
Content-Disposition: inline
In-Reply-To: <5077ebc2-d5bf-1869-bf9e-e60e28969efd@gmail.com>
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


--g2stxdxy4yhunp53
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 04:00:40PM +0200, Alejandro Colomar wrote:
> On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> > Instead, replace all of these with just the descriptions of what they do
> > with their arguments. What the arguments are is very clearly noted in
> > big bold in the prototypes.
> Please break this patch into smaller ones.
Cracked into one each for regcomp/regexec/regerror.

> > @@ -38,21 +38,13 @@ for subsequent
> >  .BR regexec ()
> >  searches.
> >  .PP
> > -.BR regcomp ()
> > -is supplied with
> > -.IR preg ,
> > -a pointer to a pattern buffer storage area;
> > -.IR regex ,
> > -a pointer to the null-terminated string and
> > -.IR cflags ,
> > -flags used to determine the type of compilation.
> > -.PP
> > -All regular expression searching must be done via a compiled pattern
> > -buffer, thus
> > -.BR regexec ()
> > -must always be supplied with the address of a
> > -.BR regcomp ()-initialized
> > -pattern buffer.
> > +The pattern buffer at
> > +.I *preg
> > +is initialized.
> I think I prefer avoiding passive voice here.  No?
> It initializes the pattern buffer at *preg?
I changed it to
  On success, the pattern buffer at *preg is initialized.
Which makes more sense as a post-condition,
and writing it the other way around would be weird
("If it succeeds, it initialises pattern buffer at *preg"?
 horrendous).

Best,

--g2stxdxy4yhunp53
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBTikACgkQvP0LAY0m
WPGw/A/+JuDx1JSTMLlH6wUaR3TvN1YHU0kFHwvmGbifYg/uiyya4J+RT2NUn47Q
VYNPQvIxq8561Sl96rIOXMakUs8SDNWGVDHHERwBlhfmB5gkifjEzCxpUVBo47JW
I8gOIds2/7lR1P+7i+6R4znNBVNp+qx4Wb4NNcq2tciQk4MKFFgBw0iCrLwZU2ab
dIWW+bROf66VDM9XJ5C72hFFoWCdd7TJnkQswchUoST613NASpxPCJ4M3Jc22Sul
ZhcOKePSoJ+zv+hFDlFg/+QKkIacD6e3SQkhOee2DSiFxgojsDeIidq9f+tA4Q/5
Nl3KV9WRyM5/RwRbN+InNNjTAMWOzzEp6HNMLs3HiEnAPwIkJYGtLnn17QZ3Yytg
DHokZ3eF7Cqs3QCWG6EzUet/HUVfVo3uFbKLOcFnUlqlJO4AjPD3MY+n01rlhGwg
zBg3PaJlttKvyrSZ9naOVasStKLNrOt8ZshJHtysol76NJ+fRa8KQPZLEK1kiP3w
pwOt6zE5J4jBKWOTNFyEZrw3v2twrZg9ifbCRDqequFeF2JztHCmYeExnpyMHINj
hZHD2r9HrmdrPseY/I3DKStEBkf5Qy4ZCIHB0PMay2GoYD++3kjsAfJpr4J7i5Zr
Y9NlqM9aUWZ61JxJd0dymKkfhC+XNiUJN8Bjc8Q/b1Z5sPkDaTY=
=u5/c
-----END PGP SIGNATURE-----

--g2stxdxy4yhunp53--
