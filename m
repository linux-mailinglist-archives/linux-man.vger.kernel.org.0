Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 743E4767422
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:01:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234529AbjG1SBP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:01:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231345AbjG1SBO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:01:14 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A0512C
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:01:13 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6b9f3b57c4fso2081096a34.1
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690567272; x=1691172072;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tm9vvR2hsnc1UWq1wOUYQlQEVHGjPYmWNKzkCYhlJNU=;
        b=ohwuuPvKyaTd2oC9Gc2ovsy4MyBo9k0B+kZipk9E0nUk2Gm7WJf7E6et5JlaEKbzVG
         QDTQ+Ez+7ChhCExrEUpQmUcO9MPP7IsPnlUuTj9OmWCjuioeyOn7bP6COPMCPpr1uhId
         q10DC/xs7keYt+BrLvFiaUkGz5WmTvib5lH16tATYf4RULsg5QSfH4miyDVyAYYxp+Vl
         AGFKjDskjU/eNP7QKdff+zBk4R6upYTHaNn9ASTNaFq+D0xfOvfJ3MFFdtG41Wu0UWLh
         tRO1EYhUY6UCbREBJ0eFnO+eatIVAdAXCnra4ja0k6F7PjQwhKpvOQrkqP6KYSRYdLjQ
         f5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690567272; x=1691172072;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tm9vvR2hsnc1UWq1wOUYQlQEVHGjPYmWNKzkCYhlJNU=;
        b=d9Td1x0+XP5B3GkjndnAGW5DGV2Yx9n00Cr00HCKt4dKy8ssweoTbxh38FTjDoEjOy
         2m72eqk7XInhWWW2eZ94U4yggrAx/7T4Edjw93SGHGmwRvl+elDfXoWFljhqe6tGlMH8
         LFDIDIosfxR/4Ge7LCYgUFgv8as20G9WBy9/lRNo/8zfpSs3qONKuYq4J0RrAZiyBI/o
         ABzmat49YdRx+roVM6oZjU2gB5ZffncJofAd9Rg/2lFHwQrlp6swzk+XP2g1lAjsGUBO
         ysiIm+qSzqR4xFLKSjVBea+DVxbuJiWK0dvbSJWXbVu3djjgWu3aWFPwD8oAV6/dvaZT
         y6Kg==
X-Gm-Message-State: ABy/qLbohv9aFMMvK9WlYBMgX5g8iX3u6Vl8jMbEA2AdWBLmokkaiylG
        FkGhKPcP8/XYiGo7k05+/bEdd1Ar5jw=
X-Google-Smtp-Source: APBJJlEg6mKnFCls/1XhlX/7lODoLBpkVJkytBv76nbjrGJEqkZey7Unv+lQs4OTieJF+weR3EPtjg==
X-Received: by 2002:a05:6870:c6a8:b0:1b0:6bc6:f608 with SMTP id cv40-20020a056870c6a800b001b06bc6f608mr5871501oab.24.1690567272521;
        Fri, 28 Jul 2023 11:01:12 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id du44-20020a0568703a2c00b001a663e49523sm1957618oab.36.2023.07.28.11.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jul 2023 11:01:12 -0700 (PDT)
Date:   Fri, 28 Jul 2023 13:01:10 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH 5/6] prctl.2: srcfix
Message-ID: <20230728180110.3robfuwlezsc7yut@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="so7xpgiuzjmk6npd"
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


--so7xpgiuzjmk6npd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

=46rom d37895afc8d4b7bef3ec08cbacc6a1849570f00a Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Fri, 28 Jul 2023 12:08:06 -0500
Subject: [PATCH 5/6] prctl.2: srcfix

Recognize that the man(7) macro `RB` exists.  Use it in favor of \c
since only two font styles are required in alternation.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/prctl.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index fe403d76a..63369fb4b 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1050,8 +1050,8 @@ .SH DESCRIPTION
 .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
 Set the parent-death signal
 of the calling process to \fIarg2\fP (either a signal value
-in the range 1..\c
-.BR NSIG "\-1" ,
+in the range
+.RB 1.. NSIG \-1,
 or 0 to clear).
 This is the signal that the calling process will get when its
 parent dies.
--=20
2.30.2


--so7xpgiuzjmk6npd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTEAmYACgkQ0Z6cfXEm
bc6dUQ/+L95fucI7isyDfPfkCkAIJtzf9mEIX4nO8/m4pv+x+x8kN/ZUi6G5DjsR
EjNs9jPEFtJcqf5S+GsERvn4OxIEvaGA9Dagfc6B5CxgEd4z5OUnMkARpN+SFE8E
SPEDSVOX2OwTWwbWgmpPrF2XGXREFDHeyBT9K1vO8hKv5KtN6JQO6I0DfE6N9MDO
z55kNo1G999hM0DRgZhzffH5mqxxbyJ7XACFXirSWPpzjfk5Ew2UEQvw9ANg0lya
zAmCaf+2+Te6EZAwb520PB8KvdgXoXj/fYdg0ZorYcjap4T2OIzU2sSwVri41g/a
Wjf1Ewpm4MTv3fu/DcP9P9cT2a2sJwO0sZgbFfgObhUE/LuZ0eFXgekydjDEsGZ6
sR/zAT8lVv/UYMaKctatOZpgl120cgJ7i2YCB1rgQ+qJWlMCruphqhFRwy8CXaQ4
BvPdie000lHlN0mcGpHXZxsyOj6LIHmMJy0NczX+KavjuWVKYPs0hkqwhwkAXUP1
rHd5fTMem9k9+qdGKEzE5Pd6QJrJ3G0ncKXKx3ZFDd5Wuwynue5yz4zdAZZuG1y8
BjUReyIy6RkA2SQNRO33+/4hD/6wRioZl2NEUaozz+ydQ8iSwjfhjZuxspIXVFZE
RzNQyvUGrr7C01Mw9e6TiyeXVYXJ6d4SDjvDDyxLlx9aYsDacck=
=+Fss
-----END PGP SIGNATURE-----

--so7xpgiuzjmk6npd--
