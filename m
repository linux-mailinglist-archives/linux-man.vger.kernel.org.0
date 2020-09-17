Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E400D26D965
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726715AbgIQKop (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:44:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726610AbgIQKof (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:35 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B3FC06174A
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:17 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id b79so1534883wmb.4
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tGSBbnvHyIePkqPBhuPQFP1LpJ5Mp8RWWrre9bOLaHA=;
        b=WTTPJp9o8s6mmH1OwAOrZk2GICnC516QtT8lj3Jr1spOb0ayi3K2z0CMrX8jDACFRO
         Yxyb+Rj347oajiFsC0+FUJlzvqhNnY+IGkLFy8RbX0gM7yKMamYblvhauyZfCw8zXnHZ
         My87u/DJLpJzsXNYiW6JK7TMmRIwUXlu/fjuzlrJ4d5Xmx/OvfQnl21HGtnOebVsonAo
         EYJIgBqXT2hxOrSrqkdLjG2LEZbgqMAm9CMnJy9ZFoBsEyHbEEF2SyMUhQYJl6k9XCRy
         7gSt5XtSiO20ibH14tp1NjH0Dc5Z4ArtDnBmiaWDoiszBHskS8UWEodkP8U0dITePlLr
         eH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tGSBbnvHyIePkqPBhuPQFP1LpJ5Mp8RWWrre9bOLaHA=;
        b=VSjW4QHIk2eHvx8PUMs25QnvsOS2VPnFkC8RLegxB1+6wKOH7qwXUHl+PNfHvNRUJQ
         tfkxVzjHcYQ7gTCb3FLEctRsM/Woilv4bWOedQE8zc+PvMOIYzcALZknEQ7evaL2viv3
         FLQ2gxQhMzcAgi2pCfY00fEYumOicvXl3AYrT9XcxMUGSwYh/5NQ8wgiXA1s43v+NaEe
         1iR0xJhcLS0TNNfWeQD4fJCQXobU1fD4Cxk3yPw0RhJd2h7B5xBu91wzP53XZ9amtGbz
         Abvw/G/fKTwlpdCE+krOKaYi01NGDeZaGkwn+oeBA5ni6Zy6nS/XI2Zfw3Tt0kyIaBj5
         Qf3g==
X-Gm-Message-State: AOAM532N5e8a8mDjiib+682IArq94qm/KS2+Pdv1Dumotj7jfmU+YATY
        1bPl02YzYLj/wkrLS1GkwbYd2S/WQUuEzA==
X-Google-Smtp-Source: ABdhPJzFi4ArQUhCjq8lQy7ClfXeHPlfcU/TCQAyZI+bP1MeEv8N4aXHIUkJ7uUQmpOCqBNjn1CJMA==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr9020013wmk.167.1600339455738;
        Thu, 17 Sep 2020 03:44:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:15 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 0/8] Document system data types
Date:   Thu, 17 Sep 2020 12:42:58 +0200
Message-Id: <20200917104305.12270-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'm proud enough of the result to commit it now :-}.

Changelog since v6:

- ffix
- wsfix
- wfix
- Change ordering of headers (no actual change)
- Curate See also (sigval)
- Add NOTES section (about structures)

On 2020-09-17 12:27, Michael Kerrisk (man-pages) wrote:
> That sounds okay to me. I presume you plan to uncomment the
> lines above that mention sigevent and siginfo_t, right?

Right.

Cheers,

Alex


Alejandro Colomar (8):
  system_data_types.7: Document types: sigval, ssize_t, suseconds_t,
    time_t, timer_t, timespec, timeval
  sigval.3: Add link page
  ssize_t.3: Add link page
  suseconds_t.3: Add link page
  time_t.3: Add link page
  timer_t.3: Add link page
  timespec.3: Add link page
  timeval.3: Add link page

 man3/sigval.3            |   1 +
 man3/ssize_t.3           |   1 +
 man3/suseconds_t.3       |   1 +
 man3/time_t.3            |   1 +
 man3/timer_t.3           |   1 +
 man3/timespec.3          |   1 +
 man3/timeval.3           |   1 +
 man7/system_data_types.7 | 280 +++++++++++++++++++++++++++++++++++++++
 8 files changed, 287 insertions(+)
 create mode 100644 man3/sigval.3
 create mode 100644 man3/ssize_t.3
 create mode 100644 man3/suseconds_t.3
 create mode 100644 man3/time_t.3
 create mode 100644 man3/timer_t.3
 create mode 100644 man3/timespec.3
 create mode 100644 man3/timeval.3
 create mode 100644 man7/system_data_types.7

-- 
2.28.0

