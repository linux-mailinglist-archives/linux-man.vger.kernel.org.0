Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4C58538971
	for <lists+linux-man@lfdr.de>; Tue, 31 May 2022 03:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242670AbiEaBMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 May 2022 21:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242242AbiEaBME (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 May 2022 21:12:04 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A30429398F
        for <linux-man@vger.kernel.org>; Mon, 30 May 2022 18:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653959522;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=uY3Q5t/YVyCbs5m+kSxWQrSqX2D5qqz1qZgdmSgdE/A=;
        b=bXujg+jNcEz5DWfC+aE+nZ7RI0eQe8c474js3L7x43AFLJa9y6Nt6rxvi1fBooxynjsWsV
        QsLt5gzbcT9oK4LaZsyJLUEoCppzSmiqAJ6JYQivF/CpZyu4GRNxzfSK54tE14pfhQTDVn
        VZX1MUgfeh3X+erxbYbZ4M5/Hx2CPK4=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-g_sbNlBiPFKKaEPDt84rww-1; Mon, 30 May 2022 21:12:01 -0400
X-MC-Unique: g_sbNlBiPFKKaEPDt84rww-1
Received: by mail-il1-f199.google.com with SMTP id g11-20020a056e021e0b00b002d1b5e8389bso9295862ila.2
        for <linux-man@vger.kernel.org>; Mon, 30 May 2022 18:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uY3Q5t/YVyCbs5m+kSxWQrSqX2D5qqz1qZgdmSgdE/A=;
        b=fEInSDUdUzZCl50kYITqoes/c+atvvBMqxlCyAOmk7R4mAPZUkMAoDfbV4v9CEmHBU
         4eEogv+naxr3Bl1E1NYHFrJysgMetk4IEAD10cbRgMcntAFqDa+vYpS2zM6AmxXlLQEV
         btft8Vp3FoQHrLkUFJveihWGx4qqy2V1DVURoTCMiphhmurTHuJWEUnbTdSyAoVgTfMz
         VYVVSaIS7jBB6XnsX6L2EVmLbL1QidVvNcB9ci/EcPn/+94kvv+ngjKaW/NVouMW2AuW
         VSM9P5SqtNEp5W0Yy9lrNkMSdylkIb2E6igwQgXz3/NoCMn6KOU3nx00CIRECwyQOUIy
         jmWA==
X-Gm-Message-State: AOAM5322Y71kgiAm41eYER5cJjsxWDSt8VIs3aCwJZZ66PK9VyY8wsZZ
        o6I5GCbntU+xdYqvpYyrrY3BOgjr5KiHaIHWW78hU8JTSNVZu8yyI8ynkq+9t3P0qUhW9K9hy/E
        3ocNAPdddnW7ydMiU8bRn
X-Received: by 2002:a92:ca45:0:b0:2d1:b7cf:26a9 with SMTP id q5-20020a92ca45000000b002d1b7cf26a9mr19174941ilo.52.1653959520447;
        Mon, 30 May 2022 18:12:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyeURDuT17RoMdt/uGX/WT1sdcY73aFHJEA9T6tFDlMEsYyTOLLFA+3AE/oWzP7hkMJWJHdWg==
X-Received: by 2002:a92:ca45:0:b0:2d1:b7cf:26a9 with SMTP id q5-20020a92ca45000000b002d1b7cf26a9mr19174930ilo.52.1653959520215;
        Mon, 30 May 2022 18:12:00 -0700 (PDT)
Received: from localhost.localdomain (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id s6-20020a02c7c6000000b0032be3784b9bsm3158234jao.117.2022.05.30.18.11.58
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 30 May 2022 18:11:59 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrea Arcangeli <aarcange@redhat.com>, peterx@redhat.com,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 0/2] userfaultfd.2: Update to latest
Date:   Mon, 30 May 2022 21:11:55 -0400
Message-Id: <20220531011157.46868-1-peterx@redhat.com>
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

Add the two missing pieces till latest 5.19-rc1: the UFFD_USER_MODE_ONLY
flag, and also the recent wr-protect support on shmem and hugetlbfs.

Please review, thanks.

Peter Xu (2):
  userfaultfd.2: Add section for UFFD_USER_MODE_ONLY
  userfaultfd.2: Update on write-protection support

 man2/userfaultfd.2 | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

-- 
2.32.0

