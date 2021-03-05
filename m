Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5205832F6EA
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbhCEXvZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:25 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E1DC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:24 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 124-20020a1c00820000b029010b871409cfso254528wma.4
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hHn0u2OT8h7IYFzQCH/l5VZgOTcgitnRZP897M9A4CA=;
        b=jEGAzPA1a7I/r0bJ3SWhpOUIngERj1XLl8KWH7mRkn5+7Ij1qT5rmgUbLkW5HVngTb
         a7raQnZKV+DQJoc8BajfyLtqjmUs3768EPs8JYWkROtHHGBJcq25zvM+pa8DfnYLLMBD
         F6hwcLoJuQVHP8PLicH2L/1ZZkvvd2y8g8/S+tkraxyttiy+Bmo79CEyTmPFG7Zjla6Z
         syrVHO03pO9vMLuuCN1MwEP+/Ld/KQvnIY9Opr1UBhekVCbkZkIMM2Sa3LVhCKgqFvZL
         d1zt8viSJ00OGYeneygv6EEa0S8zcaDqNnoLCG+Z2uAk+s+fYWvTkQ6Yc2WL6qaFRuJe
         Unjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hHn0u2OT8h7IYFzQCH/l5VZgOTcgitnRZP897M9A4CA=;
        b=W1XkEkg+q/5qb14yXBqBWxeA1Rs/zei5+wxBWBKyvkzQsF/+8E0s4Zek2wuK2xRhKp
         SWGBzgL1QRF6C9cDgCAqM1erSXlA6S+6aH837mq8iwWwgFtoK7+1B3h/v1W/ZsND5QvK
         v0k8v9eXK72YScEbiIUP60e1hkGiNCxMn9aa+G4IFsTydVHvhX5pj9oUNvrdJ2AUl6WQ
         xlb1XWBciqhb7zhn4cZFNtktbEAaoqtgZ4+4PTLgTTSr2CWfII0JbPpxZvLmStCaOwGa
         7YPfff9rm7N8dpeaVg4iGrcjEZm5hV6oAUT4Utb6EkyEjcBvAaVJTVUyQrOWIzIU97aa
         WfsA==
X-Gm-Message-State: AOAM531uwLa1yXlIaYnACid44CK72FQsxIOGYCpDYYzXi+zIeUSOuRIL
        Z/A3X2RYxsVlUWW1qoviJws=
X-Google-Smtp-Source: ABdhPJzZ2GF9IlZDcpvuGN4QJvKb6wiJz3/eDd3eI+3W8l+K/yvdS7ouHsgJYPN892tHYjTFEYhtxQ==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr10839051wmi.127.1614988283710;
        Fri, 05 Mar 2021 15:51:23 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/22] mbrlen.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:54 +0100
Message-Id: <20210305235105.177359-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbrlen().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbrlen
wcsmbs/wchar.h:307:
extern size_t mbrlen (const char *__restrict __s, size_t __n,
		      mbstate_t *__restrict __ps) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbrlen.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/mbrlen.3 b/man3/mbrlen.3
index 8ef088724..9167eeae5 100644
--- a/man3/mbrlen.3
+++ b/man3/mbrlen.3
@@ -20,7 +20,8 @@ mbrlen \- determine number of bytes in next multibyte character
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbrlen(const char *" s ", size_t " n ", mbstate_t *" ps );
+.BI "size_t mbrlen(const char *restrict " s ", size_t " n ,
+.BI "              mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

