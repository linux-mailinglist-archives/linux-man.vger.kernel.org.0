Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8656E37531F
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 13:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234735AbhEFLnM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 07:43:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234603AbhEFLnM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 07:43:12 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB2AC061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 04:42:14 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id t6so276418vsp.13
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 04:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ceQSpzTsx3ixWgZPKSyjiM2AFsgLeIr1ZItjbLNrz0Q=;
        b=aE9taOusTFlup+1IGY+RlCTD6MBS9lmMx7+9TZ4xK4q7IcuukGgE/LHMJOihGSV3h+
         OlofcH3idvyJAmdTFgAwAnnG358TGEuB+FERmyx1b4vs8pwOvNTMFIE0zBRh6yK6mJLS
         6NnjJwFuLtTfDsg3Nu64r024/Us8DSjTiDxbgAceCEodt+m/WfJJ6WD/HkpMl1hrqbNC
         kXKI/VoiH0JjzDmMgTkR2TWMEtOZxzowDz7U8lgnfV1XdVIGC/tI+Tq3Y6d/cBLcxRBw
         EzjNqCvkybLdpELCXJtbIui8nb4+mNymI65od2lH4uSwEmg1bAOn8hEmqTcv/u5qsXcs
         wolQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ceQSpzTsx3ixWgZPKSyjiM2AFsgLeIr1ZItjbLNrz0Q=;
        b=cwET2jAFG0aJZzNxPrXlGvJujFfOuteyIC01iNcdPqtLpu92q7KkUj1tc4QPOB4F2G
         PG5HoEXVeiU9UEQiefBls5DfiPlyWAc6ecZYMg4yuKLSYdZ8zN3KtntlMy1or8v6hS0F
         1OSSQZP24eGm5TC7b/RJV5kkKiHHonb2j16UHaKvBGLGKFVQEHkkPErHvN8ggS1rJVtM
         54RUK997vmFUQ4S4KBimgas67S3ADgG6y2kfXnszxWvLvjU9U1zLM8hCScJTtVXkWZEA
         M6uqSP342uNTxsYVUo/53WDYXI3tFPRPc1ZpXuBaK5BzudHfnmEFGYqk1VPI0eP7Q4Kh
         Tyfg==
X-Gm-Message-State: AOAM532xm+y+omIw1rsGHFNrAiolnbp9O9wu81f9iyvtCQQPv4fsuL5b
        MLXR68aHChrJnxXNK/9mIAo6Njd014rYk5nadgAOctDwh6qM9A==
X-Google-Smtp-Source: ABdhPJy867gzL0Ag1Tn4wjwJVQSnZ223qWfguikjsFpOlSjodZoPa4abgn95xF91KNUAxfSfimUeZR99UHAQd8Qz7xk=
X-Received: by 2002:a67:ef82:: with SMTP id r2mr2795271vsp.27.1620301332965;
 Thu, 06 May 2021 04:42:12 -0700 (PDT)
MIME-Version: 1.0
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 20:43:31 +0900
Message-ID: <CALhU9tm0xfJOKu1Zpn7ckQ6jV61vBh9eB6vwycgAsm5-4qedvA@mail.gmail.com>
Subject: [patch] move_pages.2: ffix
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index 279de7568..8350b699c 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -180,6 +180,7 @@ The number of nonmigrated pages if they were the
result of nonfatal
 reasons (since
 .\" commit a49bd4d7163707de377aee062f17befef6da891b
 Linux 4.17).
+.TP
 .B E2BIG
 Too many pages to move.
 Since Linux 2.6.29,
