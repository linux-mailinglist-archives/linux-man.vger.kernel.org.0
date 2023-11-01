Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CD797DE509
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 18:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344351AbjKARJG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 13:09:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344643AbjKARJE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 13:09:04 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17624119
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 10:08:59 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89E19C433CD;
        Wed,  1 Nov 2023 17:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698858538;
        bh=B5QTE8HNnicb6P7GDkMLT2H0IXWN/bWDNW8Yq7eC9ak=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kvwWhiw5k27bLohpvnIh20RxPCxkSS6abQHRpk95xP/LjZkfCb3IwBTFWt1TWsfFq
         /JJ6ZtYt5VFT/u+9YWEeKY5d1202sJqI7A4z2PIS04eiTRoV9ZNNQS8JSYZrSC8puv
         1jVndyV76laP4OKwGpOJ4Vyi0vNbiYqs2G9eSCLwoOgWleFKoGHbShqCShtUUeiNJa
         LgOpaHNd0hNOhJi9AHJaq/c7n58lyEMOWntaaDGIoXCfVidS1dPU25gqojj03lhxXX
         yF984tmtcu0tfrxf5FtXyzv7MsScYWktHlXb9wkHUIGm19ykdGf+oZBfEUeXvUSUIz
         /yGfG9Od1RJsg==
Date:   Wed, 1 Nov 2023 18:08:55 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page clog.3
Message-ID: <ZUKGJ7RCTTWYJyN6@debian>
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
 <20231101161500.ko2nejsen2o3i4pj@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aloEipybPY9k7KKF"
Content-Disposition: inline
In-Reply-To: <20231101161500.ko2nejsen2o3i4pj@jwilk.net>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--aloEipybPY9k7KKF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 18:08:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page clog.3

On Wed, Nov 01, 2023 at 05:15:00PM +0100, Jakub Wilk wrote:
> * Helge Kreutzmann <debian@helgefjell.de>, 2023-11-01 14:02:
> > Issue:    [-pi,pi] means both -pi and pi are included, this does not ma=
ke sense, either one must be out of the interval?
>=20
> The man page is consistent with the C standard, which says the return val=
ue
> is "in the interval [=E2=88=92i=CF=80, +i=CF=80] along the imaginary axis=
".
>=20
> I think they mean =CF=80 rounded to the nearest representable value.
> And indeed, the imaginary part of clog(-1 - DBL_EPSILON * I) is -M_PI, and
> the imaginary part of clog(-1 + DBL_EPSILON * I) is +M_PI.

Ahh, thanks a lot, Jakub!

>=20
> --=20
> Jakub Wilk

--=20
<https://www.alejandro-colomar.es/>

--aloEipybPY9k7KKF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVChicACgkQnowa+77/
2zIsHQ//Uw46FzxepDYOlh0A4TqEQwDQF7DEmF3TmdBZ8DARa/Med/2anIOjnBJ6
G7jXYmMhNN2nrv0t7HJZC0xx15aa6UynjXofOpvhUjbc7lqAegkgVwrpdVcyn31U
WFXB+uX3Z+DGGU5/BtZ9PybZbkZ8wi2caP3fS/7HhvUrHpxrIUVs+I+UsqgnYwpP
i8W/Wvi634j2Fh2gOb5ULobswcqMCKL4uQipx/WQAkQTV2mpIY60Oaaj/X8AXBgt
L5+TW/Y1od6afae9ySdPQrWCIN/aLuQnNVXRENSpMfnX1TdbsTVWXGz5oOrxmcJw
yUvkteiiotGfceqOib8UfFIVrrsJySfstzPG5bAwz7QmsC8oMNEDLkBcJ8PIPJLW
mOkMraQ1pNe4vsISbd0N0MNLTGl2ho12fanedBmVIh/lWAAq2jRStDP+3HgdUeXt
Q8z7Sku5qu0N/wmL6A62aTrRB+Tjs+pEOLiH1To33v0XbhjLsveMN0uySECci5oF
ueP28EpYZHlQRm1c2/AzjbyQxg1PxEJaVa4c75Qw5FzftZ+qy5mN6LzwDhB/HfUe
hrymKHjxf7L1FViNO58qX0w/LA/sH1wZiA7qDqkZlEG0z6B79WiMpNC7x9nM41xO
fQZUwMJPuLdj1y6h9t5g5Whm3Crtms8GE+mcfydgwpoXTY32uKw=
=MeI6
-----END PGP SIGNATURE-----

--aloEipybPY9k7KKF--
