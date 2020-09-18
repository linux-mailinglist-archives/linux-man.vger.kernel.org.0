Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFD4E26FD17
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:46:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726609AbgIRMqq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726461AbgIRMql (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:46:41 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6129FC06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:41 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id e16so5512558wrm.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P1LSLSEpyLFLNag2q7yCI6IR6iK/ZHggH6zUU4Hcjoo=;
        b=pHxx2quFQ4YtEQvM2q6POvlhPF7NF+KOvAEjYX+PWqzrEZnWojQcJ0bvuakHWJFVUB
         TPCpPQtLv9KYdoM060+gpVJdYFYGYBJdixdD/Q2OEsKAeDHqBToxlfosvE/TWMbVdNCM
         Z0eAhNzoi2Vup59q7duDlzfmYyqSbTyxWxBzkRO2NafWthSQqvFxQWB7y54SWncvBO39
         85/dT9EqgPQ3l5c8/HXkVGPrlOtNOxICnSHg8J8O/9E9/++6ncMdEc9eTBN9DZvOu3Xr
         RL8mrKVuqnkcgJDM9nPjMA8ew/vnGCjYrAuI0erS3yK5FJO6OHOqIMgr4355s4DxpI8U
         n3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P1LSLSEpyLFLNag2q7yCI6IR6iK/ZHggH6zUU4Hcjoo=;
        b=PL1VRTpFtgI3vaT3JKOqWjcnLK+kdot/4t1Zq8yZYuuSwqLyVvhrVIEmXtHUKIWNjQ
         4bUvLULdjyoVnd6renx8uDkNNQSqVs9V95gHqXoIpoB1zodf56pvpCzIDIia5Xpo59Xg
         VDVKurM0rwddi/vyoXn2fF7xqAutDG7sTYR/siF0pPmcFtOExeqFbov4vvwcQaxEQ144
         UnFbQ9Ff9hMFdsQxO8bHgvsP3mnSdZBvjbHw0lpGTVZfcqquc9JvAYFdVFa7napgFrhW
         AuVnOiNoCyA1oskLMwr2ygyITOQdE1XXQwldCqsEe0mZUNWKqtZ7v5ltKWSxvf9Cs9rp
         6VGw==
X-Gm-Message-State: AOAM531qe8UOJFdZftNXtBaJ3jpFtKYfKVhUb2FQ5OK1aCdHY0rp7Hzn
        P/49Q4PalR03CGJOxBBRd+eRHFTPGLuSSg==
X-Google-Smtp-Source: ABdhPJwB8qcvi8xeZPao0UMnNQ2aoLZ6CY8/li9jh+Gqd198oL6X+utWBO/xPiBCPfT89qLOWVgc5A==
X-Received: by 2002:adf:9bcf:: with SMTP id e15mr32523674wrc.93.1600433200105;
        Fri, 18 Sep 2020 05:46:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h76sm5254410wme.10.2020.09.18.05.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:46:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 0/4] Document regoff_t (and a few minor patches)
Date:   Fri, 18 Sep 2020 14:45:51 +0200
Message-Id: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Documentation for regoff_t + a few minor patches.
(apply after ptrdiff_t patches)

I removed the reference from ptrdiff_t to regoff_t, as it is not really
relevant to ptrdiff_t.

I see this is fast, so maybe I'll start sending bigger patchsets.
That way it'll be easier for you to apply them sorted.

Cheers,

Alex.


Alejandro Colomar (4):
  system_data_types.7: wfix
  system_data_types.7: Document regoff_t
  regoff_t.3: New link to new documented type in system_data_types(7)
  system_data_types.7: srcfix: Add FIXME notes

 man3/regoff_t.3          |  1 +
 man7/system_data_types.7 | 38 +++++++++++++++++++++++++++++++++-----
 2 files changed, 34 insertions(+), 5 deletions(-)
 create mode 100644 man3/regoff_t.3

-- 
2.28.0

