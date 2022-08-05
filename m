Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 072B158A581
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 06:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbiHEEsR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 00:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbiHEEsR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 00:48:17 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3331E3C8F5
        for <linux-man@vger.kernel.org>; Thu,  4 Aug 2022 21:48:16 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id l24so1166806ion.13
        for <linux-man@vger.kernel.org>; Thu, 04 Aug 2022 21:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=AwhXvFNPHFdNQD+EFM3MKfYrUKC33VACAXWag+fQ6ck=;
        b=M4hIcYW2Ul/A6JFJI0A2gNnjpsTB1/+BGE+xgwhRjxzvmA9hZgMlcQe1BDrgND/yA2
         EPFa7T7LQJLVXGrIJyQTxAPbxqB16peaSCO4JXCM7gpqOAGRdCGtIWNR2/I8A7XdqcEG
         7ZUax/OrbsVpARBHZ1+FDGt9GRz1FKJSU9vaUanQtfD/noyhqfQ6jCTm3efd/mg8UWz6
         wkjbMzjBNJAomOzXhvfhh4+OZHERYHWofLZkSGlte4+ISVanahY/AE+QfTqyOA/NYSxp
         mGdDEQofXQSGgl0txtAHLWa1AAVF81Bj3K4LLvXOVgTm+d8pzUXhykK6zO17pmD3uEw9
         l5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=AwhXvFNPHFdNQD+EFM3MKfYrUKC33VACAXWag+fQ6ck=;
        b=cAC/ovUfcQijJBpGRBeeqSHdSp0yKnQIsCDSw3YS/Lea3M9Esn+GhCzKKG+NKC655/
         1mhJw9l+WmiPrB2VuWWXm0wfBEIUfIOlMj2f0gqWE8m4w9wTFh97b9TUuRh1Ca70mM02
         7pGkoc3K0tAzdLCzL9pDpEOT5z9tV6Ddn2PtELXALbdPZv/3Q+5C++FA9udsRN+pznFD
         a+xDODAigDk/vo2MV4wVxDVFG/1QtVa5Oh5uo4m1vt1St/XRscTkCku/t5XB7ZHvjXSe
         lbReuR8FMgGKMn24Y9XzGHx+ZPjpv5PqVj3fMOII6Xz1h6ZIbaxYb9Qg6hhXiw/LO23h
         v0EA==
X-Gm-Message-State: ACgBeo2yHqTnsRC0q26u8HrbdXt5Q9hbK+Wkd8o2YIwDydRRi15EOqq0
        4w37MJcY591rUkLFJm3GOUNzAp9p3gw=
X-Google-Smtp-Source: AA6agR6bI8I28ns6WUiawD7ngnNLpPEKDDe8VCwSTVOzliWlz7wPmtRajexmphWvkJrgMFaRugZnZA==
X-Received: by 2002:a02:3f11:0:b0:33f:5d4c:179e with SMTP id d17-20020a023f11000000b0033f5d4c179emr2399293jaa.23.1659674895360;
        Thu, 04 Aug 2022 21:48:15 -0700 (PDT)
Received: from isa ([2601:8c1:c100:1d59:abd9:c381:cd52:412e])
        by smtp.gmail.com with ESMTPSA id cp11-20020a056638480b00b0034275c8eeb6sm1239447jab.158.2022.08.04.21.48.14
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 21:48:15 -0700 (PDT)
Date:   Thu, 4 Aug 2022 22:48:12 -0600
From:   Brett Holman <bholman.devel@gmail.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] proc.5: Document idle state in /proc/pid/stat
Message-ID: <20220805044812.glotze62j2dldrdw@isa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Brett Holman <bholman.devel@gmail.com>
---
 man5/proc.5 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man5/proc.5 b/man5/proc.5
index f5a771b22..5d2710377 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2135,6 +2135,9 @@ Waking (Linux 2.6.33 to
 Parked (Linux 3.9 to
 .\" commit 74e37200de8e9c4e09b70c21c3f13c2071e77457
 3.13 only)
+.IP I
+.\" commit 06eb61844d841d0032a9950ce7f8e783ee49c0d0
+Idle (Linux 4.14 onward)
 .RE
 .TP
 (4) \fIppid\fP \ %d
-- 
2.34.1

