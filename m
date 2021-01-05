Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDFB2EB517
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 22:57:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729175AbhAEV5g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 16:57:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725828AbhAEV5g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 16:57:36 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A603FC061574
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 13:56:55 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id n16so2122792wmc.0
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 13:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=PZ+9JaBHO7m89g0EJliXtxbmAqYpx0EIgtY8BtT/YHI=;
        b=soS3JNMIe3PtGRsagcZQMQaC9nMEzxWO4FXUDULfF7nL3wFnWIb35fvLSRJFpzz+yT
         cl4xcXf9qRiJRpgupdQ/dTaNvKLHjUGM4LkCyi9o/M6JQKNIg02JmYfUL0hdBbm2A5mq
         TYh/RhrD2JOoAT0k5+d2y6uKHWjGEZu2JUj4Ajf0Kgp74i4K7TPL6efG3I0QloESC072
         Va1t6whmZZDVZjEuUv0hn3mZk3ePUtvNhVokuWlkRNInGxXI1SbK2YW+NWGGYkXQfuMb
         3HSAVJOaUQA1rA+xEpBi5fwFaQEOK3/ig2V2HIwrBi8hCSDqTUEVnT+qN8NfNxxtPpIl
         MZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=PZ+9JaBHO7m89g0EJliXtxbmAqYpx0EIgtY8BtT/YHI=;
        b=CJAj+jmKK2nfFuq10VKCc4zlSj+wgFUANXxPQ7xLbQ7G5d9xpuTQtEwzCov5l70igM
         MXwkJcfptap6EuxJTvtxRycP4Dnev+LvlBle9VE6vkg08Lw/ZaN5Htyx53dE+tsl0Ylw
         /PhaXvf6zNEa9yyyZrpv/Nfx6ULAJv8AZWvujE5labIQzJpB2mLuKTQKZjRgn2CmbGBC
         klfadsa0AFVAlJYA6Xd6w3R+VtlAhXwM/c9HyvLrbOvPW6mGAYnib046Kt9f5d0jSxAZ
         7s9dBhhGXTXQGPlZids4HJwsp+twV8Gx9P1zRNGEu2c7dRrNPpQkgLmYaDWSrkOeS03N
         twuA==
X-Gm-Message-State: AOAM532bXh0EECwe852tZV/v1s5xzbileWrdFe7jglJ2fyOQQhPGV/9G
        bxkbaV0yQT+wDS6F2Ni6gTOw3u/5BPk=
X-Google-Smtp-Source: ABdhPJz/CupWz1iEX1013bq3NpKQvgdNoI4FyFXNXdjCypSMaFlXmgfovLmWjDr7yTeJCHNgFCwPpw==
X-Received: by 2002:a1c:6208:: with SMTP id w8mr989478wmb.96.1609883814392;
        Tue, 05 Jan 2021 13:56:54 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o23sm535130wro.57.2021.01.05.13.56.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 13:56:53 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Escaping whitespace
Message-ID: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
Date:   Tue, 5 Jan 2021 22:56:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

While having a look at your latest commits,
I saw that there's a bit of inconsistency in escaping whitespace
(existing previous to the commit):

Sometimes it's [!\ (], and sometimes it's [! (].

Regards,

Alex

P.S.: I have queue.3 derivatives almost ready.

......

+++ b/man2/setpgid.2
@@ -88,8 +88,8 @@ Feature Test Macro Requirements for glibc (see
 .nf
     [These are available only before glibc 2.19]
     _BSD_SOURCE &&
-        !\ (_POSIX_SOURCE || _POSIX_C_SOURCE || _XOPEN_SOURCE ||
-            _GNU_SOURCE || _SVID_SOURCE)
+        !\ (_POSIX_SOURCE || _POSIX_C_SOURCE || _XOPEN_SOURCE
+            || _GNU_SOURCE || _SVID_SOURCE)
 .fi
 .SH DESCRIPTION
 All of these interfaces are available on Linux,
diff --git a/man2/wait4.2 b/man2/wait4.2
index faa63b30a..f45de09d1 100644
--- a/man2/wait4.2
+++ b/man2/wait4.2
@@ -53,9 +53,9 @@ Feature Test Macro Requirements for glibc (see
 .BR wait3 ():
 .nf
     Since glibc 2.26:
-        _DEFAULT_SOURCE ||
-        (_XOPEN_SOURCE\ >=\ 500 &&
-            ! (_POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600))
+        _DEFAULT_SOURCE
+            || (_XOPEN_SOURCE\ >=\ 500 &&
+                ! (_POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600))
     From glibc 2.19 to 2.25:
         _DEFAULT_SOURCE || _XOPEN_SOURCE\ >=\ 500
     Glibc 2.19 and earlier:



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
