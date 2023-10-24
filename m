Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E2E7D4E49
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 12:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232854AbjJXKxr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 06:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232042AbjJXKxq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 06:53:46 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2A4612C
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 03:53:44 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 983F6C433C8;
        Tue, 24 Oct 2023 10:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698144824;
        bh=2CDg5v+4cvQG6c2snrBIOyGHZ3tsHeSF3gsKd81kLOo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lCPLyO8CK3m29Uvy6m1XFr3nB/srp8w6ouuYlXBttloHPCKiuQAc4xMl8ObPKqk4T
         vDSPCXZiJLvN9+uvDQWoj67jzp6tF3+VG2syy0F/2QShAPm5fpl7obBz2gtmLxBltX
         RBkXJS/vxfIZT0Mo170nG2e+DWvGxkFWXkZUmhuOt/JwVg6UKug/8zoAD+0ndltoWc
         m71aMtV3ZmVTtPpTmJDppLJuWpmRz1FGxALirLJqEaEj4OL5/5niIyylQsWXEJf05e
         bXDB96bvm8CiH+29NZDLyVBP484QiVQblEn6Xf/D8J3ObZwCr3KsBRWhZzvZf25xQX
         ih/oEpeQEgt/Q==
Date:   Tue, 24 Oct 2023 12:53:35 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTeiNY030RrwOBAy@debian>
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
 <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com>
 <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org>
 <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
 <ZTeRx4vqHQ07eATQ@debian>
 <CACKs7VDsMdC4FbJBNm7VQWBuq90_DwA6vqf2yh+Uqf2rjp5nww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="esH9DPjt2sJdtfQ2"
Content-Disposition: inline
In-Reply-To: <CACKs7VDsMdC4FbJBNm7VQWBuq90_DwA6vqf2yh+Uqf2rjp5nww@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--esH9DPjt2sJdtfQ2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Oct 2023 12:53:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities

Hi Stefan,

On Tue, Oct 24, 2023 at 01:00:09PM +0300, Stefan Puiu wrote:
> Hi Alex,
>=20
[...]
> >
> > I'm sorry; I didn't even know about these things until Adhemerval sent
> > the patch.  But yeah, I agree that if would be good to define them.  :)
>=20
> I didn't know either. The email threads Adhemerval pointed to were
> quite useful. That's what I think is one of the benefits of watching
> this list, you learn a lot about new Linux features (and in my case,
> features that are new to me).

Indeed.  While doing random fixes to the pages, I learn about functions
or other features I didn't know existed, and later find very useful.

Cheers,
Alex

>=20
> The glibc-hwcaps support seems to be present in my Ubuntu 22.04
> install, at least '/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 --help'
> seems to imply that.
>=20
> Regards,
> Stefan.
>=20
> >
> > Cheers,
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--esH9DPjt2sJdtfQ2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU3oi8ACgkQnowa+77/
2zITAA//TYVVQd96GaOis2WV9jXQY64wvoN6wHc8JOnilQwST0vjR0tGCttAXIVg
JxHTgIBJ25euYLa8BS6jrZD8Vg/V1oBasG6JPIXlOD5T9NNolSmA0gJcbkLnQguN
B6YZIt7/t3IExQm6c1WPT1gb3bML7tetHgqg/axVjJTEIvSoW2NMfl1NdboO3+Ov
vAKDChG4e+z1HSyu/V632FG/P9xXQLZd694R75lDq68YfBkuTQKpoyJWXVIosLu7
mjIXUAzr7EsyS7BN4sRWCGisNPpgxUF4OrOnxmkYWjp3lSwdFiEk9YR1Ccm7Zh/K
4JToiQ91PLa4yNZMOdIhUdhiGPLsakiGS0waEuIZbbw/JVJCBjokmkf/EgmlERsT
Op8lLgArbdMR7dpNGZqLb2LIrcC7oyaKrvIxy0u3DvcjLwq9xfhNyFEtdHsJF90M
XdytQEEIVYIoGoOMf9hbAt2DFibV9bTA8z47r6HH/KykB+/KwKSFhMMZM9/RV+i8
kPFMhKkGl6fm56ljex5bXpAff3sr5PooJ/mOnL3ZEemSzxk0Qj49xXWuDckz2jOr
ikAVMHFLfaCVWRo+Rc4sKPzL1pjFwXU1ogIZBw6RjubVSobzXEexjUBaMTFWNo63
zAjolBiSZ4vsQ+sJte6Nrr9/dAv59w0Dg3cVoTOS/XOOubJ0Bfk=
=Mcec
-----END PGP SIGNATURE-----

--esH9DPjt2sJdtfQ2--
