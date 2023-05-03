Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 570466F5C6B
	for <lists+linux-man@lfdr.de>; Wed,  3 May 2023 19:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229878AbjECREU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 May 2023 13:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjECRER (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 May 2023 13:04:17 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 759EE7AAF
        for <linux-man@vger.kernel.org>; Wed,  3 May 2023 10:03:58 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3062c1e7df8so2880839f8f.1
        for <linux-man@vger.kernel.org>; Wed, 03 May 2023 10:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683133437; x=1685725437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VHSYAk0KnFaXom29f6besjshE4Dn39a26wINvl+LlTg=;
        b=HwEHG+v3vtcxIDECfqblncbVH+Cm7OkD32nQ7hkvUcu5vHYLUjuEcSDhEOiuB2W6+Q
         enbNPtrJrW/D7xCRHqAZlqcjt7HLuxu8JuY+TZmgVaS+bx7xBAG5vYRQ/fnjb3zNFEgg
         oKqAPKAwkvYrf5JeCi8TljuILECyF2QbtyynirK0SkVZDEmjNOA4lSKXnBwxhftTwAjE
         y3R0kaI2XXz1gzDd/q0rIjp7XgQxssDsh21lnRra8kqPpQK7SsePBcF7B9cCJ+vSjonu
         HfFnoYocjNxuY6niwN36sDMzoF0WH5UatC1YzT7ExSPYyLMTNNlML2/yWTeHIeb4Fxja
         VzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683133437; x=1685725437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VHSYAk0KnFaXom29f6besjshE4Dn39a26wINvl+LlTg=;
        b=JpJNRqlJqcUaLl9TD+tPtyqf7V1MYrbEBm5vnsz10MaXnzXwyBQd/lbb3jBfm1ZNsF
         HBLXKjyCLSe0aA6Ve+Soz8BFfNURPxnI3jGH4dIimnGM/MLCIkdPQiD7PYDkhn/zC2FY
         6tBoBcXnwqYVd/uJQNNstiBLALyf12HNzbmEDxXrpiktCJTJi5LKK5heJak1G5e+RlQe
         9RVRWjCE+/0+9tz1zA0QkWJmHLWhT2SYJDCiBqCugTWpwhGp+KaboGzhIR+ElbakqHAH
         c9oCW1/+U3O9HhuhUFqY8xHbJKzSUAT/JH043miEumU5IcHP+PS263zmxcDr3SIXxQfv
         SQFw==
X-Gm-Message-State: AC+VfDyuITriO59c8kNBiex9+XrzF88bkTZUVgLYXspzqx7FBbeUWhsN
        AawD63U/oyQG8UHtqJDO+TcsGwRpgD4=
X-Google-Smtp-Source: ACHHUZ6q4c8E1Y/fwpZddI4COeMw6WTHaEeEKG0SON1Kqd4cU4gWghuYfcqv+aufNZjoOwomgW8bzg==
X-Received: by 2002:a5d:6681:0:b0:303:97db:ae93 with SMTP id l1-20020a5d6681000000b0030397dbae93mr477238wru.44.1683133436711;
        Wed, 03 May 2023 10:03:56 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b003f193d7c6b7sm2376091wme.41.2023.05.03.10.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 10:03:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, a.clayton@nginx.com
Cc:     Alejandro Colomar <alx@kernel.org>, andrew@digital-domain.net
Subject: [PATCH 0/3] Discourage sched_yield(2)
Date:   Wed,  3 May 2023 19:03:50 +0200
Message-Id: <20230503170353.25998-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Andrew,

Here's a patch set for discouraging sched_yield(2).  See the formatted
page at the bottom.  I also updated some POSIX historic detail.

Cheers,
Alex


Alejandro Colomar (3):
  sched_yield.2: HISTORY: POSIX.1-2008 makes this non-optional
  sched_yield.2: NOTES: Remove misleading sentence
  sched_yield.2: Rename NOTES to CAVEATS, and reorder contents

 man2/sched_yield.2 | 41 +++++++++++++++++++----------------------
 1 file changed, 19 insertions(+), 22 deletions(-)

---
$ MANWIDTH=72 man ./man2/sched_yield.2 | cat
sched_yield(2)            System Calls Manual           sched_yield(2)

NAME
       sched_yield - yield the processor

LIBRARY
       Standard C library (libc, -lc)

SYNOPSIS
       #include <sched.h>

       int sched_yield(void);

DESCRIPTION
       sched_yield()  causes the calling thread to relinquish the CPU.
       The thread is moved to the end of the queue for its static pri‐
       ority and a new thread gets to run.

RETURN VALUE
       On success, sched_yield() returns 0.  On error, -1 is returned,
       and errno is set to indicate the error.

ERRORS
       In the Linux implementation, sched_yield() always succeeds.

STANDARDS
       POSIX.1‐2008.

HISTORY
       POSIX.1‐2001 (but optional).  POSIX.1‐2008.

       Before POSIX.1‐2008, systems on which sched_yield()  is  avail‐
       able defined _POSIX_PRIORITY_SCHEDULING in <unistd.h>.

CAVEATS
       sched_yield()  is  intended  for  use with real‐time scheduling
       policies (i.e., SCHED_FIFO or SCHED_RR).  Use of  sched_yield()
       with  nondeterministic  scheduling policies such as SCHED_OTHER
       is unspecified and very likely means your application design is
       broken.

       If the calling thread is the only thread in the highest  prior‐
       ity  list at that time, it will continue to run after a call to
       sched_yield().

       Avoid calling sched_yield()  unnecessarily  or  inappropriately
       (e.g.,  when  resources needed by other schedulable threads are
       still held by the caller), since doing so will result in unnec‐
       essary context switches, which will degrade system performance.

SEE ALSO
       sched(7)

Linux man‐pages (unreleased)    (date)                  sched_yield(2)
-- 
2.40.1

