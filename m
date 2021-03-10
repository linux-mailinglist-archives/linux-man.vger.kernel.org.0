Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE7003346C5
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233336AbhCJScg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233057AbhCJScN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:13 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45608C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:13 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h98so24398045wrh.11
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=11xyOr0Ft1na3ZpfXXYIITQcv17euKfzLSjwCxZI6c8=;
        b=Iz/x29JwQ3yHZE9EsC2F1MJYObchSVTRkEbnujii2nyDowP66lVqAMgTymoqykXIc1
         3Of21gB4GGTNeXRD+wzvVYk618tSZo77iZu2KsHrrg2nXB0u6sOcooLO4EWuSbGTgVRs
         q6cSZ3MFC1oeazOv0XOZod1W0sWEWFNL5N4tsARc3WE1rMs9UFfEqzX2qEwToQ+v0xPI
         JYcbDAZ4965dG9Wf2pK+K+x6JjUtJZWC6CwCJJoztreLoJYXvScgRzyXC/w1EZBNDHzh
         rNTma93sHag4chbrKLuL8+/J4GYgW7zq9Eb+q/s3lwtnpVgWHEjgC/PPkS1OnlO1wVoE
         Xcug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=11xyOr0Ft1na3ZpfXXYIITQcv17euKfzLSjwCxZI6c8=;
        b=tKSHRkRlNk8C8yaBiUBkFTdJ081m+i7GnCG0ig6PWs9+1idmaqYMlr0VIyLnvsGSPB
         SbaRVmsErgzY0HHSjVuTr6QRMYA7USIksm85E1mZO5eC2lwjo+/hKzVnaoO8QpzaoY3U
         FeQo/D+AI98wJzTXu001N3qjJvT/m+wiNFftKdZCjMJG1tgKN15xMfYExf7tYZ7DJQXc
         FE86sDAESUnCwR3rs4eYoF56nL2FPBxUmJvZ7dh4TbOO6zYxN3LJsWyi+FzsSn6lNitC
         9KO8KZgfvEdcIuQr2di3d77DCO14ewZt2ngxFvh4vEKh2GiblNiwGbA6gUXFMLiBH4Ky
         CtaQ==
X-Gm-Message-State: AOAM533zsZ7Ofr4hvzobuTOjuPXP+PhLF2h/2NRU9LpnAQTtnZnpNswf
        eDHFogwNwRRaTRaEME9GuIc=
X-Google-Smtp-Source: ABdhPJwim9Ll7PPLPTQpXr+XWWKMJmYJCtA3e7w1ahaaRPnFY19bHu4C+BVHMJgFRLim7EKUWl1VpQ==
X-Received: by 2002:a05:6000:5:: with SMTP id h5mr4999164wrx.97.1615401132127;
        Wed, 10 Mar 2021 10:32:12 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:11 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/24] sigwait.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:33 +0100
Message-Id: <20210310183149.194717-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in sigwait().
Let's use it here too.

.../glibc$ grep_glibc_prototype sigwait
signal/signal.h:255:
extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/sigwait.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/sigwait.3 b/man3/sigwait.3
index 47c79a24d..30b7af568 100644
--- a/man3/sigwait.3
+++ b/man3/sigwait.3
@@ -30,7 +30,7 @@ sigwait \- wait for a signal
 .nf
 .B #include <signal.h>
 .PP
-.BI "int sigwait(const sigset_t *" set ", int *" sig );
+.BI "int sigwait(const sigset_t *restrict " set ", int *restrict " sig );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

