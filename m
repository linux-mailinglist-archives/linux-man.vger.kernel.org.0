Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6820835418B
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234746AbhDELdj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:33:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233431AbhDELdj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:33:39 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94EF6C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:33:31 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id l4so16366026ejc.10
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PqLfD+7ZN9uCbHIyrZxYxLrfulKfRalUA9IZBo4qDak=;
        b=cTYZC4UO5OvGMsEXVtrhyJh5mFFFD/q53qmxrz9GRwp9iXrEn4lEtysq3UhIwC2OcT
         bjpKe3/3G2LxhQk4uYqrf+pXnvhv1u2A0o4IcWllOgC/aKe3YbKLoQEx1EKCoxXnXeaZ
         TnQIVGaYEXmxG7dVuTNpGmPF2r+h6Wyz5JjPfUoELN46AWzrhygQeehS3nMf+4QJ3YHE
         rmuVJtNEUBHhVFsRLTaJBYB8xkvCbn/NiaZ+BvT9YxIUmlswTPhKXwmoDLnGL3T1kCVU
         ShFr+FmFME9OhNc5RSzYRHhnW5yyqfZJ3IZDcuvVcHnMaeUVUEic0H5C9jFvaYY2ruZf
         9QeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PqLfD+7ZN9uCbHIyrZxYxLrfulKfRalUA9IZBo4qDak=;
        b=mlvr7nIDFaQbiHQGkwC7wZUDie/R4ffD0z/pc7SpzSsb6fHQYTGBboTGVKrUxq71ds
         +6SQiXcaVsw9Dhuu/gnpC7SubmM8FORjuSOHJTH8N2dXlcaMGgdEEfD4gVzlSfbk8yKP
         h+wyu4+mgeQ4uin8R7AsMhZ16/bIgcmY/ZbbxGsM2JyzxI5qrBJ0p8iukRRHGkFvtDWE
         3mF+ifsu1/Mp/tJVz/86YL23vYOmw8JccDVckBXrTgXsarB01OkBXX+dpO2hSXG8St3M
         P0Ev4xeKgfS7ekrcYa7RSYRJLUPR6sDpMXCRExA2C/1ZyohNn6WYNk/xGaklXEZJ/too
         u6LA==
X-Gm-Message-State: AOAM531++R4mZa/4zhFsej0ZU0+PTGwZHg4aWxfiGwfReJbhjsj+9x3B
        VhQ4ifylVS3MksiqYie2Eb4=
X-Google-Smtp-Source: ABdhPJwmrnpp8b4ovCteNDnYj7/W6T5BvL6uMr2FMiNQo8WFzx95qOrFL4W2Bilt5d8307PbOPQwmw==
X-Received: by 2002:a17:907:628a:: with SMTP id nd10mr28097409ejc.326.1617622410339;
        Mon, 05 Apr 2021 04:33:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id eo22sm8652089ejc.0.2021.04.05.04.33.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:33:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 14/35] execveat.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-15-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d09ff014-f2ab-5a9c-01ea-fbf4ce47ba1f@gmail.com>
Date:   Mon, 5 Apr 2021 13:33:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-15-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Add <linux/fcntl.h>, which contains AT_* definitions used by
> execveat().
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man2/execveat.2 | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index 855832765..c566f53df 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -28,15 +28,14 @@
>  execveat \- execute program relative to a directory file descriptor
>  .SH SYNOPSIS
>  .nf
> +.BR "#include <linux/fcntl.h>" "      /* Definition of " AT_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
>  .B #include <unistd.h>
>  .PP
> -.BI "int execveat(int " dirfd ", const char *" pathname ,
> -.BI "             const char *const " argv "[], const char *const " envp [],
> -.BI "             int " flags );
> +.BI "int syscall(SYS_execveat, int " dirfd ", const char *" pathname ,
> +.BI "            const char *const " argv "[], const char *const " envp [],
> +.BI "            int " flags );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
>  .SH DESCRIPTION
>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
> @@ -209,9 +208,6 @@ the natural idiom when using
>  is to set the close-on-exec flag on
>  .IR dirfd .
>  (But see BUGS.)
> -.PP
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
>  .SH BUGS
>  The
>  .B ENOENT
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
