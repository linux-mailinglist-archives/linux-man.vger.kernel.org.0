Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5BD67CF8F7
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 14:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345491AbjJSMcI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 08:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235340AbjJSMbx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 08:31:53 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D35CFD58
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:50 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-53fa455cd94so5376097a12.2
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697718709; x=1698323509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jFZTJKWwAnK/aDxEfqbzvNHSNB4MDc94hJozoo0LhZU=;
        b=acX+Pnf4dOC8nuoc3DFMArSyK3D/rmHz0uj9tr4Hkemgf+jH+9YGzpHVyaY+kKS0E3
         RPqU/uOYiV5ZDvoHfFjg04FP68Wt7zqJ2PhnReTsX7+erPUqaC330G+dbNI1nxKv4Bra
         CZ/qDYrjYtPdKr6i1uUBVUzRJ1mac5fQ/FeR9om6GESB+Fhk7xZnwya6Nohqur8mvbVR
         A0GgxvrW8mxyn6F2K5O1kCrBqpxqzuVfZLIjRt7xgELZ74hTAc5ghSsRDQ3+JWXZKm2i
         Pl2rL0kMOvLB3gbrb5SAhkArr/C8+WQj/V/sMZR76+923Z3m/nTCNU3pTa1w0ZztaIFZ
         tOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697718709; x=1698323509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jFZTJKWwAnK/aDxEfqbzvNHSNB4MDc94hJozoo0LhZU=;
        b=sOw46aCFbmjENP1QNl1TGwb1iMnEDGybelp3s1IcbFXdQwxfZeyvi8QVtfyLZj1sS6
         cTQU99+bFCjpHvZHE1vbkQlu42UIX6QYgEaetwQ5vxPIXETqypsnjDBebi/FtFKRfj99
         R/JTmA+VGDatZm6ki1cERPQq9HCQV3Xq9edaXGrWWRFovgZT5MpNRgJNRKXdoV1w3zN+
         i3UeZFEMa2+xuxXZhg57aY0eFyv7anFr8IgpuN9wPqFllvACsMnxtncj88ckL+Pd5H1j
         rAn63xmhBuBEpsaRhnGrl2zDqKoMH3K06JXYrvLX9yIixt56CugxFnR3iKj6RqVeQr3H
         TL/w==
X-Gm-Message-State: AOJu0YwaqkPavSFfgNGvxxZflTF3FJsKj6cxL8U8Px2aYe3LubEHLOfB
        onlYyFCVZ8mnBHHKJ6UCecoHkm+QNUL1N8Jpr8vjuA==
X-Google-Smtp-Source: AGHT+IHWpOGV10kfk86yG61jGo9u+o89dTeSS7MP7G0BPmmiVPXNUjTv+LDr3jFX9ubrKxwpLd/BAw==
X-Received: by 2002:a17:903:230b:b0:1c9:d7f7:486 with SMTP id d11-20020a170903230b00b001c9d7f70486mr2479587plh.59.1697718709226;
        Thu, 19 Oct 2023 05:31:49 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:8435:c932:f94b:575b])
        by smtp.gmail.com with ESMTPSA id h2-20020a170902f7c200b001bbd1562e75sm1845297plw.55.2023.10.19.05.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 05:31:47 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH v2 1/2] ld.so.8: Clarify LD_PROFILE in secure-execution mode
Date:   Thu, 19 Oct 2023 09:31:38 -0300
Message-Id: <20231019123139.1808532-2-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
References: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Different than specified, glibc 2.2.5 does not ignore LD_PROFILE in
secure-execution mode.  Instead, it uses the default LD_PROFILE_OUTPUT
(/var/profile) folder.

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index d4eb27a70..cf03cb85e 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -687,7 +687,7 @@ Profiling output is appended to the file whose name is:
 .IP
 Since glibc 2.2.5,
 .B LD_PROFILE
-is ignored in secure-execution mode.
+uses a different default path in secure-execution mode.
 .TP
 .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
 Directory where
@@ -701,10 +701,6 @@ then the default is
 is ignored in secure-execution mode; instead
 .I /var/profile
 is always used.
-(This detail is relevant only before glibc 2.2.5,
-since in later glibc versions,
-.B LD_PROFILE
-is also ignored in secure-execution mode.)
 .TP
 .BR LD_SHOW_AUXV " (since glibc 2.1)"
 If this environment variable is defined (with any value),
-- 
2.34.1

