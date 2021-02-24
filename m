Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11C7B324131
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235866AbhBXPoD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238301AbhBXOuz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:50:55 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 598B3C0611BE
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:06 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id l12so2146816wry.2
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jgM5XYGwvJfpIxIBFGYqHPPxu9xzmMukgVa7tD1vOaM=;
        b=eRVh27wV1/swbqceismG6YoF9vP1kQ/8M7PJCKzNlum4P8azO9QT+uLuoBgj3FiuLU
         FsKI/YkdhuhRnbJZ5I8eTZiHlYaMZkZRDPO5Wo/behRpLhISI8oQDEIZsAnyVLTYHc8/
         nugdSD7wHXT1rQvbZKgrHCJ8AefsYw7w3SLlus1WRk0RMU+FWqY5F508hnaETSVk0L6I
         A0wGodikBSrwvAb00gmmN/XCcXxwUUEQa+juirWpb/b+3D0LLF3UfHLZnLwh9seapHZP
         AwgsXXthc+sPAc+rrgkOc9STq+SyU9fOfIMkrbYEgWG0EIBq27Dpi3Yj8r9qS2/5/UFj
         OXBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jgM5XYGwvJfpIxIBFGYqHPPxu9xzmMukgVa7tD1vOaM=;
        b=k9Kgf0+OQrdd1CSXYM+rkwv5eOaigLQG5BzSAJM6oPTKjVCO/IMot5/BvLTSpEvqf8
         gXsqTSixoyO2L0LCboaLsy/mutYZqpApJK9V2waok3i/OmjaPVKdo74+potV644LtR7C
         cv3OStAnXMmYn5btn6jHKgI12p/3+OaLt7QQVUS3/kvmVhaEgXeiug/Vz+pnNQIzmhU1
         KqztHp2wYXWrMjecogX/G/1wVM0/4YBEVmXcT3fG3VZ4MlVh/rl/uraGNLmbgX1jCK95
         fL3ULNBnnGJkY2iMHT7kUsPD+SiXQT/FOyrguZqqqT/lwcA9zEAAqH3g6ElI2LmIYTOj
         0eAg==
X-Gm-Message-State: AOAM530yFrHKWo6wQeJxv/b5ivbO0upeR1Onbj5i2cGyF3/26xyqYrbm
        V+CQqgtimhvZGJ1kVCsLnsK31R9rZotDGQ==
X-Google-Smtp-Source: ABdhPJxHU8oxmSu0ylOMy9r1ZfaJwKr+RuhpEN72UmbGySTVlZcPWr/dXzsyaVEq1WhEJNKrYff3CA==
X-Received: by 2002:adf:d84d:: with SMTP id k13mr4021944wrl.164.1614177845208;
        Wed, 24 Feb 2021 06:44:05 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 13/20] envz_add.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:04 +0100
Message-Id: <20210224144310.140649-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for these functions
Let's use it here too.

=============================  envz_add
string/envz.h:49:
error_t envz_add (char **restrict envz,
                         size_t *restrict envz_len,
                         const char *restrict name,
                         const char *restrict value) THROW;
=============================  envz_entry
string/envz.h:33:
char *envz_entry (const char *restrict envz, size_t envz_len,
                         const char *restrict name)
     THROW attribute_pure__;
=============================  envz_get
string/envz.h:39:
char *envz_get (const char *restrict envz, size_t envz_len,
                       const char *restrict name)
     THROW attribute_pure__;
=============================  envz_merge
string/envz.h:57:
error_t envz_merge (char **restrict envz,
                           size_t *restrict envz_len,
                           const char *restrict envz2,
                           size_t envz2_len, int override) THROW;
=============================  envz_remove
string/envz.h:63:
void envz_remove (char **restrict envz,
                         size_t *restrict envz_len,
                         const char *restrict name) THROW;
=============================  envz_strip
string/envz.h:68:
void envz_strip (char **restrict envz,
                        size_t *restrict envz_len) THROW;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/envz_add.3 | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/man3/envz_add.3 b/man3/envz_add.3
index 23a7a1fe1..cfb56b478 100644
--- a/man3/envz_add.3
+++ b/man3/envz_add.3
@@ -15,23 +15,24 @@ envz_remove, envz_strip \- environment string support
 .nf
 .B "#include <envz.h>"
 .PP
-.BI "error_t envz_add(char **" envz ", size_t *" envz_len ,
-.BI "                 const char *" name ", const char *" value );
+.BI "error_t envz_add(char **restrict " envz ", size_t *restrict " envz_len ,
+.BI "               const char *restrict " name \
+", const char *restrict " value );
 .PP
-.BI "char *envz_entry(const char *" envz ", size_t " envz_len \
-", const char *" name );
+.BI "char *envz_entry(const char *restrict " envz ", size_t " envz_len ,
+.BI "               const char *restrict " name );
 .PP
-.BI "char *envz_get(const char *" envz ", size_t " envz_len \
-", const char *" name );
+.BI "char *envz_get(const char *restrict " envz ", size_t " envz_len ,
+.BI "               const char *restrict " name );
 .PP
-.BI "error_t envz_merge(char **" envz ", size_t *" envz_len ,
-.BI "                 const char *" envz2 ", size_t " envz2_len \
-", int " override );
+.BI "error_t envz_merge(char **restrict " envz ", size_t *restrict " envz_len ,
+.BI "               const char *restrict " envz2 ", size_t " envz2_len ,
+.BI "               int " override );
 .PP
-.BI "void envz_remove(char **" envz ", size_t *" envz_len \
-", const char *" name );
+.BI "void envz_remove(char **restrict " envz ", size_t *restrict " envz_len ,
+.BI "               const char *restrict " name );
 .PP
-.BI "void envz_strip(char **" envz ", size_t *" envz_len );
+.BI "void envz_strip(char **restrict " envz ", size_t *restrict " envz_len );
 .fi
 .SH DESCRIPTION
 These functions are glibc-specific.
-- 
2.30.1.721.g45526154a5

