Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 656E474D853
	for <lists+linux-man@lfdr.de>; Mon, 10 Jul 2023 16:00:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231244AbjGJOAX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Jul 2023 10:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbjGJOAW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jul 2023 10:00:22 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2EF594
        for <linux-man@vger.kernel.org>; Mon, 10 Jul 2023 06:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1688997574;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=PiHaMTMrAwiXHei7SRuZc720+a3M+Zm6XK8v8D/dq88=;
        b=AqCuMkDf9t2NtJY9E9fHnooEWgGUkWxS5lzELVqrbqoB8OthynAiN8RUY1rUnFFFvdZ4ki
        RLxfsEhyzUhljfh2PHGdL4ByBMJcY7cSocWUpM6cQq7CSIjtr50rWilbfxK5qy+sxyh8U5
        GPEbt5WJucFTIpqz95FoXUEk1ZVc3F0=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-379-Kdahce0IMbuCza3aVS_H2w-1; Mon, 10 Jul 2023 09:59:33 -0400
X-MC-Unique: Kdahce0IMbuCza3aVS_H2w-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-5eee6742285so49584346d6.2
        for <linux-man@vger.kernel.org>; Mon, 10 Jul 2023 06:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688997573; x=1691589573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PiHaMTMrAwiXHei7SRuZc720+a3M+Zm6XK8v8D/dq88=;
        b=g7sNyMEl+mxlss4XMM4ae3mGrL0CF7LyrfHqMXC1H97kPO9vblMee6w7mpII/m6C8r
         bn6RhFVw6eZAbYv+Da07ZA0MKN/OqcxBTvh08Gv1uOg71MgZl7SMl3+dW5+QGY38FxV2
         K5rdAAc6rwbNnr/lhEdPM+geROyMZcb4K1DMQcOwZcnkyNo9z9+r0wnarzOOqXx8zOI7
         US44NPj+tmUwpSD8o7AqwHjSZ/BMyiu2lC0B43wVuuA77WI6QLTR1zE8gUHTzlAUtXWJ
         5GeS5hbKiKg3DvjPFlLitahji9KOstMBWMpmp91hv6uplHQJyr4n9JYiLbpjewhuSFnK
         X9Ig==
X-Gm-Message-State: ABy/qLa3D+6//QOH6sPPYkgs+bH8smTBVQRuN70fRinQqNkVjYlTHtXP
        sdN0hC9AsKlfio7effFL+kWtHFv6ISqRC+mhk6n3pcAMNpg5oNXaOI1GQ/iX763R81s32aYHqpn
        gnuvBhgLN0P0SyjRVytTF
X-Received: by 2002:a0c:b31b:0:b0:635:93fb:fbfa with SMTP id s27-20020a0cb31b000000b0063593fbfbfamr10611201qve.5.1688997572894;
        Mon, 10 Jul 2023 06:59:32 -0700 (PDT)
X-Google-Smtp-Source: APBJJlG6vOxYbxG31ENT23CEsDHSvLEDiT2Q/SAfwguZWDcKOzukCxDs5kglacprbHDPbbBFj+yXKA==
X-Received: by 2002:a0c:b31b:0:b0:635:93fb:fbfa with SMTP id s27-20020a0cb31b000000b0063593fbfbfamr10611192qve.5.1688997572635;
        Mon, 10 Jul 2023 06:59:32 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id q6-20020a0cf5c6000000b00636bde318bcsm5587368qvm.61.2023.07.10.06.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 06:59:32 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH v2] abort: clarify consequences of calling abort
Date:   Mon, 10 Jul 2023 15:59:28 +0200
Message-ID: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that atexit/on_exit are not called because those are called only
on normal process termination (as documented on their respective manual
pages).

Clarify the status reported by wait*() functions. The requirement comes
from POSIX specification.

Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man3/abort.3 | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index c63eace5e..2454e186d 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -47,6 +47,17 @@ function will still terminate the process.
 It does this by restoring the default disposition for
 .B SIGABRT
 and then raising the signal for a second time.
+.PP
+As with other cases of abnormal termination the functions registered with
+.BR atexit "(3) and " on_exit (3)
+are not called.
+The status made available to
+.BR wait "(2), " waitid "(2), or " waitpid (2)
+by
+.BR abort ()
+shall be that of a process terminated by the
+.BR SIGABRT
+signal.
 .SH RETURN VALUE
 The
 .BR abort ()
-- 
2.41.0

