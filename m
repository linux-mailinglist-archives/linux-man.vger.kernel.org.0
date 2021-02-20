Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 371B53204E3
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 11:08:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbhBTKGC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 05:06:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbhBTKGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 05:06:00 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75274C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 02:05:19 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id a207so9933590wmd.1
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 02:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lBDDUSfJqvO7Do/9hC9LsHI8I/s0pxx0x9TV14qobWs=;
        b=mNHmWFWn8n4JFOIGLrDOruTw9LYTF3xeaI7F+MmDZEYOXNFbZ/wmjNczWG7ibdQr2G
         tm+wQPUwvg9IXxWw6vn8I7lLrZLiFHx/ZTr1gGvZbR0c57CK5I5PWD4qPkzqcux6FmYm
         wjIJ+zo0lVSKp81LrM5czC+r6dWree7VG1WhRArdnueJqh2vpSeGDCIWcICyZDVURZe+
         urCNPKivZiX+FtRQ/Uci27RWaN+oUIUQh0sDK2jXSA9D0TThsAVArJUae5F6zuY5SNjW
         M5VORHV5eW4YxkwIRdcfcWoaZjRZPTOkjRW6C+3d5JwhdEhPu7/6wHDqaKqdHqS0pQlh
         04oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lBDDUSfJqvO7Do/9hC9LsHI8I/s0pxx0x9TV14qobWs=;
        b=F24jcSboN3pmxX+D+tH/TxaGwOlpyQUMlnyTxZzWCtkdVrxhVNDC93FPQmHr/qys2A
         Oh1F5EH3kfCazvwrGUZkCINkU/CsXnu5tQCD+At35kKzdREInC9Ewzi82ZZdu8S0+yz9
         jmhX1u++Rk2/p2amRKZa+lWJo0mAcpoQtgntMJVlmqUbq/A6KcMz48CFFzx072wA21fA
         rRFMoFIhZI+rDg966TAJFurtb8+OIS34PO6LQPdMv1SFp48VpD4uPAsowBtX/ilJu9h+
         dDAPlFEig6cWafOlnde8WNSNa5MqAes9jTAGy23yFbzCz0hKFnvgcSb6PHSJ21Ekakgi
         06mg==
X-Gm-Message-State: AOAM532qaO5rrVMTTg+Xdl5A5hxCShwP0QBFPMokr0eC2um8/OizbNfi
        lmj6hXKbBb9CtG71NS6/r1I=
X-Google-Smtp-Source: ABdhPJxyGsPOd8zYLfQS2UMA/12auO1mR663xNDnEI4ARTiiwHm3IXx8y3H9xU6IJuLGRBzZMlTMvA==
X-Received: by 2002:a1c:107:: with SMTP id 7mr11751689wmb.28.1613815518217;
        Sat, 20 Feb 2021 02:05:18 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d5sm18185108wrp.39.2021.02.20.02.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 02:05:17 -0800 (PST)
Subject: Re: Fwd: exit: Bug reporting
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Dave Chupreev <cdn.dev@yandex.ru>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <268231613796665@mail.yandex.ru>
 <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
Message-ID: <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com>
Date:   Sat, 20 Feb 2021 11:05:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dave,

On 2/20/21 10:30 AM, Alejandro Colomar (man-pages) wrote:
> I'll forward these 2 mails to the mailing list (and Michael (mtk) too; 
> maybe he can correct me).
> 
> I'll answer in a reply to this email.
> 
> 
> -------- Forwarded Message --------
> Subject:     Bug reporting
> Date:     Sat, 20 Feb 2021 08:09:50 +0300
> From:     Dave Chupreev <cdn.dev@yandex.ru>
> To:     alx.manpages@gmail.com <alx.manpages@gmail.com>
> 
> 
> 
> Hello, Alejandro.
> 
> Pages this <https://man7.org/linux/man-pages/dir_section_2.html> and 
> this <https://man7.org/linux/man-pages/man2/syscalls.2.html> have 
> different count of 'exit' calls, 4 and 2 respectively.
> 
> According to these pages 
> (<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_32.tbl>, 
> <https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_64.tbl>), 
> there are only 2 system calls containing 'exit' - *exit* and 
> *exit_group*.  So it seems '_Exit' and '_exit' are redundant here 
> <https://man7.org/linux/man-pages/dir_section_2.html>. Please correct me 
> if I am wrong.
> 
> Thanks in advance!
> 
> -------- Forwarded Message --------
> Subject:     Bug reporting
> Date:     Sat, 20 Feb 2021 08:18:56 +0300
> From:     Dave Chupreev <cdn.dev@yandex.ru>
> To:     alx.manpages@gmail.com <alx.manpages@gmail.com>
> 
> 
> 
> Hello, Alejandro.
> 
> Entry exit(2) on this 
> <https://man7.org/linux/man-pages/dir_section_2.html> page directs to 
> page with _exit(2) in the header.
> According to these pages 
> (<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_32.tbl>, 
> <https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_64.tbl>), 
> system call itself is called *exit* so it would be nice to fix the 
> header to avoid the confusion. Please correct me if I am wrong.
> 
> Thanks in advance!

Okay I admit there's a bit of inconsistency in these functions.

exit_group(2) apart (which I think is quite clear).

___

So, the C standard specifies two exit() vairants:

exit() and _Exit()

and POSIX specifies 3 exit() variants:

_exit(), _Exit(), and exit()

_exit() and _Exit are identical, and the only reason for _Exit() to 
exist is history, and the fact that the C standard couldn't use _exit() 
as it only reserved names that started with an underscore and an 
uppercase letter, but not a lowercase one, for future revisions.  So 
when it adopted the posix _exit(), it had to rename it with an available 
name.

exit() does something more than _exit().

That's what the standards say.

___

Now let's discuss the implementation, which is where the confusion starts.

In the Linux kernel, there's only one system call, and it's called exit 
(its entry point is sys_exit(), and can be called using 
syscall(SYS_exit, ...) *but don't*), BUT it implements the functionality 
of _exit() (as the standards call it; see above).

That's the reason that the manual page _exit(2) has a link page called 
exit(2).

But syscalls can't be called directly (you have to use syscall(2)), so 
the C library (glibc) provides a wrapper function for the system call. 
And it does it by following the standards, so the wrapper function for 
the exit system call is _exit(), as POSIX calls it.  And lately, the 
second wrapper _Exit() was added, being an alias to _exit().

These correspond to the manual pages _exit(2) and _Exit(2).

And then glibc has to provide the exit() function, as the standards 
specify it (which remember, was different than the kernel exit system 
call), and the kernel doesn't provide a system call with such 
functionality, so glibc has to implement it, probably using _exit(), but 
with much more functionality.  This is not a system call, but a library 
function.

And that's why there's an exit(3) manual page.

___

To put some more context, FreeBSD (and I guess other BSDs as well) 
provides _exit() as a system call,
and then _Exit() and exit() are functions which I guess wrap around 
_exit(), _Exit() probably just calling _exit().

It provides the following manual pages:

_exit(2), _Exit(3), and exit(3)

___

BTW, even though you can use syscall(2), to call the system calls, don't 
take my words that you can do it as a recommendation to do it.  If 
possible, always use the C library (glibc) wrappers, which hide the 
complexity of calling some system calls (and sometimes even bugs) in 
their wrappers.

___

I hope I was clear and precise.  Michael, please correct me if I was 
wrong in some point.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
