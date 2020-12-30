Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55FBD2E7D04
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 23:44:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbgL3WoZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 17:44:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726247AbgL3WoZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 17:44:25 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAAEDC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:43:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id r4so5952546wmh.5
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 14:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3JYhRv56EHuJ/O35gg/Oq/KN/ZXlxU9RsAVJ1wntpWQ=;
        b=kELNx2fxHFWG9Svapay4Z2aSWP1xR0VdkYSeprinZNQzUTQuaGbeH0kl61MHwCGMMa
         z/AoBcSt7ThfHxjoJZCfTodTSUx76g6XIW521uF7sw2A5TYsHCk17TRgd0S2L1Dw/wfG
         ERn7fzV52ix4Jb/W6pxzgsdGNPh0r3qnycWuPthIFFJzhYsDyuRTHU7H/fwusJQH6j9z
         sCoYCUZ2rtYYWQv7rzqgTxhDXtuktTJhwEmHXJQly6JofC+z2ae7k5dZhEL6J6oTde+K
         skLAXeRg+FXwecjTVQmDsQD3zZ5e8VtKsIdTT3Re8hJsZBs5tyDvdgIFQdlia9YhnySn
         3tYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3JYhRv56EHuJ/O35gg/Oq/KN/ZXlxU9RsAVJ1wntpWQ=;
        b=BCb8q/m673EXJBIdZ9Z6baUSUFPcw9EThmAhan8uZX76o2sDbQk13yXcqPe4Z9qFa0
         rrkGOAGyeGK58ssp3l/qAY8EjyeJZW8+G9R9a9sJ/ZbL3RwviTQ3ynDl54mElNPpVOEt
         BeE+IWmKeOwOo9IKeqEi6wKcE7FmXt8lTgnITe/U1FliXXwpl9XV2UbKSNZInStwMKsP
         /GHq96smKhCii+f8arqj1gjAGPBvNwq/hecMIdSq1KrMc/NieuLIeELrtWOU/3ca0jb+
         4PjMe2D5ChxYgDgKNtraJfCNqGFDxGmXYyk+xNgm3iZUKmueJk4nDngCMvmKyZ2SRhpj
         tzVQ==
X-Gm-Message-State: AOAM530WLoxpfltp/s1KmnFdo9cJ6iQamXuyL4x1B4e8jnaC5pDZYmM+
        yO0I3JNL7VfSqsTrSvucPdeUDBnAsls=
X-Google-Smtp-Source: ABdhPJygydawmH+HyTi3kN4XO1iwwjZCZt01LRCjiMUWn/37udBVXpCXwKXFUwxC38cQcA7W8vnwbw==
X-Received: by 2002:a1c:9d85:: with SMTP id g127mr9399985wme.118.1609368223337;
        Wed, 30 Dec 2020 14:43:43 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id b7sm62170493wrv.47.2020.12.30.14.43.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 14:43:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] copy_file_range.2: SYNOPSIS: Fix prototype parameter
 types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201230214147.874671-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2b1cbbc7-a1f3-dbef-1d23-d96409e4490c@gmail.com>
Date:   Wed, 30 Dec 2020 23:43:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230214147.874671-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/30/20 10:41 PM, Alejandro Colomar wrote:
> Glibc uses 'off64_t' instead of 'loff_t'.

Okay.

> This patch doesn't change the types in the code example,
> because it uses the Linux syscall, and not the glibc wrapper.

I think the example probably also needs fixing then. There's
no longer a need for syscall(2) in this example, I think.

Thanks,

Michael

> ......
> 
> $ syscall='copy_file_range';
> $ ret='ssize_t';
> $ find glibc/ -type f -name '*.h' \
>   |xargs pcregrep -Mn "(?s)^[\w\s]*${ret}\s*${syscall}\s*\(.*?;";
> glibc/posix/unistd.h:1121:
> ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
> 			 int __outfd, __off64_t *__poutoff,
> 			 size_t __length, unsigned int __flags);
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/copy_file_range.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> index 1692aa44a..6f4708c4b 100644
> --- a/man2/copy_file_range.2
> +++ b/man2/copy_file_range.2
> @@ -30,8 +30,8 @@ copy_file_range \- Copy a range of data from one file to another
>  .B #define _GNU_SOURCE
>  .B #include <unistd.h>
>  .PP
> -.BI "ssize_t copy_file_range(int " fd_in ", loff_t *" off_in ,
> -.BI "                        int " fd_out ", loff_t *" off_out ,
> +.BI "ssize_t copy_file_range(int " fd_in ", off64_t *" off_in ,
> +.BI "                        int " fd_out ", off64_t *" off_out ,
>  .BI "                        size_t " len ", unsigned int " flags );
>  .fi
>  .SH DESCRIPTION
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
