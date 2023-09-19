Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06C697A6B0F
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232110AbjISTCV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231921AbjISTCU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:20 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB4FB3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:14 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-d814a1f7378so240741276.1
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150134; x=1695754934; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w7DMdUamBzEa23P7zE5AZLI90338+bQ4zFLdMCSp3KI=;
        b=UEof/Mk/O/C49Pj8KbGq21BVQykE6ts2VwIQ60l6cTX6bumvoMRMXddeHNudsBSPRT
         uTVUrWBXt2t0eeABdQ/8sgjmcxfE9KT/ktyTjDOYJBj6NyxSnYoU/C0NxA0eJRey8xIa
         O0HAnbvMobjunQaIY4gjGXScAhwxQtWnLItdO32fpHrhnUtO76iAnl83Enjg18abWx1q
         mcM0DARDzPwJ/IQ8/647uTGuKGAYaMpe8p9qIB7CTwRVgBA6uKHLuVYu9Yf70mKLFNJ4
         ez8he3MUHcCIAXuKTqzr+8x6QvslnMQxcxOQK6L2LOoRvhuDu2bJ1dB2wbY8U83v6o6I
         9LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150134; x=1695754934;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w7DMdUamBzEa23P7zE5AZLI90338+bQ4zFLdMCSp3KI=;
        b=KaKeoTXwim/8GkDQggN8Q96apfos0PLtiF6jR6pks6ry4/a0ltZMLylSpMfoCu81EO
         U2/q9SobIYAbLQWRGscMbTynu1faZBnQ+oA2njl8vK7mWSSXMWkEgjp6oZIHtGcdAjOK
         FAiWCQv8f4pJ5nlCe4DK1MuC/j38bn8wBZg0AnxTm4sP2HXgEsbwn+7940xyG7qHO6zc
         03j8CVUdMnb9kpKuPKR9k7Lb9IgEnSJyD0mvGdPLbVZ/9H+LCokFMipVg/BuPsM7DvHJ
         o250XwgEiqakRu78PMF8psRC4VeLWiB4Enr5jCTiCkwVPhUSpcWGoIESGfPpbbu4AtMK
         k9VA==
X-Gm-Message-State: AOJu0YxbP9ahdBmomGOr20MkKO+KPppePiVLf6JKF7Nkiedr5t2z7WWR
        p+o8bNTc/V71Uu0qbNTgPI5pGbvH8Nbl/MOQOkJL
X-Google-Smtp-Source: AGHT+IEO4CioWGeMO0mLBTwXzCTR4DQsMAJTo7jrWLS1l6E5YqJYAIusC287GlrMsgTnCH5DnoLfuDVce0/mKLRwpTZk
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a5b:c83:0:b0:d81:5c03:df99 with SMTP
 id i3-20020a5b0c83000000b00d815c03df99mr12778ybq.3.1695150133966; Tue, 19 Sep
 2023 12:02:13 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:01:56 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-1-axelrasmussen@google.com>
Subject: [PATCH 00/10] userfaultfd man page updates
From:   Axel Rasmussen <axelrasmussen@google.com>
To:     Alejandro Colomar <alx@kernel.org>, Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Various updates for userfaultfd man pages. To summarize the changes:

- Correctly / fully describe the two-step feature support handshake process.
- Describe new UFFDIO_POISON ioctl.
- Other small improvements (missing ioctls, error codes, etc).

Axel Rasmussen (10):
  userfaultfd.2: briefly mention two-step feature handshake process
  userfaultfd.2: reword to account for new fault resolution ioctls
  userfaultfd.2: comment on feature detection in the example program
  ioctl_userfaultfd.2: fix a few trivial mistakes
  ioctl_userfaultfd.2: describe two-step feature handshake
  ioctl_userfaultfd.2: describe missing UFFDIO_API feature flags
  ioctl_userfaultfd.2: correct and update UFFDIO_API ioctl error codes
  ioctl_userfaultfd.2: clarify the state of the uffdio_api structure on
    error
  ioctl_userfaultfd.2: fix / update UFFDIO_REGISTER error code list
  ioctl_userfaultfd.2: document new UFFDIO_POISON ioctl

 man2/ioctl_userfaultfd.2 | 254 ++++++++++++++++++++++++++++++++-------
 man2/userfaultfd.2       |  15 ++-
 2 files changed, 220 insertions(+), 49 deletions(-)

--
2.42.0.459.ge4e396fd5e-goog

