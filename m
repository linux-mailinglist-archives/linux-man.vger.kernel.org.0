Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BCBF2680FE
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 21:40:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgIMTkE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 15:40:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgIMTkD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 15:40:03 -0400
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF59C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:40:03 -0700 (PDT)
Received: by mail-ot1-x341.google.com with SMTP id o6so13025332ota.2
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 12:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bhDnPQXabc8FOe3RhH9sc8qZhN2RuLo+ircyvyVhGKg=;
        b=q9B6dcA0xUENYihcApuYBAyRAkMsqXmAMc/wE9mtOGtpj/QKfvmn6rdD7sn/BEjoIZ
         BTi8O5aR091l4XdBsdSPOtc7Zb8mThH/Rjzch/kzH9YT3KGq08/i53iDNnD0sJxdvZqj
         Osw7+Z6kaPUyfmw0O8YTt5cBcCfSrnBbiLReBWm1DqLdfehVrzw6a8AHZ3Ku80/8fEFB
         n5aDZsxIh3cvJfCO2B9accohXJDGLE8QMp/EbZt+Sw4yJ39h7USF0Zy3iQhcXEXBCYDm
         xU/T/k9ZYe+56OWG/Sk8OI9WkGFc5Ea1UXshRV0JeyfSXeVGAeRP6YmPNY4JX3zQ+4/y
         YLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bhDnPQXabc8FOe3RhH9sc8qZhN2RuLo+ircyvyVhGKg=;
        b=pU6niFV1qxzzC5KZ9fpJRPeYG3YP/4TcHbGoR571dGCzlo8yg/6xMQ06KqIpvoevci
         5Pvm87C+9rCfXZe2NzykRbXibtTkqXmMgB2Yu6k13HVAnTrkLcP/XK/0GnKfyfB3RPQ7
         XiZiD5v3QnNM7i5Nm91aCpxIcafeElmET4oHo23jGYzcAXA+oIBLWxFo3uFN6rKfOLDq
         8695aiEvnxpV2Pk2KFqalxaOsTVA5Y/3IZkpS7jaMGbA8Qeyrm46BroNxkZHNZvwsLrN
         X1/wc9ucFGbFEuILEYMwmCk7luKSNaiax/WnIUdZ+5dZ+ivebxR4+WYw5SumLDXJMgZW
         aTRA==
X-Gm-Message-State: AOAM533RRnvO4umRhGcoDJOFw/30U7DUBXMVHTYDNP/otXid2SEoPV0u
        aRs8pnflk/ZZxKAHnWk+OiIJpMjL7ZxlExNQquoPa2IZ
X-Google-Smtp-Source: ABdhPJxRiLsjytkG0Vw4pf8ayOMLUipacYCVgaCPKVvklZu7JJBygMfM18oMoHOAG1gwtDb3sP7VCj9oHkVYgyqQhEg=
X-Received: by 2002:a9d:2667:: with SMTP id a94mr6726875otb.45.1600026002442;
 Sun, 13 Sep 2020 12:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <139b02b1-901f-c7fc-71ec-3688c062e22b@gmail.com> <20200913191201.1991-1-kbukin@gmail.com>
In-Reply-To: <20200913191201.1991-1-kbukin@gmail.com>
From:   Konstantin Bukin <kbukin@gmail.com>
Date:   Sun, 13 Sep 2020 12:39:51 -0700
Message-ID: <CAF98MALn=1yCiQZ3vGjEtAfy9Nus5ScgFhYdWuBBp2x7MXxK9g@mail.gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I mentioned cast in the commit message. Sending a new patch with a
revised commit message.

On Sun, Sep 13, 2020 at 12:12 PM Konstantin Bukin <kbukin@gmail.com> wrote:
>
> inode numbers are expected to be positive. Casting them to a signed type
> may result in printing negative values. E.g. running example program on
> the following file:
>
> $ ls -li test.txt
> 9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt
>
> resutls in the following output:
>
> $ ./example test.txt
> ID of containing device:  [0,480]
> File type:                regular file
> I-node number:            -9165900813172145728
> Mode:                     100444 (octal)
> Link count:               1
> Ownership:                UID=2743   GID=30
> Preferred I/O block size: 32768 bytes
> File size:                300 bytes
> Blocks allocated:         8
> Last status change:       Tue Jul 21 06:36:50 2020
> Last file access:         Sat Sep 12 14:13:38 2020
> Last file modification:   Tue Jul 21 06:36:50 2020
>
> Such erroneous reporting happens for inode values greater than maximum
> value which can be stored in signed long. Casting does not seem to be
> necessary here. Printing inode as unsigned long long fixes the issue.
> ---
>  man2/stat.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man2/stat.2 b/man2/stat.2
> index 7e5417480..82eaefcda 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -681,7 +681,7 @@ main(int argc, char *argv[])
>      default:       printf("unknown?\en");                break;
>      }
>
> -    printf("I\-node number:            %ld\en", (long) sb.st_ino);
> +    printf("I\-node number:            %llu\en", (unsigned long long) sb.st_ino);
>
>      printf("Mode:                     %lo (octal)\en",
>              (unsigned long) sb.st_mode);
> --
> 2.17.0
>
