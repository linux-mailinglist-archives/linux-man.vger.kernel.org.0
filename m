Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2E5F439E85
	for <lists+linux-man@lfdr.de>; Mon, 25 Oct 2021 20:28:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232932AbhJYSbS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Oct 2021 14:31:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbhJYSbR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Oct 2021 14:31:17 -0400
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3148EC061745
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 11:28:55 -0700 (PDT)
Received: by mail-ua1-x933.google.com with SMTP id k28so19781201uaa.10
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 11:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=meklu-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=8YTLaUKVN+GxjFa2Us3XpTMehWZdswarK8OwcrmfLtA=;
        b=TwwwE9MH70A1N0nz2CQHbFbsrJ3nEJ4+Y9/V64UMo3LYQ+HogPkVOAWoEiCnwrk8rS
         AOnlfmlUy772aX81mAGI+DmLHxisvYzDJ6EE7a8nntYUE4VG5ZrvxxYJmDyVJWyeu30u
         TDX+sUMqE8BA7i6S4GLZGvNHlEJPfH6Kqy5dCj8J4J6XpH0l7GxEDRK0JVTbJrzP1Hn0
         1WyVgi2PL6wctakUnCkdqRarldkjVBbV2bRsRfEzy3Lonc8bdEPZyZJJshvhzkBN07l3
         qZ07CUy8mpP5EDoNuJqdgASWBGV0m5yEbGi+DhoGtnxMfin7xxVfx0Q3lT4ev9NewDs7
         bFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=8YTLaUKVN+GxjFa2Us3XpTMehWZdswarK8OwcrmfLtA=;
        b=w8iQpoz4l78ZHVRKvq1gGyOEQVuy3nFGFNCjko7M/j5DXL6ej9KOXiKKPfWufi5ie7
         8TQZ9sFElYzKAJP0Tk6UZy1k8hW1OWVhltARpQQNiba+hNTaDw2KVsi1C5nV++VShFs5
         C38+cD+joC+O78cY5xTt8hEOmGa480Fw170uDFvNIJACZdMDTVUnfdQhb7CSsBvPKTuh
         ooGZKbZxaJOwYLKlaFOv1EJ0Gfg7WplnGhpaAK5TyPZVu9CckuM6clrwqCRau4omEzNi
         Ht3ZGlVFhCmQDMb2KLpIKTroYNiWHtqYCb6tCgwCQWRaCozadRYowiBTl2/pdNQUodyx
         O0xQ==
X-Gm-Message-State: AOAM532RDshLHntWMD1N0IvaSDuh9LTH7PHkHEo/WNM13td3+sPhX2BR
        ZVJPG9HTo4ssm1sNZVjF/P/aNBehqa8ypkXUZxf7OXHXXRUYqACP
X-Google-Smtp-Source: ABdhPJyv97Pi6xm1Nz/41R0mTiQrX11nKWGCZoIBuxO1IqxkyDwaG7ri/ZrH2fWchsWrw4L8vZAMZUkNnHNn1c7lLUg=
X-Received: by 2002:a67:f752:: with SMTP id w18mr4174625vso.36.1635186534399;
 Mon, 25 Oct 2021 11:28:54 -0700 (PDT)
MIME-Version: 1.0
From:   Melker Narikka <meklu@meklu.org>
Date:   Mon, 25 Oct 2021 21:28:43 +0300
Message-ID: <CAFbsDtgjmDEHXfy2xB4zt4MM5uZtOWZcT42B1QoFGC-DJgHQNg@mail.gmail.com>
Subject: [PATCH] clock_nanosleep.2: tfix CLOCK_BOOTTIME
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Melker Narikka <meklu@meklu.org>

Signed-off-by: Melker Narikka <meklu@meklu.org>
---
 man2/clock_nanosleep.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
index b8c4afc2c..1d607e1ce 100644
--- a/man2/clock_nanosleep.2
+++ b/man2/clock_nanosleep.2
@@ -90,7 +90,7 @@ since some unspecified point in the past that does
not change after
 system startup.
 .\" On Linux this clock measures time since boot.
 .TP
-.BR CLOCK_BOOTIME " (since Linux 2.6.39)"
+.BR CLOCK_BOOTTIME " (since Linux 2.6.39)"
 Identical to
 .BR CLOCK_MONOTONIC ,
 except that it also includes any time that the system is suspended.
-- 
2.32.0
