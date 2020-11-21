Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA582BC236
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 22:11:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728521AbgKUVIm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 16:08:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728513AbgKUVIm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 16:08:42 -0500
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73FEBC0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:08:42 -0800 (PST)
Received: by mail-il1-x142.google.com with SMTP id a19so6071035ilm.3
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=wt1KZIyZFn1bEZQQR275DT5J4v1IBCL27/bq1DMZyJk=;
        b=JJUpHn9qJqo9wmZInN5Bku4GlWj6KvCt95koH0b6bK16xP3JNDsiVsKNp9d7v3BvHP
         anAaB1VuculcGqnhyZau3A/eqa/rChWh779Kfo5CmnJ+lCcmNxpDJM7IUltrvTsXjFbL
         kawj5waGFdaISDC1IvDD/W+/Hx3yCfbuniEk2Eb1OYDOH8jYaYEhZ1rBSQTf+8Z8b160
         YyfxsD1/+n6xqnDyRgq0jFxoKN7vTSiMGmrHLsvCduXpNcl3ZDbpkDJi3LOisNLSTnCM
         FUrkjM/V6HllOLsNJI+IiePKLLCX+lPaEwTXvANWWLdwyBggSpYIIOnLPu57MyfZyh2D
         ENcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=wt1KZIyZFn1bEZQQR275DT5J4v1IBCL27/bq1DMZyJk=;
        b=ql4hRry+uelLyQapXlEr84SCZgpHE6YvEgRLYfjQcS9qLowvWt9liAKvrFvR2au1NV
         XtA8/VVRzF+h9fvNJtj+wIOjMso3tmY6qJOOiDUzitbNM/tK/fH9VaQSro2UgTbqgAuS
         yklvaxEekEy5ejEiegiPXVrFa/EISOyL4aJ0VHe1DEO6nQ+neJ5l7yVQoEenRj+ZvLXc
         7IgJVqMIalzMptuvsr3EKkzAF5FK/KYEKqhUu2YRHNchiXPteM2lR5WHspb272IVhqfy
         b9eFrZgSwOoKJ5I2oq9ftWItCIaDz6WVLHbAuL2mZ14s2vZRqGAcQjxaFrgZ5EU1KylV
         8WiQ==
X-Gm-Message-State: AOAM530C1N8rub/qh9ngX3sGQdevMMyQCEe0ozbEb/lyozfeoQ1OJA1x
        1L+a5UrReHmLDBej+yK8ysEgIruQ9MXuAKDecB4=
X-Google-Smtp-Source: ABdhPJzvC5w2qhUyCFFyoCOuEY+aK+T4zm4AOuLpKROs0pj8USesBBQ93UeI8Lo9S0CvKyA9eIUtxQsUvWe+Bd2l0zw=
X-Received: by 2002:a05:6e02:eef:: with SMTP id j15mr30030360ilk.307.1605992921659;
 Sat, 21 Nov 2020 13:08:41 -0800 (PST)
MIME-Version: 1.0
From:   Jing Peng <pj.hades@gmail.com>
Date:   Sat, 21 Nov 2020 16:08:30 -0500
Message-ID: <CAL+Ps4T=fhfb-tBKKBz5vUXPVKB6nWM+E32dxyTMMBzZqXZByw@mail.gmail.com>
Subject: [PATCH] futex.2: tfix
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the comment of the example program, the peer blocks on fwait()
rather than fpost().

Signed-off-by: Jing Peng <pj.hades@gmail.com>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 76c89f16c..5e006784f 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1809,7 +1809,7 @@ fwait(uint32_t *futexp)

 /* Release the futex pointed to by \(aqfutexp\(aq: if the futex currently
    has the value 0, set its value to 1 and the wake any futex waiters,
-   so that if the peer is blocked in fpost(), it can proceed. */
+   so that if the peer is blocked in fwait(), it can proceed. */

 static void
 fpost(uint32_t *futexp)
--
2.29.1
