Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A95D92812AE
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387789AbgJBM3e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBM3e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:29:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEF0EC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 05:29:33 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k10so1624319wru.6
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bjS+CHXkPkAmuYZ7/TaeKoFezTuCoQBERb1mINJ6dRg=;
        b=Ax0tFqQvXRSPELqchLJkXG59BQxe5PCNmmesKC3do9GzcGfGam+/oJxp8PFNfoeTyg
         eugztvYuCJDa28tB0jSoShtWN3TEt/KgLuVWYvuuJEBecxw0LKdtl6+5lBuJMILSfsX9
         D8PjesjdeL46UQ1lexzF+PJD85ES05vo6bD5dd0JUYj4oE56Hf2a24eS0yXsULwDMNuo
         onL3sGIuIH8le5apPYRCtw6n5NPezr6jEqjIdzjGyOLYTbKg3khbVobXWTM4QvMOXJr2
         Wp3xpCBXgey20QhxblYZAMPNDtSQAO/i0lZZQKwUWxhRKMj/KIkt4q1jPCtrjusi2SwL
         0IfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bjS+CHXkPkAmuYZ7/TaeKoFezTuCoQBERb1mINJ6dRg=;
        b=lD3uaVaNzNuCUxNBTq/iEdUatZyLJkkLoUqq16iQkWUcNH3UQlOBOjeEtdmSqWsFB/
         AJl/v4uHCiKGY7JGK8nZJ1JOexk9pmEr5l6BR1k1xMfCcr3nC5olY3rb3HjhoI9rU861
         mQQ3qJhML6cYbVlxHNuvP2oSsiPF+Jktj3MlNtyWKGSZpR4MNmv+EwDM53Kr7LkkRz/N
         e9+Z7a8CV1ds8C7DwoXPktukXeraZrlAmOsts7sgghYQ7aHmfoIyr39ELU2wASQ1qhkR
         zLL3qUSBEV3+4I0erU6PiB1coyggsyvysEs3XoOkOu2Y3ufFfJfAZO327p/AA2763ieD
         P0ag==
X-Gm-Message-State: AOAM5314Fvo5gTTJ1Q9jNiXspxaD1SlCtGVdMjwX75tMXGgD/8VxtNtV
        C6JJtZv9MsH7kQWSNTW8Kig=
X-Google-Smtp-Source: ABdhPJxe98ihydZt6/4kf0VMXsqbY0nO6UaJTMf9is6aOkckLFlFQ4KCI5cViVNqZpW/UOTCqd66Kw==
X-Received: by 2002:adf:e304:: with SMTP id b4mr2715391wrj.141.1601641772648;
        Fri, 02 Oct 2020 05:29:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u2sm1829331wre.7.2020.10.02.05.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:29:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, fweimer@redhat.com,
        joseph@codesourcery.com, jwakely.gcc@gmail.com,
        szabolcs.nagy@arm.com
Subject: [PATCH v2 3/4] system_data_types.7: Add 'unsigned __int128'
Date:   Fri,  2 Oct 2020 14:28:22 +0200
Message-Id: <20201002122822.24277-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 5f9aa648f..3cf3f0ec9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1822,6 +1822,41 @@ and
 .I void *
 types in this page.
 .RE
+.\"------------------------------------- unsigned __int128 ------------/
+.TP
+.I unsigned __int128
+.RS
+An unsigned integer type
+of a fixed width of exactly 128 bits.
+.PP
+When using GCC,
+it is supported only for targets where
+the compiler is able to generate efficient code for 128-bit arithmetic.
+.PP
+Versions:
+GCC 4.6.0 and later.
+.PP
+Conforming to:
+This is a non-standard extension, present in GCC.
+It is not standardized by the C language standard nor POSIX.
+.PP
+Notes:
+This type is available without including any header.
+.PP
+Bugs:
+It is not possible to express an integer constant of type
+.I unsigned __int128
+in implementations where
+.I unsigned long long
+is less than 128 bits wide.
+.PP
+See also the
+.IR __int128 ,
+.I uintmax_t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.28.0

