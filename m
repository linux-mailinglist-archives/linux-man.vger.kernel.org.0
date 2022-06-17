Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72C6154F835
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381696AbiFQNMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235591AbiFQNMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:12:05 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94C3F4F9C3
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:04 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q9so5717345wrd.8
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HJXn6SHTsKbr9gaPmoq1SM62uMLzZHYD+iGtBZ+2ElI=;
        b=cfwY645gZA6yIpQE9dF/nLD+JByZa8jxfTcd3ulNQZFAeAOieY9p0d11sA2F8lfNT7
         EqeDtBQH2NMsBoz6B17MGQVh/nNFKEMtqJZIJ3oiVVAOB4c9gg6q+hl9hkprjSyNZ+T1
         7rx0erbGDcS5JJqhU4eNYKGhmAYsWsl+YhFJ2HVYNfRtzw80iOJYTLCANQjuJiA0aSrU
         iOSH7vqvUh+EMNppZvwUk7QEEd1GPdojVZXVAC+XMViSk187CgXHgYI8B8IcvXw98hou
         TTlgzKFiZylPZNuRh29/GuobJKPe9CMZ+CDdx+aL/0cMpFgQXY/nvj1x3IAI0Wj7KMBU
         hJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HJXn6SHTsKbr9gaPmoq1SM62uMLzZHYD+iGtBZ+2ElI=;
        b=ek3XwUeYMqgZZwva04cOAfATLow2B3BgB8JEKFs/zqVRQ2yAwStMCHmWQSdXjUtvt5
         3kCw5jiwgvTKb9fa0PsXNc5Pmr7xftkvvrPg6Yeqid8OoJjERkfOfZZPbbqV4kzl7H/A
         pymPpH9G0QtUK3nTvt6if487+d1OWyC0ek3kqOC4xPAtrCymt373DHRijnmXVuF/wtlz
         Xk9/sfy4+VuBz9fYNHdXsCWiGeYTzUbmfxdVT03DB75hxJfe3nm2H/lkEYdkaaZNBcLd
         GmqJUZU3OL8njUOMA9RLUuI4plZaMz6uryP9NHe10raFbdyhG1j8Eq7YKelqicUCmpVF
         UVCA==
X-Gm-Message-State: AJIora9AfY3PWcMzYXkqvbI1Jp5qmMh8QWlDEOsG2MXTFD7X7rb198sq
        Pzxw1i1QyYnhd30/1MbivcY=
X-Google-Smtp-Source: AGRyM1s0q4wyfzobeInPAE6j2darVDN0BltzGxzmmUTN7EzawSQESsQVeYELcgN0lXD5ez9rZGSA7g==
X-Received: by 2002:adf:f5ce:0:b0:21b:832c:80dd with SMTP id k14-20020adff5ce000000b0021b832c80ddmr312130wrp.235.1655471522928;
        Fri, 17 Jun 2022 06:12:02 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id l18-20020adfe592000000b002102af52a2csm5812954wrm.9.2022.06.17.06.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 06:12:02 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/2] fanotify man page updates for v5.17
Date:   Fri, 17 Jun 2022 16:11:56 +0300
Message-Id: <20220617131158.1661235-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

These two complementary APIs, FAN_REPORT_TARGET_FID (fanotify_init)
and FAN_RENAME (fanotify_mark) were merged to kernel v5.17.

Note that we used the fact that this is new API to fix a glitch that
exists in the old APIs - it is possble to request CREATE/DELETE/MOVE
events for a non-directrory, but those event can only be generated on
a directory.

When the new flags are used, ENOTDIR will be returned in such cases
and this change is reflected in the man pages updates.

However, we noticed this opportunity a bit late and the ENOTDIR change
was merged last minute to v5.18 and then backported to v5.17.9:
ceaf69f8eadc ("fanotify: do not allow setting dirent events in mask of
non-dir").

I did not mention this course of events in the man page, because it
seemed too much irrelevant information for end user, but am mentioning
it here for full disclosure in case somebody thinks this information is
relevant.

These patches apply on top of fan-fs-error branch in my tree [1]
which you have already reviewed, but have not yet applied.

[1] https://github.com/amir73il/man-pages/commits/fan-fs-error

Amir Goldstein (2):
  fanotify.7, fanotify_init.2: Document FAN_REPORT_TARGET_FID
  fanotify.7, fanotify_init.2, fanotify_mark.2: Document FAN_RENAME

 man2/fanotify_init.2 | 53 +++++++++++++++++++++++++++++++++++++++++---
 man2/fanotify_mark.2 | 23 +++++++++++++++++++
 man7/fanotify.7      | 31 ++++++++++++++------------
 3 files changed, 90 insertions(+), 17 deletions(-)

-- 
2.25.1

