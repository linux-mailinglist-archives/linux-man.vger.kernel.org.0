Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 529E02971CA
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461340AbgJWO63 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461220AbgJWO63 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:29 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FE25C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:29 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j7so2204201wrt.9
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vE0SMhoHhnjeQ+Ob/9B6ZHCBFoZgVd5ChkvzqtBLon4=;
        b=XCBRx0lPj8QAQUoHkYXqJHfi/i0++cjA+khFo6CjMl5gDzck8e86xF8+uJ1Ez6sEGg
         IvhKBp5l3tHQyD7K+/w1ceWjxCbTqGlhgyLdy94eUgk0A+9eh566kOHQmc0Nx6T1tn++
         9bjJmHtNCh4Q0vq+ZBFynTca/W9I1YMcpkfpo+4wVniKzV2tz9nJ5ftpmiq8be9tVlsY
         xXzrvF0pMrmAinMshB5K4YnQN0ITPbOtHGpFwQKHoW+FTZ7qNNsfRRvX/odi2Ifpx4R2
         JFeJD1h2xVMnQgT4e+a3IkUPTXRLBW0Ba6AVZyCxKrBJrMx0vrg3TiV+hWdSZFX4XJ5M
         Z8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vE0SMhoHhnjeQ+Ob/9B6ZHCBFoZgVd5ChkvzqtBLon4=;
        b=KkpB5QJP4SIO8BYvLSuq1i1qPQZiCCOHe1/Mul6mAb/eRyOOZ6t2u9fRiECquYqQ02
         23NmjePVecQ93TQvqrXmoQbU2FVf/+olQMpAaow5v6ZeGmFlMvKLfeHdQUcgua7zjw+d
         ZumMvZoyrTQVfq6Kh1T94WUtVao7udLmSmiUyynOQ7K431waN8aAm0HtxnmrVf87W7ze
         OP0MTtvkHi8JIjcB/YMNolcJR77f+qyip0dwsR/dz3yl3oG6GE27roqae2RLMcO4GHjD
         ZlybPHAsVgwGbf2L6oAyGkJ9ivNnyvTruYjDmWH0DCwBUxDAJCkuE76BTI9OHKa0UfcJ
         8rgQ==
X-Gm-Message-State: AOAM531svOPBFoBkXQ5kbWpTTiq6cgFvrivdvySMj+H9T8IdSvr3bHKG
        f7Clad4YEkovjfxvWRernESu3GRB+hE=
X-Google-Smtp-Source: ABdhPJznEgObutDeVFxaooMfMQ+hdOA+1iuMaOIlutzH2l4kAIVh099goY7w/RUKst4csMxIowwkUQ==
X-Received: by 2002:adf:8bdd:: with SMTP id w29mr3344582wra.276.1603465106782;
        Fri, 23 Oct 2020 07:58:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 00/11] circleq.3: Fork from queue.3
Date:   Fri, 23 Oct 2020 16:57:26 +0200
Message-Id: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

It's going much faster than I thought :-)

There's a detail I wasn't sure about:

There are BSDs that don't have CIRCLEQ macros,
or at least it isn't documented there (FreeBSD comes to my mind).
So I'm not sure CIRCLEQ originated at the same time as the others (4.4BSD).
Maybe you know better.
That affects patches 07/10 and 08/10.

Please, apply these patches after "queue.3: Sort alphabetically".

Cheers,

Alex

Alejandro Colomar (11):
  circleq.3: New page that will hold the (circleq) content of queue.3
  circleq.3, queue.3: NAME: Move code from queue-3 to circleq.3
  circleq.3, queue.3: SYNOPSIS: Move code from queue.3 to circleq.3
  circleq.3, queue.3: DESCRIPTION: Move circleq specific code from
    queue.3 to circleq.3
  circleq.3, queue.3: EXAMPLES: Move circleq example program from
    queue.3 to circleq.3
  queue.3: ffix
  circleq.3: Copy and adapt code from queue.3
  circleq.3: ffix: Use man markup
  circleq.3: Add remaining details to complete the page
  CIRCLEQ_ENTRY.3, CIRCLEQ_HEAD.3, CIRCLEQ_INIT.3,
    CIRCLEQ_INSERT_AFTER.3, CIRCLEQ_INSERT_BEFORE.3,
    CIRCLEQ_INSERT_HEAD.3, CIRCLEQ_INSERT_TAIL.3, CIRCLEQ_REMOVE.3: Link
    to the new circleq(3) page instead of queue(3)
  queue.3: SEE ALSO: Add circleq(3)

 man3/CIRCLEQ_ENTRY.3         |   2 +-
 man3/CIRCLEQ_HEAD.3          |   2 +-
 man3/CIRCLEQ_INIT.3          |   2 +-
 man3/CIRCLEQ_INSERT_AFTER.3  |   2 +-
 man3/CIRCLEQ_INSERT_BEFORE.3 |   2 +-
 man3/CIRCLEQ_INSERT_HEAD.3   |   2 +-
 man3/CIRCLEQ_INSERT_TAIL.3   |   2 +-
 man3/CIRCLEQ_REMOVE.3        |   2 +-
 man3/circleq.3               | 354 +++++++++++++++++++++++++++++++++++
 man3/queue.3                 | 234 +----------------------
 10 files changed, 365 insertions(+), 239 deletions(-)
 create mode 100644 man3/circleq.3

-- 
2.28.0

