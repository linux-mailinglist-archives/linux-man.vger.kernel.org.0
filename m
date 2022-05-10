Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 476515226A2
	for <lists+linux-man@lfdr.de>; Wed, 11 May 2022 00:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbiEJWIi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 May 2022 18:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbiEJWIh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 May 2022 18:08:37 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0374289BD9
        for <linux-man@vger.kernel.org>; Tue, 10 May 2022 15:08:32 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-2f7ee6bc6ddso1419207b3.1
        for <linux-man@vger.kernel.org>; Tue, 10 May 2022 15:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=JWC2PZHKNFawO2x48GB1VyvLoaWEXS6rD1yXRgPdoQM=;
        b=fBo6l56jHQ4ENf3fT3PwlDLxVbrP9aSDc1tiemmqaEY3bu/WpF4/NrjAWBcKOSMjsc
         KgneZXMGo4OHXocQxi4UkudKEU5UzDm+7s07cI+gZvDvth3Xs/r3RZ17OI00AOjm66RH
         urxrySjbwQ7XXgH8j7YPQrz0AlYTOChN91s0PyY8C2LGplUZqdlufMyx6w7XcvZVzwFR
         +79SHzmR+8cslYw+nCW78WT47IumQGo5Fyx0Ea3KvRkQfvNtm7zB88Y9R50SOgDfZynO
         6JuG3XJ7W6rmipfAjjeUtwmAO7+UL9PYdqr/F1clhfoxmaWJEIIvRjZMPJF2ctbv66zE
         MFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=JWC2PZHKNFawO2x48GB1VyvLoaWEXS6rD1yXRgPdoQM=;
        b=rzAnLBMmmOE4TRk+BdIx4SDjL4tporEvHqZ3uiEf5n+lRrkBeXA+GBsQJzqtvLqw/J
         Xt9JLEotFaWGyDfATEUNNgZU8EKqChUm0cze6wTpYK2oAQIZq1svT0/RuqPCiAOa1WRk
         Wxkl+HjjXU+K+RM4KJeUmNENzQja7sLX4N42Qr74GtMf8RrQ+ILRwc+7AqHLwHw9eb5O
         ONx3k+Dl9vpf9XwF7Spb1shWZz87npKA+F2197PJWlxj4N1p7YIl+wG4Qtg3HdVJffdD
         6NqXUn9G7uUyV6KZ/YyfZIGTkKLvhqU53Q7ojk2UCouPDBk9fVWDtp1lv3Od5DOo9B+u
         NNHw==
X-Gm-Message-State: AOAM531/Ndj3SR6Dsva559a53dDUVXwxYXf+hUWa0rUCv1ZptADuJKgF
        JhRsl8y+e6K1fOWpapDZHpqLQ+b4A9KIyd/B2sZWkudTs/zOFCQIYwocChZCQavKmfhRFy/oDjt
        soIwWVI4fmKzguzNeIuahNxiDsBMZ8evdR3Rc8dl+kQGxqntCYIdObVa1VDvWGUU=
X-Google-Smtp-Source: ABdhPJyHQ+uSFEoayZcmJImdKHyKKtfhXpzDJXD50nLJLFuh2IJPArE8JJ0bOFcJ9I9vGVVdKkfwYX746w==
X-Received: from tbodt.mtv.corp.google.com ([2620:0:1000:5011:d21c:6d0:4aa2:ba60])
 (user=tbodt job=sendgmr) by 2002:a25:dd42:0:b0:64a:d0b8:d498 with SMTP id
 u63-20020a25dd42000000b0064ad0b8d498mr12620793ybg.536.1652220511756; Tue, 10
 May 2022 15:08:31 -0700 (PDT)
Date:   Tue, 10 May 2022 15:08:21 -0700
Message-Id: <20220510220821.1481801-1-tbodt@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.36.0.512.ge40c2bad7a-goog
Subject: [PATCH] getpriority: Only getpriority translation the priority values
From:   Theodore Dubois <tbodt@google.com>
To:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        alx.manpages@gmail.com
Cc:     Theodore Dubois <tbodt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The translation is needed to avoid returning a negative number from a
successful syscall, and this requirement doesn't apply to setpriority.
See the implementation of getpriority in kernel/sys.c.

Signed-off-by: Theodore Dubois <tbodt@google.com>
---
 man2/getpriority.2 | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git man2/getpriority.2 man2/getpriority.2
index 3e1be3e6c..24c1b7f11 100644
--- man2/getpriority.2
+++ man2/getpriority.2
@@ -206,20 +206,11 @@ All BSD-like systems (SunOS 4.1.3, Ultrix 4.2,
 manner as Linux 2.6.12 and later.
 .\"
 .SS C library/kernel differences
-Within the kernel, nice values are actually represented
-using the range 40..1
-(since negative numbers are error codes) and these are the values
-employed by the
-.BR setpriority ()
-and
-.BR getpriority ()
-system calls.
-The glibc wrapper functions for these system calls handle the
-translations between the user-land and kernel representations
-of the nice value according to the formula
+The getpriority system call returns nice values translated to the range 40..1,
+since a negative return value would be interpreted as an error.
+The glibc wrapper function for getpriority translates the value back according to the formula
 .IR "unice\ =\ 20\ \-\ knice" .
-(Thus, the kernel's 40..1 range corresponds to the
-range \-20..19 as seen by user space.)
+(Thus, the 40..1 range returned by the kernel corresponds to the range \-20..19 as seen by user space.)
 .SH BUGS
 According to POSIX, the nice value is a per-process setting.
 However, under the current Linux/NPTL implementation of POSIX threads,
-- 
2.36.0.512.ge40c2bad7a-goog

