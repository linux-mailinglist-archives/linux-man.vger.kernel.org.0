Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA1FF298101
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414868AbgJYJhN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:13 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D6FC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:12 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t9so8727309wrq.11
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dJn0XN3ltS0EXV2T3XbucWreokbAqqGg87uaoDKba/4=;
        b=GFzkT6UEBsJP4lsa+uOUQqVWLY2Awb8m4c5q9Gcai7W79AYPeS3lTs0z6nhW8jsmNV
         +iREqMGN34oUwsHyVNuZdsy0KT1OkooTff2WQUOIE7jt513ZP8FCe3ma/J7zwZDcSnmO
         pE45nlUP9Ly4vnSLCJRgV8eB9eqJTt/Kl/Gr7uBO/ltpM8imkFc/cH9hQkgqArJWOXnQ
         RE5OJAUX8tyYIuYJwtp80PW7PLrkrXH0VWe7oOyIOCM+8TO9NtQ0Q0vzIcYhn6hkLdYi
         VdamXGA+eAACtXBxSyZHur+mlRUjq2SXLHExt173Uxe3fKpteUgWjp9HZT6rQ2MTGiwY
         wZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dJn0XN3ltS0EXV2T3XbucWreokbAqqGg87uaoDKba/4=;
        b=DLJ7WZR1kkd0rfQooOS63fzwV2XdUtCF3CC07G8EZ/IsnjqaAaTjw4mO5aXq7DYy7k
         /8QbFsOsLEWRb1tN5VTUmqKfkTnomE/H2BuWqoXvqN9VMWxpGJXC4KO9hLP0hWqTs/8B
         vlSypOKCWcICPVJG9f+QVVMKycjxPobs5kckdPRP/LWi9M8BR31Ng2UpT6L5U8ecNmEE
         aQUhrKsD42zTd+IBFnyJ2xt0ztAtwCAn3LZnPWcPOTE3lVTU5YAorG1mk/sPk9RFoA8M
         oGw4Tucwti0qPgkfvvls7MQiaHy+VG1zFtQTR+/kD8Ied7mL9GkLtaqPh/JXYw8rQHu+
         WtKw==
X-Gm-Message-State: AOAM5331H3Nq4PqMkqmj0BEpLxyJU6/+61Now9qCkt89nDwOAUpadXQE
        A2Zw0AHrvsA7wR+mABD1TSc=
X-Google-Smtp-Source: ABdhPJxJrCLkVf8AC14cjszeeFdEOm9HgyGxkbY1Um6UlxtZvomZb5om3XUUJpjJjmGGWdQRb+DfvA==
X-Received: by 2002:a5d:4141:: with SMTP id c1mr11727189wrq.113.1603618630961;
        Sun, 25 Oct 2020 02:37:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:10 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 00/10] tailq.3: fork from queue.3
Date:   Sun, 25 Oct 2020 10:36:42 +0100
Message-Id: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

The last page is here :)

Cheers,

Alex


Alejandro Colomar (10):
  tailq.3: New page that will hold the (tailq) contents of queue.3
  queue.3, tailq.3: NAME: Move code from queue.3 to tailq.3
  queue.3, tailq.3: SYNOPSIS: Move code from queue.3 to tailq.3
  queue.3, tailq.3: DESCRIPTION: Move code from queue.3 to tailq.3
  queue.3, tailq.3: EXAMPLES: Move code from queue.3 to tailq.3
  tailq.3: Copy and adapt code from queue.3
  tailq.3: ffix: Use man markup
  tailq.3: Add remaining details to complete the page
  TAILQ_CONCAT.3, TAILQ_EMPTY.3, TAILQ_ENTRY.3, TAILQ_FIRST.3,
    TAILQ_FOREACH.3, TAILQ_FOREACH_REVERSE.3, TAILQ_HEAD.3,
    TAILQ_HEAD_INITIALIZER.3, TAILQ_INIT.3, TAILQ_INSERT_AFTER.3,
    TAILQ_INSERT_BEFORE.3, TAILQ_INSERT_HEAD.3, TAILQ_INSERT_TAIL.3,
    TAILQ_LAST.3, TAILQ_NEXT.3, TAILQ_PREV.3, TAILQ_REMOVE.3,
    TAILQ_SWAP.3: Link to the new tailq(3) page instead of queue(3)
  queue.3: SEE ALSO: Add tailq(3)

 man3/TAILQ_CONCAT.3           |   2 +-
 man3/TAILQ_EMPTY.3            |   2 +-
 man3/TAILQ_ENTRY.3            |   2 +-
 man3/TAILQ_FIRST.3            |   2 +-
 man3/TAILQ_FOREACH.3          |   2 +-
 man3/TAILQ_FOREACH_REVERSE.3  |   2 +-
 man3/TAILQ_HEAD.3             |   2 +-
 man3/TAILQ_HEAD_INITIALIZER.3 |   2 +-
 man3/TAILQ_INIT.3             |   2 +-
 man3/TAILQ_INSERT_AFTER.3     |   2 +-
 man3/TAILQ_INSERT_BEFORE.3    |   2 +-
 man3/TAILQ_INSERT_HEAD.3      |   2 +-
 man3/TAILQ_INSERT_TAIL.3      |   2 +-
 man3/TAILQ_LAST.3             |   2 +-
 man3/TAILQ_NEXT.3             |   2 +-
 man3/TAILQ_PREV.3             |   2 +-
 man3/TAILQ_REMOVE.3           |   2 +-
 man3/TAILQ_SWAP.3             |   2 +-
 man3/queue.3                  | 343 +-------------------------
 man3/tailq.3                  | 437 ++++++++++++++++++++++++++++++++++
 20 files changed, 456 insertions(+), 360 deletions(-)
 create mode 100644 man3/tailq.3

-- 
2.28.0

