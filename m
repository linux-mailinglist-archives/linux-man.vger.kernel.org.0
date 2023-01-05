Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A8FD65F412
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 20:03:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234805AbjAETDo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 14:03:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235301AbjAETDW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 14:03:22 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459975F91A
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 11:03:21 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso2068754wmp.3
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 11:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NxPeAIxS09WE50B11Am9pyYt/NXTZqDeqCWqmVQsHN4=;
        b=QHuhx7+0oq/tnWOYMk9gwFP6AW3so/Vx87dbdRTEZBMpWZEbJOuLOlW0Ni3Pr7b2EY
         opoF6ydKFKB0FSH3hXMSH9w9VMUmjQybRX4IamDv682aJQ85VNF/0Okr3m4yEMrxafia
         JE8ZUfqUqNbh2McsxHz9Vqt4m0pI9XIGLmM3o6lUUxOa6smWXpmp9EZOpw4jjOBYycLY
         0Jz23nLt9rcXQXTAx/2TGBL8LoBXNtRHMoGyEScnqggggCz8zaXuuV1EHHRtNvTegP9n
         STeanbOuMccQRTleN13ncqFDp+SmRoCWm91kwW+Cpw0s2uCjS97neiJIzdrl1Mnwy7Jd
         ch8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxPeAIxS09WE50B11Am9pyYt/NXTZqDeqCWqmVQsHN4=;
        b=rZhtPDz+Z3tqIdMerocw8b/OTrhTekvq7BAO5McT5Tr9WZkqum/FbWKJWADwlr439q
         zmFzh/mjdoUYzuxHaG39M8o81O87O/WVzTxWNwoIlvpF/KqejWm9F88rQT+SWCCg398J
         bx5iWlZ4cQLc1L0yA9heNzXdenq1GoQJLsBg0e2qV6jrwvW2T5poL6P6XwzqBsov0bIo
         Y4PAQu5eGlojByTATBa3osfOQhJdBWKrT2waYrh42K0arhWj0DfY1QZdlQ310d/XyAZg
         QpPY32roanCSE2ph68wfT46BZfhkgJw/2iNg8p8wV0vtHm5bRbI5oVd1sssbKq556Kqo
         gWJQ==
X-Gm-Message-State: AFqh2kpnaw1kZoEyDhDIVGr/EQhp+TkThz623OgRegEsvtSsdzR6O3t+
        1IxVjJrxWlt8VaV2bVdrE/qMD7ts1Uk=
X-Google-Smtp-Source: AMrXdXtE0Ao6yg/3yO7aMGMuOGGrM/X1BkR1a5ud+FolA3zEwP7pcdDE1HRk/PRjwkvv87tX6kJZFw==
X-Received: by 2002:a7b:ce06:0:b0:3cf:a483:3100 with SMTP id m6-20020a7bce06000000b003cfa4833100mr37012012wmc.3.1672945400884;
        Thu, 05 Jan 2023 11:03:20 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id r7-20020a05600c458700b003c6b7f5567csm8837322wmo.0.2023.01.05.11.03.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 11:03:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>
Subject: [PATCH] memchr.3: Deprecate rawmemchr(3)
Date:   Thu,  5 Jan 2023 20:02:47 +0100
Message-Id: <20230105190246.17819-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
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

It is not optimized, and it calls either strlen(3) or memchr(3), so the
caller can do it directly, and it will be better.

Suggested-by: Wilco Dijkstra <Wilco.Dijkstra@arm.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/memchr.3 | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/man3/memchr.3 b/man3/memchr.3
index 68873964e..e03001bec 100644
--- a/man3/memchr.3
+++ b/man3/memchr.3
@@ -22,7 +22,8 @@ .SH SYNOPSIS
 .PP
 .BI "void *memchr(const void " s [. n "], int " c ", size_t " n );
 .BI "void *memrchr(const void " s [. n "], int " c ", size_t " n );
-.BI "void *rawmemchr(const void " s [. n "], int " c );
+.PP
+.BI "[[deprecated]] void *rawmemchr(const void " s [. n "], int " c );
 .fi
 .PP
 .RS -4
@@ -66,26 +67,21 @@ .SH DESCRIPTION
 The
 .BR rawmemchr ()
 function is similar to
-.BR memchr ():
-it assumes (i.e., the programmer knows for certain)
+.BR memchr (),
+but it assumes
+(i.e., the programmer knows for certain)
 that an instance of
 .I c
 lies somewhere in the memory area starting at the location pointed to by
-.IR s ,
-and so performs an optimized search for
-.I c
-(i.e., no use of a count argument to limit the range of the search).
+.IR s .
 If an instance of
 .I c
-is not found, the results are unpredictable.
-The following call is a fast means of locating a string's
-terminating null byte:
-.PP
-.in +4n
-.EX
-char *p = rawmemchr(s,\ \(aq\e0\(aq);
-.EE
-.in
+is not found, the behavior is undefined.
+Use either
+.BR strlen (3)
+or
+.BR memchr (3)
+instead.
 .SH RETURN VALUE
 The
 .BR memchr ()
-- 
2.39.0

