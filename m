Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70FCB34523E
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:09:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCVWJF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:09:05 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:29558 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230241AbhCVWIy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:08:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616450933;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=4XYWRbgpuCRhnOk3ThFLECfCQaCS+n7XOpk8jXBRAB4=;
        b=UMtmzzP9gbNX/gLO7CexUKTL7BW34BwX74PWm5ZwdtAxuWG3HIZ2fv+IEweXqiznX6/OMq
        CS7dD62u4SwMhGkR91PEOkzt3TK2RWvHzTiuqX1iL2D16cR31gQkPrtMFUErFXbASEIhEH
        9CCDz98TN5RtX85eRO1ye/bGKt2NvQo=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-b3UCKW2eM2-49d7PhqdAOQ-1; Mon, 22 Mar 2021 18:08:52 -0400
X-MC-Unique: b3UCKW2eM2-49d7PhqdAOQ-1
Received: by mail-qv1-f72.google.com with SMTP id t18so379335qva.6
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 15:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4XYWRbgpuCRhnOk3ThFLECfCQaCS+n7XOpk8jXBRAB4=;
        b=jj+rKESHo2M4sNN0F5n4isPKWRf55qwMqO3hSRicEFQ2e46S7Ltq0IXqwDmL16h/3Y
         H/hj2UelUfAMsmCDVAPBRqpCtI0yUa1b43B2DmRE511qsJHjDI41WedNiYrPxI30WdTS
         pec1WDKMvrwlu9BKUFD9G6G3AAb/zztEJ7IUJ3QluokKuboYBiwN1d82lMEgRlm7s1oP
         /ZOZBJI9apfJveDNS5bthELEIliV8Ge7ipps1qsxF7OLSk39+LFvtJHJDRJ/hFEyT16X
         K61cYaDqeDfyCSVQcjM5w9NRtrZVMdCiCVLnL4nq4BJ+O7agtC+yqqg6uC4gfw5diFrJ
         33hw==
X-Gm-Message-State: AOAM530ODKYsTHh74BMxgrkbYgHBcEUVN4uuoDXI/jFu0arMQmFknhMv
        dUhkpzr8hc/wFbQEVVkAkFm7Jh0KrqSzKlNko3ZD04YXUtnN1VuYn8XPzdMwSl90eCAHRqAg9wj
        lbraditZc9iHV5lJ52syH350nr+NkXeBlXNYN5eo5EMvKXNMji7jvQ/hHjOoA7GsiaHqj9w==
X-Received: by 2002:ac8:45d7:: with SMTP id e23mr1914230qto.107.1616450931071;
        Mon, 22 Mar 2021 15:08:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtiJG/Gqkg3qXMUtWXZN+9qm0csx0cMdPEQixLBFzq0wbtzTaq4fGbvRIVYGgqTLBE7WPU1A==
X-Received: by 2002:ac8:45d7:: with SMTP id e23mr1914206qto.107.1616450930755;
        Mon, 22 Mar 2021 15:08:50 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id x1sm9627850qtr.97.2021.03.22.15.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 15:08:50 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>, peterx@redhat.com,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 0/4] man2: udpate mm/userfaultfd manpages to latest
Date:   Mon, 22 Mar 2021 18:08:44 -0400
Message-Id: <20210322220848.52162-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
 man2/ioctl_userfaultfd.2 |  89 ++++++++++++++++++++++++++++-=0D
 man2/userfaultfd.2       | 117 ++++++++++++++++++++++++++++++++++++++-=0D
 2 files changed, 201 insertions(+), 5 deletions(-)=0D
=0D
-- =0D
2.26.2=0D
=0D

