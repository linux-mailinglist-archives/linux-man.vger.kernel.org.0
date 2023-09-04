Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FE38791B01
	for <lists+linux-man@lfdr.de>; Mon,  4 Sep 2023 17:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233957AbjIDP7K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Sep 2023 11:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353290AbjIDP7I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Sep 2023 11:59:08 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB58C1985
        for <linux-man@vger.kernel.org>; Mon,  4 Sep 2023 08:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1693843098;
        bh=OPFAyyz9munSkHIE6jCa+kJpmEoeSlLGO4QVh0aN1/0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SS/LVRG5/wtd+PBCys7ndquuBLL9ZCtf0YNeUYnxeSQtY57Wo/9fmTtfiJWR7vuUs
         UbmOQ/Dh4hrOx/YvQVSERSCq1jkB9q3UQhcFVMV+NzfrenOOThAlCiYs0jJKGakaK9
         mYJPeaLoKU4+LeoveFmKSVNKaD5j5ZM/dqe1HnXqmnzAWIUFZMymsUAJaEWCV/lO24
         qvY23y3NEZt6cZKzHb1NdLi7Xx41gfjyDDDyBUo4FjOgQplKWmhVriyXKRtEwI810p
         Mg9ztQAYJxHE2hhGk0WiRMtS8ZJQPywv0RAtHTBkVOqc98T+hAt75WAyflaUvVDkQQ
         52hQeos0Z3U3g==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 70FC3B0C6;
        Mon,  4 Sep 2023 17:58:18 +0200 (CEST)
Date:   Mon, 4 Sep 2023 17:58:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Message-ID: <zo54uc5bxatm7pjctsds623nmo75l3ydjzp5w7loiylbf4nacj@jli3dc5fdbrk>
References: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
 <20230904154150.25pvoitudtdwqfla@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="esilhgor267yeao6"
Content-Disposition: inline
In-Reply-To: <20230904154150.25pvoitudtdwqfla@jwilk.net>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--esilhgor267yeao6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 04, 2023 at 05:41:50PM +0200, Jakub Wilk wrote:
> * =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>, 2023-09-04 16:2=
9:
> > POSIX says nothing about ioctl:
> Yes it does say _something_:
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/ioctl.html
Shaded OB XSR (obsolescent, STREAMS),
FUTURE DIREXIONS say "we're removing this next release" (effectively).

Linux doesn't have STREAMS, so this doesn't apply, and even if it did,
> > STREAMS is long dead from POSIX.
> What do you mean?
It's obsolescent in issue 7 and completely gone from issue 8,
and ioctl() is completely gone with it:
  STANDARDS
          None.
is correct.

Best,

--esilhgor267yeao6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmT1/pcACgkQvP0LAY0m
WPHaGxAAtt6aFbqzOS9Y6l2UHLNb3C176ERSAIt5FuNWgqlkLOmPCwMp0VDKP3rG
6EWoO2C+Jfx9oxpkhMfYfW1yHgHEQuheZeCP6fTXsg4WGX1ge6UGHDWAGbMNFn2u
Bs0Pu7qHtWBFKJeoTZiRy+Hl9ZwV3DyDbOIwFiCpJYq8qSyPDgs56XZsC9YvATw5
BCE0qVB66ZyEmofR/JdoS0PQ2ADJOVl3GQE+p8jMZuejQQeLUUJfdbs9Du1Octdr
ByGW2dA8lOe98ubHamcMwWE0UxEt5vJETKZiGzZAoIrsuKH0SHND51FFjVj2VR9w
Jql5sc6iKbZHsgay8Gi/SOumC7bzo0C2uQZCecisRFz1Nqasl0nzUFm/etEY/52W
88SW8asRzoc5rtg/56dS0jZ8brWhDpMEtrAOhfktJ88cq8W9XIYOslEbLSgtzlx8
MBPcKlsAMpAVBgy8tWH6CJ7Gq/6hBW8OPaHuZMpEMyrmax7bHGFlAkPUYgiSrPmx
qbdbbfRVCTn4Nr9SrPYMeSsd5DIMB0prftrfvNrl1gUcShB+ZpiduE83LwfKQ6dR
ZnHSPDy6m5cf6diVyfDegN+r1ss1nAduGv/tRrhtDQ2DViDu7JTG54A0bXd2hdzh
OIjZmizHLVyN+Twl6Lj+ue9MtclgT2iVAQylv5cDf+8jXDjy61Y=
=LkW+
-----END PGP SIGNATURE-----

--esilhgor267yeao6--
