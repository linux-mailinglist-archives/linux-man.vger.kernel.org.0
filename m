Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E06B7DE3E1
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232513AbjKAPGR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232645AbjKAPGQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:06:16 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0190D47
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:05:38 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 719FCC433C7;
        Wed,  1 Nov 2023 15:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698851138;
        bh=SDPXOaKRz0x9IqguhvzhzlIIQ9Yf9S5MkeG4jiIfd3o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=u1W7zNL2C5+mCdPzlia1E1IjMCjI/qFkJeUVsVjknnXPFXuDOuGj8Xd4RmJ15b+nC
         uaWI8peAHVr2C3N8AIRNxMzp8eAGJ8wSvhik4x8t1fcjP80tGG1MXWi9CqwSrVHTer
         G7L++Xs/6faiCKJSmm1W1CkG1UXchry+WqRiip6XWpE2YG8Qu//QFhLWig8lsVgzCA
         aw8KWFBxgxmTY03YUIm7IsjF93wydMbu3yH9Mlj3k56jeXtBtljEGRKwCWXeQgJMGr
         Il7+M4tiefYTO355v7Is+TxNelvsowyqNabowtOdVf8UZZ0f3XGdrvWNFhgCQwbwcY
         cY60Cp6seqkOQ==
Date:   Wed, 1 Nov 2023 16:05:34 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clone.2
Message-ID: <ZUJpP8xpaNs-llua@debian>
References: <ZUJaYs53G_dFYcJv@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="VEceb0SzXg/0atwT"
Content-Disposition: inline
In-Reply-To: <ZUJaYs53G_dFYcJv@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--VEceb0SzXg/0atwT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:05:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clone.2

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<exit_signal.> =E2=86=92 I<exit_signal>.

Thanks for the report.  I've applied this fix:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dbefb4aaa6d3e2bf1bf975a3585c23b863a534092>

Cheers,
Alex

>=20
> "B<CLONE_THREAD> or B<CLONE_PARENT> was specified in the I<flags> mask, b=
ut a "
> "signal was specified in I<exit_signal.>"

--=20
<https://www.alejandro-colomar.es/>

--VEceb0SzXg/0atwT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCaT8ACgkQnowa+77/
2zI2VxAAlCK/E1lyh6gevNzgRPoCUZtBpHPKlIlk4X5ya/6rozlJ278k4jdiHWhi
KcHUrya2gIY6mf/INk8g0hO2YcA0egX2WPXK9QUgu7RjinLJ2kh7NAERPHtNaOQF
i4bDeh78GtD7Cb8tkd6ZXtcTiWAtZYuUEVLfOBUSChD2pFlA8Ts1xIXGLRRkKs2+
x5RKB5SCIwJ4ytuDN5qfNiPGffk/sdeO/WS3T5R2fkTGYQ9i0c0u50f7nBkZSHH+
GJralrEWXvoulYzUxRJwnfTo7Xck8Is7VjWlRBrhz2aVcI4CCyDNUdcUjFcSqVp1
rodDfItv7x+sfupuf+E6wzSygD+n/7Qy6J8vK1bG1PK4I+pMOpV2dSSrHdThbDkr
baOUrAqlTZZ10/CNFoCqaHELXoWFjKSN+XXpUvCMJkZXkPCJ78hV0IYbFqN4s1ZQ
tt2w+TellQxQ2M3GwrZwC4X/tXk+uDzBHZeCJwHsaKSN0p14jMM7V109bQBawSXP
1KcdomecNqPplVJIBTrEos7AUUfJVDO45k759CtSBj87xBRoRTssM4McTYi7BrN3
m3JlAw+wnPiD14bpT8xrqmkZL0rWyHkbr+o25Go7HJAXs9oOVtoJEKKCYwCoRdPo
MJT/FVkz8a/CjySlRR2DWzAopMTDhunYzcP8BFmnC5HsZMB+0rU=
=0gyM
-----END PGP SIGNATURE-----

--VEceb0SzXg/0atwT--
