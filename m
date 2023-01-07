Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 341A8660D9B
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 11:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjAGKA0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 05:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237244AbjAGJ6k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:58:40 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7118187F0E
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:55:45 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id r130so3052700oih.2
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=85yUqJjq87KE6uYcWeoww0HLEtLe85giF7xCJCCFXmU=;
        b=Jq90H4QlnK4lFj1oKXAfX7FnKKSCJ31LR4NkPPCFJDzEceyRps6KT46fACdzm68HWC
         B3mdcNKInEYMItWZNeii53tprefgmQeXXRfYfxybnkBLylxcgx2sx6SCxqRreYW1kvz+
         RPxvEI+fBVKTyAt1fB9qJ3P3SZpFIKcchFSBc/B+vFyO/wJLQ0tv69Yl0AjIMf2Behom
         +o8tU8iiPKlIuKztt8o1Om0ulbTEMS/rRhq/YbM7ULvuSHN51U697G0lLMO/tZqcIxSR
         bcybVFjAxU3fn10/6uL9hE7mpX4FWjD7N8nnuoJcWO5sBdaLGI3U2+SpmBFW1Nmibxo/
         NVNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=85yUqJjq87KE6uYcWeoww0HLEtLe85giF7xCJCCFXmU=;
        b=rHkHDyP33zi6rWIOq0Ck7GMeRdxyB6Ixuo+uXleZSvgSG/AqCmhNSnIFegMXnL7oNV
         cd4LfnQ49fh/xzAXFmjvreMOpjPMzTdKpdlw8QdMxt+tGbAQHzcl7XMMnhImjq9O/S1s
         cS09wXAAuWgLiALfcQPothHC3PBBlz1nDQ1wMKTjYQeXJw3GZmbwOoaigk6zdOcsS/9k
         OLZmUsFwrBs1abemazysz359iNJc2ZMm/QNS+y2ZxVpjZiEe5dTTCGLU1UhWojU5FdWi
         IX6bY/k3PoPbFCzzgpTXmC5GGca8jc0v/X9cnMIW1byBgzZzCeOXDxRPqGSVPJIkP1X1
         Yt5w==
X-Gm-Message-State: AFqh2kqojxFT1O2UQXi+ZeB16suL6AyWfa8jQMOun1uD3w36hrUtbEAn
        p/1RDaCuD+ptIJJx3W82lFo=
X-Google-Smtp-Source: AMrXdXsy6dN+yv5GduJ0fHon36jJC/WP+MAOGdOhSQUhbM9+ydr+eEhfEz4XESVh9eL5HdwtE0vtNQ==
X-Received: by 2002:aca:2109:0:b0:360:eaff:45df with SMTP id 9-20020aca2109000000b00360eaff45dfmr27923148oiz.46.1673085344817;
        Sat, 07 Jan 2023 01:55:44 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j10-20020a54480a000000b0035a534b9237sm1359305oij.29.2023.01.07.01.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:55:44 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:55:43 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 10/10] intro.3: srcfix (hyphenation control)
Message-ID: <20230107095543.26m6ts5saz52mp7z@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lualji7ckvm5q6cm"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lualji7ckvm5q6cm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Protect man page cross reference from hyphenation.  (This will not be
necessary upon migration to groff 1.23's `MR` macro.)

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/intro.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/intro.3 b/man3/intro.3
index c8b5b9ab3..d28dee4cc 100644
--- a/man3/intro.3
+++ b/man3/intro.3
@@ -44,7 +44,7 @@ header files.)
 In such cases,
 the relevant function's man page describes the required macro.
 See
-.BR feature_test_macros (7).
+.BR \%feature_test_macros (7).
 .\"
 .\" There
 .\" are various function groups which can be identified by a letter which
--=20
2.30.2

--lualji7ckvm5q6cm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QZ4ACgkQ0Z6cfXEm
bc4hvhAAnzMouTX9gT/zl3NdJdPVE5aOV8QBJOubo8wNOW3O0kBRZLL7+p/FktL/
z/nyMFUCTvhyy38iFvz64VsEJu+e/3XlNCiaE9Tec3iATwsYBz/pUj6dVd9Dssde
XSRhAvwGUzTAp2xPzaWSiyunVrs3orAKUhMef2ayeVZvX81gSDiWKrfhsmPEIEjX
qKHJvhoKXjlutUzm9Ou0fJNwgfKk29zozSDl9uizk5uYUncmD2E6ZzvkYRUUQ1j7
10EwyRlSsRvqRa7B2g9ojZgdLueQCguqCnsGVmqmxiTO39Ie2ntd4ExLRQOjlcDh
rJbCQZCppXnUAU+m7WAfVxlhvh42VsuA9hRcVc+nPAtgbDPxkpTuV/8fVECrs/l7
jqTwkx1YD01B9ttJh3NoEvrf6uSSx5cQg1Jn8WldjMCgSH1JAszJfUjnAUQYnFvZ
yTMGSRvKI721STWAF78PWSmdC5nfOyZS526kSWkk8pNXCtWhQvkigeSoKf6OcNQO
/7P50EbWzvRf+G683l25PoFwXe1ZMl4FNDIYjieJT8KvnyQlQv3RuL5cY4RF4kMv
WCfzix2J3H9zG9qvNcLlGWcPo5/B+pl0PrWp9n91inYWJClmUHzc96Z53Ig/FHih
TS4LjXy0yVJgIFKW9z7xQ69ln9VbMdDKvvhgb032R9KEFMVbSx4=
=dRv4
-----END PGP SIGNATURE-----

--lualji7ckvm5q6cm--
