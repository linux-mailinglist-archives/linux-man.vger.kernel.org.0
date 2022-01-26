Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56C6149D3D9
	for <lists+linux-man@lfdr.de>; Wed, 26 Jan 2022 21:52:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231354AbiAZUwG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jan 2022 15:52:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiAZUwG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jan 2022 15:52:06 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20A3C06161C
        for <linux-man@vger.kernel.org>; Wed, 26 Jan 2022 12:52:05 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id f17so1155882wrx.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jan 2022 12:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hXKD81C+oPuvaK7OXm3DUUvHjAZIVdELdsEqURS80YM=;
        b=SZsHCrCAu1DE3HeNJCgQjJ2CYg+D2UKKu6cJzHP67R4RsW+XUR+qasQDdIDjuOVGdG
         YTaViMxZqGSJWPVdpFTktpjwtGQUbXNzCFRjchbNW9PWdIZIkt2ywgz0AWgqDvFa624q
         QJZ8OiPUlxCipQ8nTSprRmCM8Rn/wmPn5Rp2WyVe3JOTqaHmNbqX5Rx3YjLEVbwYMxIz
         fNvOsJSkuCvR6WPGba3AqinAt1U0z8KA48BN9tMphYifLCxSGzddxTYGjaxtGYiLiibq
         311EBfVnHfQzxturW4cOg9upfa48bDzAnZUU6Usi4TeR86axX43VYe/3tAqH0kafzmFl
         yk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hXKD81C+oPuvaK7OXm3DUUvHjAZIVdELdsEqURS80YM=;
        b=7//rsKsS2fJErmXnkMyUYnp6Mfp4GsBSC1wY3Bte0W9FK0ty7KYUkVJsPm7vVs0pGN
         rMbLg/N0gVOsujya5wUjsOPNBIR5QCTQZFWWlqeqw3/fJA0Et37he822rMdG06oDxJup
         dFHmpUjAXHfiShTNJDwXBJdEIJoCSQ3BRCoe/O23tCxAPolmSYp4gMX6DDbfs/XB6M+s
         ADIxlrWxlQlIRsVRtXlbuwyPhwstRCMgNfVhUCnK6fMReRFogY0a7CpEhJGH0+ObfPsG
         zW8lF8KC3A9UWKUGkQXxYqIANrvodGCYwHwTdaH+yqHbSKPqmVA436Hih4HHeeYSRfBv
         +oPA==
X-Gm-Message-State: AOAM531X0m4NTgQQARE76QgYmlHiJWb3aHxUi/ITD1BbljzMSrr6nr9E
        lNWaCQkZduJCOlquZIv8o7w=
X-Google-Smtp-Source: ABdhPJwd0jjKfb0cgP4iMJoqsEgBm1s1zSim3gfgCNSlAc4P5s8MiI4lxYmw7kLOA2EPpS9WHGec0g==
X-Received: by 2002:adf:d1c4:: with SMTP id b4mr263412wrd.337.1643230324299;
        Wed, 26 Jan 2022 12:52:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 1sm248724wmo.37.2022.01.26.12.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 12:52:03 -0800 (PST)
Message-ID: <4cb38a00-08d1-c5fb-2024-2cba627ef63b@gmail.com>
Date:   Wed, 26 Jan 2022 21:52:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] pipe.2: Add mention of O_NOTIFICATION_PIPE flag
Content-Language: en-US
To:     chrubis@suse.cz
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20220126131719.12211-1-chrubis@suse.cz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220126131719.12211-1-chrubis@suse.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Cyril,

On 1/26/22 14:17, chrubis@suse.cz wrote:
> From: Cyril Hrubis <chrubis@suse.cz>
> 
> This adds very basic information about the notification pipe that have
> been added into Linux 5.8.
> 
> There is some description about the interface at:
> 
> https://www.kernel.org/doc/html/latest/watch_queue.html
> 
> (I think that there is at least on bug in that page, since the
> notification pipe has to be opened with O_NOTIFICATION_PIPE which is
> defined to O_EXCL not O_TMPFILE)
> 
> The ENOPKG error should be clear from this header (see
> watch_queue_init() at the end):
> 
> https://github.com/torvalds/linux/blob/5bfc75d92efd494db37f5c4c173d3639d4772966/include/linux/watch_queue.h
> 
> TODO:
> 
> Where to place the info about the structures and ioctls()? Does that
> belong into pipe.2 as well?

We're documenting types in system_data_types(7).  You could try there.


Regarding ioctls(), there are a few pages.  Maybe you could start a new
one; I don't know.

$ apropos ioctl
console_ioctl (4)    - ioctls for console terminal and virtual consoles
ioctl (2)            - control device
ioctl_console (2)    - ioctls for console terminal and virtual consoles
ioctl_fat (2)        - manipulating the FAT filesystem
ioctl_ficlone (2)    - share some the data of one file with another file
ioctl_ficlonerange (2) - share some the data of one file with another file
ioctl_fideduperange (2) - share some the data of one file with another file
ioctl_fslabel (2)    - get or set a filesystem label
ioctl_getfsmap (2)   - retrieve the physical layout of the filesystem
ioctl_iflags (2)     - ioctl() operations for inode flags
ioctl_ns (2)         - ioctl() operations for Linux namespaces
ioctl_tty (2)        - ioctls for terminals and serial lines
ioctl_userfaultfd (2) - create a file descriptor for handling page
faults in ...
tty_ioctl (4)        - ioctls for terminals and serial lines
blockdev (8)         - call block device ioctls from the command line
f2fs_io (8)          - f2fs ioctl utility
ioctl (3posix)       - control a STREAMS device (STREAMS)
ioctl_list (2)       - list of ioctl calls in Linux/i386 kernel
use_tioctl (3ncurses) - miscellaneous curses utility routines
use_tioctl_sp (3ncurses) - curses screen-pointer extension

> 
> Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
> ---
>  man2/pipe.2 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/man2/pipe.2 b/man2/pipe.2
> index 41a482f37..7d4db0323 100644
> --- a/man2/pipe.2
> +++ b/man2/pipe.2
> @@ -149,6 +149,14 @@ referred to by the new file descriptors.
>  Using this flag saves extra calls to
>  .BR fcntl (2)
>  to achieve the same result.
> +.TP
> +.BR O_NOTIFICATION_PIPE

Use .B
You don't need the 'R'.

groff_man(7):
       .B      Bold                         Font style macros
       .BI     Bold, italic alternating     Font style macros
       .BR     Bold, roman alternating      Font style macros




> +Since Linux 5.8,
> +.\" commit c73be61cede5882f9605a852414db559c0ebedfd
> +general notification mechanims is build on the top of the pipe where kernel

typo: mechanims
typo: build

> +splices notification messages into pipes opened by userspace. The owner of the

Also:

   Use semantic newlines
       In the source of a manual page, new sentences  should  be
       started on new lines, long sentences should be split into
       lines  at  clause breaks (commas, semicolons, colons, and
       so on), and long clauses should be split at phrase bound‐
       aries.  This convention,  sometimes  known  as  "semantic
       newlines",  makes it easier to see the effect of patches,
       which often operate at the level of individual sentences,
       clauses, or phrases.

Also:

s/userspace/user space/

man-pages(7):
   Preferred terms
       The  following table lists some preferred terms to use in
       man pages, mainly to ensure consistency across pages.

       Term                 Avoid using              Notes
       ───────────────────────────────────────────────────────────

       [...]
       user space           userspace



> +pipe has to tell the kernel which sources of events to watch and filters can also
> +be applied to select which subevents should be placed into the pipe.
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned,
> @@ -191,6 +199,15 @@ The system-wide limit on the total number of open files has been reached.
>  The user hard limit on memory that can be allocated for pipes
>  has been reached and the caller is not privileged; see
>  .BR pipe (7).
> +.TP
> +.B ENOPKG
> +.RB ( pipe2 ())
> +.B O_NOTIFICATION_PIPE
> +was passed in
> +.IR flags

Use .I
You don't need the 'R'.

groff_man(7):
       .I      Italic                       Font style macros
       .IB     Italic, bold alternating     Font style macros
       .IP     Indented paragraph           Paragraph macros
       .IR     Italic, roman alternating    Font style macros


Thanks,

Alex


> +and support for notifications
> +.RB ( CONFIG_WATCH_QUEUE )
> +is not compiled into the kernel.
>  .SH VERSIONS
>  .BR pipe2 ()
>  was added to Linux in version 2.6.27;

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
