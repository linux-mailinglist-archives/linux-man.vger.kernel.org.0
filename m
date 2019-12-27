Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D670B12BB2C
	for <lists+linux-man@lfdr.de>; Fri, 27 Dec 2019 22:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726982AbfL0VPh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Dec 2019 16:15:37 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:41971 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726527AbfL0VPg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Dec 2019 16:15:36 -0500
Received: by mail-oi1-f194.google.com with SMTP id i1so9932213oie.8
        for <linux-man@vger.kernel.org>; Fri, 27 Dec 2019 13:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qqJfvcGc3yf78nLzZ4sES2gA8TGZMXJ69R9hg/XquS4=;
        b=WsbYid4YwgqRnbTKo+DINQPRUio/JOm9LSuG+Wh3Tjqg50hFXfhK2rKz+qBhnyjmG3
         VGE8qxMHLUdOABJO65SSdkAv9ri53nEa/RYbUZBfP4NBx2jbymRktV5IV99Q+8zeSeHO
         HrRzSJ0GYT9IWLuMah9wiqB1XutYXUckPhLrCRzpPNcL/6LucdF2v5XQwlsNwPVVjPHJ
         +6XtN1tlZXsd4XXmRVCVdV1XMn5cOUJhz/Ah4HyBuHQMiHvwgBtUpipaw6UiEeOVmKn5
         06JnlFBqXoUMJEXLUoU7Q1ML5TuiCTHeWLKWy6aWLoyW/mrAIj/hC16VRhtG5o5xfzCv
         TNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qqJfvcGc3yf78nLzZ4sES2gA8TGZMXJ69R9hg/XquS4=;
        b=EafSrkV5Q9UW2DnDOEg1zXxbdS10qQVrQnMNOcbgpFsUYGIKqcYHm/BvVQgsqHHhfS
         wc1wZZeBp7gAYAP40O4AZhl+STdnmYXm6TSvHZGAAp5GC3Bcuk6hMdZIbqip4ZaXgEUL
         nwhLENVO/tg6IbHI98YpJhucNok5L7atMcDdYuNRG6s0aFG0zRllwHBNhRcrBkybXjsn
         RSz3OuZjcNV+tmjwgW2aDof7DGHkIPzhRTsuSasRzAQLLEhRUP+xozBf18lAu2kGOwEc
         Z6zpvBSwNyjOOwGs57rpSp6nCGFqQLZF2gQn5lJ+o2BfLEb6EJ2tZ6LCITMtmCXPI7mO
         gxLQ==
X-Gm-Message-State: APjAAAWX464MYwuDgu0voZbd3Jdc4fU7UHl24KM4VFHWswJ1ps3+ajMi
        6+wwrXPHCxnrCeWnGJ560MNZtl9bbdmjWVvVehE=
X-Google-Smtp-Source: APXvYqwEgKdBvllAVVXfgDWBgbPuRyeql2BSQJccJxSfAKm1Iw8VR9HaXW0P5B6mPV+M6SWqTHaUn3iECz5cOlpBBsg=
X-Received: by 2002:aca:e084:: with SMTP id x126mr3957513oig.97.1577481335987;
 Fri, 27 Dec 2019 13:15:35 -0800 (PST)
MIME-Version: 1.0
From:   =?UTF-8?Q?Antonin_D=C3=A9cimo?= <antonin.decimo@gmail.com>
Date:   Fri, 27 Dec 2019 22:15:42 +0100
Message-ID: <CAC=54BKOz_ReXURKh8HCzA67SN=vO9439G7K8J0P19dn-PX_mg@mail.gmail.com>
Subject: [PATCH] netlink.7: fix alignment issue in example
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

PVS-Studio reports that in

    char buf[8192];
    /* ... */
    nh = (struct nlmsghdr *) buf,

the pointer 'buf' is cast to a more strictly aligned pointer
type. This is undefined behaviour. One possible solution to make sure
that buf is correctly aligned is to declare buf as an array of struct
nlmsghdr. Other solutions include allocating the array on the heap,
use an union, or stdalign features.
With this patch, the buffer still contains 8192 bytes.

This was raised on Stack Overflow:
https://stackoverflow.com/questions/57745580/netlink-receive-buffer-alignment
---
 man7/netlink.7 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index 81d4249..853dee6 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -533,8 +533,9 @@ And the last example is about reading netlink message.
 .in +4n
 .EX
 int len;
-char buf[8192];     /* 8192 to avoid message truncation on
-                       platforms with page size > 4096 */
+/* 8192 to avoid message truncation on platforms with
+   page size > 4096 */
+struct nlmsghdr buf[8192/sizeof(struct nlmsghdr)];
 struct iovec iov = { buf, sizeof(buf) };
 struct sockaddr_nl sa;
 struct msghdr msg;
-- 
2.24.1
