Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B6E16E9BEA
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 20:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbjDTSum (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 14:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbjDTSul (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 14:50:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6DB202722
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:50:40 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BC41B64BA;
        Thu, 20 Apr 2023 20:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682016639;
        bh=CXuS3EM4LHSwr3H/RqDtVhTQTKAJ6F8feOkgYBlSixc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oWZFaL6uiUnm87rjdYw8Fa+H691cpFhJl2xij5HY+D+xWGu1irs89wI2NETyCw5S7
         sVdpcvfVmwIqC26oe15h37hEdZwRIkUYl346f1cPELaiAx+4TLNBimJWYEOSuzsSUL
         IcrhO3HnPFFfzU5gFrbfgQ+qCuW71RINEFOLB2uMrBWqp0YuP0iQ2h68/yRl6URFWe
         Ts5yDkrSW1y7YqjE3bFZ388Q+wA4bKCoVZYQW0rq5pE7yPQiDUAt4rK6Z1oOflNGND
         xQnmiPcwUzl/jhO1qZTVLcMXlCwRy3t49RNXbaxmF3tY2f2IstqHwIjd2k4yEY09J2
         CREA7y1dj1ajg==
Date:   Thu, 20 Apr 2023 20:50:38 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Message-ID: <dwhhwbk3cmookrzr2xjzh5mga4bodozrftszhqanhjeif2cho4@x75mp3bi2wlg>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <69943892-d6ab-af73-efd2-d4b6df2f7ad2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xgnoqwq7hkxpapyz"
Content-Disposition: inline
In-Reply-To: <69943892-d6ab-af73-efd2-d4b6df2f7ad2@gmail.com>
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


--xgnoqwq7hkxpapyz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 20, 2023 at 06:42:55PM +0200, Alejandro Colomar wrote:
> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -26,7 +26,7 @@ .SH SYNOPSIS
> >  .BI "            int " eflags );
> >  .PP
> >  .BI "size_t regerror(int " errcode ", const regex_t *_Nullable restric=
t " preg ,
> > -.BI "            char " errbuf "[restrict ." errbuf_size "], \
> > +.BI "                char " errbuf "[restrict ." errbuf_size "], \
> See man-pages(7):
I didn't even notice it was matching regexec()/regcomp() since they're
in a separate paragraph, it just looks like a formatting error
(and makes it so multiple functions aren't as well-delineated as they could=
 be),
but sure.

--xgnoqwq7hkxpapyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBiX4ACgkQvP0LAY0m
WPEDJhAAuedEnFYYNRT0jITjSktGMwDBOMoElSTnjSAKIH7KakyltrewwEew7Jzi
7SiOaNhXAkobPoW1rnYLfB3ukX21TtENYeZPAIeQN9bo1DG662HS9CoVVtNVdQKT
nToJJiK01yQkDuxLDb9lAWI8TepOsTNoF1LBnM26nreF+n+InpUX8dTh+a1F4FKk
p80t+E8mE7ftK76FMyabXISv1pt2+jDdPJcF21NAkB5zHzZK7YKtiyZc/Qc5Ttyu
u90tKNa4HAsz3jCYzL4jliUDGgI+/YITAf8RR/MI3nkN2nstfs2u36S2dn7eMi+0
/kpcy2XsAZBVwrQT5k47n9yxCDP0gHQeYwbXmkmVt8XZkd2M+XqSXZkJ+J7/Pr+r
A8OjROalrQ7ekNoiySUEsz7o8AwaswnYpqEqJzphu2ym1fGB/RSaDlM4+OgCKPPx
yOOIx9NpZLveWiQsYoaEn4dTNb+lJBpKp3a3XFNMZt5vP/SwsqykIaUwx5IZpDLo
iKjCgpQ4HvGQZMNfVeQxW+EiYR8iirf9wqh+3ZsEMqE5wPLvyEP/mdaeXQSjft+6
I68h9Q+jE3q82wXYOLWXD6yqbv0I2YqXqe30d0EKS4wdPT754Eyl3fpFFE7Dnjsa
JrzWXSASfyqybRy/aYI3imcUM1iZ9T8wQGYoVVdUEtFqF1q7mG4=
=/tTT
-----END PGP SIGNATURE-----

--xgnoqwq7hkxpapyz--
