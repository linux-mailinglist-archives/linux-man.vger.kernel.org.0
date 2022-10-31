Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43BCF613EEC
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 21:24:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbiJaUXz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 16:23:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiJaUXx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 16:23:53 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D1A12AD6
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:23:52 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id bk15so17504851wrb.13
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qicjdJQab1nmIv5TipDuUe6oB1Wn6dwbqhg/8IjwkJE=;
        b=d4NgJHXvg9I2k7QgPSW1xjlgrBge23UJG43Z4b1PUiC0ZgEvFg9jyheoUazSbh2OYJ
         LL/1vp1fvOBSEdK+4zSYyW3i1fBe5ZmAMKypTxwq7TaEAlrMG/oA1ojk/7nMiGXKFUB0
         vsIVmKrZqW2wYToNMsQyDNXdMq5y3EDmUDEYkzOH+p4UEczDKe17aoQqwj9DeMYgGdp3
         v90AyiPTlEJVBEO4dUIphWFH4dhGKI3igIP+ccvs2GapbzhynYpHyrgE5+EcPDVoqqe2
         O1/1mfhyEpx1mnF5ekWABnGaGY0e9fZoStEQNx+gpXrgalcng/9Bgx3y58sFBBJN1QDA
         65tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qicjdJQab1nmIv5TipDuUe6oB1Wn6dwbqhg/8IjwkJE=;
        b=Pp5KJ2e+qr9r3gspQuIZ5qpWKiBu5PPgHQ0WMBMB98NBR7czA+FZ+XPMfF70iFpZfn
         RuQfUiUIVHiGpdq+jLWe0iAvlvQ/ElrAjomdD/nLqOXNUmDpOZK/1ynygHhDHIYP3SDZ
         vTGLAOEobbId4TwW2bOsRpz2HyILCWPxOcC+0ZsMVfT7fgVIt+qhhNS6wTXQkUvcBfrO
         CWEi5aHlhSaFwWGCPP+zKsoSbVhclF1hjnrS8vchSmweuIai27zy/9cR0uIbUT1sGif3
         +5d2ktdZIv+eKIefn4Nom/8kPwMsL/BZeA/Bqsl1j9Dt3AORYLWnI7nBfPSRPtEtvtQ4
         FigQ==
X-Gm-Message-State: ACrzQf2b1zlxfnUj6ycNiLIPYQQ8w4tFD8mDeg6fX4zxZrvXp5nrWJz2
        uZrurGYHYh4Wr8ezRcKh52gsLWKpY+M=
X-Google-Smtp-Source: AMsMyM7+TK5dTeuG7MHmuoXQ3kB+i299N69M9w6epfGW1udenXZoko70nHSw+jahjPrDQTlE1KMXYw==
X-Received: by 2002:adf:d089:0:b0:236:558b:abc8 with SMTP id y9-20020adfd089000000b00236558babc8mr9158525wrh.231.1667247831318;
        Mon, 31 Oct 2022 13:23:51 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o5-20020a05600c510500b003b477532e66sm145714wms.2.2022.10.31.13.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 13:23:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Zach O'Keefe <zokeefe@google.com>
Subject: [PATCH] madvise.2: srcfix
Date:   Mon, 31 Oct 2022 21:23:12 +0100
Message-Id: <20221031202311.83357-1-alx@kernel.org>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=603; i=alx@kernel.org; h=from:subject; bh=YFd9mDwbglicPXOxQazNl3g9bYxSWu6EmOnsvRTSUaI=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjYC6ubvoT2L3FnvNNg0FdUdBhRJpCCf+WVzFyO9M7 qhxct6WJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY2AurgAKCRCejBr7vv/bMleyEA CD4CX+uGiHxe5gq4HoymYwE1FdIe3WL1YAjJN4vdO8CwfowEVlNig4+uI72bWTqrbaWEMzLD6qcw3o QyJkmMsmXygg9TCHEufO61+Foz9/Z4l11PgjGxG+IjdYCs11YgBoM6DvB/FZaJKDK6sA9edPiA/l50 oN9F/8GvKi62pP56QUKrnlQ2KudekUXTuEk8fZ+MFp3veZf76BAgHw+DlcuY5md0c9WWCAjLuQNv99 RXRywk+rWPiQ0kKxxwUz8ADEda98TRVLTkXa3egkE1ZnCuqNFNkwkp5O7qPKxT5Zo3iuLcKNbag58E zDhNuT4CGWHsDNAF9xFPErXgRHL1iedexpvMsKdVKPgS1P8i/PiR5ov6ynvC7hivIlSmm70GlQ4m03 h+3aO5YSLXMfFVMfPsd1L8IUoSC+UXelwUhSmctD7mYDNj9+yAYsY2zhB77BdmvrJ1JeT+J3jfPloz ZvcCP2XzOmeHyu4JF7dasQalWBf9g7gzBUOMYTd7DwZxa3Z9sqc8hbgPvqvRORBUJ/NRwiZQ500TKM QbV0tgxoau7nNolBo2kqj4syxjn8GUKA/4yYEw/gwEyvjNHjTATdgc+9Yuosj4LZNH5snzu2/JeeQH o3aBzCFwlJnng+Hao4whbBHp5UK0Si91Gak9lJx5aaktTWMWSXalAR73xi/g==
X-Developer-Key: i=alx@kernel.org; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
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

Reported-by: 'make lint-man-groff'
Cc: Zach O'Keefe <zokeefe@google.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Zach,

Just sending the fix to you so you can see it.

Cheers,
Alex

 man2/madvise.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 001cb96df..edf805740 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -792,7 +792,7 @@ .SS Linux notes
 .B ENOMEM
 from the system call, as it should).
 .PP
-.IR madvise(0,\ 0,\ advice)
+.I madvise(0,\ 0,\ advice)
 will return zero iff
 .I advice
 is supported by the kernel and can be relied on to probe for support.
-- 
2.37.2

