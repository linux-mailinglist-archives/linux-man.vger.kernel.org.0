Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD5EC655363
	for <lists+linux-man@lfdr.de>; Fri, 23 Dec 2022 19:00:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231714AbiLWSAD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Dec 2022 13:00:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbiLWSAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Dec 2022 13:00:03 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2928F13D12
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:02 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id w15so5183752wrl.9
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 10:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0GXR16ytmaASDgE0206b4nvrpPiD5EUQYzCO0cBNYlU=;
        b=KX4C2WMONZu/jU+3zPUGrGSaH18XfFQpbI7vpmOHiG/Z+XvtmADUSZeHe4U5KZelEo
         t5KdcAh3UmaxYeIMymL+VpvErSGY2WGN//yJy0kA5u5EKVDgk9BIzutiMZOmbU7sWXVm
         N3aFSwi9sMcCDmDMFzvKEoNSE3KEZp4r6U3/kJ17i16JqgfnirfDP/RjZHh36P00DmJW
         4QtGNv3mLQ9uDiK60Z6cn640AO+iJfbX+gP1eiH3/rQS98erNMRxJpPCr47oYwPbfP9i
         GpjCUhJN36SHd/vIhk7aMM6bCqb4Ojz3UBlSLfnZfY+mn8gjDYn+M/X7dBV3+at2VQCD
         W8iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GXR16ytmaASDgE0206b4nvrpPiD5EUQYzCO0cBNYlU=;
        b=gpQulmL20FkrFzf95fDHL1+qybXV7M6Zu7hB3zy2fpifhfRVek7MpwNPyizsV1BNXZ
         8vBTtfLiunSJF6k4ykm5J1nC/lPKxxgi0qu9iLIQyDaJoPbEpigK0P2pHU5/pXV6B/gv
         O1gVKU+JGZ8ciXnwwhurZbyOZAiPOaHb5KKmtWmNcFqMSXB/4Y8koXAqNSVG9fVyPt2e
         oQImyzh7SHNrocY6E5seEsqlAcAfvuqauLOutQPJ7zrr6O33OlQ62nXWGz7ZNdTIufqn
         sZ9pbhYW7uuwHq5AcyAoDlfrJcsFBP7wF71qlFe43kJN4tf2JLcJir7SdLRXD0pSUf+b
         r0Zg==
X-Gm-Message-State: AFqh2kr/+Xtpf3BnBFt4sW66lsE21Ze5FvdH/IR0ulVkSLnkQ9aVOzKe
        xCkue537yFLmleslmJH4hQpOUjQlXyIDsA==
X-Google-Smtp-Source: AMrXdXuqIyBRv3vERCI94X8GRDedSY0ij1quKv7lbTlvgK1fi46V8hLrAPMRGYyDrjGhZFmw87bbBg==
X-Received: by 2002:a5d:4acc:0:b0:242:86e7:1fc6 with SMTP id y12-20020a5d4acc000000b0024286e71fc6mr6156823wrs.39.1671818400307;
        Fri, 23 Dec 2022 10:00:00 -0800 (PST)
Received: from vm.nix.is (vm.nix.is. [2a01:4f8:120:2468::2])
        by smtp.gmail.com with ESMTPSA id n14-20020adfe34e000000b002366dd0e030sm3680946wrj.68.2022.12.23.09.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 09:59:59 -0800 (PST)
From:   =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Tejun Heo <tj@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        =?UTF-8?q?=C3=86var=20Arnfj=C3=B6r=C3=B0=20Bjarmason?= 
        <avarab@gmail.com>
Subject: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
Date:   Fri, 23 Dec 2022 18:59:51 +0100
Message-Id: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
X-Mailer: git-send-email 2.39.0.1106.gf45ba805d1a
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Along with a trivial change in 1/2 (which would otherwise textually
conflict) this 2/2 notes that since Linux 4.18 the promise that the
"comm" field in /proc/PID/stat will be no longer than 15 characters
hasn't been true for the "kworker" processes.

This caveat was noted in a discussion on HN
https://news.ycombinator.com/item?id=34093845;

I myself have code in git/git@2d3491b117c (tr2: log N parent process
names on Linux, 2021-08-27) which won't do anything bad if this were
to be combined with PID recycling (with a kernel thread usurping the
PID of a process that used to belong to our parent), but it will
behave unexpectedly. I wrote that code against the promises made in
proc(5) at the time.

As I'm about to send this I notice that [1] was sent yesterday, which
textually conflicts with this submission[1]. I've added its authors to
the CC (I'm not on the linux-man list).

Personally I never read the note that the "comm" string would be
contained in parentheses as a promise that the kernel was going to
strip ")" from userspace names, or only allow balanced parentheses or
whatever.

I'd think most programmers would see a mention of a \0-delimited
string and assume that it would contain anything but "\0" (as is the
case here). Perhaps it's useful to some to include such a clarifying
blurb, but I personally find it superfluous.

Whereas the fix here is a fix for a promise we're currently making
which hasn't been true since v4.18.

1. https://lore.kernel.org/linux-man/Y6SJDbKBk471KE4k@p183

Ævar Arnfjörð Bjarmason (2):
  proc.5: note that "cmdline" might be favored over "stat.comm" by ps(1)
  proc.5: the "comm" field can be longer than 16 bytes

 man5/proc.5 | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

-- 
2.39.0.1106.gf45ba805d1a

