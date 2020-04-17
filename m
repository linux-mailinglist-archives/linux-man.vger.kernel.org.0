Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 653591ADBF2
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 13:12:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730228AbgDQLMS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 07:12:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1730091AbgDQLMR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 07:12:17 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68B0CC061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 04:12:13 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id j20so1191259edj.0
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 04:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=NT9wgSn4UHjfQrZpxD92j2wlwsyB+7O+mh2ivMaUpss=;
        b=ZMjcfZUZ3zCOh+hJHT6vLws/l+n6neonBfR65AYpwEd/H9JOyfBB/yJ/MpuuB7Eok5
         l1EpQV3FzPPnuwb6Q8nZ3rc9b4hrgl48Q1vjGYDkpG4ltItg9YTMCNMo3Wy3feMJeIy4
         VjWURQvANDvslmKA47QbCMw1GvhOWwpbdglRlLCMs5/XiNvF1cRVg+ru29V4ro8ssFL4
         JG+TyUh1P8iYx5q4uvCksqMBj2KAYqjSyC/gFK+zXi6rLgl/qjobRGtc4Rw/8OrjNswM
         SkhAc6Rtoe6M0PLyRkHZSDLUsY/1oFQ+fA8F8ItREOj9XlGXoIyw5Em0BYvYs99pqjig
         9Oug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=NT9wgSn4UHjfQrZpxD92j2wlwsyB+7O+mh2ivMaUpss=;
        b=U8rlNiuF4xsqjFZMQS9lszWk4XyTjVLg7IYSGepxyMGJnnZodoyVxjlHJtNV4v31hB
         OIUAxbfpsAz5usBHvb1bMHv3Zm1yrYj0S28X77cqn6onxBO78rpvQX6yWNVqP7GQqA50
         V6IcuiDA2xFly6SJqWy7GUbwEeJYQntnwFoO+1AtnXng6zjZraTaPpGDoTStFi4FiYxA
         e/xoh6N7LEgqO7LmvA0dNR0w6i4s9hrQdxfCr0ejLVDDC5FgHwpifAheH2yJ0jjHaBjS
         lQg6kT1oDg4ou1Jz0rTofq3Y4A1dAxu5WgQ8bB7z4bxkmk0Zb7B7kTcEr7uQr/tHq1NV
         WYew==
X-Gm-Message-State: AGi0PuYcIHtpITBuL7l/VGvaWSFGCde6xNGW1SX4ipfAlMvoDyv18Vaj
        ISQjXY/Vj7lVn0qaga2Gkw9xfYKbmzGeX1W49VO77m5T
X-Google-Smtp-Source: APiQypJayZONibRW9VlnppUmO+pmzxyf/jPUDDCoX1U/CGTQUqIYt7HTE9rV4EgOCNYnDh+GZ8j7Nfwje+fSBJY3UE8=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr2438750edq.367.1587121931947;
 Fri, 17 Apr 2020 04:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <20160608160938.13275-1-fabien.siron@epita.fr>
In-Reply-To: <20160608160938.13275-1-fabien.siron@epita.fr>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 17 Apr 2020 13:12:00 +0200
Message-ID: <CAKgNAkiUWRCSUJxbv3sbY=8JL=Fc4yYc890y61gJ7dFqWJWJqw@mail.gmail.com>
Subject: Re: [PATCH] netlink.7: Change NETLINK_INET_DIAG to NETLINK_SOCK_DIAG
To:     Fabien Siron <fabien.siron@epita.fr>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Pavel Emelyanov <xemul@virtuozzo.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Fabien,

Thanks for the patch, and sorry that it got lost long ago.

On Wed, 8 Jun 2016 at 18:09, Fabien Siron <fabien.siron@epita.fr> wrote:
>
> As NETLINK_INET_DIAG should not longer be used, NETLINK_SOCK_DIAG should be
> written instead.
>
> Signed-off-by: Fabien Siron <fabien.siron@epita.fr>
> ---
>  man7/netlink.7 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index 513f854..88e3dc1 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -62,9 +62,9 @@ Used by
>  .I ip_queue
>  kernel module.
>  .TP
> -.B NETLINK_INET_DIAG
> -.\" FIXME More details on NETLINK_INET_DIAG needed.
> -INET socket monitoring.
> +.B NETLINK_SOCK_DIAG
> +.\" FIXME More details on NETLINK_SOCK_DIAG needed.
> +Socket monitoring.
>  .TP
>  .B NETLINK_NFLOG
>  Netfilter/iptables ULOG.
> @@ -383,7 +383,7 @@ NETLINK_KOBJECT_UEVENT appeared in Linux 2.6.10.
>
>  NETLINK_W1 and NETLINK_FIB_LOOKUP appeared in Linux 2.6.13.
>
> -NETLINK_INET_DIAG, NETLINK_CONNECTOR and NETLINK_NETFILTER appeared in
> +NETLINK_SOCK_DIAG, NETLINK_CONNECTOR and NETLINK_NETFILTER appeared in
>  Linux 2.6.14.
>
>  NETLINK_GENERIC and NETLINK_ISCSI appeared in Linux 2.6.15.

I made a different change, as below.

Cheers,

Michael

diff --git a/man7/netlink.7 b/man7/netlink.7
index 4a7ba62a3..20aaa9716 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -68,15 +68,15 @@ feature),
 .BR NETLINK_FIREWALL
 was removed in Linux 3.5.
 .TP
-.BR NETLINK_INET_DIAG " (since Linux 2.6.14)"
+.BR NETLINK_SOCK_DIAG " (since Linux 3.3)"
+.\" commit 7f1fb60c4fc9fb29fbb406ac8c4cfb4e59e168d6
 Query information about sockets of various protocol families from the kernel
 (see
 .BR sock_diag (7)).
 .TP
-.BR NETLINK_SOCK_DIAG " (since Linux 3.3)"
-.\" commit 7f1fb60c4fc9fb29fbb406ac8c4cfb4e59e168d6
-A synonym for
-.BR NETLINK_INET_DIAG .
+.BR NETLINK_INET_DIAG " (since Linux 2.6.14)"
+An obsolete synonym for
+.BR NETLINK_SOCK_DIAG .
 .TP
 .BR NETLINK_NFLOG " (up to and including Linux 3.16)"
 Netfilter/iptables ULOG.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
