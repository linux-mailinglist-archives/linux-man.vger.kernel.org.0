Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09E0D54CEA2
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbiFOQ3m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237546AbiFOQ3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:29:40 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B2A473A721
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:29:37 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C0A8E26BE;
        Wed, 15 Jun 2022 18:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655310575;
        bh=5DNnKnMjFsi+KvJDp0HFQ1BiftCw+QGKgnF6emcyp0U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nVb8fBtFQovA47goabW0ZXsLyzklG/fIvzZzR/Hxkojw3rwu9laRFhB0ptYB+PoGA
         XFwztbwd/Weo0AZnFa7/jVCGEkS2Gha1DI0K2x5/9BMuKvz7QniHYIoxtASFwy6dDi
         u1yY5jz3FNLb91wu0rl+5vfFg9lvb8c/n2Ba3VTu9SPFHjfepL1ZTE2GHbK9UzSf4C
         WDW5hYNIvZ7n0CLC8nuxGbwVFN0byyY15rc52YtJYCf9ikL+b4qskmcsYNETpN5yJq
         HWIcfUX3kxRPMtVavnEsR4aBCTfUnTrSXf0Fk5hAkiQowc4i4qR0GrHlwopUBB6h6/
         34sWXM0wrx1hqArc3T8MouUh/95aPikN4rQyx3mJQFzhr+/7cCEBOe+lTP32GXdNxp
         WW6CVLPfqtySWOYrfMYy2ydRnlNIQ6kZZ8MBhwZnyH8eyd0ZjoDzd8Yvy/iCtYM8AQ
         Ra3vDs6vy1FvRGZJCAXjg3NIHYIxoHQD/qeiLS3wOvzZ0GXRa0e0nsp9CxvqTba9Ag
         WWjUYHDmS6N85dvyk206EbS5GLBlmHE65L6OR6OeP73YgnLXzi/L0KXvkvKEPdczNs
         95taq55hGgJpktNwby+n4bL/ajGrR8jGNorNKi9pg+mJmp21KAn577aLd+HZBa3xmJ
         rFOuBZQWl12TGv5ryBBPvMN4=
Date:   Wed, 15 Jun 2022 18:29:34 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
Message-ID: <20220615162934.675zbxzbcordhsqt@tarta.nabijaczleweli.xyz>
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
 <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="w3tj6vhtqtirh74v"
Content-Disposition: inline
In-Reply-To: <4246201e-0ee5-1019-4c5b-79b9d2d4cbc5@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--w3tj6vhtqtirh74v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Wed, Jun 15, 2022 at 05:36:34PM +0200, Alejandro Colomar wrote:
> > @@ -73,9 +73,10 @@ So, four of the fields of the struct are meaningful.
> >   On the other hand, the field
> >   .I nodename
> >   is meaningless:
> > -it gives the name of the present machine in some undefined
> > -network, but typically machines are in more than one network
> > -and have several names.
> > +it gives the name of the present machine in some "the" network
>=20
> That reads a bit weird.  Is it a typo, or is it intended?

Typo! Supposed to've been "in some network". Would you like a resend?
This line is replaced in 2/2.

Best,
=D0=BD=D0=B0=D0=B1

--w3tj6vhtqtirh74v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKqCOkACgkQvP0LAY0m
WPE9thAAotT7YF+5VhF5E3aSsBYiPxl1QSoe+SUwZFLg8QLgZrpmXWijGDbzLh2d
Biu7D1cQEXftd6CeAzIVSCKW6l6CrXiUDg2nnH+8HJqQPWZ6P6laYPG0mbdN4j8t
Og9XjoxLToROD7WLEbHpBxFKvTO7QyiTWiXGdTJZM8AYj4Fn+XxB7n8hjEtJSX7u
afxGBrBmcTSLMSY22BiwC+7fgRLZEL/09F+Fqdd5HLG5CwoJxYq0GMoYSAH3k4uc
7ONlTuPC5585qI8BPywzR7ddGp+tKYDmSJbzFdmm0Fu5FsHEOkneDrjICYMPOisv
92ik8nSlJXdId02lr6AWupJFHgfDfH9452ZGKJhV1DtmtdCB9Z9iT6IefTlu5/Bw
uG60E4hMrtClK07GuaTlLePbntsCa2Hj7AUbuTNFLKFa7ubUONmUWROmJYfhAMw8
aQLyII6/25Q56nntKsnCjB9u87TfYfWrpUPrzSYNu6E7Lfrc/UNbBMIurRcVjLo0
khogCr7nqyv8/eUeQ3HdDjAAbIJK735rYgur39K8yRKtUuTzyfsQPty9nOeWVkC2
bmtrejPdAdfYYuCKRvi/9X1UR2OmaqwkPyUje1Kng0QscK0j83hS28LHFVdUMjDp
esc4ULLlJE910o7PeSVr9t76UwtHaLsmskyoha2u45eWNoB1ugk=
=BGgp
-----END PGP SIGNATURE-----

--w3tj6vhtqtirh74v--
