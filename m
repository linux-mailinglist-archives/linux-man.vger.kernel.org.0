Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD55032CA42
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 03:03:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232367AbhCDCBo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 21:01:44 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:44480 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231816AbhCDCBV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 21:01:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614823192;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Sq1tD+qIhDKcPVuMY+0/NbRCjsPd/XcDmOMne5PWlg4=;
        b=Ho5VtAUL6OmWFODcEBRchwT8D6RwPd0hR5D6jM8h2z5KuYDCiy9JDkbnitg2NJZ8Z9UmUG
        7OmyYW00KEzAK9jaAm4/Yt+L5i1L+RLdPzW+hPV3vre918ojHmkgAT5lYkcnF5tBRhb13P
        UNgyP0y8V92ocLAvPXSoOcxnm3LGzcI=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-k2inoVrSO2eydNKglHsbjQ-1; Wed, 03 Mar 2021 20:59:50 -0500
X-MC-Unique: k2inoVrSO2eydNKglHsbjQ-1
Received: by mail-qk1-f199.google.com with SMTP id c7so14734920qka.6
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 17:59:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Sq1tD+qIhDKcPVuMY+0/NbRCjsPd/XcDmOMne5PWlg4=;
        b=nPjz/NrbHHNUk+QRgEMyo1FDBjJeqxpJaaJre9aTeXYomJZJC5mXbfdHX28Q/bIypW
         ploQ7+kLfXog7ndxwW+D1GRNWkpuJuy/fVBJqtTnQbQlNlj9CkXVee6t2EOA4WbESiC0
         erLhzYqdo7V9by8T4X/OzEegKVehYhEycB2as4C/nylGXOyE4BzdNcwHlamwGswqo2zf
         qi/uZWBC1PNcLjN52xnOhZPFy/6SpfRyicirEqBWCojUTrhhbI0SP4J/VeJI+/g8ss8p
         H155s0/W60O7vQOBm1Ye4FZjmIfZrZHQ7Ocq2CkwkVmREVmGTjIpqXe1shsGEFOWVmT0
         XWWQ==
X-Gm-Message-State: AOAM530G4+8fpRZkzAcQXkbNKV6iir5C1Xql2GgvJ++ExXivCD7HsPSw
        eThELBEfa4apI6Hm2q/JKrxt4Vc85Yt/FShwpM+qreY1GEx3xg49NOghxKcPDGwLEJHLqQn+0El
        sgQ4DH9etXltQ5zyFwyn2CiWC1XDYWsx8vJkbYLP4fHJrC1a21zodlWfXMlXIRxDrTLOVJg==
X-Received: by 2002:ad4:4745:: with SMTP id c5mr1962103qvx.39.1614823190005;
        Wed, 03 Mar 2021 17:59:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzKaFDzEco3K3IFwsQ3Nb0GPSDjOHiuxrPj551VzvZ2UgpYay1hmhbaX+t8O6dQd61O4MxVUA==
X-Received: by 2002:ad4:4745:: with SMTP id c5mr1962074qvx.39.1614823189755;
        Wed, 03 Mar 2021 17:59:49 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id b7sm18610766qkj.115.2021.03.03.17.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 17:59:49 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        peterx@redhat.com, Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 0/4] man2: udpate mm/userfaultfd manpages to latest
Date:   Wed,  3 Mar 2021 20:59:43 -0500
Message-Id: <20210304015947.517713-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
 man2/ioctl_userfaultfd.2 |  76 +++++++++++++++++++++++++++--=0D
 man2/userfaultfd.2       | 100 ++++++++++++++++++++++++++++++++++++++-=0D
 2 files changed, 171 insertions(+), 5 deletions(-)=0D
=0D
-- =0D
2.26.2=0D
=0D

