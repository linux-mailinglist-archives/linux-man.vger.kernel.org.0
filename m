Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE6927FD1A
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731704AbgJAKQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731131AbgJAKQo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:44 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEEC9C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:43 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g4so5017470wrs.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BrBNJnKzSCnbCUByN1Nmr0+xgbV3IIjQXW2zm3f84G8=;
        b=CmQ60AYFRaRDamVHWtiepp5OlB2Un+Ly0mcjkBiHqhjS4HdCKqrhKxYdl+8rP/ovYG
         Pk4qONrjA/r30pi2uGMHxc3jZCRYXU1ZTvBPbQOeE8wHEU1ojJaeFACEDTpOPy+lsMjp
         0IH8UCnKbmCPOpWRBJOhzqyaeWtgQ32awRmdTTL4e17uRm4VAh2AvunHTUbQ9FUdsYtU
         o4RK7NheoG4URoSCIjAZVNDzP6qfTbQkFi8Xbp0MgbfSs4fkAPYq80qZJe91RYKVUqpv
         uXSEPIpjNCZpfdI/glRct5vc3SXmhemI6P7RchygxJBpg3uRkOCJ5RM7HRpfs5p54o8H
         xDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BrBNJnKzSCnbCUByN1Nmr0+xgbV3IIjQXW2zm3f84G8=;
        b=K1zouH+j8fSZgv104LjCQStdqPuwFJYzaKxiI5AukqGQedinrTQK6LowutkJarqCJb
         5+S68Fj+c23ntYX/s904P44nMHWr6ltCpRFmiRQbWJrdxzg+pwxmJaEDoAs1JuJHlgGO
         fqXG+jfVAwyM8d+EP4Hc5XuMzcQujHVECMyy4IEjTc5GpqLYUMSTw1Oaa8l025wANrP8
         YfS6koUcMD2g1c82b0JiG12PeOf4U73ChV+MxcFsrsbQr9vjsi8ELlaHDTxvPtwI+3KW
         r80/FsYzg5UGHr6rNLpEc/g6MAfbnAMIQ7dEbBHHazzzT0dzjoyh1wXUxiQOVB6ZuB1f
         XgNQ==
X-Gm-Message-State: AOAM531alef7t6DWRXkOKbuQKpRu9LXTOUsfavFNN0OFnsJ+PGWzKAiF
        5XHRFa/51wanalccAotRSQHwfJ8/22f1fA==
X-Google-Smtp-Source: ABdhPJy1a5CTWREwrb1TBjD0VMj6SOvCHMBaZpxbYThS8j8uctXBBwBTErM1KbJOPK+iIiY/fndf8g==
X-Received: by 2002:adf:dd10:: with SMTP id a16mr8034081wrm.42.1601547402643;
        Thu, 01 Oct 2020 03:16:42 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 13/16] system_data_types.7: Add 'intptr_t'
Date:   Thu,  1 Oct 2020 12:15:57 +0200
Message-Id: <20201001101559.77163-14-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 65 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f768e87ba..2632436ed 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -616,6 +616,71 @@ and
 .I unsigned __int128
 types in this page.
 .RE
+.\"------------------------------------- intptr_t ---------------------/
+.TP
+.I intptr_t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+A signed integer type
+such that any valid
+.RI ( "void *" )
+value can be converted to this type and back.
+According to the C language standard, it shall be
+capable of storing values in the range
+.RB [ INTPTR_MIN ,
+.BR INTPTR_MAX ].
+.PP
+The length modifier for
+.I intptr_t
+for the
+.BR printf (3)
+family of functions
+is expanded by the macros
+.B PRIdPTR
+and
+.B PRIiPTR
+(defined in
+.IR <inttypes.h> );
+resulting commonly in
+.B %"PRIdPTR"
+or
+.B %"PRIiPTR"
+for printing
+.I intptr_t
+values.
+The length modifier for
+.I intptr_t
+for the
+.BR scanf (3)
+family of functions
+is expanded by the macros
+.B SCNdPTR
+and
+.B SCNiPTR,
+(defined in
+.IR <inttypes.h> );
+resulting commonly in
+.B %"SCNdPTR"
+or
+.B %"SCNiPTR"
+for scanning
+.I intptr_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.I uintptr_t
+and
+.I void *
+.\" TODO: Document void *
+types in this page.
+.RE
 .\"------------------------------------- lconv ------------------------/
 .TP
 .I lconv
-- 
2.28.0

