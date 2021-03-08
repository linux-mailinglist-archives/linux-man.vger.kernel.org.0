Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0FD03316CA
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbhCHSys (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbhCHSyb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:31 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD11C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:31 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id w7so133220wmb.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zFMszwXfmDYjnjHVjEHRpFT+uOJvHzDiuMD4xKbmO+s=;
        b=DTkTRE+5ycAFTeMcDkEhs7fI1y6QP2Nl2uzrYDcCe5cM2rcB8UzsxkWZDa8Oh8LLTH
         UUhSB20ivrZBh0d6DQNWk0TFpEacyh0XSh4E92NLR5xMLNA8PenQ57w8bzhBH07QrfzE
         Mt+Y9H84A4eqs1XlXFxklgtauGdc+SgwM9M2P5uP0gvlvTczyXjWtWBuIF7X7jLyIVQ1
         +EBKU0n2woYnUtpeX4W+lI2LbCjoVTXvX/j0+KCS4QZScRGdOUDtmYGGZS6DZ+CcJz/c
         kEBRTuXAoAajABKytKWKfZe7frvTRKejO9fdNR4sajMDOtrmRjTrAO9Qzwhe9/xpv3F8
         NE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zFMszwXfmDYjnjHVjEHRpFT+uOJvHzDiuMD4xKbmO+s=;
        b=F7jy84OuWv3OzHod/dP3Nj/HaOlwlr4a7aoFaxFVlVokEDQ4gZ5C+unApSSuNbCY4O
         aIGY3fLH4kqs/roeA+h2n1fBCIKVEdM5lS9EcQ6yhDbTIN8lF9WG2FkGRbFQU+l2Bkyq
         SbCuuIK2J3WoZDkzWdss2uCmLt9yK+Qgmn6dggF+C4wJ2IEcIRRYBGLmkdrGHU3l/qgs
         J6nh5mbMxxtTOmFbD4vN+r3sfYrqoeGXy7L5/glOsiuF7nkD6S2yMIxF7zTcwL2M/vQw
         ZTomXqwK0yXiK4TI5bsQfSuGTRphu/CRd3WmB4DEx9gvt5DBaQDq6MfiHKXFQICnMbQ0
         NmeA==
X-Gm-Message-State: AOAM5301Die6NL1BPsX5LgXdQD8DNuEqKA1HE4Bq0pgKN3KrZ+TJB5mP
        gN0q0J1hOQP6ILxqeoeP22Y=
X-Google-Smtp-Source: ABdhPJw4+3PadQm3orzqO7dDgQTS910b6opM79TEyfjTqn7LlfTvMIinTctB9szhfmdtOggRvtOTsg==
X-Received: by 2002:a05:600c:2301:: with SMTP id 1mr239274wmo.36.1615229670366;
        Mon, 08 Mar 2021 10:54:30 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:30 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 22/23] scandir.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:31 +0100
Message-Id: <20210308185331.242176-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify scandir() to use 'restrict'.
However, glibc uses 'restrict'.
Users might be surprised by this!  Let's use it here too!

.../glibc$ grep_glibc_prototype scandir
dirent/dirent.h:255:
extern int scandir (const char *__restrict __dir,
		    struct dirent ***__restrict __namelist,
		    int (*__selector) (const struct dirent *),
		    int (*__cmp) (const struct dirent **,
				  const struct dirent **))
     __nonnull ((1, 2));
.../glibc$

Cc: glibc <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/scandir.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/scandir.3 b/man3/scandir.3
index 83a5eea7d..262e125c1 100644
--- a/man3/scandir.3
+++ b/man3/scandir.3
@@ -67,7 +67,7 @@ a directory for matching entries
 .nf
 .B #include <dirent.h>
 .PP
-.BI "int scandir(const char *" dirp ", struct dirent ***" namelist ,
+.BI "int scandir(const char *restrict " dirp ", struct dirent ***restrict " namelist ,
 .BI "            int (*" filter ")(const struct dirent *),"
 .BI "            int (*" compar ")(const struct dirent **,"
 .BR "                          const struct dirent **));"
-- 
2.30.1

