Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B00D7DE503
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 18:08:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344634AbjKARIO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 13:08:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344604AbjKARIJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 13:08:09 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3EC2110
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 10:08:03 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 727B6C433C8;
        Wed,  1 Nov 2023 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698858483;
        bh=ZojTf1Qgo8YolYwtNxB7NuldAfQNYUt++Yo4UN/+LCw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fT3R8Nu+vQjZPKXY9LWbmWnCsLMseTEHYSnFKOzy6zUV761F/EYESKzEXL26w7oLS
         4I2sAlEYzoCt2CBCmTNj1hCq0eC1BvrNPXyq/3M8BIt8MCf6RT/9ofCYOoXqHBm2Ui
         Woqr2N/IgsploOakfVPqDnZ1kmLy3G+qx3gk2Wj2zbySnBBNYRM584vxR0BpxnoCW1
         wyZ3ALaXJ8SU27O5WjOcnyAI1KlnDfHBDiP48tRwq60KTHUzpJJ06LTi8EN4kKKf6N
         BtMEN8U+WYGEuSuzYQ7wRu4qLCvxOtTZLy7ngTj2414W+f5CkDmdQNvfgUceJDXC3m
         0bKI22K/6ysvQ==
Date:   Wed, 1 Nov 2023 18:08:00 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-help@sourceware.org>
Subject: Re: Issue in man page clog.3
Message-ID: <ZUKF8Krrlf4a0sKp@debian>
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
 <ZUJoBtadvsPTwFXh@debian>
 <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="o4bH7I4oETwiY0tm"
Content-Disposition: inline
In-Reply-To: <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--o4bH7I4oETwiY0tm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 18:08:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
	GNU C Library <libc-help@sourceware.org>
Subject: Re: Issue in man page clog.3

On Wed, Nov 01, 2023 at 03:25:46PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Wed, Nov 01, 2023 at 04:00:16PM +0100 schrieb Alejandro Colomar:
> > On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    [-pi,pi] means both -pi and pi are included, this does not =
make sense, either one must be out of the interval?
> > >=20
> > > "The logarithm B<clog>()  is the inverse function of the exponential "
> > > "B<cexp>(3).  Thus, if I<y\\ =3D\\ clog(z)>, then I<z\\ =3D\\ cexp(y)=
>.  The "
> > > "imaginary part of I<y> is chosen in the interval [-pi,pi]."
> >=20
> > I don't know this function.  Please suggest a fix, and CC glibc so that
> > they can review the change.
>=20
> From a mathematical point of view either -pi or pi needs to be
> excluded. I'm not a programmer, so the I cannot tell which is the case
> here.
>=20
> So you need to contact the person who wrote or who maintains this
> function / man page.

Hi,

I'm CCing glibc, in case they want to say something.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--o4bH7I4oETwiY0tm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVChfAACgkQnowa+77/
2zI9Sw//WaEkHRc/I/8fuEGW2Upmg9MQjHwzowRLkYSXaD6sszmGAlE3oi+yABya
kAo0I9JyOkPo+vf8gUmx72Qq4rhecoKVvb4ZZyUWaPaT4S2CHronGqPCoptQAWok
WaNxzJRQuA4f+jNA2CoTH+f+5CkijRH+hn+2yIA5L4eiegFpYRdJtKqmyiuN6fqI
+g2Yg1jCQXy5WOUxwqKij0q3JaUcP4TA60b9ITU6HFpqMethBbO+ItOh1SRrWoEa
dhnxDMkmaf+XVnQLP7zRmxoBy3cSNIrNiKQ2EpXFuikIUF53/QL7tGlTzlEAz0tF
j2HadCDjFJFbjJDdjln+r1mNBknMAS05byt97Oq/JYclZr8LwqdRZIVmNViS7Gga
PRWLc4luuXJxfg90ETM5wlEeV6eok6EP3d9VMQ2+mUxsvuDVhM1Ro26q8d0CHHFb
L/m7C5wsQ3zneXsDVBymz5mqGqGrExMgRsY5ryNq7IT0HTmJg1nofW9/cx0Q/uwW
Ztd+1OiSvuvYnZQKJcTkG1BYaFs0VhRDaPjmvXLvYVIjpRCnfbSFRj2nnuTVK7D2
usAlM9Kfg1bw2DUc9n19hwi2war0LQ2gry8mAxDszJuFYhfJ6dre5kig1cmEQ9IM
6TksN3ZGz+GEaFxfBEoUJOLx15wqltI3AY9+XOnPrjQCBy3BRks=
=nbsF
-----END PGP SIGNATURE-----

--o4bH7I4oETwiY0tm--
