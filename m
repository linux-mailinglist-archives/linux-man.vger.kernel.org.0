Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD716B2521
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 14:21:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbjCINVC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 08:21:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjCINVA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 08:21:00 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B639E7747
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 05:20:58 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so3569342wmb.5
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 05:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678368057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Go2Gl8cLcwsCQaRBYihrINaxMTKwCr7Wcil4YJk7iQ=;
        b=edFdDsT0y0oo2/FFtddthck9QUag3LvcTQvi1Yw/aI4TRIg57OrxHN1pnREpFU7nBf
         crQZd0abnQ7ZPE8T+Wuq5CJwRvlV0HJG0XnNJKa5VkIH1xDaryaLwLnDGd3PgBfRvRyS
         W2wq/hfvM42cYsPtd8PXaPlhyT1YrNbMcnoujATYk3i5Y6Po5cRZQcVK8PKsWMs7qYs3
         Lpj/bw5gKsKcUwBxviimHU2TCDzApC/72bVB3/062MiG50RW3K4OSLndWEoTwktqG9xY
         DKLKfcCpFn2D/M1iTXOuch0r6x2IsK2V6ytz+8o2qD8zmbl1uO92qgiUGdVZxVbRt3n6
         T+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678368057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Go2Gl8cLcwsCQaRBYihrINaxMTKwCr7Wcil4YJk7iQ=;
        b=qTyXydokJjD8uJy+kEd2iY0MYLfmq4P6TkS9ZgZW8kJ/lLm3aLPRVXeGBTobL7lBzv
         0XETOBlFp6dHvGfz1eFPu3fOoRTZv/ChGRgIO7yiJXW/bKSN64W8i0zCP9fJAPDQLdoz
         4gI+/1N2JNa6xCHYTa7ebNwRZpmE1Gxxti2Ztuc+x2tQlxfybhe4bKe1yshTLQhzzr2R
         KB33xfyj8Nz7hw4R8cGWyOZdGJq+j1qcs1DCl8ok83DI9ZxbyedeKWhnoQog7eHbII8o
         VU5H1MTlDaVbzL1cbMX0Oc645CD16vcsAc3LqSEzf8NiabQoSE/rwUYu8Xh870aKuGEp
         rBKQ==
X-Gm-Message-State: AO0yUKUoTZ5EDDJtqhF73bq4wfsYW/4aH+ZXE1Y3s6ddcrIA16uFLWwL
        4Aw1Spct4Yek0xy+w/7oFUPOYI7gUIw=
X-Google-Smtp-Source: AK7set9ZmMZD1MicZwcP9vz8kxDhUkW8UaNfVln/eg/jdr0RTHFet1ccuIYy2WyxaqkcqpdhcMT1aw==
X-Received: by 2002:a05:600c:1d9b:b0:3e2:201a:5bce with SMTP id p27-20020a05600c1d9b00b003e2201a5bcemr19275018wms.40.1678368057114;
        Thu, 09 Mar 2023 05:20:57 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id s17-20020adfea91000000b002c6e8cb612fsm17533224wrm.92.2023.03.09.05.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 05:20:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Timo Stark <t.stark@nginx.com>,
        Andrew Clayton <andrew@digital-domain.com>
Subject: [PATCH] suffixes.7: Add .jsx and .tsx
Date:   Thu,  9 Mar 2023 14:20:36 +0100
Message-Id: <20230309132035.16434-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
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

Cc: Timo Stark <t.stark@nginx.com>
Cc: Andrew Clayton <andrew@digital-domain.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man7/suffixes.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man7/suffixes.7 b/man7/suffixes.7
index b1687400a..82cee22b8 100644
--- a/man7/suffixes.7
+++ b/man7/suffixes.7
@@ -137,6 +137,7 @@ .SH DESCRIPTION
 \&.jpeg	Joint Photographic Experts Group format
 \&.jpg	poor man's \fI.jpeg\fP
 \&.js	JavaScript source code
+\&.jsx	JSX (JavaScript XML-like extension) source code
 \&.kmap	\fBlyx\fP(1) keymap
 \&.l	equivalent to \fI.lex\fP or \fI.lisp\fP
 \&.lex	\fBlex\fP(1) or \fBflex\fP(1) files
@@ -231,6 +232,7 @@ .SH DESCRIPTION
 \&.tmp	temporary file
 \&.tmpl	template files
 \&.ts	TypeScript source code
+\&.tsx	TypeScript with JSX source code (.ts + .jsx)
 \&.txt	equivalent to \fI.text\fP
 \&.uu	equivalent to \fI.uue\fP
 \&.uue	binary file encoded with \fBuuencode\fP(1)
-- 
2.39.2

