Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D43A8406CBE
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 15:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231949AbhIJNNw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 09:13:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231266AbhIJNNw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 09:13:52 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F350EC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 06:12:40 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n5so2555250wro.12
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 06:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cteC/GUc8/5XRnIZewhnRrk+BvRTgf84wx6hTIh9kYo=;
        b=a2kCYI2lNfZjltPtZel8P3VKZmepD0sbdHRJN9jysKGEHOOK3XnJaUfpqKURNCxaP+
         ZWgU7m/vjjUsfK+2zpWDihUUrPiXUCh2t4cEPjUqGc9zcjMNtVngL33cvX58mjTKmsUF
         RRqHR0WbLWX9wCW5XH3dMODuM2mRXVP2c1c7I/bPqPLlAki2dtd7icb6K6pGFmwhS17r
         RUUx5QhNZkPlH5nlc4km05d0FzMSkKLqeZGRImlPseyAdt2C13QD7aP97WxxHZ31Zb38
         3eDAT2CKS1WUSYmdiYfm3hRb6v5NtzdLvQiywy5MXOUNXe9biao036w4RdofuYrlQGRO
         HcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cteC/GUc8/5XRnIZewhnRrk+BvRTgf84wx6hTIh9kYo=;
        b=n5ZoHunrDxv3FjivbBUMvxipLyw241u/U4k5CvxxXZo+oNrB03SS2yjWEvMVesV0K+
         plJ44p2hc71kWzrpVMW0TKh36FuN65yv1JW26vW0IXkVuhId1TdhOJ+TwaHGrxs0k7nf
         GMRf35CRq6NGwO/YSWMUZ/+638PBB0UqYpl02dDQWaAgnhVVREkfPV6fH7ncqcq3GIGl
         23WeQee0/wdNwgaIQfpO+zx/jwXAyYlBUCAFNN+jtcLT7ob6yjbh5XQC8ZPbiqdqvNlo
         xGw1iB77+w+wtSVTTKU6xGYViLjOie6YHzjn8ndR8w+1x69Ce3NJOam8QqBPbHJ1QkHM
         AQQw==
X-Gm-Message-State: AOAM5312rYbYOwAQeArzJezA0/rfyZkUjulazg8vtoItN6ap+z7AhzpF
        pFUq6auLJ2szHacPmNdhJ9E1Z4H0BEk=
X-Google-Smtp-Source: ABdhPJw3xo2yf05+N5wbQWFCApWma4vjf/o3qjuk8f51G1eoPB9Oqy3L8I2EzOFkj6KmTLX7v4DKuA==
X-Received: by 2002:adf:9e48:: with SMTP id v8mr9743694wre.141.1631279559475;
        Fri, 10 Sep 2021 06:12:39 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p13sm4592684wro.8.2021.09.10.06.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 06:12:38 -0700 (PDT)
Subject: Re: [PATCH] memfd_secret.2: add NOTES section ...
To:     Mike Rapoport <rppt@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Mike Rapoport <rppt@linux.ibm.com>, linux-man@vger.kernel.org
References: <20210902075045.1237905-1-rppt@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <29fa3a87-77d6-9f41-821b-55ae8a611cbe@gmail.com>
Date:   Fri, 10 Sep 2021 15:12:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210902075045.1237905-1-rppt@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 9/2/21 9:50 AM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> ... that explains the rationale for the system call
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

I found a few formatting/wording issues (see below; but I fixed them 
myself, so you don't need to worry about them).
In general, I understood the rationale for the system call,
so I applied the patch to my tree.  However, there are some parts that I 
didn't understand well, mostly related to kernel internals, but since 
Michael knows more about those, I expect him to review those again when 
I send him the patch.

Thanks!

Alex

> ---
>   man2/memfd_secret.2 | 61 +++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 61 insertions(+)
> 
> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> index f3380818e..869480b48 100644
> --- a/man2/memfd_secret.2
> +++ b/man2/memfd_secret.2
> @@ -147,6 +147,67 @@ system call first appeared in Linux 5.14.
>   The
>   .BR memfd_secret ()
>   system call is Linux-specific.
> +.SH NOTES
> +.PP

Unnecessary .PP after .SH or .SS

> +The
> +.BR memfd_secret ()
> +system call is designed to allow a user-space process
> +to create a range of memory that is inaccessible to anybody else -
> +kernel included.
> +There is no 100% guarantee that kernel won't be able to access
> +memory ranges backed by
> +.BR memfd_secret ()
> +in any circumstances, but nevertheless,
> +it is much harder to exfiltrate data from these regions.
> +.PP
> +The

/The/d

> +.BR memfd_secret ()
> +provides the following protections:
> +.IP \(bu 3
> +Enhanced protection
> +(in conjunction with all the other in-kernel attack prevention systems)
> +against ROP attacks.
> +Absence of any in-kernel primitive for accessing memory backed by
> +.BR memfd_secret ()
> +means that one-gadget ROP attack
> +can't work to perform data exfiltration.
> +The attacker would need to find enough ROP gadgets
> +to reconstruct the missing page table entries,
> +which significantly increases difficulty of the attack,
> +especially when other protections like the kernel stack size limit
> +and address space layout randomization are in place.
> +.IP \(bu
> +Prevent cross-process userspace memory exposures.

s/userspace/user-space/

> +Once a region for a
> +.BR memfd_secret ()
> +memory mapping is allocated,
> +the user can't accidentally pass it into the kernel
> +to be transmitted somewhere.
> +The memory pages in this region cannot be accessed via the direct map
> +and they are disallowed in get_user_pages.
> +.IP \(bu
> +Harden against exploited kernel flaws.
> +In order to access memory areas backed by
> +.BR memfd_secret(),
> +a kernel-side attack would need to
> +either walk the page tables and create new ones,
> +or spawn a new privileged userspace process to perform

s/userspace/user-space/

> +secrets exfiltration using
> +.BR ptrace (2).
> +.PP
> +The way
> +.BR memfd_secret ()
> +allocates and locks the memory may impact overall system performance,
> +therefore the system call is disabled by default and only available
> +if the system administrator turned it on using
> +"secretmem.enable=y" kernel parameter.
> +.PP
> +To prevent potiential data leaks of memory regions backed by
> +.BR memfd_secret()
> +from a hybernation image,
> +hybernation is prevented when there are active
> +.BR memfd_secret ()
> +users.
>   .SH SEE ALSO
>   .BR fcntl (2),
>   .BR ftruncate (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
