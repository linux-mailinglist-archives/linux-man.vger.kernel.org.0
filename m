Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE69407960
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232347AbhIKQDL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:10 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00897C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z9-20020a7bc149000000b002e8861aff59so3686535wmi.0
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LurulMMPNPMsz0VSTMJdwTx1+Uaj7+rnMYtSEMIyd0c=;
        b=mQspH8oWMSH9V0GSl/m5JKnqkP9VcH0Pt1shGRY5JA0jN3MfFGftlgAfuhQhJETQ6r
         kW3ih0IubFnOvh2UXKJOu+h2s/HpIO2XMDMMHoH8YjoaRKq6I0s2MbL7Nj2bokWRY2x1
         sTlbYMwKEWwaAHpiefDHOrIuuyxnllj1K591cKDciVvn1g1T4ZCosB+OT32e6ees05gk
         KB5GkQKGRXo/NsuGT618vIYXLECeTKo/DyDLTRPs0Zl77d8F1x53Zmx4vfzCznmWln6l
         uJr/3XkyJ+TaeA7qXVe6hURP2OM9+K08q2S75VGabp3416s4W7FDOvHvJjFJPTftoEAB
         K/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LurulMMPNPMsz0VSTMJdwTx1+Uaj7+rnMYtSEMIyd0c=;
        b=e6IbfFWcOE+eOY1BtsWjfvKTTx4/rfW1BnVHbAVxSYzse/z3qzOej2xVowh/T9u16L
         g4oSQoRAqA4/PVZHlHeAZFoVs/BLhCpatGVYWxdwSr2pCnnVtMKIG9k835iq3K7UJVmW
         xaDSNUDyWABR9+ysI3W3dIVscnvIA0mzeYjAm4/Q6F6nBpOv/vdpVavlcldD9pyOmYwW
         RgSS/7vv5g+LWfPVX+4DxjaSZ/5P2nTTf8EUwZjF1/R3vlaBWE4hj2AK9Zg9vwaqs9T7
         v+gY7gLPwsrMceN/77+p2v4q2d3dqY/7dTXLHQg27Lgc6aMkd0Sja5y2PaUGX4L5xjmn
         BJFQ==
X-Gm-Message-State: AOAM5329ZLKAZnreMruNl/16ZldDTAMjLiH9IypD2SNQZkvqleRjvrZ4
        K6+TkS5MoUCXc+J88w7vayrNDSwafIg=
X-Google-Smtp-Source: ABdhPJwW8UGuNTJr2BXCZrp9gTIK3F+5gggrHXcETo213noMGstSqJSG89cJH0xKY9cEOAbMDgqdlw==
X-Received: by 2002:a7b:ce02:: with SMTP id m2mr3227318wmc.132.1631376116676;
        Sat, 11 Sep 2021 09:01:56 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 33/45] sync_file_range.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:05 +0200
Message-Id: <20210911160117.552617-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sync_file_range.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/sync_file_range.2 b/man2/sync_file_range.2
index e01a9f9bb..b613dc3b8 100644
--- a/man2/sync_file_range.2
+++ b/man2/sync_file_range.2
@@ -30,6 +30,9 @@
 .TH SYNC_FILE_RANGE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 sync_file_range \- sync a file segment with disk
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-- 
2.33.0

