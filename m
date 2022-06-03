Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 505F253CE27
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 19:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237114AbiFCRho (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 13:37:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232282AbiFCRhn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 13:37:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2161239BA7
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 10:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654277861;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=4wY2ti1jWVmcco4dB7M/EO1qrDihEXd7FNjPS1P93a0=;
        b=TThF/CzaQ9s6yp9IZ53mfrD6CL7mhqpuVKXnAQT3EL0f77Roqa2glZvbaHgxy5BxRtXX1G
        OpfdbFlC312rDOA+VkZauUdEUBkfgSZ/9ABEbWiO2TzyWzQBHV7mtRA86utfTBg+Suu+pb
        sBwUVeV2m8i4LhGu4GffD6KDFHi15TU=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-575-oxrReCNDMlGlZ3eWsZ_MPA-1; Fri, 03 Jun 2022 13:37:40 -0400
X-MC-Unique: oxrReCNDMlGlZ3eWsZ_MPA-1
Received: by mail-il1-f199.google.com with SMTP id r9-20020a92cd89000000b002d16798b3cfso6659828ilb.22
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 10:37:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4wY2ti1jWVmcco4dB7M/EO1qrDihEXd7FNjPS1P93a0=;
        b=XQdHeDSerVoW45aUPiC/UhPVSdZuBCWX6rXZsre3jmckIc05tdgQCpPnLHEX6XZOO9
         ItJ3ilZe7rLqTvvtdFc6jVOMwhSulnzaY2ROVnZe8gHYx5BJ1ovoPpz1eme5Dg7flQsc
         kgrIz1u1OWG80heOfXqgG6x3A4to7Rn1jTixqNz/b1QwnZzrDqd5h5R47+qjSARtvhfO
         cDAw03kEVYmEFuP972/cr4qN+02xtq2OuMGv753Ix8mXdui8TXTEIU/r6711CKh+4eZJ
         1OkIk9rhk9Yw0sHmoV5ubjdDDza7Ly+7py26jN5wLz9ldCK8+PFNMdVUhHe4KRrAjPCk
         ilUw==
X-Gm-Message-State: AOAM5316GAHCC9yvGpdGbvfSkWHkAY84iqGyKnlhfRe5TLr7bdFx3XfK
        t4vS7UHwRUmthZxjYjkv7D9fa9VbEQTxSAz6JVMiBCNEmLjc/fgwmcEBDUiR1Qck3SrQVE02gcj
        E62ZEsOEl3vq2pBPnAXYn
X-Received: by 2002:a05:6e02:1aa6:b0:2d1:b452:f143 with SMTP id l6-20020a056e021aa600b002d1b452f143mr6717747ilv.278.1654277859375;
        Fri, 03 Jun 2022 10:37:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXXN7nQhcHYuKYC3FMdwo6WzrsYqUkRVcgdkpnlgAN7OoTQ+TqlM8ndxiikifU+UVw8ICjBA==
X-Received: by 2002:a05:6e02:1aa6:b0:2d1:b452:f143 with SMTP id l6-20020a056e021aa600b002d1b452f143mr6717740ilv.278.1654277859142;
        Fri, 03 Jun 2022 10:37:39 -0700 (PDT)
Received: from localhost.localdomain (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id g23-20020a02bb97000000b0032e1e0ac289sm2791117jan.8.2022.06.03.10.37.37
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 03 Jun 2022 10:37:38 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>, peterx@redhat.com
Subject: [PATCH v2 0/2] userfaultfd.2: Update to latest
Date:   Fri,  3 Jun 2022 13:37:34 -0400
Message-Id: <20220603173736.62581-1-peterx@redhat.com>
X-Mailer: git-send-email 2.32.0
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v2:
- Use semantic newlines always in patch 1 [Alex]
- Fix s/.BR/.B/ in patch 2 [Alex]
- Rebased to http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git

Add the two missing pieces till latest 5.19-rc1: the UFFD_USER_MODE_ONLY
flag, and also the recent wr-protect support on shmem and hugetlbfs.

Please review, thanks.

Peter Xu (2):
  userfaultfd.2: Add section for UFFD_USER_MODE_ONLY
  userfaultfd.2: Update on write-protection support

 man2/userfaultfd.2 | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

-- 
2.32.0

