Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83E6F6E925D
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234543AbjDTLYr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233683AbjDTLYb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:24:31 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D29FE7A89
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:23:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E2C8F60EA;
        Thu, 20 Apr 2023 13:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681989210;
        bh=KmhMHLTN8r4ezbpAVAsG2f19YGgiEFM5LZMJSIvC7y0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QFiyc7nr49VrQewq3swHMuLzhrRdMIkKwk0bYmPkjs43xM5sAq8aDIl7j0wztgNtk
         Mm0gfG+ipp+ocTDpqlbK8YUsMPm7Fn16Rvex+KxECTdNYFSDaynIexCyJMuYETvmOd
         s9SK50UbN6epxw9FQsYvt3VkWEJB3poYeIWONLWMYO6xQPwYBVQi5MKtVv45Rx04bm
         XYAI1VzZ/duWtXCu1/ufBKaGCgaF6gI62bKQeLu7RUULoJ5nBogT3Pey9FA39HGZ5Q
         ioazPZujTrF4p2vpr3Ov+WMVcPB2riX0tecgbMolQX+NmevC+clUCIqAVXPhcDa1FG
         xLkb367R3Dqfw==
Date:   Thu, 20 Apr 2023 13:13:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zw35q5w6tcgponwo"
Content-Disposition: inline
In-Reply-To: <20230420100059.hdtey45vpaytjcvg@illithid>
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


--zw35q5w6tcgponwo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 05:00:59AM -0500, G. Branden Robinson wrote:
> At 2023-04-20T01:23:14+0200, =D0=BD=D0=B0=D0=B1 wrote:
> > +> 0), they overwrite
> > +.I pmatch
> > +as usual, and the
> > +.B Byte offsets
> > +remain relative to
> > +.IR string
> I don't think "byte" needs to be captialized here.
I'm using it as a Sx and the section is capitalised,
so I think this should also be?

Best,

--zw35q5w6tcgponwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBHlkACgkQvP0LAY0m
WPFMiRAAsw7ANC7gkvxbmoEy0lC0rU9/yqwop0ZCa768bZ7KS+1iQ3aTEZyFqi57
LIDVCm/0esFv8hPYRIlCURY0JsSANED6v/LpcgNLqPoNORT+mnquc6fYmjGyydMW
2vgbjKjNw2dHF/NOxyLoL/VYTiOG610Gfi3+4UWTo4LGmKpPeHo06QrumKqgG00f
JXN3SIy0MQwxRelBg0GVyrtOJLCRG0CCbtD67yquJP6oglCEljtmaeMvdvLb0tPA
xoZmlLmq4uExYicIdGCHXTEhQzXNockupZaAMm5OojaW0DkbYVrCt1crdHnF83lc
OeLuSd0J6V2G46WFI5CZHRAh+GUTS+/gbKFzIq0UIpzKL8UXcX8hU+sP9wvCSqL3
pYDkft7aXIDT3qIXz/hH4BhZv9aerBlZpTEu1csMV7sNXb+qjZ83ufFLHCPAkvgl
7A0vk9U66o9wRnlSaZT8L3syrKXmSl8VwV6pH3jwsQuzwkkt5I26FhIz2nFOhwbm
DJG/qa+gHtYR/ZplG2llDLuKrchqiNyhp0sye9lU/9cF2sFGmtF+22cJxiMh69qM
FPLXGaUCCmmsprCjbflLInIF6d1GtKm5Fl18mJ12M8lDTo9oobKI/kevJ37OYorW
8Kx9hxKoshYsKNEhztCoGi88o3K2pwwXyz7ej82hXNdzdoWYurc=
=puVF
-----END PGP SIGNATURE-----

--zw35q5w6tcgponwo--
