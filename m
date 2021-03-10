Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A04B3346CA
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbhCJScf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233234AbhCJScK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:10 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20435C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:10 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id w7so7727114wmb.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/2cJ8HWX1tQaJ+wSbquo1BnR87Ep6w0X6W75wazdkM4=;
        b=ANzLqwYzmW4EoziTAiRWJIl18qx4Id0NvMqekML7L+h/ZlakbJLpn5/gJ/enVM9Er3
         DXYNZ5u93ix/SHVk2KKnzXTbHe5Q+ywUcyqk5JLh4Vl7fHrNBgH/ndoGXIwGLgB4NeGx
         IVZPAWdn2uOUhYLpdrE7TpvEcZWtFRH/egdvtY2EKTPiMy9HUGdZII6C/a3ZNvteVGtd
         1Ot4oWcjA/Bym6kCafgglTSnomZHlO0HhSdclojQDYa+vDLnhFlykT0Y3bzbnJZa/Dh0
         bwy2xS18Wm5IddZ4svvxwJ33zSfbwEfJnbd/w6ZBHtoY2WthNb6gvvnjA+zg41v9WDnN
         GKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/2cJ8HWX1tQaJ+wSbquo1BnR87Ep6w0X6W75wazdkM4=;
        b=JcqgQlrMakS1G1lr4xp6e4rFnxY3QCP39cfQKIDoyWwdY/DC+9jCNHAomvYfnuGTsj
         rIrwlYrZ1HqNCr5Hwfyl8n9zgzzOAEBid5WlxS9R1fP9tiB2Q+AVF1YA0TgohpZXs88G
         z45urWjD6JNh0TwOsq1/FuiGdD9tobUvR8WqkyNHSC3i4HEsVy5f+DA4149BPoZbyV61
         NGZdh0kkxj2aoJ+qr/gL1Sgvkf/iw1f7aiwHa95nfqsr4RI+1mrMZeiygSJxT206GLaC
         NubThWPDe7aTvMLELtLP/baKIP1PZAbSqwJY/jWuTlbArLUgw1Nr5RMoerTr+lZP2wsH
         HUHA==
X-Gm-Message-State: AOAM530yOjTioS+R6+EQl4RXZb2lgWO9cHBaGG1Ll2jkeUMIv/84FgZz
        9jamCBQYBU7akEX757c8gdM=
X-Google-Smtp-Source: ABdhPJzwg7T1/dNA8WBf893v2a04OxmWRZ88jOINbyiQULamvrBy++/Yk1Rt/RN2dG0OY7RiuYPK1Q==
X-Received: by 2002:a1c:32ca:: with SMTP id y193mr4614814wmy.56.1615401128956;
        Wed, 10 Mar 2021 10:32:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:08 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/24] setaliasent.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:29 +0100
Message-Id: <20210310183149.194717-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getaliasent_r(), getaliasbyname_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getaliasent_r
inet/aliases.h:48:
extern int getaliasent_r (struct aliasent *__restrict __result_buf,
			  char *__restrict __buffer, size_t __buflen,
			  struct aliasent **__restrict __result) __THROW;
.../glibc$ grep_glibc_prototype getaliasbyname_r
inet/aliases.h:56:
extern int getaliasbyname_r (const char *__restrict __name,
			     struct aliasent *__restrict __result_buf,
			     char *__restrict __buffer, size_t __buflen,
			     struct aliasent **__restrict __result) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setaliasent.3 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man3/setaliasent.3 b/man3/setaliasent.3
index 027bc91b6..b1b3a4ae5 100644
--- a/man3/setaliasent.3
+++ b/man3/setaliasent.3
@@ -18,14 +18,15 @@ getaliasbyname, getaliasbyname_r \- read an alias entry
 .B "void endaliasent(void);"
 .PP
 .B "struct aliasent *getaliasent(void);"
-.BI "int getaliasent_r(struct aliasent *" result ","
-.BI "               char *" buffer ", size_t " buflen \
-", struct aliasent **" res );
+.BI "int getaliasent_r(struct aliasent *restrict " result ,
+.BI "                     char *restrict " buffer ", size_t " buflen ,
+.BI "                     struct aliasent **restrict " res );
 .PP
 .BI "struct aliasent *getaliasbyname(const char *" name );
-.BI "int getaliasbyname_r(const char *" name ", struct aliasent *" result ,
-.BI "               char *" buffer ", size_t " buflen \
-", struct aliasent **" res );
+.BI "int getaliasbyname_r(const char *restrict " name ,
+.BI "                     struct aliasent *restrict " result ,
+.BI "                     char *restrict " buffer ", size_t " buflen ,
+.BI "                     struct aliasent **restrict " res );
 .fi
 .SH DESCRIPTION
 One of the databases available with the Name Service Switch (NSS)
-- 
2.30.1.721.g45526154a5

