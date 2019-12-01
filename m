Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C09F10E1D0
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2019 13:18:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbfLAMSu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Dec 2019 07:18:50 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:38753 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbfLAMSu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Dec 2019 07:18:50 -0500
Received: by mail-wm1-f65.google.com with SMTP id p17so7080766wmi.3
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2019 04:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k189Nk3bpULIh8uQlwl5gdkCox0qMhYPMlP6VKabJ3U=;
        b=cxfju86wqjDy0Vzic14vw1WleNauahV+86Ty7//dV4J3aPkFnocOhGsKwV97+0qjDg
         GwcA6mLtZcCW5WstjEXbaMERay8O4lf8dnPYZRLUtSGKYunWJ4n/icu4tytEPaY29EGs
         LIGCbowAb/FoaY9CUhfDByEPsYiZ6Aaoq8DIv82OnYcdbvLzGPq9RlDFtJj6BGLo/vBK
         PHO3OQUo1iEvzDa1taycTvtFJ40HUpvKXfpTWA25FQQBLxMDOrajUb0jNQh07dJmjMUr
         5bF3D/WaNkxP2zydLjFRKfRTBIzYgpQteFRsswJv2HT2IGPe3RNsSJo+GIGlW0c9nQvf
         SnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k189Nk3bpULIh8uQlwl5gdkCox0qMhYPMlP6VKabJ3U=;
        b=TSZfW4hW1DOwon4zO78ys7gus/OddW4VqjOLcDxBBcvuwE6tSH5prBf4FrakNpfJmP
         QSM6Kgq/QPp92p94ANd8RIbg7LTIzchwGmtwO+QsiLQHRuZbPOt14nQZT4piF7YYLxml
         kxOjxMFDXGJKecjEah9v8caHm6Ms/SDeUodOLM13dw3ju/wfRvif374VoRaoMTnMsdmx
         r883kW+aMZrP55+fpQCw0+zfgzBkFRkyV5jZCZzbvlbHa8Sz72WgD6EkMBgjknvthBSm
         3E6AvgXVglmDguuIyNmOwjY8EI4joziXRwKV/BLkzi6Kj1Y3LWLoJmjrYx82aoN9CAdS
         C5Tg==
X-Gm-Message-State: APjAAAXj0C+sP2ckKH3w7skZQvrDv0Ngpxf0Ky9d4MMkugCFPU3YGwNt
        b7JXe6SV34GVREKxQ6RAK1L724qDStU=
X-Google-Smtp-Source: APXvYqymL3X/HK7UX5revN2fw66uK4onlEg2OvagY1N4rXVPWJnnq5Drsrj7PCe6Pe/ZjHYvPttFnw==
X-Received: by 2002:a7b:c152:: with SMTP id z18mr7732478wmi.109.1575202727320;
        Sun, 01 Dec 2019 04:18:47 -0800 (PST)
Received: from localhost.localdomain (cpc73834-dals21-2-0-cust682.20-2.cable.virginm.net. [82.0.142.171])
        by smtp.gmail.com with ESMTPSA id l15sm9381660wrv.39.2019.12.01.04.18.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Dec 2019 04:18:46 -0800 (PST)
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
To:     Adrian Reber <areber@redhat.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <347befad-1a00-45db-e5b6-7b7bed945094@gmail.com>
Date:   Sun, 1 Dec 2019 13:18:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191128124650.364810-2-areber@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adrian,

On 11/28/19 1:46 PM, Adrian Reber wrote:
> Signed-off-by: Adrian Reber <areber@redhat.com>
> ---
>   man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 90 insertions(+)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index 076b9258e..59c13ec35 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -195,6 +195,8 @@ struct clone_args {
>       u64 stack;        /* Pointer to lowest byte of stack */
>       u64 stack_size;   /* Size of stack */
>       u64 tls;          /* Location of new TLS */
> +    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
> +    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
>   };
>   .EE
>   .in
> @@ -262,6 +264,8 @@ flags & 0xff	exit_signal
>   stack	stack
>   \fP---\fP	stack_size
>   tls	tls	See CLONE_SETTLS
> +\fP---\fP	set_tid	See below for details
> +\fP---\fP	set_tid_size
>   .TE
>   .RE
>   .\"
> @@ -285,6 +289,74 @@ options when waiting for the child with
>   If no signal (i.e., zero) is specified, then the parent process is not signaled
>   when the child terminates.
>   .\"
> +.SS The set_tid array
> +.PP
> +The
> +.I set_tid
> +array is used to select a certain PID for the process to be created by

s/is used/may be used/

Because it's not required to use this array, right? I mean, the
default is that the kernel chooses the PIDs. Perhaps this needs to be
more clearly stated at the start of this subsection.

How about:

[[
By default, the kernel chooses the next sequential PID for the new
process in each of the PID namespaces where it is present.
When creating a process with
.BR clone3 (),
the
.I set_tid
array can be used to select specific PIDs for the process in some
or all of the PID namespaces where it is present.
]]

?

> +.BR clone3 ().
> +If the PID of the newly created process should only be set for the current
> +PID namespace or in the newly created PID namespace (if
> +.I flags
> +contains
> +.BR CLONE_NEWPID )
> +then the first element in the
> +.I set_tid
> +array has to be the desired PID and
> +.I set_tid_size
> +needs to be 1.
> +.PP
> +If the PID of the newly created process should have a certain value in
> +multiple PID namespaces the
> +.I set_tid
> +array can have multiple entries. The first entry defines the PID in the most

most *deeply* nested

> +nested PID namespace and all following entries contain the PID of the
> +corresponding parent PID namespace. The number of PID namespaces in which a PID
> +should be set is defined by
> +.I set_tid_size
> +which cannot be larger than the number of currently nested PID namespaces.
> +.PP
> +To create a process with the following PIDs:
> +.RS
> +.TS
> +lb lb
> +l l .
> +PID NS level	Requested PID
> +0 (host)	31496
> +1	42
> +2	7
> +.TE
> +.RE
> +.PP
> +The
> +.I set_tid
> +array would need to be filled with:
> +.PP
> +.EX
> +	set_tid[0] = 7;
> +	set_tid[1] = 42;
> +	set_tid[2] = 31496;
> +	set_tid_size = 3;
> +.EE
> +.PP
> +If only the PID of the two innermost PID namespaces
> +should be defined it needs to be set like this:
> +.PP
> +.EX
> +	set_tid[0] = 7;
> +	set_tid[1] = 42;
> +	set_tid_size = 2;
> +.EE
> +.PP
> +The PID in the PID namespaces outside the two innermost PID namespaces
> +is then selected the same way as any other PID is selected.
> +.PP
> +Only a privileged process
> +.RB ( CAP_SYS_ADMIN )
> +can set
> +.I set_tid
> +to select a PID for the process to be created.
> +.\"
>   .SS The flags mask
>   .PP
>   Both
> @@ -1379,6 +1451,16 @@ in the
>   .I flags
>   mask.
>   .TP
> +.BR EINVAL " (" clone3 "() only)"
> +.I set_tid_size
> +larger than current number of nested PID namespaces or maximum number of
> +nested PID namespaces was specified.
> +.TP
> +.BR EINVAL " (" clone3 "() only)"
> +If one of the PIDs specified in
> +.I set_tid
> +was an invalid PID.
> +.TP
>   .B ENOMEM
>   Cannot allocate sufficient memory to allocate a task structure for the
>   child, or to copy those parts of the caller's context that need to be
> @@ -1450,6 +1532,14 @@ mask and the caller is in a chroot environment
>   (i.e., the caller's root directory does not match the root directory
>   of the mount namespace in which it resides).
>   .TP
> +.BR EPERM " (" clone3 "() only)"
> +If
> +.I set_tid
> +with
> +.I set_tid_size
> +larger than 0 was specified by an unprivileged process (process without
> +\fBCAP_SYS_ADMIN\fP).
> +.TP
>   .BR ERESTARTNOINTR " (since Linux 2.6.17)"
>   .\" commit 4a2c7a7837da1b91468e50426066d988050e4d56
>   System call was interrupted by a signal and will be restarted.

Thanks,

Michael
