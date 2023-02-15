Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66609697F6C
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 16:21:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbjBOPVG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 10:21:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbjBOPVD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 10:21:03 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11B8639CF2
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 07:21:03 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id bx13so16042809oib.13
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 07:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsuuqDKsVoeu1jJfhn0SiqgiGRo4Cbgb7pjnWjGRio0=;
        b=AC9+HiU/guxPpSBqoJpPIlmdlqCvJHFOc+nJPDhepNVu7pQQtaOOHKPKz8eVIfhdEn
         WXK3btco5yBqfOnjfyOB8cju6cE5RvnZokxrWrMQ9qbtcxB8RoaeA2VEsMQeaJnvJi5c
         1XY/Uc8E5lnV+nhZOacWphYNRa6chx7H3YDijDVCkjLD+1q52QvFRw6QSV/Rc3KyVXns
         OoZ0y3i+0k4Y+DjWqtogRDUQWhbS5cwdI1tdZ2Gz4m66APGejF2vQSeBbnQVAekvzjbZ
         asUNAVSpiLh6TCTL3dFraKurNp1nTRa6n/hlMyHt0i3xtU71/3elZaF5Gnw6c1gajttc
         Pewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OsuuqDKsVoeu1jJfhn0SiqgiGRo4Cbgb7pjnWjGRio0=;
        b=ljM/b0fA18EnPFIJVmm8iysfP6hK5XF8Kz+snmKWkevW2PnGESsovB8qehfTArCHWy
         vLzZWk5w97ptX4LoFqbj3UEXGX0qSPhYGg8QAUJEOmDwwIkHS0h/TenXetkt9w2Xtoeo
         y4KQMOfPPy/NQ+YzKZ6MiNRfOHjoCk3GDgF+3BOPcIvUm+Z3X7dj4U+bG5EG0FyYlCVl
         qKmBBwXyOmsyUgr/6tYka0SJUqqAU+IkY1hP8eRs5zBJK7Xri0H0lZIL2uWFZLPIo+Lc
         O3TSNSDC+rD8/TQ63d6uqjR3E8B7BAe49z7z8neahJlCgpqztk+3i4iPtk02OnlP2UOY
         uzPw==
X-Gm-Message-State: AO0yUKWPJ9NhR+MlkCLyvOjjfdoy+jaWHFSE/LEX0q30ITroY+SQ3Z0m
        PfwNjbo7Q6Nmde9NcMks+qJrVKjOFWg=
X-Google-Smtp-Source: AK7set9EjEXWTSR7CmqF0wSo0qkwjMv8dzRkMZpHTnw2855g1FMWibHy9i4ghEcWqHG4GDRHUvfkhA==
X-Received: by 2002:a54:4018:0:b0:378:2fcd:b6c3 with SMTP id x24-20020a544018000000b003782fcdb6c3mr867079oie.31.1676474462427;
        Wed, 15 Feb 2023 07:21:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q203-20020acad9d4000000b0037adc5702d4sm7404090oig.38.2023.02.15.07.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 07:21:00 -0800 (PST)
Date:   Wed, 15 Feb 2023 09:20:59 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] memcmp.3: Recast security caveat
Message-ID: <20230215152059.fdop3i5yka3nns37@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="u43o6opbhgyrt7wd"
Content-Disposition: inline
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--u43o6opbhgyrt7wd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use terminology more carefully.

* Refer to the info sec property of confidentiality instead of saying,
  vaguely, "security-critical".
    https://informationsecurity.wustl.edu/items/\
    confidentiality-integrity-and-availability-the-cia-triad/
* Try not to confuse anyone who's studied the analysis of algorithms:
  don't say "constant time" when "deterministic time" is meant.  The
  time to perform the memory comparison remains linear (O(n)), not
  constant (O(1)).
* Tighten wording.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/memcmp.3 | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/man3/memcmp.3 b/man3/memcmp.3
index c2427a00a..004556744 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -67,12 +67,20 @@ POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
 .SH NOTES
 Do not use
 .BR memcmp ()
-to compare security critical data, such as cryptographic secrets,
-because the required CPU time depends on the number of equal bytes.
-Instead, a function that performs comparisons in constant time is required.
+to compare confidential data,
+such as cryptographic secrets;
+because the CPU time required for the comparison depends on the contents
+of the addresses compared,
+this function is subject to timing-based side-channel attacks.
+In such cases,
+a function that performs comparisons in deterministic time,
+depending only on
+.I n
+(the quantity of bytes compared)
+is required.
 Some operating systems provide such a function (e.g., NetBSD's
 .BR consttime_memequal ()),
-but no such function is specified in POSIX.
+but none is specified in POSIX.
 On Linux, it may be necessary to implement such a function oneself.
 .SH SEE ALSO
 .BR bstring (3),
--=20
2.30.2

--u43o6opbhgyrt7wd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPs+FoACgkQ0Z6cfXEm
bc4mCw/+PXFpd5zxoY4Y8Yg1CxprTsSSoNKkO9op9pTwyyUtGKlw4qMIlrRe6nfC
NlaY6tUQJIAshTibAfXv3QVtyAKqA2RtLXFmMWwgYE3UH2wkwpzc89+YfYYo7ZY3
GH7j6UwvJX/rGHcNuxCpeVpHKUTKhR+NSE0uTQBoCd9LoF8U2uSJC7hKAq8VW/Mu
0l6IKSLz79AESPk0RiqXySBz/IhEGD7nrwLQIKjFUtW0CbFcSt0sv9xkYbABYOEn
9uXeyOpxhf1IY5zSAm2SfQ0j5EkZ1iydH8jCZsdyDOO7r2mZvE5Vo0/ySrLoQcG3
aj8kG6OqeKFQcvcXSGmWZ08xN/BuhQg4aaO9VZtwnX2IZQOAzlY/898hqrXY6QAW
RMTgPSW3VPiKxIZ9AisVR9a+u4fYvO+6fuhPyzSSpkwwycWqrPKNmnd6wQKHspIY
JMGz0uJHvSU5prxJneX7wIA2YqFFstruLBIZGnxInbXQq5byjJ3xiqO4JGmV2fXf
xJd+jhFsxytpLIRYEvnueYLVwHGz5gW4RLhdHA0HCbRGxwwnc0KoFyAYqO2u9Vga
ABuNQe1vMJe0WABOGjBxuXZVq12uB3PLLPMuAvz/1L8XGkCUTMoyI91/zOpubxty
02y9t3/jNVgifqVARe5iuRqffRqyzIup4KLboeg0jthsCQxepEM=
=lWa8
-----END PGP SIGNATURE-----

--u43o6opbhgyrt7wd--
