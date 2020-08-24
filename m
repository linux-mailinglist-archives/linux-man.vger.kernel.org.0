Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0628E24F38B
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 10:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726222AbgHXIDs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 04:03:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726158AbgHXIDf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 04:03:35 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72A2BC061573
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 01:03:35 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id l63so4160017edl.9
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 01:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pbRu4lpTYDEr7ok36fTdtzU/4xmmYB1lNMqv7S4NLYM=;
        b=fsnp5tAo5HYjlekAvdWYDs9oyu+Q4jpBJ4tHNK+WvVZ96ohsvVWzGvbhOC04Ae5SHo
         qMjGTUT8MHI+vvJszjed0PjQGQtt81M32Wzp/mX+B2RqkFtlEPWZ8ZkhJ5WqtoxhN9hR
         nwFyK1oWaDnl3dE6VOQL6GdUgqrWWCs+ujVBT5QoOZ0J6gQwKx3jn6Uoi6/idX2shiMK
         DhO6EiWECuse6kYsp53TjOTfGZZ4yN4m3M0yKWb+mPtgXmkA3sTG2e8b2jJds2HHLEBl
         5xlyp+5auVYVuFc8pp3JcFCdOM9JUJaYGEbSfk04ZqhSq3P5pJiWJBeMKIobMf17dbrJ
         UZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pbRu4lpTYDEr7ok36fTdtzU/4xmmYB1lNMqv7S4NLYM=;
        b=jvuz4+CeWk4W6NUiQWnoNjkgnZCVoR8PZyfF/cDYOiZ+qissIbmr8GodTVIRnPzmxv
         6AmrY3XL7SHROMF9Fk6iVorz7SbDUTVH6zlZmsULFMAZfuWo4YY0Cg/V2sVKnLohXH3F
         N5QcviuaR4eSH4p2xjIe0SnPQEgLqDa2Lll6wHLo57lr5H7NYf46RJFfLnjsuGUd8z8G
         R0/s8jU/CTBGAOQYuSMR5nKbVrzQ+7xL/h8EaDv4zo12CpymUHB/3yOpJa79OYnTftV0
         ETzXhUIXCuDIG5oiYbONvERZqg1U9vSisBZj4J6ArnRlkKLVym0et/V0SKYPFjAMzMp8
         F6PA==
X-Gm-Message-State: AOAM531lJY3nrXftkXM/rK4DGwGmMd7+8sadJ4nS6RT6YXxRjrjgLqPd
        DztTdI00Xs3RiUrmNCNoWyJ3NVRIKRM=
X-Google-Smtp-Source: ABdhPJxgWD2BGEbm0LTcVq1oMEBn134FEs81APA37AfI46VEJoUZLHyIQ7gOyx7F/clmBwnnVtECJA==
X-Received: by 2002:a50:c3c4:: with SMTP id i4mr4246124edf.244.1598256214203;
        Mon, 24 Aug 2020 01:03:34 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.56])
        by smtp.gmail.com with ESMTPSA id v13sm8882933edl.9.2020.08.24.01.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 01:03:33 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/3] Fanotify man page updates for v5.9
Date:   Mon, 24 Aug 2020 11:03:23 +0300
Message-Id: <20200824080326.5012-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

These man page updates are posted for the first time, but already
incorporate a lot of feedback provided by Jan Kara on github.

But let's wait for some ACKs here as well...

Thanks,
Amir.


Amir Goldstein (3):
  fanotify.7, fanotify_mark.2: Generalize documentation of
    FAN_REPORT_FID
  fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
  fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME

 man2/fanotify_init.2 | 115 ++++++++++++++++++++++---
 man2/fanotify_mark.2 |  50 ++++-------
 man7/fanotify.7      | 201 ++++++++++++++++++++++++++++++-------------
 3 files changed, 258 insertions(+), 108 deletions(-)

-- 
2.17.1

