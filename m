Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 373CA5A9815
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 15:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233789AbiIANHH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 09:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233817AbiIANGp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 09:06:45 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BBB524BC7
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 06:01:14 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id m3-20020a05600c3b0300b003a5e0557150so3160285wms.0
        for <linux-man@vger.kernel.org>; Thu, 01 Sep 2022 06:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=w2nffweSMsVom4U/j8T76YKNuoRfhZShPRnvEq3TTwM=;
        b=oT0MKRUgpVbkkLypxfRZfk0446PkZCKw28Lx+s5aVCzgzCGTDBOm4vrxEwPKFBbA+C
         OD1jDObLhpXZJ3NZ9Wm+Z8N2NmWtZgZkW8p93YBsDHiTPjMz7MCOYD1ru9AXuuotFjpV
         hKefjpYVe1PaXT8dZaZqJS+TgMaYm+reNo0vVXdXqozePlBKimnL4YbIOGgUddK/OM94
         rRVdr1lA4R8PlwGjzZCFiIwZR0iEUFmV4v8SRNMIYgq7eOiJkVAi+nFtQ/vV7IKenETT
         lk3SENFOhQmd37hF5n+Z3493ZrQG7KFfkJo2+IwRXnGgYY6xPbnbDaLtQ/5gDvVJ9x3M
         blAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=w2nffweSMsVom4U/j8T76YKNuoRfhZShPRnvEq3TTwM=;
        b=F4VSbyqXwEVnVgVCLBJRieYRY05Ay5O4rCRspe6xeAWtlmzQDZFusqY4BXcsKQEXAb
         sT1YiTK7ocu1DAaouuppApEvObMr4hAWyUnU4P04yBiB2f7VumasTsdHzBHGwzfI7APQ
         DYxyT/Ur9SSn5pNLbW5NNJfw2x3AmBBvWF+ClAJYmeq9bcMfqIEDtVOK1yl36XotZE+b
         Q/RuWB4Zc4Opf6ZP6Zr+rfFGA1Avdh3KE/HwAsHWIkCIe3A1qK/grGu82aiH0g9FZbru
         CyfzIshFy632O1ucULh9RiaWbJ8VuIiSJTCRZp8bzrdORLGStplWeZfRDBwQr0lVYYX0
         sDqQ==
X-Gm-Message-State: ACgBeo2EKBT3K4cW9pgbs5VULx6i9oq3thlRTw3Pk7MJ1FOLSRk4FIpV
        casLIqbhhm0L+DGguJTMR5c=
X-Google-Smtp-Source: AA6agR71ha2+ySESJUGfKmHDilv7RxIfj8192JlzSVmOaoPa6EKs5yNizBzkkin6fHd0kaCV7GeB0Q==
X-Received: by 2002:a05:600c:198f:b0:3a6:2482:b2be with SMTP id t15-20020a05600c198f00b003a62482b2bemr5216432wmq.110.1662037209982;
        Thu, 01 Sep 2022 06:00:09 -0700 (PDT)
Received: from localhost (internet-185-112-167-43.cznet.cz. [185.112.167.43])
        by smtp.gmail.com with ESMTPSA id n26-20020a7bcbda000000b003a331c6bffdsm4876377wmi.47.2022.09.01.06.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 06:00:09 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] sysvipc.7: tfix
Date:   Thu,  1 Sep 2022 15:01:17 +0200
Message-Id: <20220901130117.369134-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/sysvipc.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/sysvipc.7 b/man7/sysvipc.7
index f9f1e0cf10c7..e64b8f83191f 100644
--- a/man7/sysvipc.7
+++ b/man7/sysvipc.7
@@ -12,7 +12,7 @@ message queues, semaphore, and shared memory.
 .\"
 .SS Message queues
 System V message queues allow data to be exchanged in units called messages.
-Each messages can have an associated priority,
+Each message can have an associated priority.
 POSIX message queues provide an alternative API for achieving the same result;
 see
 .BR mq_overview (7).

base-commit: 123df84eb1241c5ea2f086ccfc91e2a124e495ab
-- 
2.37.3

