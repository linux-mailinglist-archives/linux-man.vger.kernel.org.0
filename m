Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E10C9297F63
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733077AbgJXWVe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762385AbgJXWVe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:34 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B3C3C0613D2
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id c194so6817091wme.2
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=amoCPBeatYHXhx7yUJXEi3meEPpKBO7a0bFUUWpiQGw=;
        b=LcWRoXHtEVeJemvPR9nuRYVBI/mRyQIJL7V3nkMsCIcR0DY5GlF4ZYYrZAdgRW6S0J
         GSAUtafmi/tPeydBO6E014ROO0Q4Qek3zCX7DPgu51q7PHIgDhiIVu/f4UnJ1RfMB4dv
         Wg3tUOMT4mtmzUEMZushyPZ2OTBXySMxX0wfAtVFGI5Zcc5qb3RnAOZnbv1d1PDqrRIE
         MkgBgtCp4zNoNEdEBtW0SEpvElXBretfaOs0Zf03T7KZSTd4rfPR3I8/0hSmdcUHZPJ9
         jHQqPUyZ+992OdvfRqh16B//h3ZhnmuYmBdEiWyX6jhPca+OFUw1ON3r/95TvCZA+edE
         1jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=amoCPBeatYHXhx7yUJXEi3meEPpKBO7a0bFUUWpiQGw=;
        b=bWTDCrng8cHXmQpOPCL9bZk0KdsmT45S0duF5yxhPa9V0LR/J01g5UVzDCe5JzkNfM
         uIygW/E5zLi2+A5TmMM2AJihBCrMSQ4sExtBYxWnT4YMijk7YPynVlSSdmC94l52siol
         +cvVx2C5L9JDICEXnuPXPQhi8Yd7vjmZtZ0TLk5IRoU5GZw34HUx16IreAoLVM0Rrv2r
         08coLpTicCGKiYNG8Fd3uuI0EKEXNBiR7rB608dJZztiIszfCDp8ttFIBlsmGchmEdV7
         f88hV+bt4+j4rELb29a4T8xZoConsuXEbH2R8GBxxAnNmmREYNn3PSG+YHG/LjGKa0fn
         C0ZQ==
X-Gm-Message-State: AOAM531pCFBfoGuboQBoAZPRBRNSxehCgryWHnzfachRQqj/x+Q8GZx6
        lSrlCC7zsw6prwnw0A3D6Bw=
X-Google-Smtp-Source: ABdhPJxfjCrLOBv9zYhN+GUwOXay7zDQnrN6wMJZCaBElq0QqIkf4MM/7hL6NobgIZo/PKjPn57lcA==
X-Received: by 2002:a1c:1f87:: with SMTP id f129mr9105764wmf.182.1603578091748;
        Sat, 24 Oct 2020 15:21:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 0/8] stailq.3
Date:   Sun, 25 Oct 2020 00:21:08 +0200
Message-Id: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

It's almost done.  I'm thinking about what to do with queue.3.
You can see its current contents in my branch 'queue'.
Do you have any suggestions for it?

Thanks,

A

Alejandro Colomar (8):
  stailq.3: New page that will hold the (stailq) contents of queue.3
  queue.3, stailq.3: NAME: Move code from queue.3 to stailq.3
  queue.3, stailq.3: SYNOPSIS: Move code from queue.3 to stailq.3
  queue.3, stailq.3: DESCRIPTION: Move stailq specific code from queue.3
    to stailq.3
  queue.3, stailq.3: EXAMPLES: Move stailq example from queue.3 to
    stailq.3
  stailq.3: Copy and adapt code from queue.3
  stailq.3: ffix: Use man markup
  stailq.3: Add remaining details to complete the page

 man3/queue.3  | 279 -----------------------------------
 man3/stailq.3 | 391 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 391 insertions(+), 279 deletions(-)
 create mode 100644 man3/stailq.3

-- 
2.28.0

