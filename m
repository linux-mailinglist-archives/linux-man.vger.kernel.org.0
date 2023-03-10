Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2341C6B33D4
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 02:52:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjCJBwR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 20:52:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbjCJBwQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 20:52:16 -0500
Received: from mail-il1-x164.google.com (mail-il1-x164.google.com [IPv6:2607:f8b0:4864:20::164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FFA8FCF02
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 17:52:15 -0800 (PST)
Received: by mail-il1-x164.google.com with SMTP id y9so2179876ill.3
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 17:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=footclan-ninja.20210112.gappssmtp.com; s=20210112; t=1678413135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8nJOPBQ6Wy/cDpSYnZIyGOLpcl7xq3fAyZUtbcvsCYI=;
        b=EjBWug+V+a/K1BFhCqhwhIq5MmSlgW0Gdw34f49CZHFgf8+DanOdTzEKqSQQBUHYDo
         JGBTuKWy+Fltw/ssf5BGZEJRiVZz6FBMF3VidS7ggeyzayWvC7cflkqts44HPIbohPEr
         sNVr/AZe2Qa/XBZdLAy5ENoIfUObtbYzDpNOdQbOJ2SzluvgcC1oLnBW/A2BopG77Ndn
         QOaOw87TWwPy4jxYypdlCjKwY6BWtmaF866BGRdTnAW2LP3ZbDafCrd5JQcVDsI++ByE
         7w9arYqcK3SuRdiR08wNCUtXzS8cVS2tEK568ZbZL/JbXetUTSSGDPEV+mYVLmeFvxEY
         rvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678413135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nJOPBQ6Wy/cDpSYnZIyGOLpcl7xq3fAyZUtbcvsCYI=;
        b=bul+2KL7/5Mogl8SOlOZlUuWWMd0EyyhO0fWmA83Gr0/XrtkMt0UYuJ6uIHxczNG5l
         nx+GrzAuLRSSj9s5hCHn/jZKv+I6+qujOW4p6bTYW6q3vhz7GKh+Id3i7ZblmWu3mpt3
         Ppngqhmi8ON0cLuMk2kE3k0XP9HKWxpCu+1Y8MST0xI3880FJ+Poi8fH14Ol9IlCKhEQ
         XXpHlgOAPpbpYW429VZsqxTKycSUzhmNDnG3Vxc3fwOhR1m3RoR/kO+R0DgG1rDnAaE5
         8KCmR5BUZ8t1RcfqziLIySTdEnHcfl474WiUBlPsI7KGNGEK6qyZT5SoPmaSVHpkuDZp
         vGfA==
X-Gm-Message-State: AO0yUKVva69fioSx/mJ7GLqEaDAZ5MLjzZd0OPK88HHJgoIb6JlyGrCq
        MHD9yIxw6O69tpsSxR+fg8VYZs9b9dKPKrTfWS/21I7/p14MsLuABHI0MBYmTOBMBE4U4WblaXe
        T0HcmUFFr4sFSiYX6eJM3OPZZo4QAoreIHswrywK8TgKSTIZJJY4iNaKgjbnCcQwJqEtmuZXw1K
        wo4QRK34LvQ3sF8WS3w68ZXReT7wjSE5TPrpimqecM93g79g==
X-Google-Smtp-Source: AK7set9IA/OhTRHnmFv2vsrTc8fZ3juNbbS6iDB83SWc7tKFde2/qDezZ0hhI0X+zghDCzA2h7lrQijx1x7e
X-Received: by 2002:a92:c691:0:b0:315:2b6b:f0a9 with SMTP id o17-20020a92c691000000b003152b6bf0a9mr259819ilg.11.1678413134850;
        Thu, 09 Mar 2023 17:52:14 -0800 (PST)
Received: from obsidian.wifi.footclan.ninja (2403-5808-2e-4--1192.ip6.aussiebb.net. [2403:5808:2e:4::1192])
        by smtp-relay.gmail.com with ESMTPS id n15-20020a056638120f00b003dd53eab58fsm59842jas.85.2023.03.09.17.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 17:52:14 -0800 (PST)
X-Relaying-Domain: footclan.ninja
From:   Matt Jolly <Matt.Jolly@footclan.ninja>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: Revert "Many Pages: Remove references to C89"
Date:   Fri, 10 Mar 2023 12:51:49 +1100
Message-Id: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi All

I hope this email finds you well. I am writing to raise an issue that has been causing inconvenience
for me (and potentially others). The recent removal of C89 information from man pages
(72b349dd8c209d7375d4d4f76e2315943d654ee9) has put me in a difficult situation.
As I continue to work on code that adheres to the C89 style, such as cURL, I am unable to quickly
determine if a particular function can be used or if it was introduced in a later standard like C99.
This slows down my workflow and hampers my productivity.

Therefore, I kindly request that we revert the changes made in the "Many pages: Remove references to C89" patch.
Furthermore, I urge everyone to recognize the importance of this information and ensure it is not removed from man pages in the future.

Thank you for your attention to this matter. Please let me know if you have any questions or concerns.

Cheers,

Matt


