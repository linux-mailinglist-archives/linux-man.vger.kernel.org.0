Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA870324133
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235893AbhBXPoJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238312AbhBXOu6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:50:58 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A86C9C061A2D
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:10 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k66so2063190wmf.1
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cbibX1kagqxHIlC5VaDqHPhf8A+VNI27/UqPayXdAUM=;
        b=eSOoF1NhdIIjOg0mIVhntBYvoHXI9W/ROm+gWVLl2b/QroQQwnYgOg1jS6/6r/uJW/
         ChzK0vsNzG5T891D1qnu17c91EcETlP06hW122H1t8ejz2G//3YvyuDgreuarF9D0Nym
         mMhjXJsId1QrMFulSVITOIlP8Kys7br9vEQ6PRDaenyIyJT8eui4WhXFtSTRubHgVP49
         CIdDFUG4gwVtRWg3krqT+o86YhI18y8GeDC8/lh8zG9zC2fJI562CpAx0vCzoM9viMPw
         7mdzK0xRbo5tR414r7UZW3YEoo5Nve9f/35resJ8VkwaGq3wH3QGNlFvfdAuiQyP5WgD
         OPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cbibX1kagqxHIlC5VaDqHPhf8A+VNI27/UqPayXdAUM=;
        b=dwWFJXlGThRyBMIQXmrHIdftAmQ6kmLwkwOePFPsQKeu4nDV+JeGgoyOY1VxjR48DN
         D6PmfOWRVzHqwI+PIocpFT7Vq4OgGUArRkn8aSu31Aw8i5hY130f9n/ws89RiKYFL+vl
         vzg8QfLMv6ZlGvHWzk4tZVLV9IgJejBLho1VhiiXsnVf3inXE097GPh9Mki7Qqtgg9vt
         NmQ/W1dVwl4U6Q24LWgX5DlLuhJ/pa+lf9pch+ov3pe6XT8Lk1Igzr5IvqzCOkWhFke/
         SzfWH+JZIObzPx77vva/WnkiiDBPQ3/9FtYXbswjdNmiifknU3N9LOrfN5BgeQB+hgVX
         4P2A==
X-Gm-Message-State: AOAM5312FURvz5cLeLZsvkndyhrtDbHhkdy/Oz/7FsH+5WRxzcMaGbni
        iRtMBhrnVn5Hg2ofRTaTCvI=
X-Google-Smtp-Source: ABdhPJwuh2QE1fiA2Q6fthKbXETTNI4wvcCkioD9E0gZc8/8BOrmy6YiL1QThwl6cI2ZmoBePaNnxw==
X-Received: by 2002:a7b:c5d6:: with SMTP id n22mr3993486wmk.70.1614177849481;
        Wed, 24 Feb 2021 06:44:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 19/20] fread.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:10 +0100
Message-Id: <20210224144310.140649-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in these functions.
Let's use it here too.

glibc:
=============================  fread
libio/stdio.h:651:
size_t fread (void *restrict ptr, size_t size,
                     size_t n, FILE *restrict stream) wur;
=============================  fwrite
libio/stdio.h:657:
size_t fwrite (const void *restrict ptr, size_t size,
                      size_t n, FILE *restrict s);

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fread.3 | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/man3/fread.3 b/man3/fread.3
index e3f34b7d1..2b59916c7 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -50,10 +50,11 @@ fread, fwrite \- binary stream input/output
 .nf
 .B #include <stdio.h>
 .PP
-.BI "size_t fread(void *" ptr ", size_t " size ", size_t " nmemb \
-", FILE *" stream );
-.BI "size_t fwrite(const void *" ptr ", size_t " size ", size_t " nmemb ,
-.BI "              FILE *" stream );
+.BI "size_t fread(void *restrict " ptr ", size_t " size ", size_t " nmemb ,
+.BI "             FILE *restrict " stream );
+.BI "size_t fwrite(const void *restrict " ptr ", size_t " size \
+", size_t " nmemb ,
+.BI "             FILE *restrict " stream );
 .fi
 .SH DESCRIPTION
 The function
-- 
2.30.1.721.g45526154a5

