Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE7AB564A79
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 01:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229899AbiGCXNF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 19:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiGCXNE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 19:13:04 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 32E582AE7
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 16:13:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 542849F2;
        Mon,  4 Jul 2022 01:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1656889980;
        bh=zejJAFFbc4Y0Q9CdMl6sOMVA13IZEPdVHzHCVxcpLaI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sUeKy+HtbwZx/cWMLfwHWC95RGUtTv7N8I7GqsDox+dTWaPeNIoRV2ak0CDlRK7Qz
         ipYfakV+UINIAXv7LZDboFlIM3BBtohFfF0K1ho3vYp6Qi42k0dZR4j9EKms6yc4y3
         dTbebXCqonX/0pCBnG32impftuBfotH/QU5mlX1GTqPgtfWxMyqjULknDorQPgO3SJ
         sayDwxyP7VhA7yQXQ5DKDf7LgCCxGxfmjYDmJQX6he6NgvW5U38+OvRlJUPhOu17Va
         DP0pVjAXjRzm7ySjARV2D1Zr3MmBlWuMRQDDD8AxB0YmpdOwF5pA2DSsZozFn708Oe
         +jdyI5vjA3VO8trnMdSmqjhTCI+PCzkUyCMXWfC5W7CEsoxgkwlOb/i4A9EiA2RRln
         5Z1rLf7Lxe39cKwTWLZtGxAnDlqXeexToRXNoA3MS8YdLiDnqvWI8YnKSBO0ovm59A
         fABmfZk0qe+wtkXyR0sjFeYK+jnM6nsjnKALdSEih3su55mEmyBaS9TG3UvKTg8JY1
         3k0U+gX3UO2rlyUOMqMvqHD0uIiiHxQCc4k+eCPXfTSH+UZogR6OTCQu2fN3Wg/p3K
         P70TJSRzdkDLbOz3WHYjTWGNv5JLKDm8qOC1J85Mdn75QfHmNd0FasE8jyjMVA42n7
         0poc/yovFim5Q+KvcV9+1TcM=
Date:   Mon, 4 Jul 2022 01:12:59 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
Message-ID: <20220703231259.5xtp5zzp52pvz5wd@tarta.nabijaczleweli.xyz>
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="j46nzbvegj6iul5u"
Content-Disposition: inline
In-Reply-To: <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,T_PDS_OTHER_BAD_TLD,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--j46nzbvegj6iul5u
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Jul 04, 2022 at 01:04:53AM +0200, Alejandro Colomar wrote:
> It seems you've been investigating about these structures.  Would you mind
> adding a new .3type page about them, maybe?

These are largely editorial changes whose lack annoyed me, I haven't
investigated much of anything here =E2=80=92 I'm barely an fts user, much l=
ess
an expert, so I'm not qualified to write a manual from whole cloth.

Best,
=D0=BD=D0=B0=D0=B1

--j46nzbvegj6iul5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLCIngACgkQvP0LAY0m
WPFOQQ//f7FPBPG0rLv+bxdmxD6zWKeOVKBlJ07wzJJkRHmPEcs+9C9jc1jDJK/V
YCm/uUr0sQLfn2KsCFx6c1bc+iublAR2s1Gl2SeXv8AasVI+ok/p8+HqCDwIiHZW
gZ4H10/MnCSei0ryS9NHQ1fLl36dqGyorGiUwz6HqhgnYfbRB1BzGRIm2CiHLXUD
g1bNGdBOZwAe9i0JbL6jNiAhek0cTO72b1TiAnisKz29N92Ve7TnsLZ78/kJMhcL
MMPfEF3R2op+IQp92u01JdVG+/Pac5P6Zm4wTyq4JDYwwGwvMybxlsr9Wa0qpZxY
MG6JpZhK9s7wqcnedf88S1WTU6L55ETsZDLVigZCGn3hMkYVJ2DU62vqspQRutoW
RfI/RL5ArGgDnC9Yv9sV4WlFbUbQOWWhX9pc9qdykOPR01T/0hN2XPFC52+S3cpc
q7kP2wbAOabXkbguHMUHhjMpZjLGFKRZBKM6siXKVp9hqMgtGAydFp1OFEsKTfAY
xjrgfWhw8qpzhntISh/j6lgzy5kPIejz6VNdxNoy0FfoC3X4ugTVWR8BJNKsNK6D
rhOhjaApn07ZCqjNRqY/LmP2+KDBtSfbY8ISB3GURvULDzkaELBClfXBwv4kkw7K
+FppoL5+GJjUeyoLRiyCXf6OHX9vLN2/Re+YtU5j1XcUmIVuPG8=
=6/WG
-----END PGP SIGNATURE-----

--j46nzbvegj6iul5u--
