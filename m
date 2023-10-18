Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72E557CE475
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231767AbjJRR3F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:29:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbjJRR26 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:28:58 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10F023AA6
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:13 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6c4b9e09521so4647856a34.3
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649672; x=1698254472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klXkZHLLpiX89Lsv/d2hEHtUAw6lPuE7GbN9cEfooUA=;
        b=mqrROINl3f02IqHjRMAuDNPkQZ7fU5AjtvEaCFn7B7N7p0ZSquZHj4jD2vgCYrDGzp
         nhLZV8VSYfIOZ9ZJfhEIpNGad+pHJ/yq7Ug5iK7upBzR+rJ0+jIT6Bekhh1/nunYZwSt
         HBjjr8/LIJnhoH7WPsAC+UPDZFpzkRghslQkOwh91rpjd8lpsAGOAZ7HqAnxo/lWAMOR
         wYESx7s4V1j69aMZi5i0XYNNKwQpy9cqEz9YvgZ8EOf7rhhiOwybglnn5pjkKH0rAYvK
         r4N6AuokuKfaGORSuYImFQJjgV90+R+b8NWfwTl4FSeFXRCv/WDdOiqL3CKlTFEDiMMB
         OyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649672; x=1698254472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=klXkZHLLpiX89Lsv/d2hEHtUAw6lPuE7GbN9cEfooUA=;
        b=kQMsuJZo1qtJgwrtbmWL+VSys3jRq7MZuuieelgZ67siVw7H9r3+MtJkDh0XFFwNDS
         GksFIeWVtObLUdUUKAQbBu+aphI4MtekVlmOsw2pu/DBtcI/RRWjDdXcv8fzNpqdx1SG
         681tc9zyVSOYnhJZJL24G7NBn6SLhMVndg4LTkie+heruLYccmLk5NKvO3fOSJR+HKkb
         Nm04Z4Zgj882DwbbZtV6p+H8bNxbC5rRLlXVqGj5tVw35RNn28DM2IOA5G90LRIorNA6
         +6C+9enH+vJSQkGQWkfmBfP1QrmWXHES25xwWSCUYy8Skadnn6bDu1MESPuE/1G4aziH
         eNUA==
X-Gm-Message-State: AOJu0YwMVQKNzkn4KwjyMUk4xYY1ClZz7Shbh0gYP6UweALM6tILMgYQ
        sxM0TnYtmm/mfvnLJfcyRGZJZE4k5CnozMOEkYaO3w==
X-Google-Smtp-Source: AGHT+IHHVB2LKBQrVHCz277Q9cu1xsnq8JJOB/GsOGuxS+HJzJHqR1yItkgtd2YWTMQZlaLE9rFBVQ==
X-Received: by 2002:a9d:7486:0:b0:6af:9b42:9794 with SMTP id t6-20020a9d7486000000b006af9b429794mr5884364otk.35.1697649671874;
        Wed, 18 Oct 2023 10:21:11 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:11 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 1/5] ld.so.8: Update environment variables from recent glibc versions
Date:   Wed, 18 Oct 2023 14:21:00 -0300
Message-Id: <20231018172104.1196993-2-adhemerval.zanella@linaro.org>
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

Recent glibc version removed support for LD_TRACE_PRELINKING,
LD_ASSUME_KERNEL, and LD_USE_LOAD_BIAS.

Also adds a note for LD_HWCAP_MASk that since 2.26 the environment
variable might be ignored if glibc does not support tunables.

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 900f3a9b9..5b5c22825 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -310,7 +310,7 @@ A nonzero value may have been set by a Linux Security Module.
 .SS Environment variables
 Among the more important environment variables are the following:
 .TP
-.BR LD_ASSUME_KERNEL " (since glibc 2.2.3)"
+.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to 2.36)"
 Each shared object can inform the dynamic linker of the minimum kernel ABI
 version that it requires.
 (This requirement is encoded in an ELF note section that is viewable via
@@ -627,8 +627,9 @@ Since glibc 2.3.4,
 .B LD_DYNAMIC_WEAK
 is ignored in secure-execution mode.
 .TP
-.BR LD_HWCAP_MASK " (since glibc 2.1)"
-Mask for hardware capabilities.
+.BR LD_HWCAP_MASK " (from glibc 2.1 to glibc 2.38)"
+Mask for hardware capabilities.  Since glibc 2.26 the option might be ignored
+if glibc does not support tunables.
 .TP
 .BR LD_ORIGIN_PATH " (since glibc 2.1)"
 Path where the binary is found.
@@ -691,7 +692,7 @@ Since glibc 2.3.4,
 .B LD_SHOW_AUXV
 is ignored in secure-execution mode.
 .TP
-.BR LD_TRACE_PRELINKING " (since glibc 2.4)"
+.BR LD_TRACE_PRELINKING " (from glibc 2.4 to glibc 2.35)"
 If this environment variable is defined,
 trace prelinking of the object whose name is assigned to
 this environment variable.
@@ -702,7 +703,7 @@ If the object name is not recognized,
 .\" (This is what seems to happen, from experimenting)
 then all prelinking activity is traced.
 .TP
-.BR LD_USE_LOAD_BIAS " (since glibc 2.3.3)"
+.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to 2.35)"
 .\" http://sources.redhat.com/ml/libc-hacker/2003-11/msg00127.html
 .\" Subject: [PATCH] Support LD_USE_LOAD_BIAS
 .\" Jakub Jelinek
-- 
2.34.1

