Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B5A06B795F
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 14:46:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbjCMNq4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Mar 2023 09:46:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbjCMNqx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Mar 2023 09:46:53 -0400
Received: from mail-io1-xd49.google.com (mail-io1-xd49.google.com [IPv6:2607:f8b0:4864:20::d49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A74E96C6BF
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 06:46:41 -0700 (PDT)
Received: by mail-io1-xd49.google.com with SMTP id i2-20020a5d9e42000000b0074cfcc4ed07so6505236ioi.22
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 06:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678715201;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=1qQVYxCacPSdSamfkz2QnUkPnT0E1Pc2RcshIcrlTNo=;
        b=Fqq4VU9otzmbXNowF8c/sQ7f381wWLu5z9kIPKbdUrGe2LF19GxDHjcXtcqeOhHTsv
         4UZDyznkfg3eUQcbhqpe33/XdLSTi7ngg7VVXYnTQ6ogEwuth+UrqVby9ek3QYSvmsfh
         Hw8GflnUv9vUV7Tui7tVT+llMjzgpy3Mv7gIJnYHJ6d37K6gB34Yxwz2j83TAUvJ5LWD
         Xvpj/7kKC9JsBvkXajzcjDcr2ZY1gNiLZWFJrkBDI0vQfppJwGqOzRRF/kKZP3p7aDOH
         Hn+PNlBdQ1ETUG3x6fyxsgpESx3BgRNGDZizDqmYDm6OPDSB3s+rgpZcfzV9Bhmg9aRP
         OjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678715201;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1qQVYxCacPSdSamfkz2QnUkPnT0E1Pc2RcshIcrlTNo=;
        b=4ftgwYyxatnvaLKwGJz0TaUHhnmGEVoENbOhQlAZ1DPRoC4oQQjupu6M4fpwU3eDFa
         A7fxgGJrc8k42agadN0DxZklZ9CHusVRwewOw/ZhVnBjEoJvge+wvMi7W9n2I5CVw7Ez
         BovgPZ+6RdIIbRM5SVb86pqJT/Bh5CuxVYt04Ju5B7OitPDk5uyQ5t2zQ0X5N5+NG8Va
         IGCapUR5cVGqpWwJVIjHIC9r2VqruK1i9rjp6YrETauyfK+BfGZXy6a5kMZHAUU6M31J
         MLzPa3G2cIhIUpU0fDnxb9eNXpyhRF05xf46JED/IbYlRsGXClsK4jWGCLijRXQhqL4W
         tHWg==
X-Gm-Message-State: AO0yUKVfGyVl9cDWkaypahkOta/ipuLF+t5DX+Bf/nmAL76pnW/pCzPB
        JuYb4vX7bXoDZPMp5EmbVU8OUnMSOLTMhw==
X-Google-Smtp-Source: AK7set8Oq3ZGF1tLgR4CzsCrn1Qck4uk8hM7d2XDNOASIKn/MV0uPISVvNOEtt6qd3yAvQ7WCy7wHbcvlIKltg==
X-Received: from talumbau.c.googlers.com ([fda3:e722:ac3:cc00:2b:ff92:c0a8:90d])
 (user=talumbau job=sendgmr) by 2002:a5d:960e:0:b0:74c:8ba9:290e with SMTP id
 w14-20020a5d960e000000b0074c8ba9290emr15585050iol.2.1678715201070; Mon, 13
 Mar 2023 06:46:41 -0700 (PDT)
Date:   Mon, 13 Mar 2023 13:46:14 +0000
In-Reply-To: <20230313134614.780515-1-talumbau@google.com>
Mime-Version: 1.0
References: <20230313134614.780515-1-talumbau@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230313134614.780515-2-talumbau@google.com>
Subject: [PATCH v2 1/1] posix_fadvise.2: NOREUSE now supported.
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
 man2/posix_fadvise.2 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man2/posix_fadvise.2 b/man2/posix_fadvise.2
index 57c65c810..f7faefa0a 100644
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

