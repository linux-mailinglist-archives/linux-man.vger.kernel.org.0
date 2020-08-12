Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70E9E24263A
	for <lists+linux-man@lfdr.de>; Wed, 12 Aug 2020 09:43:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726479AbgHLHnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Aug 2020 03:43:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbgHLHnP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Aug 2020 03:43:15 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 160F0C06174A
        for <linux-man@vger.kernel.org>; Wed, 12 Aug 2020 00:43:15 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id z18so1057544wrm.12
        for <linux-man@vger.kernel.org>; Wed, 12 Aug 2020 00:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=S1eFJHWccNqRhxKZ3Sn6oKbyr9JFOl2Licf8x9zCqng=;
        b=Mh9NQwn/U4ffBLzG1nxliRhA0i5QsMCh0DWVyPZCvXZaXu7+S3GNicJqStcEUE8MQZ
         x87G+LrHMFu2WxZfz0GWKBwEtG82ZOqTRXWq/ekvYIlIBejegiqT7dxkQsNAkTXNz1O5
         VXPd9T3I66nOmKQjPfq7SVGAvspZw0p8E5BL9CSmDGobQgkPjc8hJmr55rvN7xJ+rIrp
         //0SUGOCMsx54EDFoemMYDavzcw9P82n1VuTF814yVlM+4+EmEQjfa6OR8JwVzHvEDsA
         LwJqeimybfI0za6dvrQxMS1eEL7sF4oip4ps8pvMBxzdysRXKLSdiQPR9ZqKdqctMjuz
         mttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=S1eFJHWccNqRhxKZ3Sn6oKbyr9JFOl2Licf8x9zCqng=;
        b=jeD6dOgPqQK3f6rPenDvYVsqQj8J9J7d1U+PkD+I3I6tyuRVDlKiWPi6qRF42zWSlr
         KVfSbgsoTATiz+jfpEHYhzdtJPSw97uCDmXIa/jNvnXLerY1Gfi6umm9l3Sdys4/50fP
         IcS21MO+HMlD2ONBlgWi1YTcT0SGKHDrk9SgvUsPy8sa4omifWvjajAy8G8TMyRBzsD4
         5D5g5a2ztUO44jo8/Dblo+L6wSJUJYYEaFl7yxXkrUdSPYxWLcZNDnF1O5N78wf1YGbs
         7TEMN/QW3U/nyilzJ74HsqS0IRZ4agUxVKEuKI3RqWS4OSd8PIC3abhn8eb1GrKV2jlT
         6LNQ==
X-Gm-Message-State: AOAM533gqjHV4o0I77vRBNbKXYpELlEtN1tsBwLQ7F2o3RQtnWJ1V6U5
        Lq8yNjErYozOB9awJVcZnnqkBIFoR+w=
X-Google-Smtp-Source: ABdhPJylhqJNAZ1onvrkssLrgtdn7xC/9LHSBtyGg/jOKgfd0jK/qTDrr9lpp4cP61pCrMTelU/DfQ==
X-Received: by 2002:a5d:6702:: with SMTP id o2mr31966820wru.364.1597218193355;
        Wed, 12 Aug 2020 00:43:13 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 3sm2234372wms.36.2020.08.12.00.43.12
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 00:43:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [patch] queue.3: Remove wrong code from example
To:     linux-man@vger.kernel.org
Message-ID: <82f99243-d624-1122-2b20-a4f1e6eb68cc@gmail.com>
Date:   Wed, 12 Aug 2020 09:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There was code containing ``CIRCLEQ_*`` in the examples for ``TAILQ_*``. 
  It was introduced by accident in commit ``041abbe``.

 From 0c9dfbe9b1ce1130e9a92d1a16fbecd4a08bbe29 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Wed, 12 Aug 2020 09:11:27 +0200
Subject: [PATCH] queue.3: Remove wrong code from example

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
  man3/queue.3 | 12 ------------
  1 file changed, 12 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index ff1f42f3a..260a5b8a5 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1219,18 +1219,6 @@ while (n1 != NULL) {
  }

  TAILQ_INIT(&head);
-n2 = malloc(sizeof(struct entry));  /* Insert before. */
-CIRCLEQ_INSERT_BEFORE(&head, n1, n2, entries);
-                                    /* Forward traversal. */
-for (np = head.cqh_first; np != (void *)&head;
-        np = np\->entries.cqe_next)
-    np\-> ...
-                                    /* Reverse traversal. */
-for (np = head.cqh_last; np != (void *)&head; np = np\->entries.cqe_prev)
-    np\-> ...
-                                    /* Delete. */
-while (head.cqh_first != (void *)&head)
-    CIRCLEQ_REMOVE(&head, head.cqh_first, entries);
  .Ed
  .Sh CONFORMING TO
  Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
-- 
2.28.0
