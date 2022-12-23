Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249CD655364
	for <lists+linux-man@lfdr.de>; Fri, 23 Dec 2022 19:00:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbiLWSAE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Dec 2022 13:00:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232156AbiLWSAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Dec 2022 13:00:03 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13B0B1C401
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:03 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id z10so5173676wrh.10
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NqFNnTvta6s9BVfopjcO20oDHzdrh+Blq8WYEOfN2WY=;
        b=C6Tv7F9wx0AviBHr6nGGO+3QloWmQRgYyb5alavMP94Asi6JzR7JTL0+rzUhkScVHx
         kY4BZ2pMBlSkF5EfUJ2zAXPgu9DVch/1/7lhXdJ4SfVnvNuzSwworELh2NCSgX0OctWN
         dMGnkr7pmpjVlVKW+6kjDIXLCOvCclIOiKTr8B5g+nIG/pMUtkoqTng4ytzrIkuGlFjs
         ETLauszyuAABU4xk2aDPhr6orScrz5oh8g/ro9k43AF7IKZxb2uIqSdPB/Q6kz2oDLDR
         skGQg3Li4cdi5YfObfw0a00jSBjoqJPkKjKO7R2EGfyFm5bSolF2n/9jg2lH1Th8bw47
         OE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqFNnTvta6s9BVfopjcO20oDHzdrh+Blq8WYEOfN2WY=;
        b=vVvMbe3XLvd0fuCdcxtG3oBdZ9gbtbf0tWPc6OGQMaRvPg7NcQ2BpuzRI57eib4dEl
         LQAVAaibOvv4deKogIgPuqYqJYt+v8uovs90NsEDEJyaS6wEmxFLN+Nc0PIt4Qmqq5DB
         R2UyOO3rSSCxlxcJgsGmwzKKpx1k5zA5iV2eUqsQjypjLN2vqbcseByH1KNOzmZzSD1i
         449g6lH/G5JZtx4vScP+gywZXyW2x+AObu7A7c8gdlNiB0aHZGVjYwgSnJMFw53tnODJ
         YgBHfN+LGIA1MiJWp44qpBrnp3/Kv3Wzgo5e+t7bHpjlI9bUL9RItaFZxHL8+6vK63IW
         7VEA==
X-Gm-Message-State: AFqh2koz3k3rBdbu9X6ti89yD+QI6QZ+ngsa2qtMCZfnshV92SQY9O6r
        JFvGAXolt6wBHQRVLlWleJJ70YUJuuS8dA==
X-Google-Smtp-Source: AMrXdXsWN6jFtWk8Qa9rxxCAKlGF7PD0F+0Qzq4EAALjoiqKvvC70PAARaB1OFgXpHuUkHL/6lxrSg==
X-Received: by 2002:a5d:49ce:0:b0:26b:c52e:f7be with SMTP id t14-20020a5d49ce000000b0026bc52ef7bemr6874448wrs.66.1671818401224;
        Fri, 23 Dec 2022 10:00:01 -0800 (PST)
Received: from vm.nix.is (vm.nix.is. [2a01:4f8:120:2468::2])
        by smtp.gmail.com with ESMTPSA id n14-20020adfe34e000000b002366dd0e030sm3680946wrj.68.2022.12.23.10.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 10:00:00 -0800 (PST)
From:   =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Tejun Heo <tj@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
Subject: [PATCH 1/2] proc.5: note that "cmdline" might be favored over "stat.comm" by ps(1)
Date:   Fri, 23 Dec 2022 18:59:52 +0100
Message-Id: <patch-1.2-90c53495f-20221223T174835Z-avarab@gmail.com>
X-Mailer: git-send-email 2.39.0.1106.gf45ba805d1a
In-Reply-To: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
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

With "ps -A" the output uses the "stat.comm" field, but "ps a" will
display the value in "cmdline".

Signed-off-by: Ævar Arnfjörð Bjarmason <avarab@gmail.com>
---
 man5/proc.5 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 65a4c38e3..115c8592e 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2087,7 +2087,11 @@ The affected fields are indicated with the marking [PT].
 The process ID.
 .TP
 (2) \fIcomm\fP \ %s
-The filename of the executable, in parentheses.
+The filename of the executable, in parentheses. Tools such as
+.BR ps (1)
+may alternatively (or additionally) use
+.IR /proc/ pid /cmdline.
+.IP
 Strings longer than
 .B TASK_COMM_LEN
 (16) characters (including the terminating null byte) are silently truncated.
-- 
2.39.0.1106.gf45ba805d1a

