Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 456D43778CC
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230030AbhEIVpM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhEIVpK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:10 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE2AC061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:06 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id x5so14537000wrv.13
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UBA35pCYTIZooYmvyxJFj2810HACN+Zr4LqmsKCkLGg=;
        b=czyuRs0d8J1q6JMDC+wS6iwEW6VmKeo46vK7sTyi2wxSrbDq0qfEAfSUiwMZ7Zkqmz
         V1PEb69cpQTSY7r6FBoOqwe/OUxxdgAISO2rWBADdN66orGYmgWF99kRkOduJT2lP1RU
         Sn9gHrltRTJ8tZagAgQjqtPQr8iIAlvSUsLC9dWJevqclVRqeFFLHx8rxw83LAXHnR3I
         D9OrcDjumpup5S0yTFUYhsyyZ2+LdCC8uX3TWPPf8oB9+TAacJu8aguYLbbxoVPm+eLx
         4+ZzBoGWWS8yoyduxm/NYy8u4nrzN5EKzm3f/NITumhKcusy5q+9N9fpqySNbLXfPqUn
         Aw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UBA35pCYTIZooYmvyxJFj2810HACN+Zr4LqmsKCkLGg=;
        b=iLNX2J8OYJ2RXXxXfuher6ffgvvyMTWTAhH63KAvazRpRnj0099UPqEF8yRrQCgTzL
         jss7tSEWo+ryV8rB/BD3ipEN616k2AlJ3mKEafWrUHhNpCCIYCnB7TE7U6QQ9zsMIyPm
         GStz2d4tea/Y9L3R5EoQ+iKJlxkAjfymrgPRVga3Sgqo/8zh7uhTHYFZQjJY9B/LX0g0
         ACSr0kgNQvOG3zpDzCrF/JbGkuYr/kkUoOOQ7EX7SxiP5iwyJEttvnerugQEdjsXUVOH
         kpCSqf/TFfcycX358u+Z2+UB+/TBJwSykWLzsWGMgVdkImrv0xVK0wcgWSu8CGEKEOpL
         jN0w==
X-Gm-Message-State: AOAM530U5DOH/uvTxOL3IrI1BFlYfB+592bJFVTt6yIm7AiXWxr35+bP
        1ay/D7YxK/USWUanvhbzgtE=
X-Google-Smtp-Source: ABdhPJy3vEnd15xDC7+121TpnGovJlze0OcZ8cDaMEHjiD5O5p8m4Jcy2iJ/ttAffHygEMA4LGnQJA==
X-Received: by 2002:adf:9069:: with SMTP id h96mr26441884wrh.322.1620596645692;
        Sun, 09 May 2021 14:44:05 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] sched_get_priority_max.2, open_memstream.3: tfix
Date:   Sun,  9 May 2021 23:39:07 +0200
Message-Id: <20210509213930.94120-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sched_get_priority_max.2 | 2 +-
 man3/open_memstream.3         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/sched_get_priority_max.2 b/man2/sched_get_priority_max.2
index 8a857f6e7..2afd88681 100644
--- a/man2/sched_get_priority_max.2
+++ b/man2/sched_get_priority_max.2
@@ -80,7 +80,7 @@ thus it is a good idea for portable applications to use a virtual
 priority range and map it to the interval given by
 .BR sched_get_priority_max ()
 and
-.BR sched_get_priority_min
+.BR sched_get_priority_min ()
 POSIX.1 requires
 .\" POSIX.1-2001, POSIX.1-2008 (XBD 2.8.4)
 a spread of at least 32 between the maximum and the minimum values for
diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
index ba6cbfa75..ea1489cb8 100644
--- a/man3/open_memstream.3
+++ b/man3/open_memstream.3
@@ -110,7 +110,7 @@ l l l.
 Interface	Attribute	Value
 T{
 .BR open_memstream (),
-.BR open_wmemstream
+.BR open_wmemstream ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
-- 
2.31.1

