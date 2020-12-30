Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E00CB2E7CF5
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbgL3W2R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726247AbgL3W2Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:28:16 -0500
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EF4CC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:27:36 -0800 (PST)
Received: by mail-oo1-xc2d.google.com with SMTP id n127so3987439ooa.13
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=yc9KOqYcLaPhFaMOWktkBt1xu/aI/dwrj5L8DYBP3RA=;
        b=nmKt6R6KWNIrrNRTUmbOTKr1fQyiatpebcNeEfoWIloyLHR2RNzgN4Jh6zFrwfPNIi
         I+y55VnCXh1k5yq6VrEthpjyUoeNvwWxuNMcg5F56y8HlHkrVPo3CVdZG8IZleHed+4M
         NW/j8sAuVPA8X+HkWl3e54Y2z9YR9iHQ4OtqoUuCY4iFhsW/BhE/ZrigC9WryC4ISe+c
         51CfFXSDx1nofeM77YPkQI8i/gC1zypPBSfIbd46Zm9DVaJRlUh8embq9YAiCLH64qt+
         Z8svXtJDHWTszvjgNt1T50btwddWzrleCV2RnQdpDS4VnIbVHVPXGAC3Zfqh722KPTQi
         xjKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=yc9KOqYcLaPhFaMOWktkBt1xu/aI/dwrj5L8DYBP3RA=;
        b=uVQ9neDaB8HBCvo2bN3GzJPJlR3uVOokMDDZeWnmIf3iG/CmPZSA51ggq4Sp544bGm
         8VuNA6keFWPHBoi0XlClgGKItv9gEAg3HdKjK6kO5x9jNFO1FAT1485OalGUyXy+rePj
         Xk4TDPqj22qHox1o88Gdt/t2uvRHi6Sj6TzM9K4GhNBGicPqWu2TtczB7xOITmpMc+2g
         zfkjpXnixF0YNf1qz+gkE0dZpOtbMRBPuDBtQtbihytL2oUDtSQ6Npx37DlLE5epGVHa
         uCttgzQdF3BShieCpmj2PmvqwsDPYGyA/41Yny90vSsFbs1vYpSaWxn0HUeLS73o2dXj
         Rf7A==
X-Gm-Message-State: AOAM531v6qYur6iZKH7qO7jfVK/Ddu7tOR67o+R2rZXutSpKkO1QxYe7
        H/vnjkzQj5UyOqkAi/433H6NSG0CsEL9IxLpE+s=
X-Google-Smtp-Source: ABdhPJzC0kYtNMqc9TzLDrlm7qADWvrnevOX+40h+AViChsTy2pfxNFjBUsQgMkF85bgsDgeEqYd40oCS7VhO3jUSlU=
X-Received: by 2002:a4a:eb18:: with SMTP id f24mr37683031ooj.80.1609367255834;
 Wed, 30 Dec 2020 14:27:35 -0800 (PST)
MIME-Version: 1.0
References: <20201230214147.874671-1-alx.manpages@gmail.com>
In-Reply-To: <20201230214147.874671-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 30 Dec 2020 23:27:24 +0100
Message-ID: <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
Subject: Re: [PATCH] execveat.2: srcfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, 30 Dec 2020 at 22:41, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Use .nf/.fi in the SYNOPSIS.

I'm not against the patch. But why this particular page?

Thanks,

Michael

>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>
>  man2/execveat.2 | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index 7c31d8f17..c5cd843f9 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -27,13 +27,13 @@
>  .SH NAME
>  execveat \- execute program relative to a directory file descriptor
>  .SH SYNOPSIS
> +.nf
>  .B #include <unistd.h>
>  .PP
> -.BI "int execveat(int " dirfd ", const char *" pathname ","
> -.br
> -.BI "             char *const " argv "[], char *const " envp "[],"
> -.br
> +.BI "int execveat(int " dirfd ", const char *" pathname ,
> +.BI "             char *const " argv "[], char *const " envp [],
>  .BI "             int " flags );
> +.fi
>  .SH DESCRIPTION
>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
>  The
> @@ -224,7 +224,8 @@ where scripts recursively employ
>  .\" For an example, see Michael Kerrisk's 2015-01-10 reply in this LKML
>  .\" thread (http://thread.gmane.org/gmane.linux.kernel/1836105/focus=20229):
>  .\"
> -.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page.\"                        for execveat(2
> +.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page
> +.\"                        for execveat(2)
>  .\"     Date: Mon, 24 Nov 2014 11:53:59 +0000
>  .SH SEE ALSO
>  .BR execve (2),
> --
> 2.29.2
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
