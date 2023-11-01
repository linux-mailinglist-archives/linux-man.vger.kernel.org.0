Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B56CC7DE486
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:24:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232538AbjKAQYO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:24:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQYO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:24:14 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 428C8F7
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:24:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020147.0000000065427BA6.000FC718; Wed, 01 Nov 2023 16:24:06 +0000
Date:   Wed, 1 Nov 2023 16:24:06 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page clog.3
Message-ID: <ZUJ7plEjORZb4Q6h@meinfjell.helgefjelltest.de>
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
 <20231101161500.ko2nejsen2o3i4pj@jwilk.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1034008-1698855846-0001-2"
Content-Disposition: inline
In-Reply-To: <20231101161500.ko2nejsen2o3i4pj@jwilk.net>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1034008-1698855846-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jakub,
Am Wed, Nov 01, 2023 at 05:15:00PM +0100 schrieb Jakub Wilk:
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

Then disregard this report, thanks for checking.

Greetings

            Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1034008-1698855846-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVCe6YACgkQQbqlJmgq
5nCwBxAAqYh+SagdzXHhkQNNZcitsAhFuAxtdnXZoFyQ04OAuEOfYXb2jcVriVKc
+IYfBGnA44X5/ruc0c1L26fbllWyUr6sOgQKxcImk4SOagbILC/j+1ttfOQwr0kg
rcPPE6gj2fCf13zMRH7b3C4IaLF0au7s9OBgeT+CrIwJJPd7cDMnbBU8DNwZD2C5
qBqm1m17z5GQCxgliQjKn0GzS5M45YWE3PjnTo4yJtFmEO2JYLe8kB/sid0NcfFJ
ZQXADP4rP67wMdGKm/SRFxX4i7xy5IqpA+TRvFcDLOgNkp+QCF8tq+2ZPC61RooQ
6ZJe6QlXV1UQ1+85ZKCqi1fb9i5YwHzSZEzH/IOjzjZRKVT/kyjjOICxq3/rJo16
1foIiNncZta9lry9o60Z2RAFi02HVzyVM3q2A9ZDHRwEVEE8MzsHM5Z5ABshN7Ow
IvnAz3ZK+YzrwY/P2EmtpYExXAKRMUAkbqPcK3SbljA3buTQ68zMnMAgec2MZznN
bcc4ttRMozW1narN7TTj3LS4rOR11B8wv38+yLA3kIBfa15qzm5Xp+ujci0I7xz/
wrFkhh09RqJdA9aZ93j0Qbn3jmbZnKPSJLibqB3M1drNmZQzkaokhEKwo8zfSKnZ
v3Wn19QJFTrmPtydzv17PM1ZneNPzkPfC2DVjybDcrAUQVLsYWA=
=ePNJ
-----END PGP SIGNATURE-----

--=_meinfjell-1034008-1698855846-0001-2--
