Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC8321F6135
	for <lists+linux-man@lfdr.de>; Thu, 11 Jun 2020 07:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbgFKFN4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jun 2020 01:13:56 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:36718 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725873AbgFKFN4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Jun 2020 01:13:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1591852435;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=odqQwRCFIXcT5WRhdCB941CV9rZN4WXqQEc0EwiJg4E=;
        b=i4XaFuXMHSpx/J7nxrTyb/DKG8taN9oIGYW7xQ1mLYUTCP49sdbU1esUF05MWQYcby5HDv
        kU8ImzVlZ5CzMAHeviOLEfnEsxeYafO70YiHc0EXON6qeB5f1TX1AULD4cbddzTre4SUr4
        evj3c2kSa+230fLg87Tqk6zFNJfQFFs=
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-ZLoYkyxnMpqkRAlGezSLow-1; Thu, 11 Jun 2020 01:13:52 -0400
X-MC-Unique: ZLoYkyxnMpqkRAlGezSLow-1
Received: by mail-vs1-f71.google.com with SMTP id e3so79215vsa.5
        for <linux-man@vger.kernel.org>; Wed, 10 Jun 2020 22:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=odqQwRCFIXcT5WRhdCB941CV9rZN4WXqQEc0EwiJg4E=;
        b=WLzWfhnzjzuv55BCwd/61lGUcOjwkCDDrueW38FfqZqd/LHtADl3JchZEPLyxHi1bg
         AyTzyqZXzf0yLsZQXNWZonOD7rFLmdVGMB3sf9b1viVsuyEVinBomBNjyXlaIlyt2qSx
         RI+Z7pvXJh1ERYVcRqxsskZv7j+lc+Jg8ce1diqsrl3//Hv7txIMRlfwG/Xpog/ptwZR
         SZcHoUozdgRlUK+3EUGF4VAE2bmWc2ibJ5bcu8Z7a6cW8doiOK3IfXOAgMxnkp4Nb+pV
         gybp6ggeS6Z8aAJbUWfC40R7rJwLAnjY31DKCmmGwlcb3K4RG8BEnEUCyDE30slpDvT6
         IvDg==
X-Gm-Message-State: AOAM5334gh20Mq1XnGHG85wtudQf+h7cI4Q+mWv/f0z4V3iJZMfMtqZL
        ABCw+7WRTt0eZugVwPeh6fIZBuZ+yCan70jWwYsrGLGCG03zGBqjhOT0y/tv8hCXIhaLKecUpev
        dFVjqAzbZMhyZB4hcj8+IIrBJGkulLnRQfydN
X-Received: by 2002:a05:6102:4ba:: with SMTP id r26mr5262864vsa.76.1591852432384;
        Wed, 10 Jun 2020 22:13:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTnRwyVFq22TzDMexgpHgDf4mM4leT7bFTqsgiudKWsobCgFqp1XRS/rhtPMirdx2InMeEktLaqi9xTCZ/ng4=
X-Received: by 2002:a05:6102:4ba:: with SMTP id r26mr5262857vsa.76.1591852432179;
 Wed, 10 Jun 2020 22:13:52 -0700 (PDT)
MIME-Version: 1.0
From:   Dan Kenigsberg <danken@redhat.com>
Date:   Thu, 11 Jun 2020 08:13:41 +0300
Message-ID: <CAHOEP55A2UKBWrdGcmeT6pu4rTZwu3ZDF1PC0eYvjJa80ghgvg@mail.gmail.com>
Subject: [PATCH] capabilities.7: typo: lowering niceness is special
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Anyone can raise the niceness value. Only lowering requires CAP_SYS_NICE.

    $ nice -n +2 nice
    2
    $ nice -n -2 nice
    nice: cannot set niceness: Permission denied
    0
    $ sudo nice -n -2 nice
    -2

Signed-off-by: Dan Kenigsberg <danken@redhat.com>
---
 man7/capabilities.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 6254c0ac0..64a9f8e34 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -527,7 +527,7 @@ drop capabilities from the system-wide capability
bounding set.
 .PD 0
 .RS
 .IP * 2
-Raise process nice value
+Lower process nice value
 .RB ( nice (2),
 .BR setpriority (2))
 and change the nice value for arbitrary processes;
-- 
2.25.4

