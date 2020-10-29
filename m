Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34FB829EDAF
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 14:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727484AbgJ2Nzd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 09:55:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726184AbgJ2Nzd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 09:55:33 -0400
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046AAC0613CF;
        Thu, 29 Oct 2020 06:55:33 -0700 (PDT)
Received: by mail-ot1-x341.google.com with SMTP id a6so2275046otp.10;
        Thu, 29 Oct 2020 06:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=wNw95vkPVUKnuCu6kl8Q0xOPDhgLOAz7msNluJauU6s=;
        b=qy+G4ANoMkip7KGGLsD4ViEsMIZ1MdAcGmnSs++5E+enxpSGLF7phHoaIT0X4FSAex
         7qJPbuWdDkksobmlw8zHItNgF+n42TvW2nhmCRrNWWLDSKJSiBSY4cgCY0F1bcuppP2u
         mp5eTYkr1mi4VNZkA1mA7Z49hxUFHrbFSMVRPj11qljFPOxD3KSupJtlwJ83bv467UgL
         bbAVlBbOi6YAIkiaIY97nHrfU5dWnnwXW842HYz+kHep0VZhDF7w+bzSx1RlA7d8eeIF
         raC9IaiKRmTUtodXsDz0hs0qq2AxjTgnJ4xFzPR/P67iFK0ZuQXvsL2bXgUGvmuDtSDl
         IHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=wNw95vkPVUKnuCu6kl8Q0xOPDhgLOAz7msNluJauU6s=;
        b=N1XFOXhSSVlw8O5kW9fDWifbhNkYRxK8XuOXJe4GB3SUfw3dHF6KWqfgiTuX7sGyit
         o1TGet3CluAGM6kecsQZ8mum/6lOqqt4jeWmfP60Ttpf/zse22CNB0A7hHTTi/0CoWDg
         nZEuKE3Y6ltUONCB8WPCUuqQAsyTOGE7QNF1QmB4WBShIyVw+CeTGRXv6/EhY0lWWTKm
         Dd2IZlA3LMpUHKU8ry0VZwE7phRSDzZ6BPO7BSbCebB35ldAvZzVByTMUpiRNHQK4Ii9
         Fp2GY/HvJsnrd6VDS2eSR9it7tD6BkAtnNakOwGqBVvu0aPH9v3+cOuMPAEHqX0HS16L
         3jdA==
X-Gm-Message-State: AOAM530LZBNI7sdcWdU8e8ysbGIqaQWsUrSuyau3gSWbN6WsmbL2+cJ/
        Pa8mkxYeudpxwPS/Z7bQaiq48t0gi4KMUug87B0=
X-Google-Smtp-Source: ABdhPJxBXjEik1i4nayWALf7/pjNUCSj2e/yw5IUSt5WOa/hl6heVTD+36xMGEA0Hj9fF/PENxI4qlhi0WLQjSGnmV0=
X-Received: by 2002:a05:6830:22eb:: with SMTP id t11mr3268406otc.114.1603979732387;
 Thu, 29 Oct 2020 06:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <1195fda6-4de3-09fc-8653-42655d7e2b76@gmail.com> <20201029134210.191970-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20201029134210.191970-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 29 Oct 2020 14:55:21 +0100
Message-ID: <CAKgNAkgi7MAW9PxKNBFQ07r7p2PFRR3xU2BJBTqk8oiXDJ4NXA@mail.gmail.com>
Subject: Re: [PATCH v2] getdents.2: Use appropriate types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, 29 Oct 2020 at 14:42, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> getdents():
> This function has no glibc wrapper.
> As such, we should use the same types the Linux kernel uses:
> Use 'long' as the return type.
>
> getdents64():
> The glibc wrapper uses ssize_t for the return type,
> and 'size_t' for the count argument.

Take a look in the header file at the argument types for getdents64();
there's still some changes needed.

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/getdents.2 | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index a187fbcef..e14627e6e 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -33,14 +33,14 @@
>  getdents, getdents64 \- get directory entries
>  .SH SYNOPSIS
>  .nf
> -.BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
> +.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
>  .BI "             unsigned int " count );
>  .PP
>  .BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
>  .B #include <dirent.h>
>  .PP
> -.BI "int getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
> -.BI "             unsigned int " count );
> +.BI "ssize_t getdents64(unsigned int " fd ", struct linux_dirent64 *" dirp ,
> +.BI "             size_t " count );
>  .fi
>  .PP
>  .IR Note :
> @@ -282,7 +282,8 @@ struct linux_dirent {
>  int
>  main(int argc, char *argv[])
>  {
> -    int fd, nread;
> +    int fd;
> +    long nread;
>      char buf[BUF_SIZE];
>      struct linux_dirent *d;
>      char d_type;
> @@ -301,7 +302,7 @@ main(int argc, char *argv[])
>
>          printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=%d \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\en", nread);
>          printf("inode#    file type  d_reclen  d_off   d_name\en");
> -        for (int bpos = 0; bpos < nread;) {
> +        for (long bpos = 0; bpos < nread;) {
>              d = (struct linux_dirent *) (buf + bpos);
>              printf("%8ld  ", d\->d_ino);
>              d_type = *(buf + bpos + d\->d_reclen \- 1);
> --
> 2.28.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
