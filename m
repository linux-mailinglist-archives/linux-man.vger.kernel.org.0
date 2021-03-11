Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ACB933804D
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbhCKWeI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbhCKWdr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:47 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8F8AC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:46 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id e9so677245wrw.10
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0gRA80GInmpFHFi7zCWqBqLTKQeLkkGQPvVpOLmqDBQ=;
        b=BLE3+2JT5u8onGc+5QGwj7wq8n86GJxS4KSL2y7udI6LmHgwSTpK1fjioP4VRVDQb+
         SK4U+taF5QtVGxF1g3tCBZMVHdPyVr19b3LUM/7ZDCxRXI3q3XCugerhgIA9DjDFP81T
         3ZEoJtIuFwn+R+fdle6CN83ytHbQqBYmmH0wS6mFw+fcDDQpOXlzLcyb1D6NWYxfuh32
         JKnV6+HQSBJdnpEvbJV9kPMmtjSzeeS1wLwoMUFOrEdjCeOHvjFMe6UinYkNa/oHMZFY
         eAW1NO/LbuGKAbqmIrb6BnoXAhpUnobRhOjrildmjfck59nc2JW5zMWfGlzs5eTeSaAP
         MsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0gRA80GInmpFHFi7zCWqBqLTKQeLkkGQPvVpOLmqDBQ=;
        b=sPZOHbqLHnvPJxg1FHNlY9ClPnfeheQV/apCu2SjAPKvG16KiL2ZHP+khM4uHYu+BP
         SFLU7ICnDkZGTzmyHihyK8kcMCdEMWw3pyT5wFkeD7tcQouKsCd3NKqEcRKEAo/9NIhG
         lQzcPR7wddWZ2ZvCSUMjzHSjlQ+pqTjw/7y9gbzYaafbFd442nLCTiH45yQ6XphVe2wr
         vfJt409W8e10bYfI+vvi+7XN3Zr+GU9HygqWeRASY+x39dVn3KfjIB33kQxeYKYE8vgt
         nc6WNHRbdjV0PohFyTQ2PuAkJLyHvQ8JGtExWct/YOiwzzot+2Z7RHy3eCcp6HIB5z/f
         NyiA==
X-Gm-Message-State: AOAM531gEzsNta+bCPoZYlsxEWPHhdn/kKOMz224WGYw7jUVmlO4w/BF
        OMjhPQxt6C38FKfFCxnufnc=
X-Google-Smtp-Source: ABdhPJwCFI0qLQXn9J7w3uepR+5iAMlsynjIJJiVA+ZoPX5PFD6f8ND63fYfaNHSonQw+tSKI7e5PQ==
X-Received: by 2002:adf:f512:: with SMTP id q18mr11073225wro.61.1615502025454;
        Thu, 11 Mar 2021 14:33:45 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/17] wcpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:17 +0100
Message-Id: <20210311223330.722437-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcpcpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcpcpy
wcsmbs/wchar.h:551:
extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
			const wchar_t *__restrict __src) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcpcpy.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wcpcpy.3 b/man3/wcpcpy.3
index 9c30da2d9..5ef063e05 100644
--- a/man3/wcpcpy.3
+++ b/man3/wcpcpy.3
@@ -19,7 +19,8 @@ wcpcpy \- copy a wide-character string, returning a pointer to its end
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcpcpy(wchar_t *" dest ", const wchar_t *" src );
+.BI "wchar_t *wcpcpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src );
 .fi
 .PP
 .RS -4
-- 
2.30.1

