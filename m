Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97214443549
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234973AbhKBSRv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234974AbhKBSRt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:49 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EECFC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:14 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b2-20020a1c8002000000b0032fb900951eso2674876wmd.4
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bb/+W6653b7ZV52CA4/+uLH/zBk7J364urxxon+D260=;
        b=TtA6APxPTXBb7uHkh40KD4uMqc5ykOjW9h11Z+RC0DQPA++oPda42mJ5kcLKhRkoFn
         dxb4gZBmK+83G4K4Xag4YPSQxRBV0I1CUjsz2ZKjNMcLqr+ddJCOINw1IR48Hp26wzid
         a2hisctaofj6XElZm8fhuKcgBirbgoc/4xgDmL4hYFJJlDe+m4lh3/3RcBNnMTi/LO8D
         rj8NPvUV2PuZ2FdAvCIjXdO3UlS40SJ3b9xSH1Tdwey/7KInDWJuRZ7GqmOx59h3BGfp
         ch+O7JJqrm+Vf2Yy4o+8CO2a5+Tu1lJLk5Mb2KE9xdn02teBT7NYR4mAnmrGrpBEihXA
         DTEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bb/+W6653b7ZV52CA4/+uLH/zBk7J364urxxon+D260=;
        b=QPdI4Ht2pyXzjNFMRKfPukeBjtWKiFeTCy0cYnEkvr5NjiXJdInEooWWwS1T61n9du
         iwQwfXuI8enoU89H5tmVtkaYolDWq38r6Q9qu0EdsKNKhSH+eXn7k3iSl0uQ/KCPahQ0
         w4mj9ySgaWxyESWhF2/YyrYNvwlPDv8qriO8JZUmP3vuziCCu+3ZpStqOFr/v2HhqYnC
         qQH5eIOgjAIRuw7kUwBFWPnHxVy4Hj4LrCYGMKgrcnZ6YE3Xyo8TCIPa7ODPkzzOWioy
         ow9nskjadNg1czJusnbhfbVjf5ULS839aAyjjwb/mprRrdvdranfb5nQyrADvm0ukbTs
         RqpA==
X-Gm-Message-State: AOAM532WWUpsXnS5BDrgRFomyF4grcxGtM2it/u7Tk9Yjmtpnc1F1nd1
        33DiNrewypnIZCrP4mr7NPg=
X-Google-Smtp-Source: ABdhPJz/0hdm41ntVpohmTTmBpQeHeIkXGAbKqEkOHI6BxDvD7JiS1bWBUwqgUcxNQtsYzpXnq2VMA==
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr8845679wml.100.1635876913048;
        Tue, 02 Nov 2021 11:15:13 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 13/37] clock_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:30 +0100
Message-Id: <20211102181454.280919-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/clock_t.3           | 27 ++++++++++++++++++++++++++-
 man7/system_data_types.7 | 24 ------------------------
 2 files changed, 26 insertions(+), 25 deletions(-)

diff --git a/man3/clock_t.3 b/man3/clock_t.3
index db50c0f09..e842b4411 100644
--- a/man3/clock_t.3
+++ b/man3/clock_t.3
@@ -1 +1,26 @@
-.so man7/system_data_types.7
+.TH CLOCK_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+clock_t \- system time
+.SH SYNOPSIS
+.nf
+.B #include <time.h>
+.PP
+.BR typedef " /* ... */ " clock_t;
+.fi
+.SH DESCRIPTION
+Used for system time in clock ticks or
+.B CLOCKS_PER_SEC
+(defined in
+.IR <time.h> ).
+According to POSIX,
+it shall be an integer type or a real-floating type.
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH NOTES
+The following headers also provide this type:
+.I <sys/types.h>
+and
+.IR <sys/time.h> .
+.SH SEE ALSO
+.BR times (2),
+.BR clock (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4702f7a67..e320c44ca 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -55,30 +55,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- blksize_t --------------------/
 .\"------------------------------------- cc_t -------------------------/
 .\"------------------------------------- clock_t ----------------------/
-.TP
-.I clock_t
-.RS
-.IR Include :
-.I <time.h>
-or
-.IR <sys/types.h> .
-Alternatively,
-.IR <sys/time.h> .
-.PP
-Used for system time in clock ticks or
-.B CLOCKS_PER_SEC
-(defined in
-.IR <time.h> ).
-According to POSIX,
-it shall be an integer type or a real-floating type.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR times (2),
-.BR clock (3)
-.RE
 .\"------------------------------------- clockid_t --------------------/
 .TP
 .I clockid_t
-- 
2.33.1

