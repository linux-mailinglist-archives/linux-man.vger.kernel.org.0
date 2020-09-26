Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68D4A279B2A
	for <lists+linux-man@lfdr.de>; Sat, 26 Sep 2020 19:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726210AbgIZRIi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Sep 2020 13:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726183AbgIZRIi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Sep 2020 13:08:38 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15993C0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 10:08:38 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z1so7291496wrt.3
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 10:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=esmDH0jsGZTcN0dLW/wD5WXEKkdmG1nju48i0WB+jTM=;
        b=AkxUgJEZCKe4XhUaCO0kWopcFeF1vGHJ2+KJedDJZJc1oiKdwZtPVQyaRE/e0arEks
         e5/3o2mGkHiSxvslrsDGV21dU/fumWe3kRir8C6gVkJomFh9QiQ+SsrEDWsJi7bYcng+
         QcPmm3ldFZjsBcqzbfIGwibaY3xrYGlkXXX4zvW2CytuX68gYaDaICr0bWmTNKss/5jC
         sVasKsgwhGtxmoo2O21nQf1VUKumbLPZw16XFhHA6wGv9RRftI8XwC1CMHgnJ5FKqr66
         ZhrFICubuvY4wOmx0G/fK0eB9OGo/NsPTcb718rdQ+Hy7/9SlPt9QRcjmFLuOL8VFqyA
         2PWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=esmDH0jsGZTcN0dLW/wD5WXEKkdmG1nju48i0WB+jTM=;
        b=nJ0IGvO91KJK8SWK4i7eQabcaZ5qc1CM8ricWBTxG74J2F/JADZXUgTIL/tSU06DO+
         yd+FgDDWSWbn2lfz66YFi8bmyBBBE5QUevVDKX3fEIlchReavvW673JBxENo00r+Jo0a
         JM8YnbAHaLRzmWf6wVf9GGPUnaELNFdn2w4lv7NWUE4bR/2DSDUE/Eubjk1yziM/oZlT
         +2RZ417o3Omyp7WL7sZ7MfbAFUjU8NN0yfIRXDnInh7FNbQIUBlauFqEJiwcdZteeUH1
         lzCCmhaJsP79y/EJh1TqH5FEz5peRFtFuBv/WEWeBOKGV1O4+RLPmrORIXXb/Av1FXaG
         OQQA==
X-Gm-Message-State: AOAM533286hqbyOmXxT/TbcWiOA70SGh9A2725Wqlj+aR3VeHL0YgCEv
        dYIsQf0By73OajBnAwsQa/g=
X-Google-Smtp-Source: ABdhPJyMiKzy/4YFGFdvc4CyltjY2+5Vo84PkxYr0hv6wYX1J0uSXq/x3Z6Twz6cRKXPZuFy3AK/6w==
X-Received: by 2002:adf:dd82:: with SMTP id x2mr10899341wrl.419.1601140116700;
        Sat, 26 Sep 2020 10:08:36 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id 63sm7514059wrh.71.2020.09.26.10.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 10:08:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: Add va_list
Date:   Sat, 26 Sep 2020 19:08:14 +0200
Message-Id: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index ae8fb6493..361e8d411 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1116,6 +1116,37 @@ See also:
 .BR getpwnam (2),
 .BR credentials (7)
 .RE
+.\"------------------------------------- va_list ----------------------/
+.TP
+.I va_list
+.RS
+.PP
+Include:
+.IR <stdarg> ;
+or
+.I <stdio.h>
+or
+.IR <wchar.h> .
+.PP
+Used by functions with a varying number of arguments of varying types.
+The function must declare an object of type
+.I va_list
+which is used by the macros
+.BR va_start (3),
+.BR va_arg (3),
+.BR va_copy (3)
+and
+.BR va_end (3)
+to traverse the list of arguments.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also:
+.BR va_start (3),
+.BR va_arg (3),
+.BR va_copy (3),
+.BR va_end (3)
+.RE
 .\"--------------------------------------------------------------------/
 .SH NOTES
 The structures described in this manual page shall contain,
-- 
2.28.0

