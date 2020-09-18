Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0EB62702D8
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbgIRRFD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbgIRRFC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:02 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91E14C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:02 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id l9so6278289wme.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GgdQVTBaZ/tSsaQIUQ1Yuul7f+h5wjy53R4uKhzhTO8=;
        b=t54UzP1mR7VqUyHZ/h+L/9u8030KTkC2WQtBDizpQToWrCUH4DDd5kJ0sQahWTUvdu
         dQDtJ9S633o/ILTGcum/DfjGtd/JMqdXzjs8EZhzb0t7NTb46qnhfyHJPFYOozdn2Xk5
         Kvbj1whW0TKR28xjzcyuBLNoAfa6bzjzFRm398owge40reJ8j5LSLkjtdePxxzx26i+i
         eI/bEXV/X6kJ3xYbkpngMer4kJ8GWim38S8t+P7mOmIBcSGTE7fssqr9GMrU5dMimiKz
         4vf7MEmyO5V3QrOzDZ4tIFBQXEyw5Z6gnQ91xIzAcxQSn1NRvXYebErOnFTnKmMp6BRP
         Rvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GgdQVTBaZ/tSsaQIUQ1Yuul7f+h5wjy53R4uKhzhTO8=;
        b=cH3R+FKeEAv496DHkg5/x2+NQv8eWUDtXv+OX9b/18fRH4U8nBBzDtYmV1WBVaYQKM
         17oq2KiEAB1+VskL9Wi6m2PjCemh+5ImDbfVae3rrg83MzDDUYkTSOSVT/GBaftDNilJ
         DKWOtyyC4cEgjMYXH1p6ipTQT7N7x/nK/FQZ4o0EQraJV55vv88Mt6dXlvrnNJWZwBza
         e7/21kbje4uhcuoTCVJqntY0wr4+sA6tJdNwSJ1BOx23n3ZZ+cESvHvvs7Hqf58E2WWY
         l5QUdD+J7FawILUIz7ALPpcPAmjZnBdlE8OHhx2NREOvMNyQZz0IJjf1iQl/ADBSBmKL
         yuxQ==
X-Gm-Message-State: AOAM532FQp5s8fvIxo/EcxdJbIzonLfJ1bStgqaRULu/OSmKGfX1cgaa
        aGcoYlC8Wbv3TkZhPstlQEg=
X-Google-Smtp-Source: ABdhPJwy4g0+lK9pCD7G28PPnjnNGwUoMEd3PCiJgG2utuq6afd8jkhssudczt5SI5OPCTgZzcLt+A==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr16356270wml.176.1600448699359;
        Fri, 18 Sep 2020 10:04:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:04:58 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 0/9] Document aiocb, sigevent, siginfo_t
Date:   Fri, 18 Sep 2020 19:04:34 +0200
Message-Id: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Here is a bigger patchset documenting a few types + a few fixes.
(apply after regmatch_t patches).

Cheers,

Alex


P.S.:  Eso es todo por hoy :)


Alejandro Colomar (9):
  system_data_types.7: ffix
  system_data_types.7: srcfix: Add FIXME note: Add descriptions
  system_data_types.7: Document sigevent
  sigevent.3: New link to new documented type in system_data_types(7)
  system_data_types.7: srcfix: cosmetic: Visually sparate types
  system_data_types.7: Document aiocb
  aiocb.3: New link to new documented type in system_data_types(7)
  system_data_types.7: Document siginfo_t
  siginfo_t.3: New link to new documented type in system_data_types(7)

 man3/aiocb.3             |   1 +
 man3/sigevent.3          |   1 +
 man3/siginfo_t.3         |   1 +
 man7/system_data_types.7 | 138 ++++++++++++++++++++++++++++++++++++---
 4 files changed, 133 insertions(+), 8 deletions(-)
 create mode 100644 man3/aiocb.3
 create mode 100644 man3/sigevent.3
 create mode 100644 man3/siginfo_t.3

-- 
2.28.0

