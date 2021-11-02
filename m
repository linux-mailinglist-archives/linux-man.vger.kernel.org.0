Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E550544354D
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234990AbhKBSR4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSRz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:55 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B880FC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:20 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t30so9822691wra.10
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aj/hV383Dus88FEA9UPcwdw+2IFhHMDiSw2T7aK8RNs=;
        b=Y9oImU+2uq4EP8rY617LhSpCbqbM4SAd8MEjc8RMJFwg80AOCAvQf71j8pnFl3lFpY
         FBoCZQPcgImycYgU+8OWuX8tfDxBhhJO6lNAZ9j2oCwa7Q9G8J9ROeLlj/Lj/p2Gg416
         rTnCc77B+9zJUmNgL8LhQzeFPtUYoCDtyw5EpK+PhraVJ0VoltLk+8K/x5x9XhfvQXQl
         +LRCPaVwjQNaHp+MD+2SNSmRZL2p0LMNXfEd0b6fxFpZwyTIjsmB1mf/U9nBjh+6uxad
         D8ilNn75wWNCsGE03liuGzHwNgEUzlA8bbOZ7koeuOCi9FM7piT/b2aeijWOqVvRLhbJ
         If6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aj/hV383Dus88FEA9UPcwdw+2IFhHMDiSw2T7aK8RNs=;
        b=wtZ6SnG/1lbd1XB/LwBsXSqyHLsP9AuMiBShIwoKbYYdkmf7cqkAN6jAoogVNpX7jn
         4KQXiEun2S9Y04hHQ2VqGK6hE5UwwxH6hAQ+bg6ID1+mjBjVgcqxtPAtsqzNpqmK8a5X
         iOGisqodNZhjQnMHm2oNk9IwCF+09SJm5Bfr9cnI/ovqP0QGiYtLdwXFyQ9idWfisK5J
         NMQi0RAMB+YAsz1KoVBPmuChdgiKybOrrqHIlDaF58ZK1CSOpldFZIfOtJe3DUJUXG49
         nDFaPWOappiiS9DwgJRVMpWju5HYA4m5YHZC98EuF4k9Ndcz7anacaFuCbdNg60PyURv
         o70g==
X-Gm-Message-State: AOAM530IqzLYxx/GVw9/grXojFEmnOVJMvfRHhCOLgFxkhGpodX8tZqn
        0NzaMiyBFgFEvYMJrgdygFWPidYQElA=
X-Google-Smtp-Source: ABdhPJzgyAGEJsLT7/RCvJB5DAZHcTFFcA5XDCNVLk+Rk5XcvrsOgP91qBpNQDIF8t8I+UBDi5hkuQ==
X-Received: by 2002:a05:6000:1a86:: with SMTP id f6mr95139wry.230.1635876919293;
        Tue, 02 Nov 2021 11:15:19 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:18 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 17/37] double_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:34 +0100
Message-Id: <20211102181454.280919-18-alx.manpages@gmail.com>
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
 man3/double_t.3          | 42 +++++++++++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 42 ----------------------------------------
 2 files changed, 41 insertions(+), 43 deletions(-)

diff --git a/man3/double_t.3 b/man3/double_t.3
index db50c0f09..0043fb38b 100644
--- a/man3/double_t.3
+++ b/man3/double_t.3
@@ -1 +1,41 @@
-.so man7/system_data_types.7
+.TH DOUBLE_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+double_t \- most efficient floating types
+.SH SYNOPSIS
+.nf
+.B #include <math.h>
+.PP
+.BR typedef " /* ... */ " double_t;
+.fi
+.SH DESCRIPTION
+The implementation's most efficient floating type at least as wide as
+.IR double .
+Its type depends on the value of the macro
+.B FLT_EVAL_METHOD
+(defined in
+.IR <float.h> ):
+.TP
+0
+.I double_t
+is
+.IR double .
+.TP
+1
+.I double_t
+is
+.IR double .
+.TP
+2
+.I double_t
+is
+.IR "long double" .
+.PP
+For other values of
+.BR FLT_EVAL_METHOD ,
+the type of
+.I double_t
+is implementation-defined.
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR float_t (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 764027bbd..e847c2e64 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -59,48 +59,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- dev_t ------------------------/
 .\"------------------------------------- div_t ------------------------/
 .\"------------------------------------- double_t ---------------------/
-.TP
-.I double_t
-.RS
-.IR Include :
-.IR <math.h> .
-.PP
-The implementation's most efficient floating type at least as wide as
-.IR double .
-Its type depends on the value of the macro
-.B FLT_EVAL_METHOD
-(defined in
-.IR <float.h> ):
-.TP
-0
-.I double_t
-is
-.IR double .
-.TP
-1
-.I double_t
-is
-.IR double .
-.TP
-2
-.I double_t
-is
-.IR "long double" .
-.PP
-For other values of
-.BR FLT_EVAL_METHOD ,
-the type of
-.I double_t
-is implementation-defined.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-the
-.I float_t
-type in this page.
-.RE
 .\"------------------------------------- fd_set -----------------------/
 .TP
 .I fd_set
-- 
2.33.1

