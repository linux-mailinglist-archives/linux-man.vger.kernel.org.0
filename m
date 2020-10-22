Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BF03295EA1
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898369AbgJVMjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898420AbgJVMiw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:38:52 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD7EC0613CE
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id y12so2190998wrp.6
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JS/SFFh0krSU3GczXAgQvpkJ1ZhgVN+uFwAR3gkKZHA=;
        b=p9ZXy/9hH7aGlaGMU3QOsL3zlDJs8radAH6rlxrfDAQjDltR9CdcN3C3uywXdey2I4
         TUwoeWiw+IMgV+43VIN/6umRrAjTpzDqfsBxDY2KVsifobJJun1VWQ1K/dWoVsmaAmPj
         zSCBiatdvHRTfkLejIElwLHYTPtHrCr2jUGIETjkoIyJ/gxqd2NE6oNpkovBH5ORcL3h
         sbX7zWN6VZgbMdbFNmKW4LPvFSoqmmYOeLbMf7qlyqVJH16on951RQ23yg+nhmn2lpUG
         B3x08iQUmqnXm6wRARtFJMRV7mh2Bw2hEixKFyzxUrzedmyYJ5cyv/vtGT3cBJnLBSWx
         9rYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JS/SFFh0krSU3GczXAgQvpkJ1ZhgVN+uFwAR3gkKZHA=;
        b=pHciVJ5T3d92m3RmDuCxRe0LiqNVJismcWHNYM0vzMb8WGjJhlBJGHnLemqdh/410p
         aFPiTHK7Qp3K21vB7/OsJKvCzKdIFV5FFVRadmi2TAX+y1WfJgDrSfNtDOhO6YaXBrcp
         hZ14aBB0Yd8dnsI0bPfPMIHW2/kLuA+dyWclbmWFq/onWluA8FteBsd1gME5Rb23urcm
         MHARrwcFkuok9ck28P+wpY/GiLXAWice0INN/RLewPgfI3HBP1RUQGQ5CYtD76fs6MQd
         cPaMRvsxy1U65S5cjt7KhudtPI6CS7OLAJyTuz6y/Lrz1GD25gSkMfXH1GkvFBLEOXZ0
         YmSQ==
X-Gm-Message-State: AOAM532tvILRJ1SyyckeA2QEIizf7h1zwrpXYejMLXtm8oT01UOCDrx2
        GZv0M7eIu3Q1pn5GIZSndws=
X-Google-Smtp-Source: ABdhPJyOn+ckIUSJSag8zb7nAaHddvfzCwEnaDShTgL1IqWneuuQA8L0IVl/VhH/H2wc9e4NmZoUEw==
X-Received: by 2002:adf:a345:: with SMTP id d5mr2704855wrb.55.1603370330586;
        Thu, 22 Oct 2020 05:38:50 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 00/10] slist.3: fork from queue.3
Date:   Thu, 22 Oct 2020 14:38:12 +0200
Message-Id: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here's slist.3.

I applied to this page all of the fixes you applied to list.3.
Also I noticed some unsorted macros,
so I'll check list.3 and sort them if necessary.

Cheers,

Alex

Alejandro Colomar (10):
  slist.3: New page that will hold the (slist) contents of queue.3
  queue.3, slist.3: NAME: Move code from queue.3 to slist.3
  queue.3, slist.3: SYNOPSIS: Move code from queue.3 to list.3
  queue.3, slist.3: DESCRIPTION: Move slist specific code from queue.3
    to slist.3
  queue.3, slist.3: EXAMPLES: Move example program from queue.3 to
    slist.3
  slist.3: Copy and adapt code from queue.3
  slist.3: ffix: Use man markup
  slist.3: Add details
  SLIST_EMPTY.3, SLIST_ENTRY.3, SLIST_FIRST.3, SLIST_FOREACH.3,
    SLIST_HEAD.3, SLIST_HEAD_INITIALIZER.3, SLIST_INIT.3,
    SLIST_INSERT_AFTER.3, SLIST_INSERT_HEAD.3, SLIST_NEXT.3,
    SLIST_REMOVE.3, SLIST_REMOVE_HEAD.3: Link to the new slist(3) page
    instead of queue(3)
  queue.3: SEE ALSO: Add slist(3)

 man3/SLIST_EMPTY.3            |   2 +-
 man3/SLIST_ENTRY.3            |   2 +-
 man3/SLIST_FIRST.3            |   2 +-
 man3/SLIST_FOREACH.3          |   2 +-
 man3/SLIST_HEAD.3             |   2 +-
 man3/SLIST_HEAD_INITIALIZER.3 |   2 +-
 man3/SLIST_INIT.3             |   2 +-
 man3/SLIST_INSERT_AFTER.3     |   2 +-
 man3/SLIST_INSERT_HEAD.3      |   2 +-
 man3/SLIST_NEXT.3             |   2 +-
 man3/SLIST_REMOVE.3           |   2 +-
 man3/SLIST_REMOVE_HEAD.3      |   2 +-
 man3/queue.3                  | 248 +-----------------------
 man3/slist.3                  | 355 ++++++++++++++++++++++++++++++++++
 14 files changed, 368 insertions(+), 259 deletions(-)
 create mode 100644 man3/slist.3

-- 
2.28.0

