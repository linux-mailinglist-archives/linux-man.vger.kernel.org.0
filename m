Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A89729448C
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409935AbgJTVbt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:49 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD3F9C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:48 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e17so4457744wru.12
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t+/YizJ2sdw9kR/vS5/QrpGwZhUkRYgAKNmEWBmLQwY=;
        b=RUgva9aXFnggd9EpeDExV5Xgyf1BUiqOIWfdQ5Nxj+cgV2cLmw/dXcfJpXqvWTf4PA
         CU5+Z0zpAjxigmRKZmOJX60hI00xs/XUI6jaOo6N6QjuQUYCg4rydoNIIz2de2vsOYUJ
         PMZFAe8MnrDopP4VqotIglva8iymLkLIa9jnEMUhUHjrItlrNRL17tyo9RQKzMsDLpf9
         RByduUUNu2ttCrI8ePxLYc+/RnN/ZGwnT/8tJu/MnXbqanj+AetgUSewVcS68Wf2xKga
         5tmqFk+8Z/YOAplomToVcIuM6xgrOFudt8169eoCdq/FcZ+1kPwIWvDYirdT5hd/daI4
         Zuvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t+/YizJ2sdw9kR/vS5/QrpGwZhUkRYgAKNmEWBmLQwY=;
        b=tevWrJ4d99ox9iId0FhQfhDV85+O1qGM2bQ4ef1h23jWh0NRWRk4glU83Sw3J9H/Ns
         Xw3M0SYDVe/P+IOmfIP9LL4XyrNWWMK84Akps439teOadtsTPcGk5iYniPVEYfSufSIC
         bzNt3WrhYf2lO3YEYbZmDMtSodhns9+UfD4Z2ZIxy3xtc34NsixvoWGrj6CT5nxOp9Z3
         Gpg1ZEGOMTqlDUOEJ2DLxjbTwU3ypGgAwX85AXQVPbeARXLAggtxgZ9qaprxkt6KLe1c
         2SBOK7Qd/y7MvwF+9v2NkpcFF1kljY2NOXJTUQxY+Oe8bhs1hGl9YW6JBokP4NUDSRLc
         1upA==
X-Gm-Message-State: AOAM5314QaGKQY/Ho1sOXNccSK63ugOczYcf3M77HHo+/DCKUKa1kxNT
        hd+Atxfv+m1l0HwwNQwB/BkBIOgNSgU=
X-Google-Smtp-Source: ABdhPJwPjsExmGH3AHplSSPBoh+e4pcr0KPLMy1sU92qHS6cH1y7OVDo3yTrlaKtYHu2QJQm9LsEbQ==
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr368835wrn.362.1603229507413;
        Tue, 20 Oct 2020 14:31:47 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:46 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 00/10] list.3: New page forked from queue.3
Date:   Tue, 20 Oct 2020 23:30:58 +0200
Message-Id: <20201020213107.83837-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Anyway, I did the rebase :-}
This way I have a good pattern to follow in the next pages.
And it was somewhat affordable.

Changes since v1:
- rebase + reorder + squash
- Minor fixes (squashed into the previous commits)
- LIST_*.3 links now point to list.3
- queue.3: SEE ALSO: Add list(3)

Kind regards,

Alex

Alejandro Colomar (10):
  list.3: New page that will hold the (list) contents of queue.3
  list.3, queue.3: NAME: Move code from queue.3 to list.3
  list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
  list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
    list.3
  list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
  list.3: Copy and adapt code from queue.3
  list.3: ffix: Use man markup
  list.3: Add details
  LIST_EMPTY.3, LIST_ENTRY.3, LIST_FIRST.3, LIST_FOREACH.3, LIST_HEAD.3,
    LIST_HEAD_INITIALIZER.3, LIST_INIT.3, LIST_INSERT_AFTER.3,
    LIST_INSERT_BEFORE.3, LIST_INSERT_HEAD.3, LIST_NEXT.3,
    LIST_REMOVE.3: Link to the new list.3 page instead of queue.3
  queue.3: SEE ALSO: Add list(3)

 man3/LIST_EMPTY.3            |   2 +-
 man3/LIST_ENTRY.3            |   2 +-
 man3/LIST_FIRST.3            |   2 +-
 man3/LIST_FOREACH.3          |   2 +-
 man3/LIST_HEAD.3             |   2 +-
 man3/LIST_HEAD_INITIALIZER.3 |   2 +-
 man3/LIST_INIT.3             |   2 +-
 man3/LIST_INSERT_AFTER.3     |   2 +-
 man3/LIST_INSERT_BEFORE.3    |   2 +-
 man3/LIST_INSERT_HEAD.3      |   2 +-
 man3/LIST_NEXT.3             |   2 +-
 man3/LIST_REMOVE.3           |   2 +-
 man3/list.3                  | 347 +++++++++++++++++++++++++++++++++++
 man3/queue.3                 | 238 +-----------------------
 14 files changed, 360 insertions(+), 249 deletions(-)
 create mode 100644 man3/list.3

-- 
2.28.0

