Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46B6B7B71F8
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 21:46:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240980AbjJCTqD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 15:46:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240976AbjJCTqC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 15:46:02 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C56593
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 12:45:59 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-d814634fe4bso1596403276.1
        for <linux-man@vger.kernel.org>; Tue, 03 Oct 2023 12:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696362358; x=1696967158; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=saHgOnMA67n4gZwlJ4PpFPUXnm1EsnwqlouJFj0QSrA=;
        b=2Mxpn5k5pKx/6mMwNwor3T/y8bR0e5D7o9nKAVYj3jc/eY2Zwrf/2WlnlAdV3+m24Y
         KfQG1it401Xtr1wqDi3Z/7y1w+lgksxQ7+IbLpKZ/XiXbkx3iFQb2+7iS9LyN1He4G0o
         gWYIpdiqnMkmV/V9GLTHjIUgQzBTlIyEd0qJjaegRBNFHnqSsI7II3E55RhcLjBtjvOd
         4Dakj7TpO3cXJW0BGNt7vGiFbo4s6C9Ua7p6JWbn1TMTmH2QolMXMW2M47YOLiZa00S5
         +iZXFtouXU29NOLS1y1LXAmftdNKDsWKUm6wWSBwMrwnFpaGsLDyx1iz7AWVefvxWacl
         5jmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696362358; x=1696967158;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=saHgOnMA67n4gZwlJ4PpFPUXnm1EsnwqlouJFj0QSrA=;
        b=K+pWRGMFnY+yoApQ07eQcc6oH39Zwd68wstPEdx8OsmHo318VYZsDW8xzZDoLo3N2P
         gHeCMFu3WlgLyT1RM8n8OxOa4qwyvRjRFRj3k5FChO6xcVAtdJW30aROptZfbxAvpbAJ
         cqU1/9PVbwV29k8qP5OQJJw+YJyn1DTf5gM1Qh+JWV8tN5sJqZox8ZElu73lLZokEkjY
         ZFyQW+bd0IUWDi1UKLv+1ra7iIBwD3uu2DBOgsZhKWqQ0g//BnD1g2YfDXBNTvrkXj3j
         tbiEkX63LySMFetyOS6Y6GAFpFntFo1oJvQl20B1zXRVf/DdPfe4kpikeXtYlNyspq9t
         7ckA==
X-Gm-Message-State: AOJu0YyOYver3zCcM83gbBv2HlD6dUfxU6FGBhZgSruqxS2WgPAf8s0X
        r4FZpwyGFdeAXokEZTX3lH36tUXroNfFctam3TYU
X-Google-Smtp-Source: AGHT+IE+GcDf+X27c5kJNc3oNmGJKigBdaixTtklNARXTwZm81BadP68GajItBX8aDtIKT3fxza5qJXIav70Sa2bVhk8
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:6577:b8c1:dd2d:1c93])
 (user=axelrasmussen job=sendgmr) by 2002:a25:770f:0:b0:d35:bf85:5aa0 with
 SMTP id s15-20020a25770f000000b00d35bf855aa0mr4058ybc.4.1696362358605; Tue,
 03 Oct 2023 12:45:58 -0700 (PDT)
Date:   Tue,  3 Oct 2023 12:45:44 -0700
In-Reply-To: <20231003194547.2237424-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20231003194547.2237424-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
Message-ID: <20231003194547.2237424-3-axelrasmussen@google.com>
Subject: [PATCH v2 2/5] ioctl_userfaultfd.2: correct and update UFFDIO_API
 ioctl error codes
From:   Axel Rasmussen <axelrasmussen@google.com>
To:     Alejandro Colomar <alx@kernel.org>, Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

First, it is not correct that repeated UFFDIO_API calls result in
EINVAL. This is true *if both calls enable features*, but in the case
where we're doing a two-step feature detection handshake, the kernel
explicitly expects 2 calls (one with no features set). So, correct this
description.

Then, some new error cases have been added to the kernel recently, and
the man page wasn't updated to note these. So, add in descriptions of
these new error cases.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index ef352a69d..28dd2fcdd 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -256,17 +256,31 @@ refers to an address that is outside the calling process's
 accessible address space.
 .TP
 .B EINVAL
-The userfaultfd has already been enabled by a previous
-.B UFFDIO_API
-operation.
-.TP
-.B EINVAL
 The API version requested in the
 .I api
 field is not supported by this kernel, or the
 .I features
 field passed to the kernel includes feature bits that are not supported
 by the current kernel version.
+.TP
+.B EINVAL
+A previous
+.B UFFDIO_API
+call already enabled one or more features for this userfaultfd.
+Calling
+.B UFFDIO_API
+twice,
+the first time with no features set,
+is explicitly allowed
+as per the two-step feature detection handshake.
+.TP
+.B EPERM
+The
+.B UFFD_FEATURE_EVENT_FORK
+feature was enabled,
+but the calling process doesn't have the
+.B CAP_SYS_PTRACE
+capability.
 .\" FIXME In the above error case, the returned 'uffdio_api' structure is
 .\" zeroed out. Why is this done? This should be explained in the manual page.
 .\"
-- 
2.42.0.609.gbb76f46606-goog

