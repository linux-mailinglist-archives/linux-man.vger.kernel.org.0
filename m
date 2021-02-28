Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60E5E326FCB
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbhB1Auo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbhB1Aun (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:43 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F74C061797
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:24 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id u187so8419519wmg.4
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nu1lpkLq1w+drqYeUxnDPTZgPybkNxTQJgIqZDjRX/8=;
        b=DfdxiiR0nOxIzSqju/6/BwCTQQ8iygfARx/Dd5xiMaU5lPqi7oEbsheACpduNsgmCd
         pfAPob1BHWlwREAypheXU+Os5KGvRl/o93jdlmgDVoFgztSx8++h4ISByfQgPGOj+mPK
         PagXauWJgGQF85hvoCj9dmWW1tbBt29fuffIyi1/7tVD9RmAK8Rxgk8lPj89PYzU/5+/
         vdgsXoEoZ3NrmDVg+3xaRUpITUu9C26A04Wxn9BF70cp3JTFBwsWbJz5U3WJJ86QgAyB
         7XTKFpco2UbNNiwVEiCOEH5d+z7uCcaxVzUNW1Fp0uPXJEt0H0B22IOu2yJqCO6B57NZ
         o9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nu1lpkLq1w+drqYeUxnDPTZgPybkNxTQJgIqZDjRX/8=;
        b=OeP7swszsheQ66elQHXmts7iWyTyuSKYSazSit1yLd0u+rjznEwqIOjd7AVEgTnVZx
         Ad4uhq4HOysch+ro1eXMq59BrZad/QY9qCuLwXP3ZNRDRMQ7/Z3oQ7A3GKkDDOiqJT+W
         n2zepF67if6IJuUh22qgGDNSzGAMMKN1WHuPg5Yq6aDUm7l6IjOLIO1xeWBez58Z1U8F
         BxG3ozdJ/+km8c0S9UjtFr6/4xmIjkU+LlAfl9IoiQjA1tx3SKFoo2cqRkMax8K+tcps
         w4GacEq9dlLIIuFchai1XrrOyyjETxfU6VRuXEIhtMH/nhYXTxF8nsFAQCrMuR68uZr5
         3GUQ==
X-Gm-Message-State: AOAM532Fd0X6ohd0oOWLwkib/YlYi66NeHeYS/NA07QuzFXTXBfwCeV1
        IsLgj1NCWCkg8DbFP52qmLs90oJKIfaExg==
X-Google-Smtp-Source: ABdhPJzxEOYHN2MG9/GIsBHK7NbPNuLOWZGc69ksnsDsaAqP2uQMHkODmclOdUHQl5g84mvXwh8W9w==
X-Received: by 2002:a1c:9d51:: with SMTP id g78mr9443545wme.5.1614473362932;
        Sat, 27 Feb 2021 16:49:22 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 06/14] getgrnam.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:10 +0100
Message-Id: <20210228004817.122463-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify these functions to use 'restrict'.
However, glibc uses 'restrict' in getgrnam_r(), getgrgid_r().
Users might be surprised by this!  Let's use it here too!

.../glibc$ grep_glibc_prototype getgrnam_r
grp/grp.h:148:
extern int getgrnam_r (const char *__restrict __name,
		       struct group *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct group **__restrict __result);
.../glibc$ grep_glibc_prototype getgrgid_r
grp/grp.h:140:
extern int getgrgid_r (__gid_t __gid, struct group *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct group **__restrict __result);
.../glibc$

Cc: glibc <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getgrnam.3 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man3/getgrnam.3 b/man3/getgrnam.3
index 87f61c260..1b13208ba 100644
--- a/man3/getgrnam.3
+++ b/man3/getgrnam.3
@@ -41,10 +41,13 @@ getgrnam, getgrnam_r, getgrgid, getgrgid_r \- get group file entry
 .BI "struct group *getgrnam(const char *" name );
 .BI "struct group *getgrgid(gid_t " gid );
 .PP
-.BI "int getgrnam_r(const char *" name ", struct group *" grp ,
-.BI "          char *" buf ", size_t " buflen ", struct group **" result );
-.BI "int getgrgid_r(gid_t " gid ", struct group *" grp ,
-.BI "          char *" buf ", size_t " buflen ", struct group **" result );
+.BI "int getgrnam_r(const char *restrict " name \
+", struct group *restrict " grp ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct group **restrict " result );
+.BI "int getgrgid_r(gid_t " gid ", struct group *restrict " grp ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct group **restrict " result );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

