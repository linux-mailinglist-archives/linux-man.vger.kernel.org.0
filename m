Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E86372DE699
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 16:32:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727944AbgLRPbr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 10:31:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726299AbgLRPbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 10:31:46 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27C67C061285
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:06 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id e25so2981258wme.0
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nk25CUPu7X1Gdk0asZ0e9NZe5SkQkGUrRJ1azsdJvI0=;
        b=FLInaUZ/CFR9WTHTCc2YV/U+0kGwgyv0dOC/M3hdyTos0AYCxoy+Z8QToJ6PJdN+/0
         OLTcZnw73BLOe4Xyr8fGSLIYEPgjFXInqtkzmWhBINXcLEFb+cJeEWUjhZ7O1K/rIiFU
         X2sQjZBEMz5W3IkzHHogd48Gnb8zp57qANAvJqzmNFr6NrpbKbkc916GYneofotqjGWO
         YMVhRDvn0zaFGwsJfBnQtjL8zjcxCcTmVIQ0iCwLT6nvzY373+J8j35Fh9/ZD3B3PuQu
         tbW/rrs5YjfsrsYfFlv2CMyHlzyzEmNtF14FvhvZj0Yay3kb+HcxtkqMxkAmRMwZ6S91
         j3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nk25CUPu7X1Gdk0asZ0e9NZe5SkQkGUrRJ1azsdJvI0=;
        b=o/UUydmp50pnIaCLBOUjOdkxfs6nRU7sS0KMG3p2h3aPfQsRoirpsxF7mNBKzEDoJ3
         mWP/5gnoT04O+7fBHdrOsGJ9Ijxuj0nc/1bbbF05Lv9hJmpZTHA+WHomt1Q9li9NESQX
         hNJ//YYkiuqktdAjZ6nfuk+3v72NfKhJAlN2BRQkPDZnBUcH8jw8Gofymq3c42SUGnnL
         M5mKCBBM1ajtHpN7L9fWJ7ZSS+0zLnY1XnHadVnjJ9yVZkFXFUBKFiAeVfJWjo9mYkVg
         0cMmes24dcz/Tzz1p83vkVkT5B9UepbgQvCUHi9zucZ7twQIZfOKvL4M2meo+3gxuEZQ
         dFpw==
X-Gm-Message-State: AOAM532eaEtXMnTwNNUovEi2EwsvBARfMlRcLafq7AzLzdllv6MuVDsq
        yM+EUuQv3AcQLR2w+ZLWTUE=
X-Google-Smtp-Source: ABdhPJyjEBPkBGjCJq5NifxYQSynNARwvl22iHm1bQEWocTkdnEsWQ/k5/wLgZzVaM6N79+4OpsJKA==
X-Received: by 2002:a7b:ce0f:: with SMTP id m15mr4736614wmc.56.1608305464898;
        Fri, 18 Dec 2020 07:31:04 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j10sm13730492wmj.7.2020.12.18.07.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 07:31:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 3/3] filesystems.5: wfix: ntfs: remove FAT comparison
Date:   Fri, 18 Dec 2020 16:30:37 +0100
Message-Id: <20201218153036.25244-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201218153036.25244-1-alx.manpages@gmail.com>
References: <20201218153036.25244-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

The main point I was driving at with this patch was to fix
"Microsoft Window's FAT filesystems" (i.e. FAT filesystems which belong
 to Microsoft Window, which is decidedly wrong).

FAT32 first shipped with MS-DOS 7.1, as part of Windows 95 OSR2,
but it's a (relatively) simple logical extension of the previous FATx
filesystems (16 and 12 as we know and love them today,
 I don't think the PC ever saw 8), hence the "VFAT" driver name ‒
calling FAT-anything a Windows filesystem would be a flat-out lie,
calling it a Microsoft filesystem would be, uh, facetious.

NTFS (as part of Windows NT), on the other hand, is wholly different
WRT the scope and feature-set (it does borrow some layouting from FAT,
 but reading NTFS as FAT doesn't get you very far, or much).

The replacing bit is also questionable, especially in a.d. 2020:
while it is true that you cannot install NT on FAT (after a certain
 point? my memory ain't what it used to be), and must therefore
replace your existing FAT partitions with NTFS during upgrades;
Windows NT 4.0, the last product to be NT-branded came out in 1996,
i.e. you could not install Windows on FAT (and, therefore,
 upgrade it to NTFS, replacing it) during my entire lifetime.

Indeed, in $(date +%Y) we live in a post-NTFS world ‒ putting NTFS in
the same class as FAT beyond "is a filesystem" is a joke.

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man5/filesystems.5 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 71be05230..7f2e02096 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -166,9 +166,8 @@ you need special programs, which can be found at
 is the network filesystem used to access disks located on remote computers.
 .TP
 .B ntfs
-replaces Microsoft Window's FAT filesystems (VFAT, FAT32).
-It has reliability, performance, and space-utilization enhancements
-plus features like ACLs, journaling, encryption, and so on.
+is the filesystem native to Microsoft Windows NT,
+supporting features like ACLs, journaling, encryption, and so on.
 .TP
 .B proc
 is a pseudo filesystem which is used as an interface to kernel data
-- 
2.29.2

