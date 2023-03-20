Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542556C24B8
	for <lists+linux-man@lfdr.de>; Mon, 20 Mar 2023 23:22:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbjCTWWy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Mar 2023 18:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbjCTWWl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Mar 2023 18:22:41 -0400
Received: from mail-io1-xd4a.google.com (mail-io1-xd4a.google.com [IPv6:2607:f8b0:4864:20::d4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C337B298FD
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 15:21:55 -0700 (PDT)
Received: by mail-io1-xd4a.google.com with SMTP id p128-20020a6b8d86000000b007583ebb18fdso362990iod.19
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 15:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1679350862;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=50eFb9j8uCXjcCC6/NygorZQvmwLMi5m3ODD5mO18Vg=;
        b=DErBQxXn+lfh4XrCIkTHnvIlk/dRGuK1FDAXO0ngq0JTQJ4DpnD/b3I++BOx3R/1gk
         d2fnxzOtMs72+/4XNDHwQKpqpSEd8Vc/a9HIqqVUv5cFQp5lIUOHXqBURqfkeSVyRqhJ
         bfFlBWVAVRKUhXqk0pF0Ci+lxjREnGNUCJSPRvCF128lGlQvJmbIqzjiLMxpFFAiotTp
         BVSn7QNHraI0PQIVwjGAdZ/BDPsqxSG/Oj3hPgEB9JxC7665qpOUX4e2WNfIWHJJeHlC
         PivAqhGh36fdTSXXHxGQPRp/njVyLAerFfKJM3K2Ho9K4pyKimjTUlrP71TfP1V75k6F
         3QrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679350862;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=50eFb9j8uCXjcCC6/NygorZQvmwLMi5m3ODD5mO18Vg=;
        b=IFrR4ALGww84VaaJ+CGG/fVWbw3yGg8WFPf8zgGVU1A2/F5CZ63GTV5YJDXmiBsmbq
         XQBpUm8CDvY8ianoCA4wo5zGRl/Xob+1uqwZnHGYLT2txfxcaNd+sqx0k2bhMUJduvpP
         f/QtcxW0phzsq1uucVAqrf65jYSlEUxnwzaqnJw6gpZWGtmttCe+4BOA/Pv1HLHTzolZ
         t/dGhNk6m2USbBuZoSZlVZt/WBmQdZcg1wdnPuHAzFvOXsAgOKWbKIJCKmDtt0XcRFd+
         5CPIeDLn74hDrENUj/p6Hxx2i3187f3/LuibgfBEjeFWkUv5XYkgiTQYXeouXQyqXqmW
         UgEA==
X-Gm-Message-State: AO0yUKVxuvu4mrDc22ff3GdMmnluagRn+EPPu43mF08EPv98gdwKuB4O
        OzDVGisVO4Ti6aKdfRZJ9ZZDkQPVre0AnQ==
X-Google-Smtp-Source: AK7set/iaDkBdwLyzyxVcYRhfRv6JRXzysyv8QtmczZDJGnd673jus4sIDC/HG5m8iYeU4jvrAyMt5NIcoPSlQ==
X-Received: from talumbau.c.googlers.com ([fda3:e722:ac3:cc00:2b:ff92:c0a8:90d])
 (user=talumbau job=sendgmr) by 2002:a05:6e02:962:b0:315:8e92:39ad with SMTP
 id q2-20020a056e02096200b003158e9239admr80802ilt.1.1679350862035; Mon, 20 Mar
 2023 15:21:02 -0700 (PDT)
Date:   Mon, 20 Mar 2023 22:20:57 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230320222057.1976956-1-talumbau@google.com>
Subject: [PATCH v3] posix_fadvise.2: NOREUSE now supported.
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

POSIX_FADV_NOREUSE is now supported in Linux[1].
Updates text regarding former no op behavior. Indicates the readahead
policy and treatment of file pages read with this flag.

[1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@google.com/

Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
---
 man2/posix_fadvise.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man2/posix_fadvise.2 b/man2/posix_fadvise.2
index 57c65c810..9e562f74d 100644
--- a/man2/posix_fadvise.2
+++ b/man2/posix_fadvise.2
@@ -64,7 +64,10 @@ The specified data will be accessed only once.
 .IP
 Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
 same semantics as \fBPOSIX_FADV_WILLNEED\fP.
-This was probably a bug; since Linux 2.6.18, this flag is a no-op.
+This was probably a bug; from Linux 2.6.18 until Linux 6.2 this flag was
+a no-op. From Linux 6.3 and beyond, \fBPOSIX_FADV_NOREUSE\fP signals
+that the LRU algorithm can ignore access to mapped page cache marked
+by this flag. This is useful, for example, while streaming large files.
 .TP
 .B POSIX_FADV_WILLNEED
 The specified data will be accessed in the near future.
@@ -154,6 +157,7 @@ in POSIX.1-2001 TC1.
 Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
 default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
 this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
+\fBPOSIX_FADV_NOREUSE\fP does not modify the readahead window size.
 These changes affect the entire file, not just the specified region
 (but other open file handles to the same file are unaffected).
 .PP
-- 
2.40.0.rc1.284.g88254d51c5-goog

