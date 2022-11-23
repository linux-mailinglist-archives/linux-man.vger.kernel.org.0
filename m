Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4CF63608E
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:55:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237323AbiKWNzG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:55:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236395AbiKWNyl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:54:41 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8F018A151
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:48:49 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id t25-20020a1c7719000000b003cfa34ea516so2787473wmi.1
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XIYLsclj+0/lu233fuoYjAxa5oNJjMyQ2nWFyCYw4oE=;
        b=mErv44K1BEIkII3+eHqKA5YKlTgNFx1Ys1KhxCYC0IQVOBu1rTuVSEEjv+FnhbtA5f
         2xM2ZAV7i+QWSNzZaSrVjbxL/YfoNzaFD8QKq0qNL596++TUfzan9Zz+fyKRWVYIrrSM
         3qhN7bBj8Ql376azQkf2vzJMMa/MCI5WB2Uc6+DLEKTndpbqQLwznMr17SdkQ2qXOmMe
         fK9Qjozn8VhVJ55/nJm+hM9NnWllKOIzFJweMYMoO6HHf0GmTHBuLQZ63zwK2TqQKFkX
         kd/ktICl83IUnsgB1KVwgeuSd5oHqd6JihrHmsS4yOUqKVmrcM/VGolu+Ig3pxeQAwO5
         UfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XIYLsclj+0/lu233fuoYjAxa5oNJjMyQ2nWFyCYw4oE=;
        b=F6gM5m5+vR5Rt5quY5oUuqQmy30/pGsG6y0G424pbYPkjEYpegdHkcnF2wdeTNoEp0
         ZB1zdgNpoC6mTX1Zya2bh/DBaurH15Kg1jC3PzdXfB/TugkwAdlhlhDIZlr3qqQ+OKrY
         rA0Qyov5Dm4BMktexQEHvZw9RP6aHRbR0nT77sBRiQfAQKWIW4GBRQiwoaf6/O6qBDBe
         UykwHU7/U2ioobKw4kELmcC2je318bFT+8wEo0TsBlp9cpOvGYuP30DMPsZPGStwZqbp
         6a+aRnPlmGcmNbAHA3Yamld+4kNL+UKcdA4UPz0wxxI0qk5xnAWGy8wfWpFWFe030UAP
         oT+A==
X-Gm-Message-State: ANoB5pnkl57Oqo60cwmw/5mZi33Tq2by/acXpXLHNL0x7YEtrQMVAH3W
        jTAWr3WhP0f1VttxQzNaOf8=
X-Google-Smtp-Source: AA0mqf761SuOtJh/+x714CWWNnjhnfWV+XmdbxdS8a2PCiLQQbVL9V8EYuZtKj0oaoR01zObn8meKg==
X-Received: by 2002:a1c:ed04:0:b0:3cf:d08d:3eb2 with SMTP id l4-20020a1ced04000000b003cfd08d3eb2mr20422676wmh.129.1669211328257;
        Wed, 23 Nov 2022 05:48:48 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o7-20020a05600c510700b003cf5ec79bf9sm2587736wms.40.2022.11.23.05.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 05:48:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 1/4] zic.8: Add public domain notice
Date:   Wed, 23 Nov 2022 14:48:25 +0100
Message-Id: <20221123134827.10420-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Paul,

v2:

- This time I sent them to the tz mailing list too (and also linux-man@).
- Added ACK and review from Branden in 3/4 and 4/4.
- Added comment from Branden to commit message in 4/4.
- Added tweak suggested by Branden in 3/4.

 zic.8 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/zic.8 b/zic.8
index f79148f4..c2c61739 100644
--- a/zic.8
+++ b/zic.8
@@ -1,3 +1,7 @@
+.\" %%%LICENSE_START(PUBLIC_DOMAIN)
+.\" This page is in the public domain
+.\" %%%LICENSE_END
+.\"
 .TH ZIC 8
 .SH NAME
 zic \- timezone compiler
-- 
2.38.1

