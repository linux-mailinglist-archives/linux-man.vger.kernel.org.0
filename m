Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9C7407966
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233244AbhIKQDR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIKQDQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:16 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82731C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:03 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u16so7344341wrn.5
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fVjMqCnrlP67lm6yi5Zt9Lto36dd285urVbJ9xLycKA=;
        b=fCVAMaZsKCz6gZUZ+PEEnYybYbs3SN2jr//PeC2tSD7dbtO80Q+alQHZQ3fxk1wHp+
         ZXMV3ausvCsz2pK2Hp5T+tGJLVOA9+Y1Qam2udT/AaX72zNqxZYwVHDw2mQEZFOVOwgY
         l8o4z4kZg0w+S6J1vTLYDKVzmnH2wJhho39HhoJFkAQ0M9GF2Zp9fG7tvoizUccCGGqB
         RsTPUnUVjPb7VFaCYfyUNO+YFlwIkRWSzoBc7sbKPHVdgEsQyqYrqqCbZipZ1cbdpcXV
         +CM1XgQikva+YqKNMOTOAMMgftOVkjFzeIoMXvH9S0sk984WWtgJQ42qxk0x4T0S+gFW
         FW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fVjMqCnrlP67lm6yi5Zt9Lto36dd285urVbJ9xLycKA=;
        b=3W1eEOpCKRSnph1MJV20VKl9ocdocIw3SuA87NvrTx9yeJXbA4U79o1GeVfESfgxNf
         nvTFUZ3xollIjsM+79HCDjA+fp65Ih9RITpJbeVmDFs3hqYJeh/r0PZzyh5UHIvIbFAt
         G0qjcOknJ3XDW5xlEZRoTTWM9plAqi4QI44pxkSBU0MFivTYRIBVKgDmRKD1p4Lxs5Bf
         ICmKiv6ptCy8t84wLpLvQtnXnFOefu233MaqYvmd2Sfrtb4c7cjLeK0PA3f7vDOYcngI
         uxqfLV2aYEWC2SqwVXfvFdPxe9tNW++f9NYYPBSM4+3DWuAB2tTpN6w1Q8qSTC1EyARK
         LnYA==
X-Gm-Message-State: AOAM532MUg4iw65wIzsMaDpcctZaUbsiwY8FP9B1Fitvjcj+bEF5d232
        91z750VIe+y+IOhI2CDH07IRWOmmmzg=
X-Google-Smtp-Source: ABdhPJx1WJ0Fla9Tl0tT+FxSd+60HuPoAhtY0JKV7zqdMlzpgV9h9lhMDeA0hVqeyHZr4mEK1/sXPg==
X-Received: by 2002:adf:ea4d:: with SMTP id j13mr3657072wrn.86.1631376122163;
        Sat, 11 Sep 2021 09:02:02 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 39/45] stat.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:11 +0200
Message-Id: <20210911160117.552617-39-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/stat.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/stat.2 b/man2/stat.2
index 016c1f47d..7def2d683 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -39,6 +39,9 @@
 .TH STAT 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 stat, fstat, lstat, fstatat \- get file status
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/stat.h>
-- 
2.33.0

