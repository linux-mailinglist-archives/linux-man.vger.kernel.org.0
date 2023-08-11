Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE2D778675
	for <lists+linux-man@lfdr.de>; Fri, 11 Aug 2023 06:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjHKEYA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 00:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjHKEX7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 00:23:59 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9180C2130
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 21:23:58 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686bea20652so1439938b3a.1
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 21:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691727838; x=1692332638;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+16pa8s8tazuL7xzLm3ooVGpiKmu9XGmlBrdrH8xQEo=;
        b=EnhkLGbpLOctjlKY9FTIh2xRmJsWy7gSEILbEqvF67PbW23hoBtVBycveKDHyhqJQz
         KYJqLgxarZlAmymDCKW+c2iQBQicT37KSLmUd8FotAE3ZunJfcQ09nabj4DCn4D/cqCt
         78mfBmPpnD7rq0BulxHveP1GUf3uVHSKYCSW5xy2CVga8yFAapB3iskrlUBfRYe1Sqzn
         gWmUpLW3l3D+14lE+ivwrCA/THhH0RkAqAdgW36+1YaLvfqVFH4nI1zBf9C2/b6C/w9Y
         X6xqb0wMlWdcdsWJvep/xtXLlxtcaOlfvaDFXCbKoh78xs1zzzH1AGIW5Thc8pgd6K/U
         x2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691727838; x=1692332638;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+16pa8s8tazuL7xzLm3ooVGpiKmu9XGmlBrdrH8xQEo=;
        b=OG8RWgrinRXwuLpDB6EkqlZbEgDn1B/86cP8VgmxLT94Asjgep7jedzW+nfIyZiIX5
         HFsUWewH8yX1uIxVBHhhdIK5BIoZO8KQULOoVBWfKNZOJ7hI+0kFcTROBtZ0fb5ZO8rB
         AK7KbRTmjwTQSNFc6O6vH7yfjo7IqdImTgpkW2DBDsEWIn2xaRimIS0z+8F0KxKiFdt5
         THr3DqDKUjZE7SY1tLvQiX+nq3/yBfM3yvIOX1DJbZCl2JavSY7+ovA3C184iVnLcy9u
         Aq0ZMzFp8OWzKslfRvWXnKWj5n8nZ1sIDEFIVqjfYizlglD7droVYrcfc5kRRn7kMc8+
         dBCw==
X-Gm-Message-State: AOJu0YzFUIIsPN3quSmM5/B9tB2RTOyjK1m9XgMyAzoGoP4F0sYpNIQp
        2nQGFbKl5roXzROVLXt713E8GS6JcYc=
X-Google-Smtp-Source: AGHT+IFJ0BOfqIwX2rCI7iYONJocIHsa043ZqB16iPlWiSaRp9W9btUlPTAqoP5LRX7GFPnJBsdpeg==
X-Received: by 2002:a05:6a00:3915:b0:686:2526:ee70 with SMTP id fh21-20020a056a00391500b006862526ee70mr881156pfb.14.1691727837927;
        Thu, 10 Aug 2023 21:23:57 -0700 (PDT)
Received: from THE-ENGINE.localdomain ([122.171.21.76])
        by smtp.gmail.com with ESMTPSA id m10-20020aa7900a000000b0064fd4a6b306sm2337255pfo.76.2023.08.10.21.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 21:23:57 -0700 (PDT)
From:   Sambit Nayak <sambitnayak@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Sambit Nayak <sambitnayak@gmail.com>
Subject: [PATCH] clone.2: tfix: spurious comma
Date:   Fri, 11 Aug 2023 09:53:37 +0530
Message-Id: <20230811042337.14650-1-sambitnayak@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I spotted a spurious comma when reading this man page, hence I'm
suggesting this fix.


Signed-off-by: Sambit Nayak <sambitnayak@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index 4c5b4ac6b..b91b71831 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -111,7 +111,7 @@ The newer
 system call.
 .PP
 In the remainder of this page, the terminology "the clone call" is used
-when noting details that apply to all of these interfaces,
+when noting details that apply to all of these interfaces.
 .\"
 .SS The clone() wrapper function
 When the child process is created with the
-- 
2.25.1

