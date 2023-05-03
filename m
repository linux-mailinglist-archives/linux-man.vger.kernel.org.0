Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA3646F5C73
	for <lists+linux-man@lfdr.de>; Wed,  3 May 2023 19:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbjECREc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 May 2023 13:04:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbjECREa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 May 2023 13:04:30 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6956A72A6
        for <linux-man@vger.kernel.org>; Wed,  3 May 2023 10:04:01 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f4000ec71dso5587845e9.2
        for <linux-man@vger.kernel.org>; Wed, 03 May 2023 10:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683133439; x=1685725439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abeTxxjCJfY+J3CBEv9PqACPklWq0pPaUNwDMt9RVTI=;
        b=AAAKl3RpJWReo4xHa8AOZWmpjm0icEKjnpLK6fB+iZPAw8qz+Yf1YZj3ioPbyEA8HJ
         bBIfIr570Bl4PNvRyxDi9TE+AHxigx+Y1uQYH9NC5DB6S5QCv1UoK4SlJRk3gh6d6o1A
         6YMETQFDHjwuOlgKRZosHOOECROHHGK8S6Y37BDCxb7c4e+aJnFRlvL1lEOEFx8YxKYJ
         AvK4/F2CqNQoJUDPNbzxOplg8YOkY8BagHkde/DXHvuMQLH3neOQLbxcVmZGiIGJjxz/
         mAlbULsPYNEcENQrazDNQMkmdKYdoqrf9m6Al+JkvMju8YhRrHLZClhxF89KBlhpxH+Y
         0vsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683133439; x=1685725439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abeTxxjCJfY+J3CBEv9PqACPklWq0pPaUNwDMt9RVTI=;
        b=JBOQSV7X9Qanva5lL+XWdGemhu/9lONLyf+SDWPX9g7Rv+sdqcJ8FgWXLHojNI/ohw
         aJuOdkpzY4ENfe2VVo52MzTqALl4PNwMTyWVR/9WaXPj7XIAO2aBD4DBfVN9kgq1oLGc
         Z4vIVpxRWzXmL25zbhFidKgo7hWWu3O52Mky2cz6HvFdwNcnxSlNcRT56k7IRBDkAWE7
         5/L3PiArtkARJEnFB0n81H6rKhdIBdbAWYY6puD4cIiLyNnMcFDSRIdpcXSyBGvelOPq
         ldNyJ7e9ooIdXNMtGrlAlzzHpjqwYME6cM5VE3jZFLlsqUKo/c3+rAwvON1bA22u+XXP
         3ZHw==
X-Gm-Message-State: AC+VfDxCBjltJtOPSeXgfC1kbEAGO3yTwHKaQS+2FqfTsHGuEha2bMu5
        +vkSBB7eFNpI9aRgKCplZNPzKmBt6i8=
X-Google-Smtp-Source: ACHHUZ5bt7LyKeI3wxNY1d070GAJqqUgpa7movGC5Pc5VBUrLG/KFK6hjIMeTI0FfB5vB9vQ59YOkA==
X-Received: by 2002:a7b:c444:0:b0:3f3:fe82:ee8e with SMTP id l4-20020a7bc444000000b003f3fe82ee8emr1582001wmi.40.1683133439045;
        Wed, 03 May 2023 10:03:59 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b003f193d7c6b7sm2376091wme.41.2023.05.03.10.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 10:03:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, a.clayton@nginx.com
Cc:     Alejandro Colomar <alx@kernel.org>, andrew@digital-domain.net,
        Alejandro Colomar <alx@nginx.com>
Subject: [PATCH 3/3] sched_yield.2: Rename NOTES to CAVEATS, and reorder contents
Date:   Wed,  3 May 2023 19:03:53 +0200
Message-Id: <20230503170353.25998-4-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230503170353.25998-1-alx@kernel.org>
References: <20230503170353.25998-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Put the last paragraph at the top of the CAVEATS section, since it's
probably the most important for readers.  This system call is likely not
the right one for most programs; let's discourage its use.

Link: <https://www.realworldtech.com/forum/?threadid=189711&curpostid=189752>
Cc: Andrew Clayton <a.clayton@nginx.com>
Signed-off-by: Alejandro Colomar <alx@nginx.com>
---
 man2/sched_yield.2 | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/man2/sched_yield.2 b/man2/sched_yield.2
index 5e5b45a48..4eb858018 100644
--- a/man2/sched_yield.2
+++ b/man2/sched_yield.2
@@ -48,7 +48,18 @@ .SH HISTORY
 .B _POSIX_PRIORITY_SCHEDULING
 in
 .IR <unistd.h> .
-.SH NOTES
+.SH CAVEATS
+.BR sched_yield ()
+is intended for use with real-time scheduling policies (i.e.,
+.B SCHED_FIFO
+or
+.BR SCHED_RR ).
+Use of
+.BR sched_yield ()
+with nondeterministic scheduling policies such as
+.B SCHED_OTHER
+is unspecified and very likely means your application design is broken.
+.PP
 If the calling thread is the only thread in the highest
 priority list at that time,
 it will continue to run after a call to
@@ -61,16 +72,5 @@ .SH NOTES
 schedulable threads are still held by the caller),
 since doing so will result in unnecessary context switches,
 which will degrade system performance.
-.PP
-.BR sched_yield ()
-is intended for use with real-time scheduling policies (i.e.,
-.B SCHED_FIFO
-or
-.BR SCHED_RR ).
-Use of
-.BR sched_yield ()
-with nondeterministic scheduling policies such as
-.B SCHED_OTHER
-is unspecified and very likely means your application design is broken.
 .SH SEE ALSO
 .BR sched (7)
-- 
2.40.1

