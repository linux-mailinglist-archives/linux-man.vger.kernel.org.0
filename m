Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10B2D6B5B84
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 13:14:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbjCKMON (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 07:14:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbjCKMOL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 07:14:11 -0500
Received: from mail-il1-x14a.google.com (mail-il1-x14a.google.com [IPv6:2607:f8b0:4864:20::14a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2767C5A19A
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 04:14:01 -0800 (PST)
Received: by mail-il1-x14a.google.com with SMTP id i8-20020a056e02054800b00318a7211804so4010827ils.5
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 04:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678536840;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5LqK9gT1b8C9UD1yQ93MyaHDTin/IeqflGfl1hZf93c=;
        b=QR81XWt/oSrqX+MRI/BkjpNeSDAZObDH04s8n4lDZ+O/NJ/Gr2gujH4uCYGmA00DHl
         WUuyvvfxQMTSTZojCd9pghX25MblezNA4ZGxXll/vnPJ3MblASGiGAOdgJprT+yDP4yF
         i10kXSbGx+misqXuH9SFfHnarmDA+NC2MqgO5kH6yKHfd+MkzbDFnCpe5ADBoNfy111V
         0ii+n5q5rlU36k2xVA8KkRGcx36DHVaT+JS9d8uc5eR3Lc5OWzXbfyMQ7qZMI9IXK7XS
         R7biODjTRHNJWuyofGTOz7C7wjE4CSFWMAuWQAfF9YL41vkDPiuz5nlUPtp2NPOuTHcz
         OYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678536840;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5LqK9gT1b8C9UD1yQ93MyaHDTin/IeqflGfl1hZf93c=;
        b=5KTXElcPvkjc6wr3C2v2i/lJUKlPLOavpFcerBCKomxAop2n4uQPuoDwrl+09OAGDq
         9rhI4o7Iyct+56IHgQCybC78x3QL0h+fcoI7zAAOAjXxJpmX0Ad9yOXC0cBMJHq4kGkU
         o1p1rVkco8jWDBqjvJDlzXGVV5//EN9fQx/CYoB7216azu4slAvThTU5ZAby+X9k4xCo
         QwNWQE1r9IbEUZulzyymB2603jNX5hqFb74EqCdR3YS8h3KfLJCnJ4K5nodbSuGcPPFJ
         Rr6swEsZlrY91tYGYwSjETjBl50cI1T91Z0udAPSuKPeBuR7w5LAHLsoBNK694R11euL
         0zJQ==
X-Gm-Message-State: AO0yUKXwTLDkt4Uxw67KfjjbEx7ouUmCYzgmy0rq2+3VGY15u3ztJbPb
        LTpyqbw505S1TiB0gdhOqQ828u9H4ERR3A==
X-Google-Smtp-Source: AK7set+oz67IMG6Mmi7sQCZ4Fe3vl3LaxeIuj+9giuvLLD2oqORFPRZRzHjK7lyuYKdt/ubMB/EJGlx4fqoyew==
X-Received: from talumbau.c.googlers.com ([fda3:e722:ac3:cc00:2b:ff92:c0a8:90d])
 (user=talumbau job=sendgmr) by 2002:a02:93ee:0:b0:3c5:19e6:b532 with SMTP id
 z101-20020a0293ee000000b003c519e6b532mr13567830jah.6.1678536840132; Sat, 11
 Mar 2023 04:14:00 -0800 (PST)
Date:   Sat, 11 Mar 2023 12:13:57 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311121357.429162-1-talumbau@google.com>
Subject: [PATCH] posix_fadvise.2
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

POSIX_FADVISE_NOREUSE is now supported in Linux[1].
Updates text regarding former no op behavior. Indicates the readahead
policy and treatment of file pages read with this flag.

[1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@google.com/

Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
---
 man2/posix_fadvise.2 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man2/posix_fadvise.2 b/man2/posix_fadvise.2
index 57c65c810..5eba3988b 100644
--- a/man2/posix_fadvise.2
+++ b/man2/posix_fadvise.2
@@ -64,7 +64,10 @@ The specified data will be accessed only once.
 .IP
 Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
 same semantics as \fBPOSIX_FADV_WILLNEED\fP.
-This was probably a bug; since Linux 2.6.18, this flag is a no-op.
+This was probably a bug; from Linux 2.6.18 until Linux 6.2 this flag was
+a no-op. From Linux 6.3 and beyond, \fBPOSIX_FADV_NOREUSE\fP signals
+that that the LRU algorithm can ignore access to mapped page cache marked
+by this flag. This is useful, for example, while streaming large files.
 .TP
 .B POSIX_FADV_WILLNEED
 The specified data will be accessed in the near future.
@@ -151,11 +154,12 @@ to
 .I off_t
 in POSIX.1-2001 TC1.
 .SH NOTES
-Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
-default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
-this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
-These changes affect the entire file, not just the specified region
-(but other open file handles to the same file are unaffected).
+Under Linux, \fBPOSIX_FADV_NORMAL\fP and \fBPOSIX_FADV_NOREUSE\fP
+set the readahead window to the default size for the backing device;
+\fBPOSIX_FADV_SEQUENTIAL\fP doubles this size, and
+\fBPOSIX_FADV_RANDOM\fP disables file readahead entirely. These changes
+affect the entire file, not just the specified region (but other open
+file handles to the same file are unaffected).
 .PP
 The contents of the kernel buffer cache can be cleared via the
 .I /proc/sys/vm/drop_caches
-- 
2.40.0.rc1.284.g88254d51c5-goog

