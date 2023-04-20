Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCC2B6E935F
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:50:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234048AbjDTLu4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjDTLuz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:50:55 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 99E334215
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:50:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BC6126980;
        Thu, 20 Apr 2023 13:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681991450;
        bh=0TSEfdUxW/6ZafMxCbBBtw4hjM02GvF3pi7Uxen5dZ0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IV0p5zcjBgD4PuYso+0vT2kvpAIXK2C2vkC1r59msFiyFyvDP99Taw72/eaY0GXEI
         mao5yaO7FFBS94o4D/emvjxzbau3VIoOVjqegyc3ZsAYpH6qjj4rvLGGKJto8s9nEC
         Tbny2xekiMascxQ6xORs7b65MS26tIKibz2Um2K04FwT/82ozX8IhURIQjHCJqrMMm
         LnZuBT95jdphPxl/LgacrpGfdtVk5fWdilSDyKGxcvyBqJyqpwYIH9vV7i8T1rdmnV
         qXX2SIVUTrEWNeNvcBMMyRsXiNh4SBgnrQUbyx4BmGMytD3Q3HLw+qbFFL6J2WOZuo
         ap2l8jeaEkzjw==
Date:   Thu, 20 Apr 2023 13:50:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 8/9] regex.3: desoupify function descriptions
Message-ID: <2an7bmg7icufcqjg4koc7mi7czuyq4oc2re6csxklugxnrmhti@oenht63zxs5f>
References: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>
 <86767c35-3dbc-07a3-7b1a-7b5a9741d21c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="r547fs3adku6vniq"
Content-Disposition: inline
In-Reply-To: <86767c35-3dbc-07a3-7b1a-7b5a9741d21c@gmail.com>
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


--r547fs3adku6vniq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 01:43:56PM +0200, Alejandro Colomar wrote:
> On 4/20/23 13:15, =D0=BD=D0=B0=D0=B1 wrote:
> > Behold:
> >   regerror() is passed the error code, errcode, the pattern buffer,
> >   preg, a pointer to a character string buffer, errbuf, and the size
> >   of the string buffer, errbuf_size.
> >=20
> > Absolute soup. This reads to me like an ill-conceived copy from a very
> > early standard version. It looks fine in source form but is horrific to
> > read as running text.
> >=20
> > Instead, replace all of these with just the descriptions of what they do
> > with their arguments. What the arguments are is very clearly noted in
> > big bold in the prototypes.
> It would be nice to see the --range-diff[1], to easily review changes to
> patches.  I have a hard time running vdiff[2] on the raw patches.
v2:
> > -against the precompiled pattern buffer,
> > +against the precompiled pattern buffer in
v3:
> > -against the precompiled pattern buffer,
> > +against the compiled pattern buffer in

And 9/9 grew this hunk in v3:
@@ -179,13 +179,13 @@ the match succeeded, and
 > 0), they overwrite
 .I pmatch
 as usual, and the
-.B Byte offsets
+.B Match offsets
 remain relative to
 .IR string
 (not

Best,

--r547fs3adku6vniq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBJxYACgkQvP0LAY0m
WPHkjhAAhJ78Q9tMWBg7QA1Lh5j1vCt40WkyzeZ7L3ok310tMbo7O2xIKnb+axui
S4f3efw1cdHuVe6opDv8sCBfJ5UStusojld7Yx+soEFTLysJy9gR3D6OFSeuvNzo
M8imA1UTVC4xfJK8/lqi8aDx1emR2DfuOAgtoISbKE/bbcm8FiqbzFYXpbSoaskR
h71W7bASzTWN8gPaxo31qVxa2REkdx3Dd8YhIM8vrIBKrYKLSRMUeAf9d3OQNnSz
WLkqF6+EgeYc7en64fBrPHqm5otKXcjLoSHTpNKw+il9BCFLvI9Ea1PekPWeYFWZ
qBAYG57Mu5+CWRwxgKGh27Ht5MxkS+QJeLjbTRxtz2Mqn+JDPxcGVa6G4Uh5QKyL
u5O9r7wmkpQh7/luJruayBeai9amdpQcmndUsHsI2HisiwAAELUBMtHypVxjyk5O
aybiPrh2k6g++ceZ65mAgo031l4SIkOt+fU21WpURXcjYaPsRAa9I0FkMpTYxVpy
xz7l7w64ezFUbGDpeH0jN3xY0LE09bdZE85kMnZ9VLA7a9Upeylisr/9GvpFpnEd
/FWhW1dPBO4wMkUMxiMlSLkYEqvYccWu0iWCWcTGwjY91BoTrbhVYjboeQigh4Uk
FF+4Ms1Ez56Jj9KiUzbSxe1LetTJIC8ljmikKzXQ/d7e9AqNolI=
=casL
-----END PGP SIGNATURE-----

--r547fs3adku6vniq--
