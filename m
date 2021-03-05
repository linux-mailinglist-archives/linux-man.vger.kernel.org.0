Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0BF32F6EB
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhCEXvd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:33 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17A57C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:33 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id y124-20020a1c32820000b029010c93864955so255230wmy.5
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QyD7HAEUxbDPgOVS/RxC+0k7Vr+8IAT+vsKJIPb38tg=;
        b=rNzXFKvTJvO9IsK7e2tTRHLBUYoyilYVw4ZRzg6glIKsKqXGj1DF+EFRmu5+AvQ6xd
         lZg9tf3PwjY3v1XY6dYRZ5RxeXf7lWQ20VUdkkuNAaMfCGbNvbzdc5QUarooKqo5TUr6
         wHx3Q2N9QEqbzikV3VsUHZfJyIIAHV+rUPfRYI4YeWHQtXd64ozNGpWDy48XuvcoyBnz
         0C1+z3ghRmS9sG4CjhTulTbB2mG84HTR5MKnU7boSnwCllfxfa/8q27qZuK5UAMYFYPr
         p38Ua45LRxvVQj7odqCpRYFkynMqKC23AfbmwmmpCy3D32WagpelpSi2EJDLxNiJMaVq
         gXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QyD7HAEUxbDPgOVS/RxC+0k7Vr+8IAT+vsKJIPb38tg=;
        b=iJSMsz9CiCLtk6ZNiwwXYj6vW0+gLvGNPBiSgwPIsj7QZs+f0wzbLTXrNdMINhrVuU
         teJEebl9b2YijbbNqFr5oTmZnu5I2+uBeK9T61NbzkSty5IggIYsyU0pjFU1T7/+hYoF
         /tGMrdqtHSBDY4bvPSq4Ls5fcSfQMpT1SxKOKGpm23pGfIdFTjhvGBk2UQgyiXJidfDX
         zieBPW8Dyvb1c8z4O39Hk4ELAuKkZtNluutrV7KSuE12hbNsTSmGJSSjxCZwzZeZOcFx
         Gd1HRi4yoMXvaHSwUtt9nDAmia1A37880xTcJJRqgLxtyssZUVu0k57E6h1WwGBH0lYC
         ODhQ==
X-Gm-Message-State: AOAM533Boq8/XgaT3jKkM6oAoI6NcvH/AnhIXZLKhJzNG6kxrwx0QIWt
        YM4tplmITJqSSyJrMPgeiq/gmDJdl+rjWQ==
X-Google-Smtp-Source: ABdhPJxD7YX+AiCVof59MZCblO8lalFgSEz8XZNLcoCfhJMrnKOFHIrcawnni4xKp1Vs4N+ew0Z1Xg==
X-Received: by 2002:a05:600c:4ba2:: with SMTP id e34mr11127848wmp.121.1614988291914;
        Fri, 05 Mar 2021 15:51:31 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:31 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH 20/22] posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:04 +0100
Message-Id: <20210305235105.177359-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX uses 'restrict' in posix_spawnp().
However, glibc doesn't.
Let's document here the more restrictive of them, which is POSIX.
I reported a bug to glibc about this.

$ man 3p posix_spawnp |sed -n '/^SYNOPSIS/,/;/p'
SYNOPSIS
       #include <spawn.h>

       int posix_spawnp(pid_t *restrict pid, const char *restrict file,
           const posix_spawn_file_actions_t *file_actions,
           const posix_spawnattr_t *restrict attrp,
           char *const argv[restrict], char *const envp[restrict]);
$

.../glibc$ grep_glibc_prototype posix_spawnp
posix/spawn.h:85:
extern int posix_spawnp (pid_t *__pid, const char *__file,
			 const posix_spawn_file_actions_t *__file_actions,
			 const posix_spawnattr_t *__attrp,
			 char *const __argv[], char *const __envp[])
    __nonnull ((2, 5));
.../glibc$

I conciously did an exception with respect to the right margin
of the rendered page.  Instead of having the right margin at 78
as usual (per Branden's recommendation), I let it use col 79
this time, to avoid breaking the prototype in an ugly way,
or shifting all of the parameters to the left, unaligned with
respect to the function parentheses.

Bug: glibc <https://sourceware.org/bugzilla/show_bug.cgi?id=27529>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Cc: glibc <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/posix_spawn.3 | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 02f86fddd..df82a81df 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -40,10 +40,11 @@ posix_spawn, posix_spawnp \- spawn a process
 .BI "                const posix_spawnattr_t *restrict " attrp ,
 .BI "                char *const " argv [restrict],
 .BI "                char *const " envp [restrict]);
-.BI "int posix_spawnp(pid_t *" pid ", const char *" file ,
-.BI "                 const posix_spawn_file_actions_t *" file_actions ,
-.BI "                 const posix_spawnattr_t *" attrp ,
-.BI "                 char *const " argv[] ", char *const " envp[] );
+.BI "int posix_spawnp(pid_t *restrict " pid ", const char *restrict " file ,
+.BI "                const posix_spawn_file_actions_t *restrict " file_actions ,
+.BI "                const posix_spawnattr_t *restrict " attrp ,
+.BI "                char *const " argv [restrict],
+.BI "                char *const " envp [restrict]);
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

