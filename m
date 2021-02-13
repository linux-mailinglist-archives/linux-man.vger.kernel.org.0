Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7029031AE82
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbhBMXaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbhBMXax (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:30:53 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28AD8C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:30:13 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id u14so4323156wri.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DAzenZLkoGzWTNAypuXwbEug7BpJBSZcZjhMuqBKKlg=;
        b=s+XUDpAPrkN5gORHR0OvuPek9rrZXvvpxufc7ERdXiGaPMfC70v4PN+omBEuhVXVYr
         r15x445JTROmEixsk1Ni9qFW2Oey1iCqv3gV6I4fc+RKF+M2Kpkf4dD+YS6BoAJPFqwr
         0Hyu+81CLhUKuikJgJob5PQgUmZinFf5PDo60V18fRUX5n7001+PV9gbYCGj4m76mpbA
         mEsCA8siqdPJFVuabazYYQVgXtLCMfWK9rSnzA3yHzEKVDFPzEuz+TszXdkXRD6IMsc7
         uatzsV6KquJk32we1Evxh1+ythfq9GBZqeONQ6Z6x8lDa4oAPNlxE0sIbNaBk+Cm90xE
         PSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DAzenZLkoGzWTNAypuXwbEug7BpJBSZcZjhMuqBKKlg=;
        b=jR9yV6NIRmct8tYDOnT03sOLlxMJJtmOjSU617+jU8/2WfI81unRmfdc3P4Qcmv7po
         +j1K8ta9bGhZ2AK+1XuMeVtKDNloDOMaptfwj/Vq0bdCYHmgrimh/f+puHPOHf3mUou+
         xGZSvC+WQytMD33vUJdKitgmgkJ2yFIZuvm3Pkiochvj0wiykzrayZVM+765V2RhfNhm
         w3sdWJwgHWC/5oE7pU4sV4EdQC4bz5PTqOPUrWp1O0s1TIl6Ps/rsfI4psS8+Bnps/Il
         J/9N0cW+pkRHGQjXlSIi+SWk1psQkdoVdaSlsNGFGpOwsY0LMAwFDZdPvRUWGLWWt99G
         wHtQ==
X-Gm-Message-State: AOAM5327v8PdXdb92lzqMnJZD3POEsPFDRQV+LZruihkOFjagieBLQWX
        04BzD7GbrB3q5gq5JL4LBu+8OOc4cF4=
X-Google-Smtp-Source: ABdhPJzyELHCz0Ey0TwG8jUF75PhQqU8eR0/SYTM2wEH8LZ5nJ60V5iHd/jP27FBAoxlrgGipN4jwg==
X-Received: by 2002:a5d:508c:: with SMTP id a12mr11040466wrt.252.1613259011828;
        Sat, 13 Feb 2021 15:30:11 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id s23sm17941902wmc.35.2021.02.13.15.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 15:30:11 -0800 (PST)
Subject: Re: sigprocmask.2: s/kernel_sigset_t/sigset_t/
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
 <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cacaff50-f077-37f0-87c6-df2feed9ddcb@gmail.com>
Date:   Sun, 14 Feb 2021 00:30:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/13/21 5:05 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/12/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> AFAICT, the syscalls [rt_]sigprocmask use '[old_]sigset_t' (there's the
>> '__user' modifier too), so 'kernel_' should be removed from the types,
>> shouldn't it?
> 
> Looks like you're right. Will you send a patch?
> 
> Thanks,
> 
> Michael

Hi Michael,

I was wrong!

Thanks,

Alex

[[
   C library/kernel differences
       The kernel's definition of sigset_t differs  in  size  from
       that  used by the C library.  In this manual page, the for‐
       mer is referred to as kernel_sigset_t (it  is  nevertheless
       named sigset_t in the kernel sources).

       The  glibc  wrapper function for sigprocmask() silently ig‐
       nores attempts to block the two real-time signals that  are
       used  internally by the NPTL threading implementation.  See
       nptl(7) for details.

       The original Linux system  call  was  named  sigprocmask().
       However,  with  the  addition of real-time signals in Linux
       2.2,  the  fixed-size,  32-bit  sigset_t  (referred  to  as
       old_kernel_sigset_t  in this manual page) type supported by
       that system call was no longer  fit  for  purpose.   Conse‐
       quently,  a new system call, rt_sigprocmask(), was added to
       support an enlarged sigset_t  type  (referred  to  as  ker‐
       nel_sigset_t  in  this  manual  page).  The new system call
       takes a fourth argument, size_t sigsetsize, which specifies
       the  size  in  bytes  of the signal sets in set and oldset.
       This argument is currently required to have a fixed  archi‐
       tecture specific value (equal to sizeof(kernel_sigset_t)).

       The  glibc  sigprocmask()  wrapper function hides these de‐
       tails from us, transparently calling rt_sigprocmask()  when
       the kernel provides it.
]]



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
