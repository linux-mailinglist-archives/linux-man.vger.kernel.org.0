Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9970234DA05
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbhC2WTB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:19:01 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:28593 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231238AbhC2WSj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:18:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617056319;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=a2LCEVo4TBpl00I4ylw0j9DYE4xxtQovFWZPzhkRNFo=;
        b=LMFBGe+Z+8rEI91QPf7U1A4RQNcKrn3gINCeZR+9GD0FoP70Sj+HISyk8Kv8O1s74J2Dav
        3ktx0yE7VIaR17tyhjbGxJJmuq4L0m2aITfsEi4/gUrR172SOmLZHdPKuYgYb3qPov1Jhe
        Akz3CYmQIWZ5Cpky46q5TUx8smXPg6c=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-jgPp5lJXOaOPGpSKyboJ6g-1; Mon, 29 Mar 2021 18:18:37 -0400
X-MC-Unique: jgPp5lJXOaOPGpSKyboJ6g-1
Received: by mail-qk1-f198.google.com with SMTP id h21so13227954qkl.12
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 15:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a2LCEVo4TBpl00I4ylw0j9DYE4xxtQovFWZPzhkRNFo=;
        b=ZYGFY0oK1uvUed6aYL79vsDHEaysiaLBfDLhnhx5XWHyqMgrKcoLj926vlbTRyviDU
         ejxKf9Gfq0drGS/dfA+/qFQ44a4kq/2gGJCQ46UBRLO2TV81An7cQA4OkVsoxYid6qZk
         QIWrDgoyx+RExjfeLerZonamjr6TCZAuRXMkXl8c16GY58YAnQabwzw42I6W6IpKTtzP
         rAKcfdp7bc/Qd9isZfH+G5VVqOoBuNzEGCTR2nxTwpkHlcWUH0XTa0lpbF6M2EDLBahd
         IxldSvHqjIwKBt1IlbId/23AITiolW12z1Yse8/cntuimECMeQ8jtzCkDUNN5hoSeBou
         fL/w==
X-Gm-Message-State: AOAM530jdo4NT4BREENb8kF43hx3e6aVT4xSoSiPJJSDT+glzprfuYlS
        nOavgUjGRUun+04vJNtDHx1yvYMpDaQ4kvMjbsmJKUGuLFENqBno3wbRB+MVMQPlXcRsPh7JOrR
        ZYk5yTxkBBAx7GPIlOl9y
X-Received: by 2002:a0c:fd62:: with SMTP id k2mr27266587qvs.51.1617056316470;
        Mon, 29 Mar 2021 15:18:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYSdTuvzXwSj947y/QWq1Gw7vYl06Ny69njq+aEYPm6whLOz19fdF4mpWlPPYxbKOEA5d8TQ==
X-Received: by 2002:a0c:fd62:: with SMTP id k2mr27266568qvs.51.1617056316155;
        Mon, 29 Mar 2021 15:18:36 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i17sm12255215qtr.33.2021.03.29.15.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 15:18:35 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-mm@kvack.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Cc:     Axel Rasmussen <axelrasmussen@google.com>, peterx@redhat.com,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 0/4] man2: udpate mm/userfaultfd manpages to latest
Date:   Mon, 29 Mar 2021 18:18:29 -0400
Message-Id: <20210329221833.517923-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v5:=0D
- add r-bs for Mike R.=0D
- Fix spelling mistake "diable" [Mike R.]=0D
- s/Starting from/Since/ for patch 2 (also replaced two existing ones in th=
e=0D
  same file) [Alex]=0D
- s/un-write-protect/write-unprotect/ [Alex]=0D
- s/The process was interrupted and need to retry/The process was interrupt=
ed;=0D
  retry this call/ in the last patch. [Alex]=0D
=0D
v4:=0D
- Fixed a few "subordinate clauses" (SC) cases [Alex]=0D
- Reword in ioctl_userfaultfd.2 to use bold font for the two modes referenc=
ed,=0D
  so as to be clear on what is "both" referring to [Alex]=0D
=0D
v3:=0D
- Don't use "Currently", instead add "(since x.y)" mark where proper [Alex]=
=0D
- Always use semantic newlines across the whole patchset [Alex]=0D
- Use quote when possible, rather than escapes [Alex]=0D
- Fix one missing replacement of ".BR" -> ".B" [Alex]=0D
- Some other trivial rephrases here and there when fixing up above=0D
=0D
v2 changes:=0D
- Fix wordings as suggested [MikeR]=0D
- convert ".BR" to ".B" where proper for the patchset [Alex]=0D
- rearrange a few lines in the last two patches where they got messed up=0D
- document more things, e.g. UFFDIO_COPY_MODE_WP; and also on how to resolv=
e a=0D
  wr-protect page fault.=0D
=0D
There're two features missing in current manpage, namely:=0D
=0D
  (1) Userfaultfd Thread-ID feature=0D
  (2) Userfaultfd write protect mode=0D
=0D
There's also a 3rd one which was just contributed from Axel - Axel, I think=
 it=0D
would be great if you can add that part too, probably after the whole=0D
hugetlbfs/shmem minor mode reaches the linux master branch.=0D
=0D
Please review, thanks.=0D
=0D
Peter Xu (4):=0D
  userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs=0D
  userfaultfd.2: Add write-protect mode=0D
  ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs=0D
  ioctl_userfaultfd.2: Add write-protect mode docs=0D
=0D
 man2/ioctl_userfaultfd.2 |  89 +++++++++++++++++++++++++++-=0D
 man2/userfaultfd.2       | 121 +++++++++++++++++++++++++++++++++++++--=0D
 2 files changed, 203 insertions(+), 7 deletions(-)=0D
=0D
-- =0D
2.26.2=0D
=0D

