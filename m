Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37F147DE408
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233968AbjKAPm0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:42:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbjKAPm0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:42:26 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9948DA
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:42:20 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84249C433C7;
        Wed,  1 Nov 2023 15:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853340;
        bh=78RUuZoBiWoHHHtN/qpu40/llWnUBDukUMHoA2+dvOk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MwOIwJ60NPVLgubOj+Y9HSM1cHl0ulRC9N9LbU/yHe2p6MkilU5/qAXl7p1FJ/Sv4
         siqCI7dZi8CJvMXtn1aqaqTfeKO5hDlyz+Fn/kGTsYZMZkjC+rk9VRSvD4DDxB2XGK
         +3oIv53FPH8ZnupzlBSLO+SHQMVibdHl5p5khOiM+Yb1+oFr6Z7bjrxwUDTl4jF3AC
         aLG5d7/cn5bxUM9FfQ4Ew04NZdJPzP1nBM4CEpsSDS5yChFd7rJxUnqJ07eMuPbTqV
         VdIEkNQgqQTLs6FJa3mCOfqOMzO/qWmfTbas2lPv4dddiSykoXS92P9pxMMyryxpsy
         Bk+Horhva/9ig==
Date:   Wed, 1 Nov 2023 16:42:17 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page INFINITY.3
Message-ID: <ZUJx2ZHQbJmICoEM@debian>
References: <ZUJaYy3uGROYLsVs@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Q9Tmmpil8MYWasmk"
Content-Disposition: inline
In-Reply-To: <ZUJaYy3uGROYLsVs@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Q9Tmmpil8MYWasmk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:42:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page INFINITY.3

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    (I<libm>) =E2=86=92 (I<libm>, I<-lm>)
>=20
> "Math library (I<libm>)"

No, you don't need to link anything in order to get INFINITY, since it's
a compile-time-only macro.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--Q9Tmmpil8MYWasmk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcdkACgkQnowa+77/
2zJRRhAAg74dfnabF4+yRVdtT678HavcKWi9Q9qeJZ8klkIZfcOrp7Y67OUc1qKK
c0/Xc/TJCWPwohzAoVIWVNe3Rihl87uvZOjqn97Nwzpsiu/bClbcEH4eJdq+/KSR
UZiyDubSJhCcebv025LDvctEgu23y4qmbMruZaH0ldCjsMPuYUy7XLVmws1/CXLS
2zqEh3HmhVJj7/txGbZMhDeamPeXDOjsN+F75AhgjJUeNkvVcPar8XFN45lcCnBl
k/I6ZO+E6jKgy/192RP/X/2YTd0T4Z3QDlsmPNnYILHJbKeX8PNKy1gKyW/yfRw7
DKX1kiAICMqpsXy3kmhcRyhalkFYbSaTXDIqprxbshVyhtZnaTvI+OJKtf15s9Va
vW4Bl2DYiXk/oTHhKIFhL5uma2VSdzPr2hrTB1+KzrGnODlDh+hdT9/6iYJEW0bh
hP5hHqn1ahYKMzQcSCa8UUYckhXkgZEwok1FpchenoyLV9bRHbWojqKNtSn946Zi
KkAKIA9Z1/jDNU3Y2qBQTDAMwBJDJjRICN/FjhMGeA078AAMi5LcPMg+VoFnkpCM
CdJ6J9UM7pNm/hINU7jAwb/xidqKhET4Y3JOODAZP8V6tCrDxSKtClYee47PeHjN
jvpVdrgj01SJWQlzKXlxxRM22m0mXezjj1RXaKEhDRqXvLz6l0o=
=10ui
-----END PGP SIGNATURE-----

--Q9Tmmpil8MYWasmk--
