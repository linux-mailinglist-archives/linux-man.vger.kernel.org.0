Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6174925DC3A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730300AbgIDOvD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730297AbgIDOvA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:51:00 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C933C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:51:00 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so6366191wmk.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=s/yioOgeh8nieijrEUOn6xQtTN97OMe26R40XOY0vHM=;
        b=AhTS5F+37/hZdj4IDQs+aGacYuN11R8LMogK5dplBkKuoGPAunO+AGATjZAIblzt/k
         Hgdp2gdR8QerhQ7uBmVhF6BAyMcg9SW3jKIKqMoqAcqw7+3K0mYxG49hPWREo6FWC9MP
         wY2W3OEiU79YlL3Xuc7K99eVrGvDemf+i8pymPsd+BbaSjAO2c+Nqu1XW5Lmb6uqEbd8
         EgCmOD17SAMroLp4XO8XYq2rE02377GdME45a31v6/DRcnNcwp1msB+w2ykAssAiFVJ3
         c3A1rgV7I0WgQ1Nn+6DYnW+BIY261C5E4VU+ukVj3KTOaOMmNOcf9DJDlnwarar13C4/
         yfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s/yioOgeh8nieijrEUOn6xQtTN97OMe26R40XOY0vHM=;
        b=MjWq6HTclkc6Ia1TBaE3og5sKG50F0j9Qk+CUp+T6j+x6Ub3DAExc3Yc76MeIbSAbD
         PR5jnAJ4NujAv3K3ght7vcgGxwyW4WXxuu1MKQJUKKklXweICGs+b3tYTB+b8OrOs2Pw
         3bVq0B7XlSHN++EOcZ48k4xtR0JD+VNQFB3Lq1Nr/f78o6uw8TtCKHpvgn+2gTa4UuY2
         vkL/HdiOcQzK3uzGbDEa14E7raQ2F6hS1UTixKH76IRkbliWE1SllZHI6J0WNhgK4mWF
         HQrAzOs5OTR+Ml3OVGReMTk76ppAak+9Y3p+d/VghT7vY0lUjPOkTeWcdSD8ZpOg1rzD
         EvrQ==
X-Gm-Message-State: AOAM530SBwo/2XbUwzg9bX4Ipp9TZ6JCzZOVmthhxaikOvSlIi1dN3uO
        DGsTPZ+szcF7vVgoJCzmtgA=
X-Google-Smtp-Source: ABdhPJw/30tg4xRXV5o/ARnAVjJGvUAaloulnV4sfZK9EwnHHfzhjueP7N0f1F7oGnjxngo0owB6AQ==
X-Received: by 2002:a1c:cc0c:: with SMTP id h12mr7604580wmb.57.1599231058712;
        Fri, 04 Sep 2020 07:50:58 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id n8sm12521464wra.32.2020.09.04.07.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:50:58 -0700 (PDT)
Subject: [PATCH (2) 24/34] queue.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
Message-ID: <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
Date:   Fri, 4 Sep 2020 16:50:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 6f3e17cf38bc3718332c7151899e253dbc91affb Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:53:51 +0200
Subject: [PATCH 24/34] queue.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 55cd5847e..2ea5ff4f5 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -559,10 +559,10 @@ struct entry {

 SLIST_INIT(&head);			/* Initialize the list. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 SLIST_INSERT_HEAD(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 SLIST_INSERT_AFTER(n1, n2, entries);

 SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
@@ -775,13 +775,13 @@ struct entry {

 STAILQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 STAILQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 STAILQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 STAILQ_INSERT_AFTER(&head, n1, n2, entries);
 					/* Deletion. */
 STAILQ_REMOVE(&head, n2, entry, entries);
@@ -975,13 +975,13 @@ struct entry {

 LIST_INIT(&head);			/* Initialize the list. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 LIST_INSERT_HEAD(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 LIST_INSERT_AFTER(n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 LIST_INSERT_BEFORE(n2, n3, entries);

 LIST_REMOVE(n2, entries);		/* Deletion. */
@@ -1233,16 +1233,16 @@ struct entry {

 TAILQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 TAILQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 TAILQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 TAILQ_INSERT_AFTER(&head, n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 TAILQ_INSERT_BEFORE(n2, n3, entries);

 TAILQ_REMOVE(&head, n2, entries);	/* Deletion. */
@@ -1426,16 +1426,16 @@ struct entry {

 CIRCLEQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 CIRCLEQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 CIRCLEQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);

 CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
-- 
2.28.0
