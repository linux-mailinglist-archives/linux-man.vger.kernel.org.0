Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB603316C2
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbhCHSyp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231256AbhCHSyU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:20 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB81C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:20 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so4441505wmd.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=keKhGIASzR+KDmVSRdeBYflkvdCHb0zMub9XC6AIMKg=;
        b=NVNGwkt1b9s6OboasTROLsPpveMrrXcnzLxcir62rRCWg5U9tnTUnEVqO8rDbHhH9z
         3dIuKnLy3a57u9x2Scb3JQa+lgQYGkq9iN6i/LDmv20UztyZcyqoMMRicl1zb9KJ86eM
         4HGe9F1iCjJjL+udOFgBVegN9Lhk2YB2n3aaUOFkqp5oDfRZOHYuy1zgl8sXUCbLTim+
         V5qs8MSXH0uLqfd5Xc0qJHVCy6BZdAIXTUc8LquJ6kFnq2Qy3IksM0EBmeokNAUqRmWx
         0Y3JeoAiwSHo5yFdB//4OWHZZys0vzlPtPQYmjZA2GKFvBwsc4SwRTMCHrVaILqwM/8j
         eP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=keKhGIASzR+KDmVSRdeBYflkvdCHb0zMub9XC6AIMKg=;
        b=GTv2oFY9rUoSqx9GZHl45eYkTVJjsKKNSS/mKI0pgkSkHJBBEjfqv7yp+4H8TG2t5F
         vxyv8PRdUcdzoAFGvEXP1kWMdWwDITgRagLA9uqrl1eWL3dYnZYlPAJHEZj7XSnZeNgy
         ZoSBeFIt3tQKIOQ1/SHitJlBF4J8R5DIfee411g2ePMXpAOrHRctOdKPwKs69CAZTT/K
         gy4Vn37m3t6Y2nmx4suxNQNUbpfEW7T5QVluzY/iwzCRxww9Mrfd1fG5itKF8Kxlo7Bd
         6W/TRfL8141sTuKoScygA7k+dXxkDKPvSc0vsL39ajxWV0S+ARsC9L+6kWIJ7ojBsGND
         odog==
X-Gm-Message-State: AOAM532qtpDcWr9e5vvPIhLS77B4JDehMJLtp00Wn2di/aXUz9ihV7vm
        Hgg6m2G+luwf5OQaCpTr00c=
X-Google-Smtp-Source: ABdhPJzeTc/UU+UJZgRfFRoj6CYGLrpNHMLRCnEm9lK2m3HgOU8H0Jk+L4wcdaWJ6jFXMNatBroYvg==
X-Received: by 2002:a7b:cc1a:: with SMTP id f26mr197020wmh.19.1615229659419;
        Mon, 08 Mar 2021 10:54:19 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/23] putgrent.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:21 +0100
Message-Id: <20210308185331.242176-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in putgrent().
Let's use it here too.

.../glibc$ grep_glibc_prototype putgrent
grp/grp.h:93:
extern int putgrent (const struct group *__restrict __p,
		     FILE *__restrict __f);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/putgrent.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/putgrent.3 b/man3/putgrent.3
index 6ce977cb1..2a2801a96 100644
--- a/man3/putgrent.3
+++ b/man3/putgrent.3
@@ -12,7 +12,8 @@ putgrent \- write a group database entry to a file
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <grp.h>
 .PP
-.BI "int putgrent(const struct group *" grp ", FILE *" stream );
+.BI "int putgrent(const struct group *restrict " grp \
+", FILE *restrict " stream );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

