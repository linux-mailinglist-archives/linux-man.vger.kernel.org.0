Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48A352DDAB7
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 22:19:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727098AbgLQVS4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 16:18:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726983AbgLQVSz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 16:18:55 -0500
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DB6C061794
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 13:18:15 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id v3so238176ilo.5
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 13:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=AcCvlB93j9qaBCf+9CeuBRFUHyZ9Pne+sKk9bVyvFbQ=;
        b=Wag6mDv66wwH/uxhijTHDulrO/AicJbCF6TbC6ashx38/MEVbnYJChxiKmuiWxoSqC
         LWgwDV+ZtS4sgTgw9JHAnwU0bjSmC7ZiZryzV66Bon3v6eP/I2JtWEpVCL40P4QrkK+I
         xtKBPSahu+3oiuylTQIsA6YYxLOJ8SbuYZbmHsrso3STxDH/3UHV4eM/zHM+eKuIvxqk
         FcofoJsbPk6TP6RU6AkTEM+oSidXauY4T2D/b3iQ24/AtM5yc2e5wCOiU143NKEqqtni
         /vGKlsuCM0javQ5VVFljBm0aVgs6gamMKkjfoGhhX8EWXsNDrgeZtGGvLSBPVSHRJONc
         EZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=AcCvlB93j9qaBCf+9CeuBRFUHyZ9Pne+sKk9bVyvFbQ=;
        b=douiSvxILEkAWAdp0G6fK0w7NXGl8odaDKf1hJsuAdn6q7UtNdrKjt9DmQ4/zQGrhK
         e7EDFuopp23g8InUUTp9HEbU11n9BNxLL78mDGhdOADrUTz8t0d9VvDaGxNbqYElHCy1
         mGKLcygEKQdfX2Px+WPwbzHtdRN3IhbsKUJ5glYNeC67pI8gOfy5wimSN3zs4WMoDkuE
         3pzIPzGdSokiJY7rt1e4HM8j+HJbNTABnMATT6qViy3O6tI573SmeP8TAQ85QMM2cdFI
         S0SeVcLGfN6ZBFZeoeRgAyP+jk60h27474a3+ITX755WCCEd7b0cxMdS5XdXBi+vY39v
         A/IA==
X-Gm-Message-State: AOAM533SThfnRpvwTIszXkHIhuYAU3URabpBUby/qhLgt81jHxxDMz5E
        +EFg91pNe/HTMhoHFuk5fh1RFQ==
X-Google-Smtp-Source: ABdhPJwtG8OuJTsvRiUE9kD6dSjLCMoLXEUvXHscAbyspj5Eros2toWKlAdO4pkNjxDg/N/GVx2bEA==
X-Received: by 2002:a92:c0d0:: with SMTP id t16mr838374ilf.21.1608239894843;
        Thu, 17 Dec 2020 13:18:14 -0800 (PST)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id b18sm3947884iln.46.2020.12.17.13.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 13:18:14 -0800 (PST)
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Subject: [PATCH] man2/openat2.2: add RESOLVE_CACHED
Message-ID: <187e84bd-59c8-dc68-1eef-9cd13aa70d38@kernel.dk>
Date:   Thu, 17 Dec 2020 14:18:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

RESOLVE_CACHED allows an application to attempt a cache-only open
of a file. If this isn't possible, the request will fail with
-1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
This will generally happen from a different context, where a slower
open operation can be performed.

Signed-off-by: Jens Axboe <axboe@kernel.dk>

---

First attempt at this, fully expecting the phrasing to require some
massaging.

Also see: https://lore.kernel.org/linux-fsdevel/20201217161911.743222-1-axboe@kernel.dk/T/

diff --git a/man2/openat2.2 b/man2/openat2.2
index 3bda20620574..282c13e2df96 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -385,6 +385,15 @@ This may occur if, for example,
 a system pathname that is used by an application is modified
 (e.g., in a new distribution release)
 so that a pathname component (now) contains a bind mount.
+.TP
+.B RESOLVE_CACHED
+Fail path resolution, unless all components needed already exist in the
+lookup cache. If any kind of revalidation or IO is needed to satisfy the
+lookup, then fail the open attempt with
+.B EAGAIN.
+This is useful in providing a fast path open that can be performed without
+resorting to thread offload, or other mechanism that an application might
+use to offload slower operations.
 .RE
 .IP
 If any bits other than those listed above are set in
@@ -421,6 +430,14 @@ The caller may choose to retry the
 .BR openat2 ()
 call.
 .TP
+.B EAGAIN
+.BR RESOLVE_CACHED
+was set, and the open operation cannot be performed cached. The caller should
+retry without
+.B RESOLVE_CACHED
+set in
+.I how.resolve
+.TP
 .B EINVAL
 An unknown flag or invalid value was specified in
 .IR how .

-- 
Jens Axboe

