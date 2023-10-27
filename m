Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1A9F7D8CA0
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 02:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjJ0Avy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 20:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjJ0Avx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 20:51:53 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7801B6
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 17:51:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77AC7C433C7;
        Fri, 27 Oct 2023 00:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698367910;
        bh=IuUXiOCtl1QqFLn5X1jCIvwR13Iow2QxrmtjZ4RI4mc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eMAVQfpcKxjXbueDFtL/2/WEdkO/BbvcSTBODU9QO0oGIGF+cAl3zJQeo/HeG//nH
         FRoL+vyOZHfYLKXwMCkUOia/soWheWsS4CFpcP13pgO+TsP1AXkKmKLAqm5KoUcpMV
         sGjDkk2flC+VEf6C13CQdVsnP52mFPOO3TnGPrML7uNPXZ7zMAu0nuZtCiMAVUA9b6
         ZSAjkES4QebdLoeudKLt95cbonnxzfoh3OR1GuT+0zruNUKzRUbGAoVx+pIqC6ZHVZ
         HMe8o9+IzVwMKpFHn6eQZljmoLn+XQCEkGCUOifpIBwgxnALdcrpeHPQTQ/Z+llQNN
         lCxbUK/XTl82Q==
Date:   Fri, 27 Oct 2023 02:51:46 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)
Message-ID: <ZTsJo7zIXNf9_uy6@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTr1+TCl5KlTVo/n@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="MmP0WlHZ9kG+0Skn"
Content-Disposition: inline
In-Reply-To: <ZTr1+TCl5KlTVo/n@asta-kit.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--MmP0WlHZ9kG+0Skn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 02:51:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)

Hi Ingo,

[...ingoring the battle in which I don't want to participate...]
[My position here is that man(7) has problems, but I fear that jumping
to mdoc(7) *may* be worse; I can't know before jumping, which is a
problem.  Maybe if some pages are added written in mdoc(7), I get used
to it and start to like it, but until that happens, I'm sticking to
man(7).  For now, I prepared the repo to welcome mdoc(7) pages.]

But my mail was for the following.  I'd like to comment on this
comparison:

On Fri, Oct 27, 2023 at 01:27:53AM +0200, Ingo Schwarze wrote:
>=20
> Active macros, same functionality in mdoc(7) and man(7):
>   .Dd/.Dt/.Os   .TH
>   .Sh           .SH
>   .Ss           .SS
>   .Xr           .MR
>   .Pp           .PP/.P
>   .Bd -literal  .EX/.EE
>   .Bl -bullet   .IP/.TP/.TQ   # -dash/-hyphen is almost identical

My guidelines in man-pages(7) recommend that you only use .IP \[bu]
for bullets (or \(bu if you want more portability).  I would remove TP
and TQ from there.

>   .Bl -column   tbl(1)
>   .Bl -enum     .IP/.TP/.TQ

Similarly, this would be .IP [1] or .IP (1), but never TP nor TQ.

>   .Bl -tag      .IP/.TP/.TQ

And for this one, I only recommend TP and TQ (TQ as a Tag Qontinuation
--it sounds better in my head, where I don't see it written :p--).  I'd
remove IP here.

>   .Pf/.Ns       .BI/.IB \c
>   .Lk           .UR/.UE
>   .Mt           .MT/.ME
>   .Em           .I
>   .Sy           .B
>   .No           .BR/.IR/.RB/.RI

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--MmP0WlHZ9kG+0Skn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU7CaIACgkQnowa+77/
2zL+zg//ZFIqcgGHcsfiZOW08T4vuSTuG1KaOH5Nhn8kEb8oYorVNOv5w/JBDRqH
i4OfnwY4BJj3W9IpnRVIYxyyXdnhClrH/snQqYNZKAnuMaolnpo2COn7XuGf0dod
DGLg6nlGriuLkP5oaHZnNi8K4eG3Arp30AW8Y3MQoBkqJeVmkT52PaVzYiGkZfxI
CEgQZvcXTvQk1eAeDwPBLOUHx11XBlAiyEb7xefDJwSQDssa3glpj+KqjXe22uUb
AjSxOw+WKGQOLBDrQSL6ViwpjzTGK+RU2sFnSMB6wN1xcWry34iI349F31oCK4Lu
I5bgDjJoG6Oj1FoKvg4VNl4mr4MWpxmFpi5lOSHcxAZXlxotSpF2XmmMk/2WsfN/
0XIMqSWR8dTOsuIUmrcQnl5ju6nUo1uJL8dMjE54djsbcWA5rKu6AReRV+nsE35J
HtFaqB8rqnHjSCFL8GbpNSe6e9e4aHchuwlJMJ19ZaQxnPvvwvkX7P7yMPrzRiW/
JuPpzxte5EMOjFejvX9PLTk2SQ1y9g/rcJJS0+7Uq9l0bDqOaGEA9UGA1iLa1WLm
aGTXz9CuuL12VMH47+Be15azy7sKRscCVmPeUNqpDQwPDxD8hIxgKiikY1b3Jwvt
ELpLledFHs3JcWYEoAhbb668j1lA2JxhOTBnjrapY2c2xOFCy7Q=
=e8hd
-----END PGP SIGNATURE-----

--MmP0WlHZ9kG+0Skn--
