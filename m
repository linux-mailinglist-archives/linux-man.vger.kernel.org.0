Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB827CE49F
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231949AbjJRRbo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbjJRRbM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:31:12 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF2B3AA4
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:19 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-694ed847889so5824076b3a.2
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649679; x=1698254479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RavjDLpnLiTbxRS0gzzgynvrIwajO5sx2/BL10Gg55g=;
        b=uX+FFAQ+LIstBlPqVJz4E+FBbk550rYDvC0SuAFtiqpt1QtoTX4sdxfqXk2UWrzcvn
         afB5l0Gj+8kxoC0Xbi8gb8FJ+fbnK11J8nDoPD7kz5DXK6TjGLK9NR86DjZS16GJ0M5+
         nzfKgrZeT3tkvQulpoTwZpIZtIiV0RfW1gn4ZXnBswfBZj4i8x4i5trRB0h08X8+tmsM
         0Ln62mGxOL47krEL0riMeZJfpK6xwfnD5zk9Mfw5uB5aL2/o1Ph7XFlmGUnYr06U0ub5
         2Gt1xZgOcnJkzk4AcfFC2AGwIVymhY0/ivFgsPzoJk7+KOrm6MJ0jI7d+gh3887DiZi5
         M2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649679; x=1698254479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RavjDLpnLiTbxRS0gzzgynvrIwajO5sx2/BL10Gg55g=;
        b=QZ9ZxavL+8UjpsZPKyD7U8GOHB/502Efjc9Asdv/k5cWW8rV9DQ8B9A5YML4Od7DD/
         jfwkDXXWBgVCWNf5kUYoVA+rH75OVmPR2Cu6ZrgguTmuy4ExwkU9Fs8cEGKjF2NqgzQA
         6ObxdA8y6prJ1QRmxZRBZiriLuJZ62CRTKFj/QhrgGbpDqS8tZbx/rSScFBqfExdCswQ
         HJRedyAFb3qkNQIErZn9D6omTTShbytrMhRn1+j/cJ4ilieUZ6n6ZC7p0Es9eBHQmn/y
         nBfmxXBU+kT1iNtv/xR3QD74S00DKPYwg+27juwqlwik76tslQVIv7RTj+kAPfK6WdKK
         Jtfg==
X-Gm-Message-State: AOJu0YwrLh1LbmqiLpZ51FVxpljOa6MdKMN4tH4XzNja4+E+0Njy6F74
        P1pT47lahAByk1+SJpuQefZBV3h98KBMmnRr2GYvBQ==
X-Google-Smtp-Source: AGHT+IGO36LFyd4RoRg6KK9QqYrXFrafPUItx0ZV5xaYip2VumutMFBwElTiRcpSnDZtYXn1LoyzHg==
X-Received: by 2002:a05:6a00:1389:b0:6be:5367:2131 with SMTP id t9-20020a056a00138900b006be53672131mr6428775pfg.24.1697649678653;
        Wed, 18 Oct 2023 10:21:18 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:18 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 5/5] ld.so.8: Describe the --list-diagnostics loader option
Date:   Wed, 18 Oct 2023 14:21:04 -0300
Message-Id: <20231018172104.1196993-6-adhemerval.zanella@linaro.org>
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

It was added on glibc 2.33 as a way to print system diagnostic
information in a machine-readable format.

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 0e742cddd..66f14aef4 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -246,6 +246,13 @@ are delimited by colons or spaces.
 .B \-\-list
 List all dependencies and how they are resolved.
 .TP
+.BR \-\-list\-diagnostics " (since glibc 2.33)
+Print system diagnostic information in a machine-readable format, such as some
+internal loader variables, the auxiliary vector (see
+.BR getauxval (3)),
+and the environment variables.  On some architecture, the command might print
+additional information (like the cpu features used in GNU indirect function
+selection on x86).
 .BR \-\-list\-tunables " (since glibc 2.33)"
 Print the names and values of all tunables,
 along with the minimum and maximum allowed values.
-- 
2.34.1

