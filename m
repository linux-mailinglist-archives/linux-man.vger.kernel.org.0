Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 612626015CD
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 19:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230022AbiJQRz2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 13:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbiJQRz1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 13:55:27 -0400
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com [IPv6:2607:f8b0:4864:20::1049])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E2E3499B
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:26 -0700 (PDT)
Received: by mail-pj1-x1049.google.com with SMTP id v5-20020a17090abb8500b0020a76ded27eso10244597pjr.3
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 10:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ttsr9BbXFZlbPd9uwE3ZbwtF/CRPzTdkpxe4mJFifv4=;
        b=LgVvfFBiaF7vSUMgKBYwmok8zFmDmOBSmPuGpLPiS6XHn4IdhnUrCy+uYjjXT2sB4Z
         W/djXIRogYPq5JQ5Ugn2WzJtVzVCMfyCIlrabV1l1IaYc+3WWADcmuyQzfw5fL5WOoXD
         6ZgvyCtP4tg7fwHN1hhdlBhcCPnBX6joxkwD7oeddxxkzD5EztH8ikE7I+hdHRXBgzwk
         15ggh07lrGaacZJQRAH/FKnXolWWL2fh7QHT0nZ/k+R5BKqTh1CI78iKiUuaokEZJ6M0
         rBV3+YoXdQtBCCrr2QHBFligPNYieYgE5i5kUnptaTlNGPIOVL8Je7Z0ehNtlRMFqhya
         Z69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ttsr9BbXFZlbPd9uwE3ZbwtF/CRPzTdkpxe4mJFifv4=;
        b=7eQT2MMcNevs9B+L41kiftj0k1dLKAUC0UKGGo0yjbIfCMtf0K05J4WVEOZ8kmeOE7
         ntJFyodh+yge9xov8PPqy01Jzd+qxKEdU9qWnTLGtV3GIsflpEIOK9/C06mesMwG1aJ+
         27WBivnkIaJNbflzCx1Yh4PyWRybhuIJDHTADWsLejDpSik5SqoXhVXdQC9qe0CL3cXo
         1uiz2SCiuzBt4mwE82GXfgUSCeSzp+YCpPaDlIX+0vzN7C1hy3ftKL3/7LfKRE6Eqt9o
         VYS605geDpn2V/BJIk33D7Pig+6JvWY+1IuRZm8Kj0DPTauy78LW6dVTqZVg9merbUsK
         1w2A==
X-Gm-Message-State: ACrzQf3Dl10r5/oPvz45huRBQsfGBlIMoTKNIpxeSZTkrtX44f3um8L1
        XhtAv4RyjS5Z29BUdCiitMKAfFcT/ovF
X-Google-Smtp-Source: AMsMyM6KZ6V6N1GVyq3cMXsDh/qTct3kZECHr/Vs7YFOg3SthJZfomGkZVNFg51DJk8+Cc4r9isbAZgi8CAB
X-Received: from zokeefe3.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:1b6])
 (user=zokeefe job=sendgmr) by 2002:a05:6a00:9a7:b0:563:a9e0:fe50 with SMTP id
 u39-20020a056a0009a700b00563a9e0fe50mr13725204pfg.45.1666029326177; Mon, 17
 Oct 2022 10:55:26 -0700 (PDT)
Date:   Mon, 17 Oct 2022 10:55:19 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
Message-ID: <20221017175523.2048887-1-zokeefe@google.com>
Subject: [PATCH 0/4] Add MADV_COLLAPSE documentation
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

Hey Alex / Michael,

This series adds MADV_COLLAPSE (currently in 6.1-rc1 and expected for Linux 6.1)
documentation to madvise(2) and process_madvise(2).  A few prerequisite patches
are included to fix up existing MADV_HUGEPAGE and process_madvise(2)
documentation, as well as add some additional clarity for madvise(2) "advice"
probing.

Series applies on man-pages-6.00, and though I've attempted to use semantic
newlines, I can't claim I've made the right choices everywhere.

Thanks,
Zach


Zach O'Keefe (4):
  madvise.2: update THP file/shmem documentation for +5.4
  madvise.2: document reliable probe for advice support
  process_madvise.2: CAP_SYS_ADMIN cleanup
  madvise.2: add documentation for MADV_COLLAPSE

 man2/madvise.2         | 135 +++++++++++++++++++++++++++++++++++++++--
 man2/process_madvise.2 |  13 +++-
 2 files changed, 142 insertions(+), 6 deletions(-)

-- 
2.38.0.413.g74048e4d9e-goog

