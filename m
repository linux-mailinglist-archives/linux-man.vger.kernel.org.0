Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6FA5320A77
	for <lists+linux-man@lfdr.de>; Sun, 21 Feb 2021 14:13:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbhBUNNN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Feb 2021 08:13:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbhBUNNM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Feb 2021 08:13:12 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64732C061574
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 05:12:32 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id z6so4925403pfq.0
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 05:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=movyRmJ/Z+FN72TIK9LuDIE82PmbUuPZAIkVM1J7sf8=;
        b=W9Wd1SFzxJtosiogcRERwyNivuaTstxWG4S2MPktZJOjT4jMBFxjrz4NBWJ25QcnYT
         r7YpO5SeI0QNDtSmS/hRNxrJYEhv5/G8HJlIVZe7KUx3jqCkbz+MhIziq+F7ZOOKfBv0
         xToXp7bYd+5Xngjp6ixXzYwnER4efPQe6Il2UCFsEMNtsl7FFbd0aG5rJZSvPP5l8wST
         WIpIQEepTeCSMNSTuiDiWt+cW4fRkR7DT2JSuEohsutegT4s+eOCpMzi/n1yWtjYIaNh
         mo5qzZ8HbVhVuTKeO3AMj+g64Otrlwdcbl01a/BPV9wYV98/XrqfXNjtGoEv2c+fmv3a
         ZxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=movyRmJ/Z+FN72TIK9LuDIE82PmbUuPZAIkVM1J7sf8=;
        b=YIqSP2lR/iiFyCPjAdS2kyan9P8qQi9hlqdONPuqykd2zYJhxpGsJRneELxmY0hLrf
         o/UIB0UpPSjPXpPXZoH0z+/GGYbAVhWHGDCCaKfi3Ki75/VuT9dC3ZT5eqYfkndDa/BS
         sdGyeaL0H021E0fp+e7q/B7U7hL/pMWVNPegSXnInGxUdFaXWcIlUJRgBk1XYFI9/t9u
         +26tdObrgPf7uthoZGKJkeQBLv/vv+NDoMefG+CzKmUbv7qI/cTiU3p4WggabCvA4T2O
         S10XE1lQn4fMosyrTCcm0ovgI5Pki7XQFsvgwsC+dIkTjzFdMAT8PP4zt4M/d4WwgW47
         LaEQ==
X-Gm-Message-State: AOAM530vBlrSZwQfJnUOQnkh7etRa/R/dQgoI+CBiKhoxtTmy/wI2Qp9
        +lBFRjLBCsZ/lsbeveCQaXsAEA==
X-Google-Smtp-Source: ABdhPJyH9/+lBXpwRoEOG0pviESUDZ71baYzvGkD6eUODcP2N0V/NH8F2obNUqT+IlJeV8Ug9oR3cg==
X-Received: by 2002:a63:e44a:: with SMTP id i10mr4215357pgk.404.1613913151973;
        Sun, 21 Feb 2021 05:12:31 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id h17sm15769555pfr.200.2021.02.21.05.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Feb 2021 05:12:31 -0800 (PST)
To:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Subject: [PATCH v3] man2/openat2.2: add RESOLVE_CACHED
Message-ID: <51d86aa7-8a19-5457-6932-0bd3c746c4a6@kernel.dk>
Date:   Sun, 21 Feb 2021 06:12:31 -0700
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

Since v2:
	- Incorporate suggested edits from Michael

diff --git a/man2/openat2.2 b/man2/openat2.2
index 3bda20620574..a8381c753f0d 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -385,6 +385,17 @@ This may occur if, for example,
 a system pathname that is used by an application is modified
 (e.g., in a new distribution release)
 so that a pathname component (now) contains a bind mount.
+.TP
+.B RESOLVE_CACHED
+Make the open operation fail unless all path components are already present
+in the kernel's lookup cache.
+If any kind of revalidation or I/O is needed to satisfy the lookup,
+.BR openat2 ()
+fails with the error
+.B EAGAIN .
+This is useful in providing a fast-path open that can be performed without
+resorting to thread offload, or other mechanisms that an application might
+use to offload slower operations.
 .RE
 .IP
 If any bits other than those listed above are set in
@@ -421,6 +432,14 @@ The caller may choose to retry the
 .BR openat2 ()
 call.
 .TP
+.B EAGAIN
+.BR RESOLVE_CACHED
+was set, and the open operation cannot be performed using only cached
+information. The caller should retry without
+.B RESOLVE_CACHED
+set in
+.I how.resolve .
+.TP
 .B EINVAL
 An unknown flag or invalid value was specified in
 .IR how .

-- 
Jens Axboe

