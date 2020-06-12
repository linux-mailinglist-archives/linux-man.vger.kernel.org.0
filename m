Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 118191F7DF9
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 22:08:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726310AbgFLUId (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 16:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726283AbgFLUIc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 16:08:32 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA637C03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 13:08:32 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id e1so11155727wrt.5
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 13:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w3YwGske1UTiios0XkJzMmupYxjHXIWNj37tCOwkYZo=;
        b=MYJ6d4P4leg49jxFl7OUAF3CYSZoFzkW2n2h/XDW9oL4t8++iHzww0s8VbN6B0PgkH
         OknkOWRVZQTwwXMjbELhs+Clv3tiO4I1UMMycFQ6/RNHRzb7GeN00rJ1mL8xjqDMsk1/
         e+Of8KOqleMZrFuqLCG42VTm4t5jMESLqrPtrIZDj39wQUrzRfDAkxBjbdT1DZ/4lP+Z
         zw5JIan7ao+jQewOu7P3J37KfkEY1rRRg9Gi4t4xaF6JT1Rxb8QfXoMyS+Jw1yAawJzD
         HZWNN2OrA8AdTUYVL5RroSAs001bJE1zf0X9xXBQNsw7WWfGYba42oscxXqIvsHl3sLV
         AMhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w3YwGske1UTiios0XkJzMmupYxjHXIWNj37tCOwkYZo=;
        b=WSpDbd1gZWncLKMWTRLOon/ARoHYX5x8aC7ilA1hLPh4m7+wkqPCT7IrhvDLuY+9zB
         awk3QzOHpaV90f3h9GDxZwzLBs5+l1AxS7h3qUYICmoWalxTyyNuXF1TRh2O4bh4uMwY
         PZCpNd4Gnu18LiwsLgqpk4yVH4EQvr9N/pbuUKtLU+lsAcVZAee8M/Y/POS86nzYe8GK
         TMLgdB7CVZwgahUNQ0aBpHlAPtTdHSRHJ5wuUqG7/tDY6K/mp0kPq95+3uZlVcIvQUVK
         xsJlT8hNyIS+oRTwrp8e2xu+QDrPnKKolbRhdknnlfivtZxH1/GDLuhPJHBGUGnAGu9v
         YxzQ==
X-Gm-Message-State: AOAM532/A8TAUw7R1G74v3PiHnBAlcQh8xbM0ghlB3rfWl5L1FdSImbd
        IXPjTikcFCu8GOsfKJ+SMtk=
X-Google-Smtp-Source: ABdhPJwJhZmbycwsgq+tQSS9QuIttUnbd5m/dgSOnfNS6qCOosVA7aRe/vH53tHJbHoZPM1SD1H7ww==
X-Received: by 2002:adf:e908:: with SMTP id f8mr16514362wrm.184.1591992511435;
        Fri, 12 Jun 2020 13:08:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id v27sm12553641wrv.81.2020.06.12.13.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 13:08:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: connect.2: can return EACCES because of SELinux
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
References: <CACKs7VBdc4_gU=oVz82soZCuukgQzD4V33VcJ81cL7gimRto-Q@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <089aeecf-fed4-659b-5b5e-335100b3748b@gmail.com>
Date:   Fri, 12 Jun 2020 22:08:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CACKs7VBdc4_gU=oVz82soZCuukgQzD4V33VcJ81cL7gimRto-Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stefan,,

On 5/29/20 9:11 AM, Stefan Puiu wrote:
> Hi Michael,
> 
> Hope you are well with the lockdown and all.
> 
> Recently I had to troubleshoot a problem where a connect() call was
> returning EACCES:
> 
> 17648 socket(AF_INET, SOCK_STREAM, IPPROTO_IP) = 37
> 17648 connect(37, {sa_family=AF_INET, sin_port=htons(8081),
> sin_addr=inet_addr("10.12.1.201")}, 16) = -1 EACCES (Permission
> denied)
> 
> I've traced this to SELinux policy denying the connection. This is on
> a Fedora 23 VM:
> 
> $ cat /etc/redhat-release
> Fedora release 23 (Twenty Three)
> $ uname -a
> Linux mako-fedora-01 4.8.13-100.fc23.x86_64 #1 SMP Fri Dec 9 14:51:40
> UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
> 
> The manpage says this can happen when connecting to a broadcast
> address, or when a local firewall rule blocks the connection. However,
> the address above is unicast, and using 'wget' from another account to
> access the URL works fine.
> 
> The context is that we're building an OS image, and this involves
> downloading RPMs through a proxy. The proxy (polipo) is labelled by
> SELinux, and I guess there is some sort of policy that says "proxy can
> only connect to HTTP ports". When trying to connect to a server
> listening on a port that is not labeled as an HTTP server port, I
> guess SELinux steps in. With 'setenforce 0', the build works fine. In
> the kernel sources I see connect() calls security_socket_connect()
> (see https://elixir.bootlin.com/linux/latest/source/net/socket.c#L1855),
> which calls whatever security hooks are registered. I see the SELinux
> hook getting registered at
> https://elixir.bootlin.com/linux/latest/source/security/selinux/hooks.c#L7047,
> and setting a perf probe on the call proves that the
> selinux_socket_connect function gets called (while tcp_v4_connect() is
> not).
> 
> How about adding this to the manpage?

I thought I replied to this message, but it looks like I did not.
As you may already have realized, I applied this patch. Thanks
for sending it.

Cheers,

Michael

> 
> diff --git a/man2/connect.2 b/man2/connect.2
> index 125ca33ef..9763739c7 100644
> --- a/man2/connect.2
> +++ b/man2/connect.2
> @@ -155,6 +155,13 @@ in the path prefix.
>  The user tried to connect to a broadcast address without having the socket
>  broadcast flag enabled or the connection request failed because of a local
>  firewall rule.
> +
> +.B EACCES
> +can also be returned if a SELinux policy denied a connection (for
> +example, if there is a policy saying that an HTTP proxy can only
> +connect to ports associated with HTTP servers, and the proxy tries to
> +connect to a different port).
> +
>  .TP
>  .B EADDRINUSE
>  Local address is already in use.
> @@ -297,4 +304,5 @@ is shown in
>  .BR getsockname (2),
>  .BR listen (2),
>  .BR socket (2),
> -.BR path_resolution (7)
> +.BR path_resolution (7),
> +.BR selinux (8)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
