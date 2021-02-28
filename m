Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9061A326FD4
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:52:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230206AbhB1AvI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:51:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbhB1Au6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:58 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED039C06121F
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:29 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d11so12272146wrj.7
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BMxdehCmku6ijTj16fwA/aEDmJ126DBDMiAp0/Y6PQg=;
        b=Aa1Cz6ZFhXMQmjGhJcy7Mvm70H/K74R2b5KXLmQVmzR/HHPTRPYdgWtH6dPtjLeW9x
         wspL+hv+AW3n2tPL9ouI8dN7wb/1/DJ4KsFzPJL7owA8rJKU+heinllgJbUHwepVGf4r
         PVuRiE7YvDouWs2HSWGaQJYTTkOLelTpYuW/Wvo+4RdUfQUxB95pb1zju09H4JXrSEKF
         z2QtAlftz0iXGs0dW196um3CTIevpMa38uYIbdfgCicinP/hYWdcqxAFN2i66Nesu6pp
         rWIUO7EP13pqDvF3hmx6d7PeDzw7on4Pg0tM26ugnZv2kitEk8dhiHXvGCx/0q4rpEu3
         mxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BMxdehCmku6ijTj16fwA/aEDmJ126DBDMiAp0/Y6PQg=;
        b=Xsnu7MGYS0Ie0UvW/PPeqRfrBKvXqdSGN8HLgH31zfG6J429PwsVgKdZBUtWegH0tv
         PIaKt5IirzAS9Em6EBZ9lRlHoBEVry4eJ7zAT0A9ekURIm8k6ZFc2vlm7IMEzo19V8p4
         HjAGsh2gbKskm7Fuk6tr44FquHPcO3QAqpQ0KDkwnGhJ+EYKNlIfFXtOQk/RU85w4Nd3
         xBVAI2RNud3BJkxxnfzJ6QTyGM1kVKxVhO9KNpcIpszCHrutTFdLKK18yq5Uoz2ziiBP
         teVYWgPWZvmzvmm8hA2kHZCkPf4CyXi0ArwPXHWcINUZJ1XqwuyrDd8q3eAf4mHhXYYX
         qZbQ==
X-Gm-Message-State: AOAM5317tuC+7g4GZ/PBr69Bcb41iC54xGx/u22yXZ2nMjCWZs7CZITc
        xw+fkc9xolDc8vh9I50EexY=
X-Google-Smtp-Source: ABdhPJwZM+XR9/q9dFbozynDRTv0CDmDskYn4KM4PrhxBtNGhV+f2F0MGTFLAjG+YEy5jz3mcKw3pw==
X-Received: by 2002:a5d:53c8:: with SMTP id a8mr9714209wrw.323.1614473368730;
        Sat, 27 Feb 2021 16:49:28 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:28 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 14/14] getpwnam.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:18 +0100
Message-Id: <20210228004817.122463-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify these functions to use 'restrict'.
However, glibc uses 'restrict' in getpwnam_r(), getpwuid_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getpwnam_r
pwd/pwd.h:151:
extern int getpwnam_r (const char *__restrict __name,
		       struct passwd *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct passwd **__restrict __result)
		       __nonnull ((1, 2, 3, 5));
.../glibc$ grep_glibc_prototype getpwuid_r
pwd/pwd.h:145:
extern int getpwuid_r (__uid_t __uid,
		       struct passwd *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct passwd **__restrict __result)
		       __nonnull ((2, 3, 5));
.../glibc$

Cc: glibc <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getpwnam.3 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
index 45fde871d..1eed77c45 100644
--- a/man3/getpwnam.3
+++ b/man3/getpwnam.3
@@ -45,10 +45,13 @@ getpwnam, getpwnam_r, getpwuid, getpwuid_r \- get password file entry
 .BI "struct passwd *getpwnam(const char *" name );
 .BI "struct passwd *getpwuid(uid_t " uid );
 .PP
-.BI "int getpwnam_r(const char *" name ", struct passwd *" pwd ,
-.BI "               char *" buf ", size_t " buflen ", struct passwd **" result );
-.BI "int getpwuid_r(uid_t " uid ", struct passwd *" pwd ,
-.BI "               char *" buf ", size_t " buflen ", struct passwd **" result );
+.BI "int getpwnam_r(const char *restrict " name \
+", struct passwd *restrict " pwd ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct passwd **restrict " result );
+.BI "int getpwuid_r(uid_t " uid ", struct passwd *restrict " pwd ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct passwd **restrict " result );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

