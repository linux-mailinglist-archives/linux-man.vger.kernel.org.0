Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0286D6E4F2F
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 19:25:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbjDQRZW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 13:25:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjDQRZV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 13:25:21 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4025944B0
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:25:20 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f7c281a015so1067011f8f.1
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681752319; x=1684344319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ju93M8jN5cn3CX6Pnb5ch5SPeHt/M/MMcwiCsLcku8o=;
        b=lnencvdaEeUkQEqtLKv/PSHgZSVjMjhxN6H8trLSHR6iOYtXv/kv/QXBt9psF5cuOT
         WXJgFtHBjVeWNgPIUvYaj1HDlM7JtYTmV/XK/ISRhYbyn3KDEtR4P7SdYOphFDlybTl8
         otsL6WZoz8lvou+4N0DXdip8gxmTzG7Kv6KmUQYjWV877VTwTqo+dBKVbro+yMsjKh1H
         ydbjaJL0wAaTNcTq3h3ijWL7N7sEHERbU6DZhJxemfy8qnc0Bo3sIwESAXG6KPfimBle
         ASXHsCNZ2KUYuJwoi8UBUNxBeWVxST9HRF4WISnEraUAk1cU2LLiZ0tqFzPo/Wh0RMvi
         324Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681752319; x=1684344319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ju93M8jN5cn3CX6Pnb5ch5SPeHt/M/MMcwiCsLcku8o=;
        b=N1AWRO6zr3NNRPNxu+EXkLbGDpyagJ4q6pCLxG8QBBmGmFsBMBUOOpVmqZnN/c6nsU
         ryAFAa4Djt+aL8ZY8v5bt2gMvr8FWAZPQNv1CrcdaLdNkMcJzODwPJSZqdmHI+yCFjrm
         up92fI0YfOdW9X6cWFCsCW8VXrMEjfKdQR0UIypUtoxQjqyR9X6eAeSyrONjPO3ZSFLd
         +fDGMv8hs8Aq6szOvpNlx2HMCElKOyAB+zgomV+iF3yvy2nHmNma2p6zWrpgXpD0b0ar
         F6+E+2JY7Az+sEOE1ixiwzyczNvR0tm926uNP9X8v5u7iU2ISBg2+7HGhHy8dGz36pZz
         nKAw==
X-Gm-Message-State: AAQBX9cMr2jVL+uY9ADF6CDfD58p3XQ+nrjMPz7yxNox9B0skoX4m4Ko
        PL6tn3phzGN5ofyhhdvmAcIVVOK//fE=
X-Google-Smtp-Source: AKy350aqonu01kJ+N+6L8tn/tpsAa0bFtjWS+Ok4SzoE6+oty7Z/lxFJh43RXhhD4dYLPnKpDsLYMw==
X-Received: by 2002:a5d:45ce:0:b0:2f6:de1f:acb6 with SMTP id b14-20020a5d45ce000000b002f6de1facb6mr6295584wrs.34.1681752318661;
        Mon, 17 Apr 2023 10:25:18 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id j4-20020a5d5644000000b002f02df4c7a3sm10947084wrw.30.2023.04.17.10.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 10:25:18 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v7 0/1] landlock.7: Explain best-effort fallback in example
Date:   Mon, 17 Apr 2023 19:25:12 +0200
Message-Id: <20230417172513.5731-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

Same patch as before, with these changes:

 * Use the MIN() macro instead of an explicit "if".
 * Point out in a comment what the error scenarios are
   when we can not retrieve the Landlock ABI version.

I'm avoiding to spell out the exact error codes,
as they are already documented in the respective man page
for the syscall.

–Günther


Previous mail thread:
v6: https://lore.kernel.org/linux-man/20230414155926.6937-1-gnoack3000@gmail.com/

Günther Noack (1):
  landlock.7: Explain the best-effort fallback mechanism in the example

 man7/landlock.7 | 73 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 69 insertions(+), 4 deletions(-)


base-commit: 6263befb32fdc99dd5d02b6afdd5613db9df4c3b
-- 
2.40.0

