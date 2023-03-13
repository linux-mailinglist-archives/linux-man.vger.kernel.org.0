Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3156B795C
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 14:46:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbjCMNqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Mar 2023 09:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230319AbjCMNqn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Mar 2023 09:46:43 -0400
Received: from mail-il1-x14a.google.com (mail-il1-x14a.google.com [IPv6:2607:f8b0:4864:20::14a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C51657090
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 06:46:34 -0700 (PDT)
Received: by mail-il1-x14a.google.com with SMTP id b3-20020a056e02048300b003230de63373so1193980ils.10
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 06:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678715194;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OjTICrRx+SMJGCmS9JPMCfae48s5/4UF2MrMN0TmO5A=;
        b=FdBzstKjCmMfDiuyKoi/1xaMjUzacBbfKIRqcvdOEbFTTQJ6jvQo4rtyS16XTMhX5A
         UQt7Qi2D4dVZA60Q/HiqKbmykzgZgX3bpNk4A2xYMQXgDelbBCBx8IVfnBukEzA0/2Oe
         XnHp7Fl1m0McSCwAYl2UOajo9MqA87GdpEODz446I7vkNQOhZ27rdrMKnz5kp6S+HgXE
         hYaZe/9PEZx+M8WiBblj5ZojmsYVG8/OTdBlqcakMlbPlz8DMdiK9/6Y6ziNl5Qlk2wR
         rObQct9rt/2aaisigrNHLrgJxza8FQ0e3cRYV5l03XNw5zDp0uakVorNK5FO6xrpU3GP
         vfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678715194;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjTICrRx+SMJGCmS9JPMCfae48s5/4UF2MrMN0TmO5A=;
        b=3S/V9onMg6z83EA+hx+koA9yQgZSK82Yc91jk6vP2QDBLFKaQFdcof0EsvZ6OAkcWM
         UK2erBTSpv43eCsZHjly5RG4mRA5hrQJ9QkbZObl7NtA006/unwfzQ8sEuKqwMQYVqb0
         RgYZFkAkRiArvZ3aVpnvnj296HxEHxo2dEvs9URBa64XVa1KT5akyMEAKvjGMzthMcRI
         Exluxi0mzwOejgHzYgI0Nfk4C8vt77GP5QL7/9KWUxaNYoW9u4T/AlQcuNFeDZBhqHR5
         WZHzfCIOd3L5CXVeOXdJDBdKY4bpl4gu02mDWb39B8uziLHp9bztokhzWMQ0qC0aciUD
         ITWQ==
X-Gm-Message-State: AO0yUKWTdX7m0QFbZOhJMTjEL4p5Fta5KqUAgrkBwszAmnHZtVMxMmiU
        +Zh/z0dVq2/3T7SXH2GhKT6+u88RgjIhJg==
X-Google-Smtp-Source: AK7set8kvWgeAp9no+h8jfjUP2AZXLazVeUfho1L6MGKP90iTtqLVqU4M/9QgLvqmORehFZqktLoMaulIed81w==
X-Received: from talumbau.c.googlers.com ([fda3:e722:ac3:cc00:2b:ff92:c0a8:90d])
 (user=talumbau job=sendgmr) by 2002:a02:84c6:0:b0:405:8be:eaaa with SMTP id
 f64-20020a0284c6000000b0040508beeaaamr658620jai.5.1678715193892; Mon, 13 Mar
 2023 06:46:33 -0700 (PDT)
Date:   Mon, 13 Mar 2023 13:46:13 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230313134614.780515-1-talumbau@google.com>
Subject: [PATCH v2 0/1] posix_fadvise.2: NOREUSE now supported
From:   "T.J. Alumbaugh" <talumbau@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org,
        "T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Small correction to indicate that POSIX_FADVISE_NOREUSE does not set
the readahead window size to the default, but rather does not modify
it at all.

T.J. Alumbaugh (1):
  posix_fadvise.2: NOREUSE now supported.

 man2/posix_fadvise.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

-- 
2.40.0.rc1.284.g88254d51c5-goog

