Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2141E7665
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2020 09:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725355AbgE2HMB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 May 2020 03:12:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725601AbgE2HMA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 May 2020 03:12:00 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F200C03E969
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 00:12:00 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id y11so722426plt.12
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 00:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=cS/CqEr8g5hQYNRsGaXEsP8Qj7GN69TqfhzfwxuIhJ4=;
        b=r8+YSfSsnHmbxj9LQtczwsMID213aw/sIlhjPs/PgP7bIveN8Nt+wiOJHN+T55gXcf
         EQLJr+zJhkeHECUuNs2NqPT7Ua3TF8j7N4phvKTuXK7T4ru/3jL2gW9rSOwguZblKfRw
         1QEyAzfOoxyxEV279aeg8EIRpNsq8ZhTuE8JrdMJUhkf513dT2nKulrLaknBh9r7oRaG
         gGN2BISGd/z/uGXSYgIuZz0DlGpKCb93DLVqE9//ToZXK3FBQ3ghT/hdifD/E5mdPdji
         IH1zaKpKFepBHBb1jFn4p8IOOGQRUWrqrmENbpTp3BsNjwXJfHVGFvqChPIEbunc+rrl
         J24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cS/CqEr8g5hQYNRsGaXEsP8Qj7GN69TqfhzfwxuIhJ4=;
        b=Ei+aJPgJ0bB2a36d0dHKF1/PGXTCU8gODVTu2pg2bvnsXBo8rC+1ffguBhcS4JY2nU
         Qp6jmqw/zyJWxfbIcmk6mhqg0HZy87d9smBX2G05SVHaQb4Gp/RWJ/xC+/w+faoSS+Xv
         R/RxrcR9faETJ5/ZulIhbGblLML4rTortDp6O/Ek98QJyd245WIFlFN3qwhA9jFB4KFL
         qzoQZIr+QonE23oOh+nM0x8xIvYkWiFXJcHNvdK4oJUJ4N2PqRG0sIQrRzWR1Olw4A47
         jj/L6hCfiEDVHoU92zZ4VwBjHgXT+vRrVhhoipRt1Xiamp7tS4TpQsOW5OOoq7AYESTk
         18/g==
X-Gm-Message-State: AOAM532zHT7oBb51EqDZH83OPA2R9yYFlNtpEioGN17slVjuM2R7aZx2
        95Hgy32bQdFeXQ8e0ZKV4DLpoq+BqZA/1EOrqMu3EjIktRU=
X-Google-Smtp-Source: ABdhPJyYyb1v3wye0TkdBPSKlyKFWHHsVXs3sKiVRhNHwVQFRCGqTlG49ORUBeYIT7n2/L7axRoTeFwIYx6dRADO71E=
X-Received: by 2002:a17:90b:1218:: with SMTP id gl24mr7906837pjb.215.1590736319406;
 Fri, 29 May 2020 00:11:59 -0700 (PDT)
MIME-Version: 1.0
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 29 May 2020 10:11:48 +0300
Message-ID: <CACKs7VBdc4_gU=oVz82soZCuukgQzD4V33VcJ81cL7gimRto-Q@mail.gmail.com>
Subject: connect.2: can return EACCES because of SELinux
To:     lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Hope you are well with the lockdown and all.

Recently I had to troubleshoot a problem where a connect() call was
returning EACCES:

17648 socket(AF_INET, SOCK_STREAM, IPPROTO_IP) = 37
17648 connect(37, {sa_family=AF_INET, sin_port=htons(8081),
sin_addr=inet_addr("10.12.1.201")}, 16) = -1 EACCES (Permission
denied)

I've traced this to SELinux policy denying the connection. This is on
a Fedora 23 VM:

$ cat /etc/redhat-release
Fedora release 23 (Twenty Three)
$ uname -a
Linux mako-fedora-01 4.8.13-100.fc23.x86_64 #1 SMP Fri Dec 9 14:51:40
UTC 2016 x86_64 x86_64 x86_64 GNU/Linux

The manpage says this can happen when connecting to a broadcast
address, or when a local firewall rule blocks the connection. However,
the address above is unicast, and using 'wget' from another account to
access the URL works fine.

The context is that we're building an OS image, and this involves
downloading RPMs through a proxy. The proxy (polipo) is labelled by
SELinux, and I guess there is some sort of policy that says "proxy can
only connect to HTTP ports". When trying to connect to a server
listening on a port that is not labeled as an HTTP server port, I
guess SELinux steps in. With 'setenforce 0', the build works fine. In
the kernel sources I see connect() calls security_socket_connect()
(see https://elixir.bootlin.com/linux/latest/source/net/socket.c#L1855),
which calls whatever security hooks are registered. I see the SELinux
hook getting registered at
https://elixir.bootlin.com/linux/latest/source/security/selinux/hooks.c#L7047,
and setting a perf probe on the call proves that the
selinux_socket_connect function gets called (while tcp_v4_connect() is
not).

How about adding this to the manpage?

diff --git a/man2/connect.2 b/man2/connect.2
index 125ca33ef..9763739c7 100644
--- a/man2/connect.2
+++ b/man2/connect.2
@@ -155,6 +155,13 @@ in the path prefix.
 The user tried to connect to a broadcast address without having the socket
 broadcast flag enabled or the connection request failed because of a local
 firewall rule.
+
+.B EACCES
+can also be returned if a SELinux policy denied a connection (for
+example, if there is a policy saying that an HTTP proxy can only
+connect to ports associated with HTTP servers, and the proxy tries to
+connect to a different port).
+
 .TP
 .B EADDRINUSE
 Local address is already in use.
@@ -297,4 +304,5 @@ is shown in
 .BR getsockname (2),
 .BR listen (2),
 .BR socket (2),
-.BR path_resolution (7)
+.BR path_resolution (7),
+.BR selinux (8)
