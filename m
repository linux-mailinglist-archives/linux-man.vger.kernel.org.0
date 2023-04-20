Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 047C66E9CE0
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 22:10:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbjDTUKS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 16:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjDTUKR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 16:10:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 583051FCA
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 13:10:16 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f180510299so6602335e9.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682021415; x=1684613415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Tn8bWhkGHLlAtTotpis09jcGPCfE5TD5FTtLdGYnWk=;
        b=kNNDXa+H5vU5hHA2oWAKFg2zResV4oPOQOzbYnG6TDRySir9/iHgAz2sunyPUHFVBn
         sEGr8ixvR6jegA9GO9u0Tslv2DywYuUtYIkgyHjgip1z0/DdoZt8YuOOa3JaWzkqXotz
         23yxVEW1nrGtwDB3nXFZ7DEIGa7pf9/g/vnYKgC78qyA+0BwCKQtugqYtxIyeMs7/0Ne
         AAnShn6mVKNufy5RUqxNKRq+VHs9k7wM0vZLZqerL2RI1SRxdQ0QYOuBinGAeRRDbwJw
         y+LTLitSYzPJMBlone2v86gC2Rphi+cJWT3cDvz8b7glSnAoC1OgORqp/KgnLiHYx5P/
         SYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682021415; x=1684613415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Tn8bWhkGHLlAtTotpis09jcGPCfE5TD5FTtLdGYnWk=;
        b=Eq7RWmV0aCzaXljfCpmwnbHcpd+VWLvE3MF7bNDNE5fDYx8ci3aP2i4wWF4IGzVyBv
         C6ZdCYJpkNw+oFLLBq7krna2hv67Ne3yKFxnmKCTywsINhVQaw31bkg6mNicjogKBGcx
         zrrkEZ7K53+iH7OZe6ko1sswLlE8o8DVpZ4I23ZB/UTkbtnAe6Wp74ZDMQAi0e6o1roa
         zq1HWh5lBnJjjfiMhyqrJ5XXurzlAmN3VAmVR0Z3OeoR58HKrvA6pfhHbrXdl2p1edrS
         66kHcnEHjO5rPoscG2q0a2asbi4BNe3YPOuxuXrpff/AHyyeMY/UVJS/KxlLGCkn/IPK
         5wfw==
X-Gm-Message-State: AAQBX9fio8h0n97y3Wtl+Tv6eYynb0b9ZsaMX4o54bRUBU0f5HY4+KKP
        IhhHQqsDaepkoSFHAa9b9iuoYkt+US8=
X-Google-Smtp-Source: AKy350am8ZW3mnKeTBdLY01ZXBJ3tmNy7+Wl780s1uMznX9/OQe7Z+LycCnvXaR7BFtxCVDSdfoZUg==
X-Received: by 2002:a1c:f715:0:b0:3f0:5887:bea3 with SMTP id v21-20020a1cf715000000b003f05887bea3mr111678wmh.27.1682021414772;
        Thu, 20 Apr 2023 13:10:14 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id g8-20020a056000118800b002fe0894ac09sm2733134wrx.81.2023.04.20.13.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 13:10:14 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH] syscall.2: Document ENOSYS error
Date:   Thu, 20 Apr 2023 22:08:41 +0200
Message-Id: <20230420200841.14527-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Link: <https://lore.kernel.org/linux-man/31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com/>
Suggested-by: Alejandro Colomar <alx.manpages@gmail.com>
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man2/syscall.2 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 55233ac51..0ba537f4f 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -64,6 +64,12 @@ In general, a 0 return value indicates success.
 A \-1 return value indicates an error,
 and an error number is stored in
 .IR errno .
+.SH ERRORS
+.TP
+.B ENOSYS
+The requested system call number is not implemented.
+.PP
+Other errors are specific to the invoked system call.
 .SH NOTES
 .BR syscall ()
 first appeared in

base-commit: 04e686326f03a28c187e00821e234b2ecd0fab5b
-- 
2.40.0

