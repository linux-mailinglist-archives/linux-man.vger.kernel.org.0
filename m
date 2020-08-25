Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1C4D25187D
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 14:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729810AbgHYMWE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 08:22:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726015AbgHYMWB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 08:22:01 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF486C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:22:00 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 83so2188901wme.4
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=caQiLp25az9dWG++w8CZP9L4OfUlhXPf92fsuYKbw5Y=;
        b=a3Z1tDJQSBSl87WL7u5jcsn/IiSKBAtZYE2HBoku493+KZGLx0kSQB/wIE/E5U2m5u
         QYYdZ2hzkSReDlCx6/6q1jgCGHGltNGoi8mJ0xizkKM3YouxHN20U8Kv4LvyLJgeUP1h
         iOcjMKGn8GghBwIaKlGLE8lgUtB3rNo5FtVaIR8gSjlQ+rBG0Q0vNglh0rGSUQo8TTXN
         WOVBfBlq+uOAp3g9x5nzbmYbp9ZYLtDZSpnOG2XjzFSTq9Gy6715qmrSAKELVhuWOAFG
         GCivr0aijeIII6Uf+8MiXuzJUEeShvHUSlsdlu4fwXFLgrgONA8yRmMHMWHsq7C1qFsL
         yreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=caQiLp25az9dWG++w8CZP9L4OfUlhXPf92fsuYKbw5Y=;
        b=ulYldnAy5I4J2OYBZa0R7eWl7lN51R5oa91l5cxLtcYFQIae72sHo5Ryt4JRLPm/Op
         2CZqsxocblY+AdcdbZ411qlUoTsGCLysBZ4duTVlocWK9KmIrcq641jRX2Ui0Q9udY6T
         mMKPQR0xW7mLG0jf1xjEDSwQHp23+GYqQamTfFxdyOA2TAztMWkUKO0QGdouL+PoUbaP
         2Am4DXVVJuRNtxCGaPgVHD5VFSbOEj1qWjV086WqWoyLxONYB0NpeCX093LU1dvTaqM3
         n7mKmTHGcMMMF4CWeae2Yah63l6YJXd3olr3y200iUCPVjGtXLTJYYSQFTW8gsz1oW4t
         3C/Q==
X-Gm-Message-State: AOAM5332TrtMQBzNPz0tCwyef/pNOquAEhooUk0CBAosvAjc1wuXs67O
        MRj4lIyVRLfyLuiBqo9kX16Af6q+oSPoCg==
X-Google-Smtp-Source: ABdhPJwLjrVG1gu5/0pRS8iZE8fFvTtYIEwV9grxhgyoWcv1/69Ax7DV21egBXrzFyDVcqfZ8Wl/Mw==
X-Received: by 2002:a05:600c:22d6:: with SMTP id 22mr1792589wmg.120.1598358119285;
        Tue, 25 Aug 2020 05:21:59 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id k13sm5808664wmj.14.2020.08.25.05.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 05:21:58 -0700 (PDT)
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof
 consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Message-ID: <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
Date:   Tue, 25 Aug 2020 14:21:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is the patch for (1) as numbered in the previous replies:

-----------------------------------------------------------------------
From b0880bd0485d9abc93bcb3055342ec328240b7cf Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Tue, 25 Aug 2020 14:14:21 +0200
Subject: [PATCH] getgrouplist.3, inotify.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Never use a space after ``sizeof``, and always use parentheses around
  the argument.

	Rationale:

	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getgrouplist.3 | 2 +-
 man7/inotify.7      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 61c88f75f..aea52d999 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -164,7 +164,7 @@ main(int argc, char *argv[])

     ngroups = atoi(argv[2]);

-    groups = malloc(ngroups * sizeof (gid_t));
+    groups = malloc(ngroups * sizeof(gid_t));
     if (groups == NULL) {
         perror("malloc");
         exit(EXIT_FAILURE);
diff --git a/man7/inotify.7 b/man7/inotify.7
index e60d9c82b..9b2d7a4e5 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -952,7 +952,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])

         /* Read some events. */

-        len = read(fd, buf, sizeof buf);
+        len = read(fd, buf, sizeof(buf));
         if (len == \-1 && errno != EAGAIN) {
             perror("read");
             exit(EXIT_FAILURE);
-- 
2.28.0
