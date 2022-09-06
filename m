Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 355975AE524
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 12:18:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239339AbiIFKSn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 06:18:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239221AbiIFKSf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 06:18:35 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729D64E603
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 03:18:33 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id bq9so1790310wrb.4
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 03:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=IhNlKwHCXfoIpAk95MJfAuO7DTDhEKgG3yeLfKEGTMA=;
        b=efpJXtZfW+AEf8Pq22EzlaCA2ECyFLBHWcQVUImh+shxlvcbXoCmF5mOfJPayvkVWh
         JWSyJxULjgRSLJRNjhv3HEEMG6l6bjzpDBpPnXOiqDKKiyJ8Hm6oEEfaP6xr8jHcjrrj
         UWDNIt1ysbfvKvk7Ic1xHpSAOwIbQKOjnJb9BYMz6Upo20jTAkeXMN6tyVkLZhGlu7/X
         hIuXrzNAA007StzKWbPy8xS6HOy2ZK24/boRaj/GoXlQJcaOCTZ/+dUR+UtzzTPb2lrN
         lgOxkV6WIwwXwvYN7d9tHueMVpEFOxLL82jwg7yHoXiEOi7ZH1AV3iO1WHIcDofih0fy
         iF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=IhNlKwHCXfoIpAk95MJfAuO7DTDhEKgG3yeLfKEGTMA=;
        b=KtFkT2nJ8q9QkxWQFZ8f4YMXFPdL6EPPOgdrAnte1TXyv082no5+hc26rcmio9QDvv
         LULHRptvchJKvcKUz8HNLJlujt3lwCz7TAtCS6XL/gNMPnGCbyAkGz4Inm/+Z4y/OFiD
         mvWWXw15yYBbzV0+QTfYvMZlcMRT5ZP0I7EmDHlj+jlqXLa6HtKQpFP1YFCvdgjtRo9a
         BxFqTWHj5A/PGZ6GLb2rQXBjLJ+sLkthmKxxs11sNvW1/J5dA91i89XUa7dBE8+tLKcF
         v/6i+UOVAy2pYlelkpcCaDOmPbtUMbEsvGQufhwhgtz2JAr0MKjfZQ1UBdGUefXEXjuJ
         vnNQ==
X-Gm-Message-State: ACgBeo2WGRmhiLqLF+eCd/fVYu3MtDR4/8pxS/zO17QNRJA65QMoHCiR
        nBbSa7bRE1RZr/jPQe0o8Xg=
X-Google-Smtp-Source: AA6agR65JUnNQbVQY9gs18F6nw3SYkUSylc/TUslG+E97V+KiWiU8pPyizrXKJq4+UaOb382iyVYrg==
X-Received: by 2002:a05:6000:2c1:b0:226:e7d0:f098 with SMTP id o1-20020a05600002c100b00226e7d0f098mr18771254wry.578.1662459511738;
        Tue, 06 Sep 2022 03:18:31 -0700 (PDT)
Received: from localhost.localdomain ([77.137.66.49])
        by smtp.gmail.com with ESMTPSA id i4-20020a05600c354400b003a2f6367049sm14856188wmq.48.2022.09.06.03.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 03:18:31 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Date:   Tue,  6 Sep 2022 13:18:27 +0300
Message-Id: <20220906101827.2760615-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add section about evictable inode marks and example use case.
Add possible error case EEXIST related to evictable marks.

Reviewed-by: Matthew Bobrowski <repnop@google.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Hi Alex,

Here is v2 with fixes to your review comments
and Jan's Reviewed-by.

Thanks,
Amir.

 man2/fanotify_mark.2 | 53 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 2696a803a..b9b3357e2 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -152,6 +152,47 @@ The ignore mask shall survive modify events.
 If this flag is not set,
 the ignore mask is cleared when a modify event occurs
 for the ignored file or directory.
+.TP
+.BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
+.\" commit 5f9d3bd520261fd7a850818c71809fd580e0f30c
+When an inode mark is created with this flag,
+the inode object will not be pinned to the inode cache,
+therefore,
+allowing the inode object to be evicted from the inode cache
+when the memory pressure on the system is high.
+The eviction of the inode object
+results in the evictable mark also being lost.
+When the mask of an evictable inode mark is updated
+without using the
+.B FAN_MARK_EVICATBLE
+flag,
+the marked inode is pinned to inode cache
+and the mark is no longer evictable.
+When the mask of a non-evictable inode mark is updated
+with the
+.B FAN_MARK_EVICTABLE
+flag,
+the inode mark remains non-evictable
+and the update fails with
+.B EEXIST
+error.
+Mounts and filesystems are not evictable objects,
+therefore,
+an attempt to create a mount mark or a filesystem mark
+with the
+.B FAN_MARK_EVICTABLE
+flag,
+will result in the error
+.BR EINVAL .
+For example,
+inode marks can be used in combination with mount marks
+to reduce the amount of events from noninteresting paths.
+The event listener reads events,
+checks if the path reported in the event is of interest,
+and if it is not,
+the listener sets a mark with an ignore mask on the directory.
+Evictable inode marks allow using this method for a large number of directories
+without the concern of pinning all inodes and exhausting the system's memory.
 .PP
 .I mask
 defines which events shall be listened for (or which shall be ignored).
@@ -409,6 +450,18 @@ is neither
 .B AT_FDCWD
 nor a valid file descriptor.
 .TP
+.B EEXIST
+The filesystem object indicated by
+.I dirfd
+and
+.I pathname
+has a mark that was updated without the
+.B FAN_MARK_EVICTABLE
+flag,
+and the user attempted to update the mark with
+.B FAN_MARK_EVICTABLE
+flag.
+.TP
 .B EINVAL
 An invalid value was passed in
 .I flags
-- 
2.25.1

