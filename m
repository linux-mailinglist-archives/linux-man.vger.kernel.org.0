Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E843732F6EC
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbhCEXvc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:32 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 416DBC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:32 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo241849wmq.4
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ziriBOqKNZ9d4xO2UDwSKTeAENeQ3dZSV2nMSKavWl0=;
        b=FlekrWFtJwe42uSCP6CDlnZXcL+85iAklX0PLG7+tr0HdLSeM+VgK5PbFXppaaX4VV
         8+r+gt/0AKat5z7wdy6/Fmmajqc6d2a0dyqriAinxLaeLGDSGg/dfx9DBEljPouzfn8h
         GWqgUotqva3Yz31cyoBGhaBbyZYMLPaObljKYjUOVEvQCFFSVHYwS5ctjdQ7x6qLtqut
         4k7gcep9L98RESpiMc7+7AhOR/GExnpkn6OxR6op+ZOLxeTWSW2x8ZqFhL7h3sg6RaSD
         bTHmuMqHCuyjGfregBnxtoUZHIQIXUmf7fNWMsjj8OraEFWL/uYkck3HYV7QXgEg6nb4
         CKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ziriBOqKNZ9d4xO2UDwSKTeAENeQ3dZSV2nMSKavWl0=;
        b=gQ55JXCnCPNhxSogaR92SE2amxyGSMQsVxkwSLLNMR8iidjIC7aBFlHNMg9XJ8YWYn
         aMYtVLmtmnu8Sn9WrxrWJnXr36/4iASG3F9juG/quro3C+Ixjh6qHPNr1Y9bKkPr/i8q
         8QMzrNS7QPpviHmP0bpSDEKM61H2E79gIipioy2GJQAnzcHZZRPNmqkZai6oAahIKDn+
         rWJja5HKP4i/lcZlCtYI0MfxRUVr2BbY+gIHhl0xtjn9DIPIaAyTQ9iRJYk8A+kMfzuX
         PlWr7TIHZsBdvmeL3m2mBQs6orpu3dJ/+6+1r711Vqvm8keKDEuY3CIZNkAMrN5g5Og9
         8fJw==
X-Gm-Message-State: AOAM533zDRLWwjyybH7ytDiI9z2vYuBQiCSvgDygrOv+X1atq5C50ftC
        bzPvV6JkdMPBmU4Gq7oCOWQ=
X-Google-Smtp-Source: ABdhPJyO/a+vgchjGIKhrt6dGIL2qw6yOqq5BF3KO/hBEkdK/rrly6uLyNiHBukh8O2liq5RXHSRFw==
X-Received: by 2002:a7b:c35a:: with SMTP id l26mr9399179wmj.104.1614988291059;
        Fri, 05 Mar 2021 15:51:31 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:30 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH 19/22] posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:03 +0100
Message-Id: <20210305235105.177359-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in posix_spawn().
Let's use it here too.

.../glibc$ grep_glibc_prototype posix_spawn
posix/spawn.h:72:
extern int posix_spawn (pid_t *__restrict __pid,
			const char *__restrict __path,
			const posix_spawn_file_actions_t *__restrict
			__file_actions,
			const posix_spawnattr_t *__restrict __attrp,
			char *const __argv[__restrict_arr],
			char *const __envp[__restrict_arr])
    __nonnull ((2, 5));
.../glibc$

I conciously did an exception with respect to the right margin
of the rendered page.  Instead of having the right margin at 78
as usual (per Branden's recommendation), I let it use col 79
this time, to avoid breaking the prototype in an ugly way,
or shifting all of the parameters to the left, unaligned with
respect to the function parentheses.

Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/posix_spawn.3 | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index a56aa3e86..02f86fddd 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -35,10 +35,11 @@ posix_spawn, posix_spawnp \- spawn a process
 .nf
 .B #include <spawn.h>
 .PP
-.BI "int posix_spawn(pid_t *" pid ", const char *" path ,
-.BI "                 const posix_spawn_file_actions_t *" file_actions ,
-.BI "                 const posix_spawnattr_t *" attrp ,
-.BI "                 char *const " argv[] ", char *const " envp[] );
+.BI "int posix_spawn(pid_t *restrict " pid ", const char *restrict " path ,
+.BI "                const posix_spawn_file_actions_t *restrict " file_actions ,
+.BI "                const posix_spawnattr_t *restrict " attrp ,
+.BI "                char *const " argv [restrict],
+.BI "                char *const " envp [restrict]);
 .BI "int posix_spawnp(pid_t *" pid ", const char *" file ,
 .BI "                 const posix_spawn_file_actions_t *" file_actions ,
 .BI "                 const posix_spawnattr_t *" attrp ,
-- 
2.30.1.721.g45526154a5

