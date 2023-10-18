Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69BC67CE4A5
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231313AbjJRRcY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232183AbjJRRbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:31:52 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D23823AA7
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:14 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-57bce354d94so3648079eaf.2
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649673; x=1698254473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRLeXfheZQKlkK/holiVRk9VBonwhbwPZDwH85K2DJg=;
        b=IjCQeejwb22kfxB26uwMhl9yjuS1k/CWOASX0EaStk9BwMgi0PFuAnj1N61Z5J/yQS
         CinU4SXEtDLhyxugnb50EJbpsj4EjN7uBVgG3vkjT7KjoWcAdKS1qbllig7Lwv8/mRdL
         o46cDRTLYvvS2+LfYR/uJvY8kTonc6Z9rfmQEDbCVAUzG25TgrmOhh1PKDO2UWJKU7Q2
         kDN44q/5EXBqlK9fr3VFZUdI/N2cN1EWWtVOcNfy2KLMTs7fGzqCdOAFJXOwQndHvKOB
         DVlhMkNw/2IXCrv5ocmU0WKFarkY4kMApThXOcKhHDB1GrCl/buRD9Xv53osQWJLP3g7
         vBqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649673; x=1698254473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WRLeXfheZQKlkK/holiVRk9VBonwhbwPZDwH85K2DJg=;
        b=IHLRHs1t3KpIPYSwtlXt2RdtbOtyuZf9xzrWFdC4jkHtFH2E5Asv9U4lYBxcgbWpWS
         ZZ3WQnGeNKwgWd9mA0MMgv7bzEO+heNoiTIrBjWx/1f5s5X5gPL3Plc61eBldYEJSnqX
         jtRx/RwILVHi8jvemSB95cXNsm89uqvQqZAM7qomcvUpeRaSh5FtjI3IycTjrNJotp5K
         hfxaIv7l+sNiH+8oUEjWmzfIVxyQuQlb5HgYko/awBe7y8Zd8fEPkb83HNSDe2XzH8/7
         AzU/tnm3GJOgznWMH15c6PvKj4Yx7C69b6wijEiuf4OEwl1NoKnlXTtfGCjf4eDY9uWn
         DZfA==
X-Gm-Message-State: AOJu0YwOU6B37g8M0VnvwjKDG0yjW+qsbY8USDLKuD61GcM/1D4phDPq
        8HAZhjeNLsL/lJpd+yoOp2K+IlpDa4eF4fvud7BhFg==
X-Google-Smtp-Source: AGHT+IHAUPlfKYtmCRMHW9pGl1A74NtzS4mGdV9PyFiFcm19wzF7Gj3b2epAZGlvGjh3qjzg81gd2g==
X-Received: by 2002:a05:6359:318b:b0:166:d2ff:267e with SMTP id ri11-20020a056359318b00b00166d2ff267emr4887332rwb.21.1697649673566;
        Wed, 18 Oct 2023 10:21:13 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:13 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode
Date:   Wed, 18 Oct 2023 14:21:01 -0300
Message-Id: <20231018172104.1196993-3-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
 man8/ld.so.8 | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 5b5c22825..74286d583 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -664,7 +664,7 @@ Profiling output is appended to the file whose name is:
 .IP
 Since glibc 2.2.5,
 .B LD_PROFILE
-is ignored in secure-execution mode.
+uses a different default path in secure-execution mode.
 .TP
 .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
 Directory where
@@ -672,16 +672,13 @@ Directory where
 output should be written.
 If this variable is not defined, or is defined as an empty string,
 then the default is
-.IR /var/tmp .
+.IR /var/tmp
+or
+.IR /var/profile
+in secure-execution mode.
 .IP
 .B LD_PROFILE_OUTPUT
-is ignored in secure-execution mode; instead
-.I /var/profile
-is always used.
-(This detail is relevant only before glibc 2.2.5,
-since in later glibc versions,
-.B LD_PROFILE
-is also ignored in secure-execution mode.)
+is ignored in secure-execution mode.
 .TP
 .BR LD_SHOW_AUXV " (since glibc 2.1)"
 If this environment variable is defined (with any value),
-- 
2.34.1

