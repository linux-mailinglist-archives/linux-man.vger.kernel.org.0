Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 089CB33805A
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbhCKWeZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbhCKWd4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:56 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0389FC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:56 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 124-20020a1c00820000b029010b871409cfso14642429wma.4
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v2H0FoOqFMg9pE6oLiTZiZNL3uU867k+8ig4RLClGTk=;
        b=uQSZfWt+/4jXeTiS/qjHqID1Xq1aefff0EAjquhDz+4ICyUSt5FrkH79b7tE+wxlfR
         V+Y0CVJghXMLADn90X0LtB9ilL9+Ink4mSVPjfSw0LogY+XIC86NLs2cseOLsuLzUNNS
         u5z+rOzl4obV7fVJikYmeSLna1yqNHKnH5ahOM1oujc+Ah5mYw7qFqv0T0PCnMElebBb
         64tVeyF50yL3qgfdMDSuObiOUMFwtIkdiYWRpCDvIbS71qZXe9pSoq+XYJaRBJ2JuFN6
         XKmbZHDazelF/PN/FxI5jUOaMsebNuKVkYfbc4h0CxHr/mi3Z1x+1x8pIWQ3lV/Qv48U
         vXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v2H0FoOqFMg9pE6oLiTZiZNL3uU867k+8ig4RLClGTk=;
        b=Qw0VLqxFxkU25YOXaJQXEKD7MJ6K/f/dQbpQOuC+F1FaZO8nz5MBtbhwmw7i0iuYmq
         gVYtrgx1CA2lRk5WuAgmsOj06dCXuK1gfcncuNSOkZdM961HulaLperyKlMDOBQNJxOw
         E+S1Q5j/tK4UY37+NujHGWqNmPdZC+dxDKViyP/DoBuQDF+/aeviSGRngEQnmjY7WyrU
         UWLLaRqnrVAIdfxrTuYMlLgHDXB4Zvw5XNQWk7kqLp31NKuEmGX7ubR8Fo/71d1HcY9H
         XDYxytvlpsXZfUaHGvXnT56BwbiD+oiUy9xHHQ1gbGJH5pXkQSn0Vzjhvuex8fxPhNzC
         p5Ig==
X-Gm-Message-State: AOAM531mlaZvlh8hcQ8z9VC+Zuh60kK7hzGtDdQfTcGEhr5iBt3YN1jS
        AT25NZN/AJdGTctn6qKMANA=
X-Google-Smtp-Source: ABdhPJylD20zncGwDcfmY9o5si4kN//nbQNUdUaRZ66DxGHOUL6qTErVrYDjUIQY9aJI2FJ8QK5BXw==
X-Received: by 2002:a1c:f614:: with SMTP id w20mr10021963wmc.70.1615502034823;
        Thu, 11 Mar 2021 14:33:54 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:54 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/17] wmemcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:29 +0100
Message-Id: <20210311223330.722437-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wmemcpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype wmemcpy
wcsmbs/wchar.h:262:
extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
			 const wchar_t *__restrict __s2, size_t __n) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wmemcpy.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/wmemcpy.3 b/man3/wmemcpy.3
index 692754d71..343af42a9 100644
--- a/man3/wmemcpy.3
+++ b/man3/wmemcpy.3
@@ -20,7 +20,9 @@ wmemcpy \- copy an array of wide-characters
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wmemcpy(wchar_t *" dest ", const wchar_t *" src ", size_t " n );
+.BI "wchar_t *wmemcpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src ,
+.BI "                 size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

