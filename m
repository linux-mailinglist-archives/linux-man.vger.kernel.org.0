Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA7BD6EB4AF
	for <lists+linux-man@lfdr.de>; Sat, 22 Apr 2023 00:26:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232902AbjDUW0p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 18:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjDUW0o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 18:26:44 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EFA8E1BD7
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 15:26:42 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B3CDC6B1C;
        Sat, 22 Apr 2023 00:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682115998;
        bh=XXoL8Ef+95ma09lGLEH/Hr60lhU4KDRuSTBhD/lm0ZA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sE2hInX53OG14FNxiUN0jrwwj8hzX6wntAsb1JUvg0w97gNUelXU4srB2BLI+omix
         sqX/Pw+iaKMfIrB2k6wFt5IYH/nIH7Pbs+RqyMj1G2tiW+fidt4uyvTlQlOXkvyxGP
         1JLpfGDkcFGeEXysDKs8I/4Kp6sHXSfo2IqGtaTj0wyv9tEM4GD56as91Sn7B3JPUl
         bHjVZ9PJQcq1bUbPLA2OQq+llbV+fE0QqtY65Vw+1w80vKdTg5r3O3Wm6zx/r6oZYG
         Aa/ad7Uu1cetganxafjn+n0MMRgspcT6imZxdgtuHo1feScgGn3AAHR1DaMzRpuS84
         6LjLLXAQ+5hCw==
Date:   Sat, 22 Apr 2023 00:26:37 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: We rewrote most of the page
Message-ID: <hlcgplzo4jmdzvsft6vdj7uutzp4qnpq3wxvafvpctvfighjmf@ahjbr5yp4wsx>
References: <20230421221623.23979-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="eigri76e6ottoe2v"
Content-Disposition: inline
In-Reply-To: <20230421221623.23979-1-alx@kernel.org>
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


--eigri76e6ottoe2v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 22, 2023 at 12:16:23AM +0200, Alejandro Colomar wrote:
> I'm a-apply this thing.  Does it look good to you?
Sure.

--eigri76e6ottoe2v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRDDZoACgkQvP0LAY0m
WPEkzA//XxNwI+67KAqVFVFDwqbNGuowRAl/R2oNOIoqKqSAud7yTmswSWmI3aCN
/vvkrzKprcj6rVQKQTsphaUjmzY8QA5pVaWwhWxBbHfC99wlSv+xgtH/jAU/hnR+
RAwYjql4HAA1+L9WZgaIt4K2k3CDCNIqnuysGRHG6Qx94+0gSRtXtad6i+9E3Ofu
04RVYsrZqi8Rs7X+1mScN3qcwIqv5EFXIfi2sdAPYUnE+VAmtuxlMdZ5LTJcvQwg
icqXSU72KYsz+fKoafQJfefYRLzqSxDucaF2hRmBdQ+Os4NUsUhciBqJewn77dHd
MMi2lJtrrZMCgstomu//R1UwHEIug+fFH37h3dDm8/90cUCgiRVhZ4k2ehro/6Lz
gO2sepf0WBDlbZjKIIime5GPbPohqqD/SIIqRRhcbYNTaTqk4XQUxWKlwBarLVkK
JHd5QA0ibePfKHiPgAbo5ruExOqoJZe+T+Waqg5Zo765e1jsY3efwY6oHI4dkRDT
t09A3/gps2RFIHY7C0eoU+vtIY3Fu4HjzBi75tsTX/ULPM3cEtAmCrBNCv9Mcwpv
h2yYNJG2cB8ue+5+5wCXFuaBPz2PiqvZfCQq5lcn2xj1mgw96CEWPlX1k+Y7kTkc
kcx6Ymw0Zn2yV7E1rQbNADtm/gEYceKbdIJdsNdY8ZdhKrtQ6/o=
=DmZq
-----END PGP SIGNATURE-----

--eigri76e6ottoe2v--
