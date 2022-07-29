Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61AD2584FB1
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236078AbiG2LoF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:44:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235301AbiG2LoE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:44:04 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C779587C28
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:02 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bn9so5683076wrb.9
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/6RPqRyvy356as+oPt3+amTNcqfaAV/DZyU0nr3k9k=;
        b=ABEPmDf2jpcxMGD6PMxOAUwVGTb+iXDDDhByTV4r61K7HjkmB04KMPtMchhWHs8sOe
         0YYnLXHJm0VaBK1aLIunQN427N8SJpuQ57DOqf3ulMSW7HItXB/jHteZXKuKAcfpL2nV
         jFYvDcWS4evma5qQ5JGGufm8v7WDZ5xLUXQVqkOhVKO80YqOotUz/ZfV/CuUEZAc2BvL
         iMJZXOZ+mW/MbdjAQjdDuGZ0mXdFfyy+rQch7EHf9zO2RnGJJDveDPGaC8373t9CsTca
         084H0V+214feHbdTwwX+0r+XKnfOeHlrsFxksxuORfdg/Hl+dFeULy+v6zYNkfUKiB07
         fNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/6RPqRyvy356as+oPt3+amTNcqfaAV/DZyU0nr3k9k=;
        b=GxNILNoriEGODYGJ9rn1NXfSxRoir/7JGNNF0U4vssRjTASi4PB+vLQKvy0Mg0t6UN
         W8lgZqJKumzcO8cCNcJ4RFdytkFMipqW2oaO3CFFDKeJaGT019Xj+R9MIPSe7qWBVZ2W
         gaD22g6EsBC9/pIYwzBoC9+wTNJH674Z4KA1ZWjfFkpxxnpQQW23YYUO58ls170ZGDst
         /frfrWtzmXCNcZopcefl0eX3fy9+t+y2BMxbOAZ2aZHi6oZfgE/y7QoruoPp7B9yuXg3
         ENfphbKz/AMlcHLxG5Lb0i7kE5Uv5LiOcaw6x/wUbmEaYMK7vuvrcRGr/+AaPVjRfiBu
         y6Bg==
X-Gm-Message-State: ACgBeo2fNEO/zgmKOJ/j84WOlox0dGHcVxi8676chTGG0WR7wZ/KRWHs
        vfb5qGpT4wEH80P0wWo14LJ525z3zC4=
X-Google-Smtp-Source: AA6agR4q6leUnt6gRwcgoHJbPhONlxKP/CU8/N94j3dhb9sHXCiNkbM57Lv+YRXU6Lcw7SFUwchvZg==
X-Received: by 2002:a5d:6acb:0:b0:21e:efd7:c7be with SMTP id u11-20020a5d6acb000000b0021eefd7c7bemr2163199wrw.293.1659095041095;
        Fri, 29 Jul 2022 04:44:01 -0700 (PDT)
Received: from localhost (internet-185-112-167-45.cznet.cz. [185.112.167.45])
        by smtp.gmail.com with ESMTPSA id e14-20020a5d594e000000b0021ec503075fsm3676512wri.31.2022.07.29.04.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 04:44:00 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 4/6] xattr.7: wfix
Date:   Fri, 29 Jul 2022 13:45:04 +0200
Message-Id: <20220729114506.1669153-4-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

(My original intention was to just fix the grammar ("an attribute names
is"), but, on second thought, the whole sentence didn't read very well.)

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/xattr.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/xattr.7 b/man7/xattr.7
index 4a69e2eb53e8..45a103fad4cc 100644
--- a/man7/xattr.7
+++ b/man7/xattr.7
@@ -119,8 +119,8 @@ manual page for an explanation of the sticky bit).
 .SS Filesystem differences
 The kernel and the filesystem may place limits on the maximum number
 and size of extended attributes that can be associated with a file.
-The VFS imposes limitations that an attribute names is limited to 255 bytes
-and an attribute value is limited to 64\ kB.
+The VFS-imposed limits on attribute names and values are 255 bytes
+and 64\ kB, respectively.
 The list of attribute names that
 can be returned is also limited to 64\ kB
 (see BUGS in
-- 
2.37.1

