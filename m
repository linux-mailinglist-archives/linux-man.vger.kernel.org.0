Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A43C381A72
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234379AbhEOSV4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234387AbhEOSVz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:55 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C0A4C06174A
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:42 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s8so2251327wrw.10
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ru7UQeqDR511MHACtZlVJdwfxchIFbpm00vbtUn/YFk=;
        b=Z/emX7bA1Ik7cbZcymxoyGpCo6dcXkdj8ntNVdxI6q2BDwv7lXG/j3Wyyz/fuKxsXF
         GdF8WLCEYhWu4AcOClND4cPkj4jfkBm95VD8XuH7FhmKBaAHz1LlR2kQ3vO4Uh6XwzaM
         sKgE9xNF0amL0g6HTmzobbfZdw4zNIzm1EO/GltGH3HJQHnwiQQsPwxp4rZZNOmpUzeR
         KygDvjZzBFhRsl8rPCKQx7SRQGKiR06TmD1HcIFqtUh133Cy2s8+4vodpQvYuoN/Qm16
         HTR60Ei2J4rKc7MaL2kzuofSROuizstDn47DQQR27jXVfQaFA0+uJvjusCQd1AjG5szM
         DfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ru7UQeqDR511MHACtZlVJdwfxchIFbpm00vbtUn/YFk=;
        b=UhXrdZMfiWF9igw9Nzy0UAO5sbbZ/cqag8P+i3DF0KAbWjE46rpyKkUc5N/Rvo/DIa
         xST1bGQNNqikpBop6Ezy6C78ZGet2jmg7sc10CRLJhEYFaY7+jCum2HPpgTYOXtx4diD
         hDEbauTPmr5cGMUxrRNsoqZBVWpUrWTR7PcvM4j2RpBcQilLj+Cpfy7wreej9pGj1cJi
         6S5yo+GxxEdWosSmgcFUeQRbvwlBuuzaTp4g5dwOdOmVR2MgkhF0jXI903+xWfZfUZCL
         pbFZIVQOJxbrjwFwoqhN0jUWtFKp0HpPI+R9Id45vUyvd/1EhzaWP2h8EhVZTy5BRChl
         deYw==
X-Gm-Message-State: AOAM531EJirRogGUECVOeiQ02KWlrf7Zy++prrcgcMnVmBioeggPWCpJ
        X45euqdIj3pedWqTdb1Z9YWx+v8e0Xf64w==
X-Google-Smtp-Source: ABdhPJyQW1YL79AjFbHaade0mHhOFEoCsurJg/F7HPcMzWlrqg4CK2FaPcEO8FZwjKUHOS5JSY5IJg==
X-Received: by 2002:a5d:6484:: with SMTP id o4mr63748936wri.8.1621102840886;
        Sat, 15 May 2021 11:20:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Eugene Syromyatnikov <evgsyr@gmail.com>,
        QingFeng Hao <haoqf@linux.vnet.ibm.com>
Subject: [PATCH 6/8] s390_sthyi.2: Replace numeric constant by its name (macro)
Date:   Sat, 15 May 2021 20:20:26 +0200
Message-Id: <20210515182027.186403-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: QingFeng Hao <haoqf@linux.vnet.ibm.com>
---
 man2/s390_sthyi.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
index d1abb17a4..acba43a20 100644
--- a/man2/s390_sthyi.2
+++ b/man2/s390_sthyi.2
@@ -27,6 +27,7 @@
 s390_sthyi \- emulate STHYI instruction
 .SH SYNOPSIS
 .nf
+.BR "#include <asm/sthyi.h>" "        /* Definition of " STHYI_* " constants */"
 .B #include <asm/unistd.h>
 .PP
 .BI "int s390_sthyi(unsigned long " function_code ", void *" resp_buffer ","
@@ -49,7 +50,7 @@ The
 argument indicates which function to perform.
 The following code(s) are supported:
 .TP
-0
+.B STHYI_FC_CP_IFL_CAP
 Return CP (Central Processor) and IFL (Integrated Facility for Linux)
 capacity information.
 .PP
@@ -58,7 +59,9 @@ The
 argument specifies the address of a response buffer.
 When the
 .I function_code
-is 0, the buffer must be one page (4K) in size.
+is
+.BR STHYI_FC_CP_IFL_CAP ,
+the buffer must be one page (4K) in size.
 If the system call returns 0,
 the response buffer will be filled with CPU capacity information.
 Otherwise, the response buffer's content is unchanged.
-- 
2.31.1

