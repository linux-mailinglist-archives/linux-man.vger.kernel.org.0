Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 814F6372B60
	for <lists+linux-man@lfdr.de>; Tue,  4 May 2021 15:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231240AbhEDNyD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 May 2021 09:54:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbhEDNyC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 May 2021 09:54:02 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E33E2C061574
        for <linux-man@vger.kernel.org>; Tue,  4 May 2021 06:53:07 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id t3so1948864iol.5
        for <linux-man@vger.kernel.org>; Tue, 04 May 2021 06:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=SdJrMfKDIYtutzVFDzChcKgjwYDHSmc18Roqrbc0wLg=;
        b=OA3JcpQ6gS1qAZ9ly3OX/JDtZY+rL8hnyx7oRDk1WKPiOrtXbIgvidi75wMLguKSh/
         zzZQpySqSW8JOn69W3pCMa5/a/HJKTWjJQ9GCDii6ectjxuRtCFznvinzj0HunRQRzg7
         R8oWyPSG0kWAsuVD96aSjguPaoaLYrcEacwFcnDv7yxtyiu/3NRmQcbI8l7blL9VXJU7
         zx54F/6GIuQFce05KZ91Qvdp4PHRxd29S+5B1ab5yyO5XwXy028qroGy77z7ShdYJsxF
         I5p3C7TkjVikjGwU7/b3d9BuK52WYWCSDYT8jqonQCX2kZFMKJ97muAobV1IU/NjxWGq
         EL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=SdJrMfKDIYtutzVFDzChcKgjwYDHSmc18Roqrbc0wLg=;
        b=KTwsUIraQ80fuz09U350ega5Qj/BZ9tp/+7EaTdESi7Vfy8p9l2xTkjGuBQnu32Ft0
         Iabysoc/DwJzgaW2INULcX+MP1TfSd7hpDb4T4XWg04aLIc8X8NchOsf+sdDmCfTtce6
         w340rWU9JW9SD0NcSvFMORNEVwyBpaLXYfBHs7KyIrXeGJo+nYEXz5Fpb2CW22Ibt+0L
         VeSOg81KLkgvfR39M9Yiq6kkjO3boJqYaRk28DVftaiIGpOybcX6lMzmGaac7bc8lbnq
         kIJH/WQXcUS2CHRyznSAPxkoxhJgSLjXqH0lJOLyqWkxysUmT8Oaysi1q6GZqAJk4rYG
         u7qw==
X-Gm-Message-State: AOAM532IsE5pdsipYZN4Ur4kn5IOHqwWzKQrbmjXXD20t5HTwKn0S0sE
        LRE16apYVeOXkwOV+CKUF451JESsn96MxGkpGQyNTokeJt4=
X-Google-Smtp-Source: ABdhPJyVPiTdYuRg030WztZgdH//nThT54x75N+YZQ8E9JGKd2hoaqQNLa6k4N4AEfckj+g3H20W7BA515/eqzxg0qo=
X-Received: by 2002:a02:b698:: with SMTP id i24mr15076856jam.121.1620136387049;
 Tue, 04 May 2021 06:53:07 -0700 (PDT)
MIME-Version: 1.0
From:   "Vishwajith.K" <vishuvikas1996@gmail.com>
Date:   Tue, 4 May 2021 19:22:30 +0530
Message-ID: <CAN2tbMWSHJ=BXe70ygXg9NpCWhB+3V-CpZEWCTtOynJr_QODbw@mail.gmail.com>
Subject: [patch] shmop.2: tfix
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: multipart/mixed; boundary="000000000000d7112605c18165a5"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000d7112605c18165a5
Content-Type: text/plain; charset="UTF-8"

From 8f678998296fab3d68b3637f5334d8ded37f3c99 Mon Sep 17 00:00:00 2001
From: Vishwajith K <vishuvikas1996@gmail.com>
Date: Tue, 4 May 2021 10:09:11 -0400
Subject: [PATCH] tfix: shmop.2 example code

---
 man2/shmop.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/shmop.2 b/man2/shmop.2
index 3a6c908ee..c7e66af0e 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -387,8 +387,8 @@ main(int argc, char *argv[])
         errExit("shmget");

     semid = semget(IPC_PRIVATE, 1, IPC_CREAT | 0600);
-    if (shmid == \-1)
-        errExit("shmget");
+    if (semid == \-1)
+        errExit("semget");

     /* Attach shared memory into our address space. */

-- 
2.27.0

--000000000000d7112605c18165a5
Content-Type: application/octet-stream; 
	name="0001-tfix-shmop.2-example-code.patch"
Content-Disposition: attachment; 
	filename="0001-tfix-shmop.2-example-code.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_koa3bp9b0>
X-Attachment-Id: f_koa3bp9b0

RnJvbSA4ZjY3ODk5ODI5NmZhYjNkNjhiMzYzN2Y1MzM0ZDhkZWQzN2YzYzk5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBWaXNod2FqaXRoIEsgPHZpc2h1dmlrYXMxOTk2QGdtYWlsLmNv
bT4KRGF0ZTogVHVlLCA0IE1heSAyMDIxIDEwOjA5OjExIC0wNDAwClN1YmplY3Q6IFtQQVRDSF0g
dGZpeDogc2htb3AuMiBleGFtcGxlIGNvZGUKCi0tLQogbWFuMi9zaG1vcC4yIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL21hbjIvc2htb3AuMiBiL21hbjIvc2htb3AuMgppbmRleCAzYTZjOTA4ZWUuLmM3ZTY2YWYw
ZSAxMDA2NDQKLS0tIGEvbWFuMi9zaG1vcC4yCisrKyBiL21hbjIvc2htb3AuMgpAQCAtMzg3LDgg
KzM4Nyw4IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKICAgICAgICAgZXJyRXhpdCgi
c2htZ2V0Iik7CiAKICAgICBzZW1pZCA9IHNlbWdldChJUENfUFJJVkFURSwgMSwgSVBDX0NSRUFU
IHwgMDYwMCk7Ci0gICAgaWYgKHNobWlkID09IFwtMSkKLSAgICAgICAgZXJyRXhpdCgic2htZ2V0
Iik7CisgICAgaWYgKHNlbWlkID09IFwtMSkKKyAgICAgICAgZXJyRXhpdCgic2VtZ2V0Iik7CiAK
ICAgICAvKiBBdHRhY2ggc2hhcmVkIG1lbW9yeSBpbnRvIG91ciBhZGRyZXNzIHNwYWNlLiAqLwog
Ci0tIAoyLjI3LjAKCg==
--000000000000d7112605c18165a5--
