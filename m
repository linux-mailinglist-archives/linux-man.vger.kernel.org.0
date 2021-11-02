Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 867DB443548
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234961AbhKBSRt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234973AbhKBSRs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:48 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCC8C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:12 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id y196so32110wmc.3
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=STEC5CVMqfVqW3Z+CLG5HGebWU0BUvUSw2H1DCrjuL0=;
        b=VSgyitui6xL2sldA3QO8fyAofDgFg19NGyhUHezqaXwowauGgO2Hfz+hEiXa3cIMQ3
         iFulhBdf+ynW4nXJXik7XQ/sahxRxiqhzS80C28xnIhCQOAR4CJgg3kKQeVZDv1I0D3X
         suDwlby6pR128QnwALfDkhC3uy7S7JbxZ1WxT7bVE5KtngjGCB7RUeNvcdYcCyNwuxZa
         ICt6/vLnG6MDNLDovzKkYz9QGBtSQx/7hxrlk4i+qyQHvOs+LhUn8/YsJwF6suRQkd+J
         xCTspL884333pxIIQfTLn2nzUZHWAj5GC3vWDDk9MuxWD1ocp4fIc/Z6pTtTlxpgIlAq
         EBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=STEC5CVMqfVqW3Z+CLG5HGebWU0BUvUSw2H1DCrjuL0=;
        b=MO5dUYvM7jB4k/AsBdsisWuPGg7nAijLdEG3KSkgS8+RpG/QyoRjXxt5sUt6Q+cW+3
         L+WIjn+9VlnLegOvu0mLtcDCTPzR/pMdI8uG9eUA1edPoGtKF1E00i9f4sTWyU56Hp/f
         jHuA5ltMMif5TTvfDTnbdzldaUFPQ603nb/LdFRV8V9gL03LcCJwsJVzrvVwErQeCMHr
         yLm0sgqB0/sVKzx7spGPCLn/c1/hS3BE+yhTetDiy3wwhwQyzSBaRjU8sfC2L7i3amg8
         rnVOwTe5eTaqs1T9XiJnV4C4gja7Iz2k1Gmjfsy9XpwUmNUs1WTSI5sx49yfEWYhPM+4
         vKtg==
X-Gm-Message-State: AOAM530UWp5mjnVscJkAiHTvJuZpoa88klbjBKK9JgQp0pJCd0h6Kxk4
        bYKZRZTxepKEeiZN8sVQmK2xXCC0y7Q=
X-Google-Smtp-Source: ABdhPJzGjh3hPXXOGPC0hswU+IyO2sCvxYmY3B013GB2L4q6Glu3KpCpu2FBweL0tF5UqQBQ6J43AQ==
X-Received: by 2002:a1c:2b81:: with SMTP id r123mr9379497wmr.136.1635876911378;
        Tue, 02 Nov 2021 11:15:11 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 12/37] cc_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:29 +0100
Message-Id: <20211102181454.280919-13-alx.manpages@gmail.com>
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
 man3/cc_t.3              | 18 +++++++++++++++++-
 man7/system_data_types.7 | 16 ----------------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/cc_t.3 b/man3/cc_t.3
index db50c0f09..de7d7cdb9 100644
--- a/man3/cc_t.3
+++ b/man3/cc_t.3
@@ -1 +1,17 @@
-.so man7/system_data_types.7
+.TH CC_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+cc_t \- terminal special characters
+.SH SYNOPSIS
+.nf
+.B #include <termios.h>
+.PP
+.BR typedef " /* ... */ " cc_t;
+.fi
+.SH DESCRIPTION
+Used for terminal special characters.
+According to POSIX,
+it shall be an unsigned integer type.
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR termios (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6a0029c85..4702f7a67 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -54,22 +54,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- blkcnt_t ---------------------/
 .\"------------------------------------- blksize_t --------------------/
 .\"------------------------------------- cc_t -------------------------/
-.TP
-.I cc_t
-.RS
-.IR Include :
-.IR <termios.h> .
-.PP
-Used for terminal special characters.
-According to POSIX,
-it shall be an unsigned integer type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR termios (3)
-.RE
 .\"------------------------------------- clock_t ----------------------/
 .TP
 .I clock_t
-- 
2.33.1

