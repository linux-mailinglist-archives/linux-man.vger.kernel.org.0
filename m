Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2E112517ED
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730088AbgHYLlR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:41:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730087AbgHYLlF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:41:05 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8373BC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:05 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w13so12058538wrk.5
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NsVooNNIZRhzorgbFdQnON0dZ5UrRh9XnZL0Zqvq0c4=;
        b=HQmRCBYYRzzJDDvXYwyz5+//Ly7E2EwFBW0Vvt+9SDYw47r1S2VyvMQkVK32XqxCvL
         nxQj8gL8AH/HUAWZpXKUNtFQ3iMWIVqnMIdWOL6Bv/08l3GZ+RtE4K0otZh8AWr5ZPQ+
         rAb2dYfSZltV9c1OT+J9+MpKFeB8+Sly1zbFKsDWJITOXIhb7dIV+GlEvP63f14BDstO
         U0mLo1DxvCTbuuR+ezyhUtqR+nCoJ0iYs/DC39NdTNWk02wThEbH943nKdHcfFc/ATms
         u4TO/AMm080QJ04yNh8M4PKVdm3YWAltzufzAv0dEwm9ntRlMI1AZRqMnbAFunsr60ry
         MhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NsVooNNIZRhzorgbFdQnON0dZ5UrRh9XnZL0Zqvq0c4=;
        b=Q38NGocHHwz/cC2WG8gItXoagyBOPlHkO8LW9Q015kN2+V8TkcmJfZ++Kx2CyJKDu7
         0Xux87wX9ri7PUYH5vU/ILN5g6NuSz8APovR3R8Zjs55K9eeSArrH/teuv72zFDMbJIt
         xcCRn/KyqQu/MOXSe6qfYRpodF1MOryQq1zn6ZKWXbhbbpJffbT2loTZiyfsejbdTdKC
         p/MqJ2p03CU3badt0Kz0ElGNFnNCeTXkCi2zr+nl72GW3qvZgUl5Lm5l3DPBYKa7wvnx
         P504j6Jyv+9twOAva0QsMZy51nDkGrxM16KCoCzbsiqPgUfVEOp5gD53lEj0W4zDzQoS
         pChQ==
X-Gm-Message-State: AOAM533S7Kt8MAvUeONHWjgCv1Y41V+yHihKOE5NakvgdyIGjH7cP2Q7
        BARrYfd79dL0ZmFCSFwwMaQ=
X-Google-Smtp-Source: ABdhPJwwhrn7EsPr4uZ+JlKX2DnId5YXWDftAUuWYXQUvIlvWQX4p796Fx2iTVUaKiwyVPNiXhEtVQ==
X-Received: by 2002:adf:9361:: with SMTP id 88mr11113892wro.403.1598355663984;
        Tue, 25 Aug 2020 04:41:03 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.56])
        by smtp.gmail.com with ESMTPSA id g18sm31256574wru.27.2020.08.25.04.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 04:41:03 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 0/3] Fanotify man page updates for v5.9
Date:   Tue, 25 Aug 2020 14:40:53 +0300
Message-Id: <20200825114056.5179-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Posting v2 with Reviewed-by from Jan Kara and Matthew Bobrowski
and fixes for a few minor issues they pointed out.

Thanks,
Amir.


Amir Goldstein (3):
  fanotify.7, fanotify_mark.2: Generalize documentation of
    FAN_REPORT_FID
  fanotify.7, fanotify_init.2: Document FAN_REPORT_DIR_FID
  fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME

 man2/fanotify_init.2 | 115 ++++++++++++++++++++++---
 man2/fanotify_mark.2 |  50 ++++-------
 man7/fanotify.7      | 200 +++++++++++++++++++++++++++++--------------
 3 files changed, 256 insertions(+), 109 deletions(-)

-- 
2.17.1

