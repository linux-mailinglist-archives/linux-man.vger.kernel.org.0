Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92A7D767421
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:00:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbjG1SAn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:00:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231345AbjG1SAn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:00:43 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DA503588
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:00:42 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3a5ad21a1f9so1832642b6e.2
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567241; x=1691172041;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ck7rqAoQzLs3raSWM2uFYxu64obJ0RQ0KodO9RoliRI=;
        b=XMZGQbzRV4KlSK6CCXgwxd0cvoD/764g0m4B0IuPThyn0WFj/85oXoLrcjc0DUFVp9
         Xp4Iz9iuEd0YS2EefN7/tI+lXH9gC09rLkyYqw4ktikAUIhEnDS4SEKiEljCGi1acDhf
         Pyf4/RLQZoTYJYQXFvUUR92Zvdc0lXTI+vf6dqtoQgAhU/HS4uCBJJUwFpKI3LZ8ti7u
         PzbtQx9KoHgaHiS5m62LwpSnf9Kay4kjcw5wYHhFEjoH7tRFHE9DVdUekEgdK27cV73H
         1wwC0yCDelC1T97guBy+2NymHn/KC7Y0ne8P0Ht3UBjZb6AKiokcmEo6oXXtcUZSETv7
         tEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567241; x=1691172041;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ck7rqAoQzLs3raSWM2uFYxu64obJ0RQ0KodO9RoliRI=;
        b=b7rdl1WtnzHQXb7h/xQTxHVVFUban6/4Bvk/9FZ5t8oXD4ZHw7ZdIQ+I+BwOBQMg4f
         5f6k2XuBnFtVFWfSQgutphiZCO86tbQYa7TMuyBgp90/g1Jddd1k78yKVz69YqF10eBZ
         tJm6vV6cNnCm51NG23rzzwy7Truv0NmXU0ZhKgnOwv/kzYyGCjbnKtNh4pE8nYP3/WQm
         RkWTspOOQpfpuduU5ohJLyVcKG87d2FSGtR3aKXrZvnXMGIkAP1G29W+gjEM3J5WWOvo
         tLDwf4/Iy3HEshBkQ7D/19zxke0mxWKXT1c+E+6F0cmvSELVetfp35H/ZiBvpN4Dc1t5
         kBAg==
X-Gm-Message-State: ABy/qLYkQXcAf2m+0JiXj4ThIvjvwjoPLtrTaGg0YfRTMg+kzST/9RQj
        3C/SFR1m0l6s+MyL7VfVXY/qrQSmScw=
X-Google-Smtp-Source: APBJJlGUOMJcxgqbO3Mq//oxqvoBipGGfRCC9OTkLdm8cu5UOm5FxnS5g9d4NLI8rn6LswjI6ki19w==
X-Received: by 2002:a54:4897:0:b0:3a4:24ac:30dd with SMTP id r23-20020a544897000000b003a424ac30ddmr4184062oic.23.1690567241263;
        Fri, 28 Jul 2023 11:00:41 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k23-20020a544417000000b003a3860b375esm1867807oiw.34.2023.07.28.11.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 11:00:40 -0700 (PDT)
Date:   Fri, 28 Jul 2023 13:00:39 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 4/6] time.1: ffix
Message-ID: <20230728180039.ivcnxzk66gpktqfx@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="k55vjzrferi2fg73"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k55vjzrferi2fg73
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom 225f59d4bd93db69d499cfd546ebef62fc6a63cb Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Fri, 28 Jul 2023 12:02:49 -0500
Subject: [PATCH 4/6] time.1: ffix
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

Mark up ellipses properly.  They should be in roman.  The item preceding
an ellipsis should be in the singular.  Use unbreakable space between
metasyntactic variable and subsequent ellipsis.

Quoting groff_man_style(7):

    =E2=80=A2 Symbols that are neither to be typed literally nor replaced a=
t the
      user=E2=80=99s discretion appear in the roman style; brackets surround
      optional arguments, and an ellipsis indicates that the previous
      syntactical element may be repeated arbitrarily.
[...]
    =E2=80=A2 The dummy character escape sequence \& follows the ellipsis w=
hen
      further text will follow after space on the output line, keeping
      its last period from being interpreted as the end of a sentence
      and causing additional inter=E2=80=90sentence space to be placed afte=
r it.
[...]

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/time.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man1/time.1 b/man1/time.1
index efb818cfd..8902b4b96 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -9,7 +9,7 @@ .SH NAME
 time \- time a simple command or give resource usage
 .SH SYNOPSIS
 .B time
-.RI [ options ] " command " [ arguments... ]
+.RI [ option \~.\|.\|.\&] " command " [ argument \~.\|.\|.]
 .SH DESCRIPTION
 The
 .B time
--=20
2.30.2


--k55vjzrferi2fg73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEAkcACgkQ0Z6cfXEm
bc4D2g/8DZgzTzSe/uJ3cB4L6mfsBijuVs0uQq2RsiUOf+lfLkWkMvLgEdFMK2w4
WQbOTS313trUMEFLlNJbxa+ufsVOQEEiKBao4h2lAFnTsHDOngRepyOl5ifCeCXF
QkINS5aiKUP7O0HzOkCMJ8vuL7zN6A8Q8rfkw6KIqhPMUHoKTrybQigPUFx9Y53H
k9yIlvFBRCrXjVbbOo+P2eZYV+XPi00UvOMaT9E+AgZUeMPC1fBFvuTY/P1/dxkJ
8DYsMeupZc/D8nVnwWsVIwrHp0SswH6cVMzlRomNI70KgeUhFiro4fE2gmZ4vHO/
9d8zwW/LkLM6jQLdk03wI8TW2cg3HtaZ9DZiCsQaFxnt92g6rhtherHYHfz37EZ1
hUrupeo4E4zv8Ws/8F9ECltRAqQmkRWiujHKDXkAz3frCwUnpH7Zz1YW+yx8EgWC
MaRf/Pomd3o1nvb3aLKvh6vMGvhVOBy/iz/840P9t9lyu2CuFdjhdxGpzGCYjOue
qi3D/swT2ix3bhlEewODwSLSiA36Jj+iJIcsfk+hiuFCw0MWOmobyUX9NvfTA2KB
mv/1zzPkGJP1t7Ln0dIdYVupi4FPrp+QhVb4Jkf2fsulMLNhWDaut+TCtXugGjkU
A5GBSJLVv15x8Ns/6fz9RyzxKi3wSGexC4ig6laQvnxlE3AJQ08=
=N0uj
-----END PGP SIGNATURE-----

--k55vjzrferi2fg73--
