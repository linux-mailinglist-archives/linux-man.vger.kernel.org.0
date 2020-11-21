Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F018F2BC12B
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 18:46:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727976AbgKURpy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 12:45:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726305AbgKURpx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 12:45:53 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 783ABC0613CF;
        Sat, 21 Nov 2020 09:45:53 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id d12so14109158wrr.13;
        Sat, 21 Nov 2020 09:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CmLzE4UtMwXnfnKb5jOVMuAz+yy9QBReO6ZHCKfQ55I=;
        b=Qd4Xx/EPAOlqOCKpFWNXhlixrBcK12nOahenM2/Ucy99hWa2rwXMJvuoz8uD5KjLGB
         cme+8I9isjfXMDBbp3qOr1bJ/OyX3XBbGdJVyGfscIAJ42gCyexuy93CN38KKPkEnJ/v
         w2vivZSSMPxUtN9ucaNO6BzvxmTA5nYdanXG8vlfqmF71Ye3El0GIklfkdIGjsGZQ52n
         jFyAE05DJvRGnOvLTfZO5qzTzc3PHz+PM/SXLe0OxRqRl4LNfwItthhuBUMg15oonL1N
         cYVPLbU39lNQzWa0uTx9ZnSOPsxdqNQrJC5qjRFsTTOBq6W5MxAVkK2IFkXJygWtv+Gf
         diNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CmLzE4UtMwXnfnKb5jOVMuAz+yy9QBReO6ZHCKfQ55I=;
        b=PBqM+zzBg9J48J5eV9Nf/cuGiZU8vwMzjx1QYAHn5ZeUvYXUY3PtZXmmwX07OjVbAD
         uJizpP/5QCyFMFv40vo2jTwkUcVY2D5b6Wj8mGeKypzxH315FwE71FuDYLSXNmY6t4sZ
         YwV1/VOhda+Djs7clj2hG33oqkRMKc5hnx/rbwd8NdagItT4PpEeMYzjPFyKLRMRt4Ef
         8BHkYHSkLlONKW38v5+u1UtELwiiCxtkVjufg309i7YEoPRh4arU3rDd9eEceewDetoQ
         yJG2MAymzYm3/mmguX4cK+t57r2PdlCk4ajfG1pVxHzKfmZWwxOhU/PfEccCHyisdl7A
         LZhw==
X-Gm-Message-State: AOAM531+DLbw0Tqkji3Jdax5ewFFPhtGkRauV6wuzPBBY0Ur62qi8vfU
        cJvlXFD+GWsV+u3uFHqCvAT48MD3qld80w==
X-Google-Smtp-Source: ABdhPJxHDqFDtMWLXbEGAz83X92mje739HE9WlnMeN1iWBJfLuj1Z4NLGUa2JRprj3vhsB/2l7PQig==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr23382784wrt.358.1605980752025;
        Sat, 21 Nov 2020 09:45:52 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b14sm9176533wrs.46.2020.11.21.09.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 09:45:51 -0800 (PST)
Subject: Re: [PATCH] lseek.2: SYNOPSIS: Use correct types
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201121173054.12172-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5e3a4489-48dd-b33c-9733-4967cdb8a310@gmail.com>
Date:   Sat, 21 Nov 2020 18:45:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201121173054.12172-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'm a bit lost in all the *lseek* pages.
You had a good read some months ago, so you may know it better.
I don't know which of those functions come from the kernel,
and which come from glibc (if any).
In the kernel I only found the lseek, llseek, and 32_llseek
(as you can see in the patch).
So if any other prototype needs to be updated, please do so.
Especially, have a look at lseek64(3),
which I suspect needs the same changes I propose in that patch.

Thanks,

Alex

On 11/21/20 6:30 PM, Alejandro Colomar wrote:
> The Linux kernel uses 'unsigned int' instead of 'int'
> for 'fd' and 'whence'.
> As glibc provides no wrapper, use the same types the kernel uses.
> 
> src/linux$ grep -rn "SYSCALL_DEFINE.*lseek"
> fs/read_write.c:322:SYSCALL_DEFINE3(lseek, unsigned int, fd, off_t, offset, unsigned int, whence)
> fs/read_write.c:328:COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset, unsigned int, whence)
> fs/read_write.c:336:SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
> arch/mips/kernel/linux32.c:65:SYSCALL_DEFINE5(32_llseek, unsigned int, fd, unsigned int, offset_high,
> 
> src/linux$ sed -n 322,325p fs/read_write.c
> SYSCALL_DEFINE3(lseek, unsigned int, fd, off_t, offset, unsigned int, whence)
> {
> 	return ksys_lseek(fd, offset, whence);
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/lseek.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/lseek.2 b/man2/lseek.2
> index e35e410a6..2ff878ffa 100644
> --- a/man2/lseek.2
> +++ b/man2/lseek.2
> @@ -51,7 +51,7 @@ lseek \- reposition read/write file offset
>  .br
>  .B #include <unistd.h>
>  .PP
> -.BI "off_t lseek(int " fd ", off_t " offset ", int " whence );
> +.BI "off_t lseek(unsigned int " fd ", off_t " offset ", unsigned int " whence );
>  .SH DESCRIPTION
>  .BR lseek ()
>  repositions the file offset of the open file description
> 
