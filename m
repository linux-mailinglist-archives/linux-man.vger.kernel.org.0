Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E856E27D0
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 17:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjDNP7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Apr 2023 11:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbjDNP7p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Apr 2023 11:59:45 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0962901B
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 08:59:35 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id w24so8409486wra.10
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 08:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681487974; x=1684079974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UcLgdCJgU3BxKP9WYbwP7bI+2v6jMh5H0miuVlMF6RM=;
        b=LZ2TA2OQxi1d+ESuiFqFBwnGz3EF+/0OO4Bt4NTD5SoL7HHruFs8vG397P50Iang5S
         7lb70Kk47rh00QZAY0sCIYgh7Jd+oDohseiUDc0QC4GmCTpi8Nb1S0QJVV0MQmAFPnZb
         t4isiBZnZYqzZJRgY/p+P1ESfCv9B2tO2k/+is7LPzlQNuYonm+HIwc0LLKz9NoGzg6e
         fG98PPKQz1O8Xz3dQgGSVjhnqge0UFLq/Nv0EWxq7pR6kz5s6pxV/4FpSzuAT5aT2gll
         hmt4SFnrSWFx+IQqBkApx24S2MnKWIphXZjQs/vtP6aJMdG61a/DPicbgpAUX/oISMKs
         LuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681487974; x=1684079974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UcLgdCJgU3BxKP9WYbwP7bI+2v6jMh5H0miuVlMF6RM=;
        b=HKF2oMRi8yIuwwseWC/r0uLId2zMAhY7KAQC+tlbby8OkOk6eNh1MYwIrKbrSkhhfa
         no8NkwvWvfkYD7W0P9eu8tJIguDDn7EM7AKkl+PpXZhM1oh0wryr92/xh3jsikgaWv+S
         cTrZK/69OoqaY4OnMdIyQtdJD7AOdmD/ec5cquBIO4vWIRg0n+ohHGWCTVhqD0pvoJU5
         Kq1kpUFG+tQoysAkFOVyVmLE8p3NmcmN19iFlONEX2YAfhBT/QI4KTLLO623ksZZHrVS
         9LJOGsjz7J17EcpDzQJTE36RS9HM8j8UE6ptfGluI0XBToIFwaJkJLpgId3KP7TwLvkk
         Y78g==
X-Gm-Message-State: AAQBX9fs1nqJr1OuTGC4YZNTjdkcEhLfkD+3scHLhGU6hlxYGahCnyG5
        UaxlGSTAsZCreOu6E9YLrDE=
X-Google-Smtp-Source: AKy350Y+V4Q3GJ4BKnDKy2E47+qRz2y0dTyMf1Y2LZgG+epmD3KrBZqgnTFV3HLm5yd5pAsQumgUxQ==
X-Received: by 2002:a5d:6291:0:b0:2f4:215a:98c5 with SMTP id k17-20020a5d6291000000b002f4215a98c5mr4651857wru.70.1681487974135;
        Fri, 14 Apr 2023 08:59:34 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id z4-20020adfe544000000b002f6dafef040sm2084770wrm.12.2023.04.14.08.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 08:59:33 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v6 0/1] landlock.7: Explain best-effort fallback in example
Date:   Fri, 14 Apr 2023 17:59:25 +0200
Message-Id: <20230414155926.6937-1-gnoack3000@gmail.com>
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

Same patch as before, but the first two commits are already merged. :)
The only addition is a little remark in the example code to point out
that these values are hardcoded for brevity.

In the long run I would like to put these constants in a kernel uapi
header.  In the meanwhile, I think it's good to point it out
explicitly in the man page that this is just done like that to keep
the example short.

–Günther


Günther Noack (1):
  landlock.7: Explain the best-effort fallback mechanism in the example

 man7/landlock.7 | 70 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 66 insertions(+), 4 deletions(-)


base-commit: 6e502b913302d5ba4b70a2f3e6b3ff38748d2d0f
-- 
2.40.0

