Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6FC71ADAA7
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:01:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728298AbgDQKBz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:01:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbgDQKBv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:01:51 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E4BCC061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:01:50 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x18so2395052wrq.2
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O4zgs/WUN3DEZcDmwezObfdjLdBvTYqxApJEDngpdcE=;
        b=QkoK6sKFVcA40Fj+Ig/jF28qqfUSJMxoFwhDPps9j0EuFCF2kq/ogvBGhSqtGtMO4R
         it+dpfInNRFo1NlXFy33hBoDA5qcbpIUxTj3CSMSPu0o76UoM5eZjZb9TWSI77m/dzqu
         mkFx2D9Rm6y7hCuAWMuS4LCy0l8Jq4aiCl/pN+1LsqxYvoXzFvXpPqcR0JUqS1DNTv+T
         Nam5ZuW/P43QdwXfQq8G+UOyH6vnb8Fa14Kaj5XhJBWYxb3gTCuEZCptNPNkpbZzRuwN
         V8AXL1qNSy2RzIg3ooVtQIjLNsI2COdukHP/ggQiAazVqujA0toApFNlY6P7cu7nR6P6
         J40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O4zgs/WUN3DEZcDmwezObfdjLdBvTYqxApJEDngpdcE=;
        b=AKQcMLb6T81nMjA+gp2WsV9nFbWdNxcEwo65QebkuPChvua6h1ynlmWR7FcR/BDzZE
         JdSVaQP+NuC97idEZYjPhPLtoKkiaIIMv4C8jxBt2U14c7HVQXH3uRVKjsCLA+EqWwgs
         DmcNHGvJ5GpaBdsvWqSXPPmRD9aAvgX2Tf512MPNMXlZeA8SLB+JiviVhNTvMrQBrBwY
         83OQ6jI7EWG2dn/5qd60vhC0x/eT3WdUJCFaEBUbLB6u9Kc+9Fq+lxKCGH/6LpqhnO0p
         45VqiILWDHhMC8AN1m8glKzy4U2gYl7xtGpl5wXPmE/ehmvi47OoXIcIzXWpX+YOdFTn
         Mcwg==
X-Gm-Message-State: AGi0PuYrGCs9uTFfFw1qqqkgutrDneP6MA4l5ZbUZ4no4Fce8h9xXxeT
        yy0QQUAc5kyZ+yMQ3T8MHB8=
X-Google-Smtp-Source: APiQypJ0c/+JC30GlOUK5krut7BRd9rdvlNucVhGg+f1K9/mWQLuPTWdKKb9fWFlUqyUuSd9p8pdhA==
X-Received: by 2002:a5d:6412:: with SMTP id z18mr3038732wru.322.1587117709276;
        Fri, 17 Apr 2020 03:01:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x18sm6897371wmi.29.2020.04.17.03.01.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:01:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        ast@plumgrid.com, davem@davemloft.net,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Subject: Re: [PATCH] bpf.2: Change note on unprivileged access
To:     Richard Palethorpe <rpalethorpe@suse.com>
References: <20190729125843.6319-1-rpalethorpe@suse.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f9476e0-a05a-c9ec-1135-87c641b93e32@gmail.com>
Date:   Fri, 17 Apr 2020 12:01:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20190729125843.6319-1-rpalethorpe@suse.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Richard,

On 7/29/19 2:58 PM, Richard Palethorpe wrote:
> This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
> under some circumstances.

Thanks. I have (at last) applied this patch.

In Linux 4.4, the allowed BPF helper functions that could
be called was, I think, governed by a check in sk_filter_func_proto().
Nowadays (Linux 5.6), it is, I think, governed by the check in
sk_filter_func_proto(). If that is the case, then probably there
are one or two more helper functions to be added to the list
(e.g., get_numa_node_id, map_push_elem, map_pop_elem).
Do you agree with my analysis?

Thanks,

Michael

> Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>
> ---
>  man2/bpf.2 | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index b5c0869ae..a57ed9086 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -1120,11 +1120,29 @@ The
>  .BR bpf ()
>  system call is Linux-specific.
>  .SH NOTES
> -In the current implementation, all
> +Prior to Linux 4.4, all
>  .BR bpf ()
>  commands require the caller to have the
>  .B CAP_SYS_ADMIN
> -capability.
> +capability. From 4.4 onwards an unprivileged user may create limited
> +programs of type
> +.BR BPF_PROG_TYPE_SOCKET_FILTER
> +and associated maps. However they may not store kernel pointers within
> +the maps and are presently limited to the following helper functions:
> +.IP * 3
> +get_random
> +.PD 0
> +.IP *
> +get_smp_processor_id
> +.IP *
> +tail_call
> +.IP *
> +ktime_get_ns
> +.PD 1
> +.PP
> +Unprivileged access may be blocked by setting the sysctl
> +.IR /proc/sys/kernel/unprivileged_bpf_disabled .
> +.\" commit 1be7f75d1668d6296b80bf35dcf6762393530afc
>  .PP
>  eBPF objects (maps and programs) can be shared between processes.
>  For example, after
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
