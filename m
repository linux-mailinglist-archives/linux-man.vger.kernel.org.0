Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EEF334B7C
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:24:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232202AbhCJWXg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:23:36 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:50670 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230076AbhCJWXF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:23:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615414984;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=4+4lOSq3vIhecnbI3KNZCHHzBpOut6f3fq9Jok/tPms=;
        b=Ozy1MgcZOoW3RhBYShIAHpZ/6nywJrlRpXOcnlHv8VJqE055RImraIjoQX6DPfZ09b43Jq
        d+IVwvKfHbQQEKMxNh7ZQe2XLXfTkxbxgDxJ3b1oCirgpnJ4l4UeOfUXDCrCUsFV93ASJt
        LZ9ek5KeWsRDzNiCIxlfySdyg1r7gvQ=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-422zOnNyPd6XS-qdMD3rwQ-1; Wed, 10 Mar 2021 17:23:03 -0500
X-MC-Unique: 422zOnNyPd6XS-qdMD3rwQ-1
Received: by mail-qv1-f71.google.com with SMTP id e10so13738718qvr.17
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 14:23:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4+4lOSq3vIhecnbI3KNZCHHzBpOut6f3fq9Jok/tPms=;
        b=Sc7AkK+c+wbHYyEUladSg5oaK1wcvoQpPHw6GMb/0rcfICCe5ZKBEdRzmaCeNOrW93
         qIkcFpd32AiBfIJJml6DmMUT2qUOvxBKm/MwfxpaIeUapWL/cxhUvS9b02JWd+GwPCfa
         ENtrZf6tSZgXGfJx6vxAdBizoRJ/wyiqTfNzhcwe/239fA8Hezrio2gJHw9lzh4EiXR7
         48hQ50C6j2Pw7bz/rAAO4JHyvunAYa0p0swQT4SraXj1xsp4aXsfMP+4kreXo7qxv4zw
         A8P3vZF6wOFeg9KlUNVwEjI5maZjuRXLwGx3FYJdnHYruQZig+ONcMKuA5e/XTLsUeUh
         E2ZA==
X-Gm-Message-State: AOAM530A4cgimVnlOIIhnIkkmYa1r1BP0st5hI/Q90phaQtwNP+TsZfd
        QlVS7U7GlBA1MEgZoyCs2GuscMjyV9u5yxEtvvd85FrO/+ISua5iwmxPfH02bpcq0Eql4EhIBJC
        5NFgXlSNWy/2unSRPxT9AVpZ0/IMLtAgFg4razW9rZdV7QOaBGwHaJ8unCaxFMEoLM5pJ3g==
X-Received: by 2002:a05:620a:1206:: with SMTP id u6mr4695985qkj.173.1615414982486;
        Wed, 10 Mar 2021 14:23:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxrZ0MoZVzbfqM3VCqFGsolarRmIxVHVTf2hN+KL5gwkEMk9jF3alEwbNLQH1X5ZoTmSNCufQ==
X-Received: by 2002:a05:620a:1206:: with SMTP id u6mr4695953qkj.173.1615414982107;
        Wed, 10 Mar 2021 14:23:02 -0800 (PST)
Received: from xz-x1.redhat.com ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id e18sm451364qtr.52.2021.03.10.14.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:23:01 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        linux-kernel@vger.kernel.org, peterx@redhat.com,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: [PATCH v3 0/4] man2: udpate mm/userfaultfd manpages to latest
Date:   Wed, 10 Mar 2021 17:22:56 -0500
Message-Id: <20210310222300.200054-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
 man2/ioctl_userfaultfd.2 |  86 ++++++++++++++++++++++++++++-=0D
 man2/userfaultfd.2       | 116 ++++++++++++++++++++++++++++++++++++++-=0D
 2 files changed, 197 insertions(+), 5 deletions(-)=0D
=0D
-- =0D
2.26.2=0D
=0D

