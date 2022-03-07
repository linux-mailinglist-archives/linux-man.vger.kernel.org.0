Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D53554D06D6
	for <lists+linux-man@lfdr.de>; Mon,  7 Mar 2022 19:48:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241187AbiCGSs7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Mar 2022 13:48:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239995AbiCGSs6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Mar 2022 13:48:58 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177F74C788
        for <linux-man@vger.kernel.org>; Mon,  7 Mar 2022 10:48:03 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id v4so14787276pjh.2
        for <linux-man@vger.kernel.org>; Mon, 07 Mar 2022 10:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8cawUedO3MiZdBH5IaNGoO6gaFsJGnxRPeumYwcEFvE=;
        b=HU6C9yy03NJRZkbgY1bu8iO3cicl+MngNKMUfRJ0jUqZnuC7P7bTL7AFMLcy+buiq9
         a2YhYBWinbASKPzmHMYVSdz5m9lNWnLL8ggee0CRpLsqdTIjYcPFmObN0NJtEtBBblr9
         K2DJOXUmuB66khzjw824WKgRyXhOWMVjGGEIKNg6opaZpOhSgkJcWCoXlSy5iI09Rn0E
         76hToCG0ppU1mnblrRCNWBvX1Vp0aQnfOjs9Cc7h7G9HOKLkRyTyFRLPC8E/blD+FraJ
         1ZJERAB+xBYPZK5l9ABvlsHQN6KVYlIYj3yQa7TO/jOtgsUwGT3inKQazYwKfe0cZdRn
         po4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8cawUedO3MiZdBH5IaNGoO6gaFsJGnxRPeumYwcEFvE=;
        b=jDcCLe0paDvyen+0aM7JVgdfdXliywEJgDCHPu6V7/9FUkIaF9ae4dTfIbb0PMy0ZE
         Mgk+QIDJ2tCXNgn/nluSR1z4ZtrQV6zvrg0CRK5CmiqlknftuBJ0VFErHcj6pPqrPn8J
         roZ/JepQFOv1BoJd4zL2O3++uP6Y2C2HLfw34Si4ovjJrTaK5CV99zGWq4N9cDx3NdZX
         eE5sD3Po6GsVvyJdgcuCs1XSD62ym18PqaQ6XZ+/TqPRoDA8/vMu2qyJrshAgEbu9rDF
         p9ZzTYpH6PqGbEIcBIbc6Z3lfcG06BcAagkaOS+vjmhrWtjLpQMKemkO2QBkciMtHIYe
         nwdQ==
X-Gm-Message-State: AOAM531WQXvE/3ffT+HnoI5njSGZb3RBcUiWzZddfEB+UON7pygqA0bF
        Bg7Poaq70ji4qvH891TAECF4MJOCeOE=
X-Google-Smtp-Source: ABdhPJzeg9uAJPZN+8w5f9UvK4956cDh6EgmDJiTjvWSZ1epk2qe7kLdihq+zwRF+gI9+OZz2RzWFQ==
X-Received: by 2002:a17:90a:2c0b:b0:1be:da5a:b294 with SMTP id m11-20020a17090a2c0b00b001beda5ab294mr358642pjd.9.1646678882174;
        Mon, 07 Mar 2022 10:48:02 -0800 (PST)
Received: from sc2-hs2-b1628.eng.vmware.com ([66.170.99.1])
        by smtp.gmail.com with ESMTPSA id c18-20020a056a000ad200b004f0f9696578sm18624749pfl.141.2022.03.07.10.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 10:48:01 -0800 (PST)
From:   Nadav Amit <nadav.amit@gmail.com>
X-Google-Original-From: Nadav Amit
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
Subject: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Date:   Mon,  7 Mar 2022 18:48:51 +0000
Message-Id: <20220307184852.20351-1-namit@vmware.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Nadav Amit <namit@vmware.com>

Describe the new UFFD_FEATURE_EXACT_ADDRESS API feature.

Signed-off-by: Nadav Amit <namit@vmware.com>
---
 man2/ioctl_userfaultfd.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 504f61d4b..94480158e 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -214,6 +214,14 @@ memory accesses to the regions registered with userfaultfd.
 If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
 will be set to the faulted thread ID for each page-fault message.
+.TP
+.BR UFFD_FEATURE_EXACT_ADDRESS " (since Linux 5.18)"
+If this feature bit is set,
+.I uffd_msg.pagefault.address
+will be set to the exact page-fault address that was reported by the hardware,
+and will not mask the offset within the page.
+Note that old Linux versions might indicate the exact address as well,
+even though the feature bit is not set.
 .PP
 The returned
 .I ioctls
-- 
2.25.1

