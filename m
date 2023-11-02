Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A4F37DF138
	for <lists+linux-man@lfdr.de>; Thu,  2 Nov 2023 12:32:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbjKBLco (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Nov 2023 07:32:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjKBLco (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Nov 2023 07:32:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7505E130
        for <linux-man@vger.kernel.org>; Thu,  2 Nov 2023 04:32:38 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16232C433C7;
        Thu,  2 Nov 2023 11:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698924758;
        bh=kzxtCpRBSxr5+TTXGfYTg2itDUOYK/FNlMl9aoc6l78=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Qipi49eI5XNFgxAg5sXVcXpcO31+NO2QzyygwKQsxJlLTCg7QenFD5buY4855gld7
         Xg8DP4l0eJrCU9dURYA4m58YMfx+gn1RPHMzMsiyTfmyckPyRM0xRUrlcC3LnV5DP3
         XXDmj0G+6Y12Zmi7XwA6034Q/vQCxCQp9OGHxhh+COh3a6o/lYpT95JPlDPD0MQ8Ue
         yeo4KDUE7pPMyeiqkcNRzzKIRpfDWG4HOygRI7C+mhVDrzdMyphwYZThdnzBC8LfbN
         nw86Wdb3PICX/fScrj1HSmZGyUNN2iixGzROKWCRAmrxcf3PjQM32sASOdytqnWERe
         GWNtUq6jjp6eg==
Date:   Thu, 2 Nov 2023 12:32:34 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.
Message-ID: <ZUOI0sqWLx07vFVW@debian>
References: <ZUJaZPqi0HGylv3K@meinfjell.helgefjelltest.de>
 <ZUJ7zYWY2yspm3Ec@debian>
 <CACKs7VAKY4tvY3yEq3Y6x10MBaY+_jW37_VJWbpZX0dX5V+cEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pQlnzDg234Q1IFKP"
Content-Disposition: inline
In-Reply-To: <CACKs7VAKY4tvY3yEq3Y6x10MBaY+_jW37_VJWbpZX0dX5V+cEg@mail.gmail.com>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pQlnzDg234Q1IFKP
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 2 Nov 2023 12:32:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.

On Thu, Nov 02, 2023 at 12:06:34PM +0200, Stefan Puiu wrote:
> Hi Alex,
>=20
> On Wed, Nov 1, 2023 at 6:25=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
> >
> > Hi Helge,
> >
> > On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >
> > > Issue:    Who is "it"?
> > > "B<bcmp>()  is identical to B<memcmp>(3); use it instead."
> >
> > Considering that the rest of the page is there just to say this function
> > is deprecated and even removed from POSIX, I guess a suggestion to use
> > 'it' can only mean use the other one, that is, memcmp(3).
>=20
> Maybe 'use the latter instead' would be clearer?

I've applied that fix:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db8584be144ff391354190f89c4db4467ba0f9e53>

Cheers,
Alex

>=20
> Thanks,
> Stefan.
>=20
>=20
> >
> >[..]
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--pQlnzDg234Q1IFKP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVDiNIACgkQnowa+77/
2zLSLQ//Ump7AEYHACZlWtJ5KxJON9OGdQ2C8CsxeNKyY0LSkIZHJA9Cn3dL4Y/W
LhO6O1/8b6va6srR0tK25Q5lb9/ofQ9NzpBAUsPIZ13f1ot1qK5W9iZfq0OXo+1b
r/kM9LucJGQ+/e86h5AKUYm9yVFmX+Umi5Dm3HoV4+KNbIR8OozRuhLShbrdyoxE
dG0oLMuGjm0bG0VADuvn2wVY6PftF+tRiAuHi/K0EWwZFpyMO4UbenhSogwA3wDZ
+LqIruGWVbRrHLajZJgli42LWxtStomH9vtddZLVkvkOMbTiNjPOkKl7892tzJtW
aq0fuiaUzjYQoMoXXzCOI8im4pfphR6OkupHtKtzhXP57EFmvlTp42HT4N4PQcq9
1R1NZqeW+JKO5W+MPDhcCOi9t62WqppZ1LEO608bru6f0thujEEFKMcIvQ/faChA
4LDOfuJY9uCyPZPwMLQmB2slWUF50HA/csrU+UIW3HXuF4bm3/JytVPNpcJyZ5eG
mL4lVse0GyBv2f+/gPqjJA+beMm0WAk1PqOPZ93k4f+WrIet/wrlhieGvBO5nbsB
lYl8MD2Cvxev97itwYQZdkuCLD7yVbAQvh7/6OEGAfl6EQYwQMSaOoqOQ2rLrccE
xkqvyALyQPISR61u74IaAPPY9LhrogM1QE/qcrWOx3yvwycWPIU=
=BBQp
-----END PGP SIGNATURE-----

--pQlnzDg234Q1IFKP--
