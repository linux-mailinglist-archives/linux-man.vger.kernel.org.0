Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42F6F6EB48C
	for <lists+linux-man@lfdr.de>; Sat, 22 Apr 2023 00:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbjDUWQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 18:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233393AbjDUWQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 18:16:34 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25ED0173F
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 15:16:28 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f177cb2c6cso14949375e9.2
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 15:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682115387; x=1684707387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=83Uh8/BSTskgz0ABrUKBXBx2NDUeeI7EcW/sONEmXdA=;
        b=ZBuUg7gKfIgYCL3LHoFovTCQFadqkwFHUge4XXnJpgWKOhqpzt6I5SCmAJn1GP1Bj/
         mDUVghCaBuQDyVOgfDu88XKQ1R53DwUA8zT04jberCbQTyEpMxC898YFT8REpr7DqEQN
         zbu2twLn0wb9hKk5TKIIhBwSsQbPX7U7MYJCghCEkNKGArQhP3MzGpG7pcZMPopEWdpg
         lLURqPH3MYUW5rqKaFhbLxLPdHKSM5DhK/Whce73apPxi2qdnM5AzrW0hMbshYDfVEpi
         hJjf9EJuo+P49EH0v4qhxVwZ91RZwZjKke036pfVkTjIkrbMJcRG1W2rBOTs2FBXVJTP
         e81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682115387; x=1684707387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=83Uh8/BSTskgz0ABrUKBXBx2NDUeeI7EcW/sONEmXdA=;
        b=cAUs4l9AP2jEqBnM+bcAMZKW7kBW9rd7KfX7jusW4gNx7T35+dms5eJVtjI+JqUIYq
         31VHBzV3Cu7EWVCV2LwRDwcXQlOBtGQE36KY+CN8J+gWFgYdGzI4Wd5pE7KYZzLovYML
         yNC5oCRI4w0jGoAr9bh3ZDZdMA3kMv9aPgaZtMU8Kw5fq/s6GL4lp30EZFtJIjjc7++R
         Nc9xyTpjsJML56tEAggNTxVP10eCgXCY+uORfD5pvKbPiR41Nq145rlCupQLR5Ao11wD
         OYGxr+yokZKI7ejntmObCNHNaofPz7xZcauHEcC0IlQhq1s4GAeD3gUI8HUfaOCh+cYb
         g3iA==
X-Gm-Message-State: AAQBX9fpVkeos6hmfAaB61qF8863yyJy9iwqg1C5PIphZEeMFu6UVWN9
        XDuKeQkC9rZ32dEctC3NkZA=
X-Google-Smtp-Source: AKy350b70+yt4a9FfnDPhCEpVLZQ1LxdSJVgBi4JsTSy0c55R3MYADnSuK1ttXvegWictaBTtJK03Q==
X-Received: by 2002:a1c:f703:0:b0:3ef:6b97:f0c3 with SMTP id v3-20020a1cf703000000b003ef6b97f0c3mr3185760wmh.15.1682115387246;
        Fri, 21 Apr 2023 15:16:27 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c028e00b003f18b942338sm5558437wmk.3.2023.04.21.15.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:16:27 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: [PATCH] regex.3: We rewrote most of the page
Date:   Sat, 22 Apr 2023 00:16:23 +0200
Message-Id: <20230421221623.23979-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hey наб!

I'm a-apply this thing.  Does it look good to you?

  $ git blame -- man3/regex.3 \
  | sed 's/[^(]*(//' \
  | sed 's/ *2.*//' \
  | sort \
  | uniq -c \
  | sort;
      1 David Prévot
      1 Reuben Thomas
      1 Yuri Kozlov
      2 Not Committed Yet
      2 Rob Landley
     18 Peng Haitao
     68 Alejandro Colomar
    145 наб
    172 Michael Kerrisk

Cheers,
Alex

 man3/regex.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man3/regex.3 b/man3/regex.3
index 8efd21d72..35214b891 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -1,5 +1,7 @@
 '\" t
 .\" Copyright (C), 1995, Graeme W. Wilford. (Wilf.)
+.\" Copyright 2023, Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
+.\" Copyright 2023, Alejandro Colomar <alx@kernel.org>
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-- 
2.40.0

