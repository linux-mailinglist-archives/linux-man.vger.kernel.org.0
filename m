Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67DB36015D2
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 19:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230417AbiJQRze (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 13:55:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230328AbiJQRzc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 13:55:32 -0400
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com [IPv6:2607:f8b0:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7678C48EAC
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:31 -0700 (PDT)
Received: by mail-pf1-x44a.google.com with SMTP id y18-20020a056a00181200b00565b27c2611so6434300pfa.14
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=k4YZ/MZAkRksM7yVQmihehh8ldAEChAETLP25ZBcDQ0=;
        b=O6/4jT33BaC+RJJLf7veET9jVN1YLLZYIeYsGr0T4FVM9rhiunBt0L4bHC3T6gxRAj
         iKi31nT/vPp3ptPZIwJ+iIRxMy8LyFAq9TzDmUfgRcs0bF5QUhERUjoocgGQ3PosM1L+
         KlOhpZ/cDvr9Vc1iXQ9d8yk2/7B6bcXGQSSdn6Q/hcZePHkf5d6pdjWiQQXZ2XuzC1l0
         PuO0IZuMiz2rzPU2zi6hAUViiIQ9Z1LoeF67Sua9BwCrKEc88iunEbRReHb30pVDqVpU
         hFJC9CvCvf7oytGr6VLz7BN+AmjkuZ+d4Wm0/IwEeHZYqq/yfDa8WAru58mWK1KiV+l3
         7/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k4YZ/MZAkRksM7yVQmihehh8ldAEChAETLP25ZBcDQ0=;
        b=4iGGrQDeSIe43CeC9mzxofDSANbVDJpT1AVT/Tqqbck09UfHbX/2FMiA2JKMHR+Ypq
         XAyAi5bmQfmRXbbCeXJGlC9FJpXRK42+zVNLIYkC74ZpDCFljeveypVWadhT6o3aNEfT
         13WN965xbMWnBTTb34MWDLvZQPxksdD8vF+WzpEJsNgV1YUlu/nOvu/wBNJnK9GKQMp7
         u1Qnw5OsLsEC/TrPGsTSLbKOAVlr6/CzoAZ2uGYepH9CzrnrWOdBOspedVW/qJ9cSPxt
         8mF7cCIeJm4gXNnpeoOR9cILWi0ivaPmNw+/aqZbE1wS7ZCGwwBz3Teb0MxIaxgYPL0M
         MYNQ==
X-Gm-Message-State: ACrzQf2TDrpHKAKbvexyZGMzQwZd9xvvmc9IdfNEYgc3keiihXosEO+i
        J0fvxkmK1rAesFYUtEOa1W4Rwcv/AUFx
X-Google-Smtp-Source: AMsMyM4tPJA6Kt7/TvYOFt22YMGQ2eAWnUmfDcpnttaHh5FbPG7jHOHUD8ASdCZt7fk3JvlEgXHbdPCAeqfI
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a17:90b:3d85:b0:20c:8f6a:8298 with SMTP id
 pq5-20020a17090b3d8500b0020c8f6a8298mr35396412pjb.242.1666029331036; Mon, 17
 Oct 2022 10:55:31 -0700 (PDT)
Date:   Mon, 17 Oct 2022 10:55:22 -0700
In-Reply-To: <20221017175523.2048887-1-zokeefe@google.com>
Mime-Version: 1.0
References: <20221017175523.2048887-1-zokeefe@google.com>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221017175523.2048887-4-zokeefe@google.com>
Subject: [PATCH man-pages 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
From:   Zach OKeefe <zokeefe@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Zach O'Keefe <zokeefe@google.com>

Since commit 96cfe2c0fd23 ("mm/madvise: replace ptrace attach
requirement for process_madvise"), process_madvise(2) has only
required CAP_SYS_NICE capability.  Update the man page to reflect this.

Signed-off-by: Zach O'Keefe <zokeefe@google.com>
---
 man2/process_madvise.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 6208206e4..7bee1a098 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -113,7 +113,8 @@ check (see
 in addition,
 because of the performance implications of applying the advice,
 the caller must have the
-.B CAP_SYS_ADMIN
+.\" commit 96cfe2c0fd23ea7c2368d14f769d287e7ae1082e
+.B CAP_SYS_NICE
 capability.
 .SH RETURN VALUE
 On success,
-- 
2.38.0.413.g74048e4d9e-goog

