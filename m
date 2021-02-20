Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DF123206D9
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 20:18:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbhBTTSA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 14:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbhBTTR7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 14:17:59 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0BECC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 11:17:18 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id t26so7552854pgv.3
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 11:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=qNGJZvXd6vF08WCRDqK2Jja7bAdePk+dKWeEebmmJ8E=;
        b=HadZihy/XQQmcBwX6SBcixH0feL7UcSHjAyR2v3ArV0BN3KUtOYPXpSJGvIL59vRqF
         ZJjozv1KGU75//x+CwWGCZhc4j9vl6XKHfhAQUAhZsWu3gsVhySrJAs3znJUZz3tptH3
         DfI059m8Jptf+oJ/WLfx5XXqAKA+6neDevhVRxCB93RxkUYRAkji30Ig9HBVkRTHpXuE
         iiUw3SIsLDEpQsomthuNTRT7U6WFb+FvnhD77epWsPxGch5xXwGzTgA/0OcPj6Zecp3V
         hLL3OTH179Am55uYQ3xEQCSvykRsEjXsCqFSBSbYUMnuWQ9rw14LNyo6qrZB2vZ+gQdu
         nIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=qNGJZvXd6vF08WCRDqK2Jja7bAdePk+dKWeEebmmJ8E=;
        b=Jav/mRMwcFt/ybSiqlUet/0RTF/tMFE/JekzIDiXTa+25Xf/FZtRSIBt8sw2mDWFEV
         iIkK0oKuqFV8jUn7dVyL78y/Q9a/I/y/xYAJ/mmE5uU+F406DbYYslRTXP83Uf455bDK
         i3OO9TVp+S37Qid4KHY2uvz15eTLNT7rm91mYk/neKGgIwRNioM2b1UBoNxRXilS0xvN
         Hx9aEQ3ZcaTY7ZXu3+zEH5dwamk4lodlQ2w4nFbzh1NfhiewZzgdDLj9tC1XSpW106ly
         Vu4eMoTnorLIWWhg7Ys3eySGHbB2VfNUUcV4Fn0DNysl9b3Ff4sVHgxpdsnBCLgI3xRY
         787w==
X-Gm-Message-State: AOAM530aAgVcQojj0JERnYngT19+3mABaL3cV4T1RDga9i7ZrWkXdcU+
        vR7lqEEFOLuPh8fTf7rzphruGsqaAvyS8A==
X-Google-Smtp-Source: ABdhPJz80bhhX6lp86esY9sX6iP3V2SecMJBy6kfguq+0QQ6+2UGXkm697J5FmfGy/jRCIr28+hKng==
X-Received: by 2002:a62:3503:0:b029:1aa:6f15:b9fe with SMTP id c3-20020a6235030000b02901aa6f15b9femr14962860pfa.65.1613848638275;
        Sat, 20 Feb 2021 11:17:18 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id g62sm13704867pgc.32.2021.02.20.11.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 11:17:17 -0800 (PST)
To:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Subject: [PATCH v2] man2/openat2.2: add RESOLVE_CACHED
Message-ID: <358adcb0-0270-c0aa-b3cc-967cb133fed8@kernel.dk>
Date:   Sat, 20 Feb 2021 12:17:16 -0700
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

Sending a v2 of this one, as the kernel side patches are queued up
for 5.12 inclusion.

diff --git a/man2/openat2.2 b/man2/openat2.2
index 3bda20620574..37e70c43de6d 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -385,6 +385,17 @@ This may occur if, for example,
 a system pathname that is used by an application is modified
 (e.g., in a new distribution release)
 so that a pathname component (now) contains a bind mount.
+.TP
+.B RESOLVE_CACHED
+Make the open operation fail unless all path components are already present
+in the kernels lookup cache.
+If any kind of revalidation or I/O is needed to satisfy the lookup,
+.BR openat2 ()
+fails with the error
+.B EAGAIN.
+This is useful in providing a fast path open that can be performed without
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
+was set, and the open operation cannot be performed cached.
+The caller should retry without
+.B RESOLVE_CACHED
+set in
+.I how.resolve
+.TP
 .B EINVAL
 An unknown flag or invalid value was specified in
 .IR how .
-- 
Jens Axboe

