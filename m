Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 959574822D3
	for <lists+linux-man@lfdr.de>; Fri, 31 Dec 2021 09:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230180AbhLaIge (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Dec 2021 03:36:34 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:44426 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230135AbhLaIge (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Dec 2021 03:36:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1640939793;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=EtCrnY+9kzxFvWuDhWR9MXvZFoYeOJDy4XloUE7zhPA=;
        b=Nzz5iKbAPxsVsRlD8l75NJV0p+I/1St8/Yiavz6u361wzPTNO6eOQ8jvSNQxrNAm3cFDcX
        UQouFHss3daJfkdkIEDFm8/WXd7Y93j5zaQhb8gxxKGwewLrE1BFv0rtyalDlLcc6NoBYB
        /kWhuBgchY28ylJCIuPRyYNmRawtyIs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-331-WeFGkrk7MFeH_Kjhnu3rTQ-1; Fri, 31 Dec 2021 03:36:30 -0500
X-MC-Unique: WeFGkrk7MFeH_Kjhnu3rTQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 180072F50;
        Fri, 31 Dec 2021 08:36:29 +0000 (UTC)
Received: from dev64.localdomain.com (unknown [10.64.242.56])
        by smtp.corp.redhat.com (Postfix) with ESMTP id AADDB7A229;
        Fri, 31 Dec 2021 08:36:25 +0000 (UTC)
From:   Masatake YAMATO <yamato@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Masatake YAMATO <yamato@redhat.com>
Subject: [PATCH] ioctl_tty.2: Update the section number of ldattach
Date:   Fri, 31 Dec 2021 17:36:07 +0900
Message-Id: <20211231083607.2491246-1-yamato@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The man page for ldattach was added to util-linux(-ng?)
as a part of the section 8, not the section 1.

    commit 1e8d11c459ae93a4d8d7976a8530ae5198206a26
    Author: Tilman Schmidt <tilman@imap.cc>
    Date:   Mon Mar 10 14:20:26 2008 +0100

	ldattach: new command

	Add an ldattach(8) utility program similar to the one in OpenBSD.

	Signed-off-by: Tilman Schmidt <tilman@imap.cc>

Signed-off-by: Masatake YAMATO <yamato@redhat.com>
---
 man2/ioctl_tty.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 186011ee7..c54eb1a19 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -756,7 +756,7 @@ main(void)
 }
 .EE
 .SH SEE ALSO
-.BR ldattach (1),
+.BR ldattach (8),
 .BR ioctl (2),
 .BR ioctl_console (2),
 .BR termios (3),
-- 
2.33.1

