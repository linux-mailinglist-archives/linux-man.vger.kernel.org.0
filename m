Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A81A32D7D9
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 17:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236769AbhCDQdY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 11:33:24 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:36981 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237828AbhCDQdK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 11:33:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614875505;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=ZUXTrjCiBnFBfW3I1AJm2v8RBKCC0eFrzGXvwdchW8I=;
        b=Vq7dMBd5/37pyKP4CDv5u7k3OQuVBdZfCSMwEvguDrHYKV+2Wb+ISwT02XUSHQpd9qRLeM
        vA+FKxzde6kY2ZuKAdJVH1gFFWVqyeXNDO1k4FYbbFe/zs8F4zMGLUSFyZhBaq0ae8ZPyK
        BFIYhbETVl+7Afdrf0YaN54LpdaxjP4=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-q0u2AfMGPKqMtQD1y8adCQ-1; Thu, 04 Mar 2021 11:31:43 -0500
X-MC-Unique: q0u2AfMGPKqMtQD1y8adCQ-1
Received: by mail-qk1-f198.google.com with SMTP id h126so23496881qkd.4
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 08:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZUXTrjCiBnFBfW3I1AJm2v8RBKCC0eFrzGXvwdchW8I=;
        b=tSZgJJ7/tyhyHwKGoj+Y8hRy/odtXDZBPPNwLOW14vjCPAj6Usuf+IUrtDDNTA4+a1
         KWJ7R5ThKJF2KPqq54piykW4U04auh8m8VVHD0VwKuPlQWtSRwfXFXkv7WdwluAa4i2U
         /PLsYlQw8ENkhNcKNJlK9qF2ZQQd9okjuKmlr5qWz1n1ihL5XUJlk2fX8Yv4Nvhd3XJv
         qX7yuNV4X0cJsqq6tw+uOW2qMFyxualeQVtevxpemDD3Q1x7T9EDlwygjABwv0w/Ihwl
         PsW45X0ZGOsrAb5e5IwZjlE43/7G5slX3P8a1vQX7X+J+iZRbBNqF3gsY7AmOMeflo/h
         oGbg==
X-Gm-Message-State: AOAM530asjnZPZvQ35pa0ccsWDqjSsQy7DsUdU6Qk4bSO0noaNUx/EVw
        AyIjfzwT3jQx4ZdAY9Gm8i6J00zec7oXIrV+IqNQMpjY9iooi5ND52mdfyhIhXcLOUVgwrf8Xuz
        pTidVjWHUUc9Z5LJz+5lcHG+3BgZmfaWtyt2i6k6UQtj60pj8lnzHILJg/9/h6C2jhiqlgg==
X-Received: by 2002:a05:620a:887:: with SMTP id b7mr4600095qka.215.1614875503118;
        Thu, 04 Mar 2021 08:31:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxRwA8NqRHMC76ampCa9culrt7kttzspJbhFtBwbLgYJh88JCUd4TvyBMqBdtoeCEtTi0yNxg==
X-Received: by 2002:a05:620a:887:: with SMTP id b7mr4600063qka.215.1614875502794;
        Thu, 04 Mar 2021 08:31:42 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id r2sm51753qti.4.2021.03.04.08.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 08:31:42 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        linux-kernel@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux MM Mailing List <linux-mm@kvack.org>,
        peterx@redhat.com
Subject: [PATCH v2 0/4] man2: udpate mm/userfaultfd manpages to latest
Date:   Thu,  4 Mar 2021 11:31:36 -0500
Message-Id: <20210304163140.543171-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
 man2/ioctl_userfaultfd.2 |  81 ++++++++++++++++++++++++++--=0D
 man2/userfaultfd.2       | 111 ++++++++++++++++++++++++++++++++++++++-=0D
 2 files changed, 187 insertions(+), 5 deletions(-)=0D
=0D
-- =0D
2.26.2=0D
=0D

