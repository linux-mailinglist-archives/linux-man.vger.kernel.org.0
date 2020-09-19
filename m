Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C141F270BD1
	for <lists+linux-man@lfdr.de>; Sat, 19 Sep 2020 10:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbgISIXq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Sep 2020 04:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgISIXq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Sep 2020 04:23:46 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464CAC0613CE;
        Sat, 19 Sep 2020 01:23:46 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id u21so11149407eja.2;
        Sat, 19 Sep 2020 01:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y5x4qGaQGCNuZ3+rBgtKUwV70lIOKFHiNazrDBPAXuY=;
        b=GhaqQF/p16OhXKDx/F1sVSQDgCF+gFKwPxqRaspHtifhwxhGm3kiJGesUXZSarp6HV
         C/Mslqc0R4LEJS5v+7WC9ZV+BqhHIhG8w8GqZ2rcnop+Tahh3rNITd8faVz1XkOtCLGB
         nzBQSvB3TthHevSTW45pjh4HhL/HHzypcR/tYudrtGpuOZUx5ni9q0We9FCIBXu2Pt8d
         f4sK1qjntgav5FXcOqZDlCEAc4rOG0gjbjk//hqFV5GTIC2bdD/0dlRp1ByFg3QUtaq3
         z2LfMEhaSWBvM7qKmh96LDd01j+E6QiBuGMKmEGYdZtib4UPrgf4PZQx93sz7pf6993q
         a78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y5x4qGaQGCNuZ3+rBgtKUwV70lIOKFHiNazrDBPAXuY=;
        b=XWb5Z5aphrjbitM4DltW5xlNZqFGH0HJk5SGQp0wqv/ZmzIkDgwa2qXOnZdMKBtwbI
         U9zT8pKRcvmgDQtu0k//nxW1iNMdFmaHZaj1a+B7TXEOQDckF6fsCnSENg9AO87tpFj1
         vhIL3IVAKbPuXXvyXhpNvBJvixBmq+3hVjxbEcYKTP3qRBobk2FBKQL0RUgbgvZaBWRg
         11sJhNAgM8FOSHVkCo478AHt/aWej/AlVJ137J7HOU+6d8RxsKbQgi5hkvD0F0SaqGgX
         kdT3SnKsP8E5mR2JDEz0UDrHr10D/FPJYw4Q1+gdbqafuCRYq8bb3Rtr7RR7a5gv62ir
         RXJQ==
X-Gm-Message-State: AOAM53239+Wo73adjexIEJc+ZAeRakEiY4zg9CjDqFzHupw+FqT96Rb1
        PvKrxQoJAk//Wst1u8iPVYU=
X-Google-Smtp-Source: ABdhPJyV+krEXY5/q/pjL2gGPrpuf7scBhjHDgTOyETYw7ZDidjLgUACDJBEz5l69dgWwuw7vnOscg==
X-Received: by 2002:a17:906:a1d4:: with SMTP id bx20mr1102765ejb.262.1600503823924;
        Sat, 19 Sep 2020 01:23:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id nh1sm3921383ejb.21.2020.09.19.01.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2020 01:23:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, selinux@vger.kernel.org,
        smcv@collabora.com, jmorris@namei.org, serge@hallyn.com,
        paul@paul-moore.com
Subject: Re: [PATCH] ip.7: Document IP_PASSSEC for UDP sockets
To:     Stephen Smalley <stephen.smalley.work@gmail.com>
References: <20200917173143.57241-1-stephen.smalley.work@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c19a0550-d58d-00c2-8776-f651e636d1c9@gmail.com>
Date:   Sat, 19 Sep 2020 10:23:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917173143.57241-1-stephen.smalley.work@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen,

On 9/17/20 7:31 PM, Stephen Smalley wrote:
> Document the IP_PASSSEC socket option and SCM_SECURITY
> ancillary/control message type for UDP sockets.
> 
> IP_PASSSEC for UDP sockets was introduced in Linux 2.6.17 [1].
> 
> Example NetLabel and IPSEC configurations and usage of this option
> can be found in the SELinux Notebook [2] and SELinux testsuite [3].
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c7946a7bf45ae86736ab3b43d0085e43947945c
> 
> [2] https://github.com/SELinuxProject/selinux-notebook
> 
> [3] https://github.com/SELinuxProject/selinux-testsuite
> 
> Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>

Thanks. I've applied this patch, and added Pauls 'Reviewed-by:'

Cheers,

Michael

> ---
>  man7/ip.7 | 48 ++++++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 42 insertions(+), 6 deletions(-)
> 
> diff --git a/man7/ip.7 b/man7/ip.7
> index 03a9f3f7c..681234c90 100644
> --- a/man7/ip.7
> +++ b/man7/ip.7
> @@ -17,11 +17,6 @@
>  .\" 	IP_IPSEC_POLICY (2.5.47)
>  .\"	    Needs CAP_NET_ADMIN
>  .\"
> -.\" 	IP_PASSSEC (2.6.17)
> -.\" 	    Boolean
> -.\"	    commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
> -.\"	    Author: Catherine Zhang <cxzhang@watson.ibm.com>
> -.\"
>  .\"	IP_MINTTL (2.6.34)
>  .\"	    commit d218d11133d888f9745802146a50255a4781d37a
>  .\"	    Author: Stephen Hemminger <shemminger@vyatta.com>
> @@ -664,6 +659,47 @@ with
>  .B IP_OPTIONS
>  puts the current IP options used for sending into the supplied buffer.
>  .TP
> +.BR IP_PASSSEC " (since Linux 2.6.17)"
> +.\" commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
> +If labeled IPSEC or NetLabel is configured on the sending and receiving
> +hosts, this option enables receiving of the security context of the peer
> +socket in an ancillary message of type
> +.B SCM_SECURITY
> +retrieved using
> +.BR recvmsg (2).
> +This option is only supported for UDP sockets; for TCP or SCTP sockets,
> +see the description of the
> +.B SO_PEERSEC
> +option below.
> +.IP
> +The value given as an argument to
> +.BR setsockopt (2)
> +and returned as the result of
> +.BR getsockopt (2)
> +is an integer boolean flag.
> +.IP
> +The security context returned in the
> +.B SCM_SECURITY
> +ancillary message
> +is of the same format as the one described under the
> +.B SO_PEERSEC
> +option below.
> +.IP
> +NOTE: The reuse of the
> +.B SCM_SECURITY
> +message type
> +for the
> +.B IP_PASSSEC
> +socket option was likely a mistake since other IP control messages use
> +their own numbering scheme in the IP namespace and often use the
> +socket option value as the message type.  There is no conflict
> +currently since the IP option with the same value
> +as
> +.B SCM_SECURITY
> +is
> +.B IP_HDRINCL
> +and this is never used for a control message type.
> +.TP
>  .BR IP_PKTINFO " (since Linux 2.2)"
>  .\" Precisely: 2.1.68
>  Pass an
> @@ -1290,13 +1326,13 @@ and
>  .BR IP_MTU ,
>  .BR IP_MTU_DISCOVER ,
>  .BR IP_RECVORIGDSTADDR ,
> +.BR IP_PASSSEC ,
>  .BR IP_PKTINFO ,
>  .BR IP_RECVERR ,
>  .BR IP_ROUTER_ALERT ,
>  and
>  .BR IP_TRANSPARENT
>  are Linux-specific.
> -.\" IP_PASSSEC is Linux-specific
>  .\" IP_XFRM_POLICY is Linux-specific
>  .\" IP_IPSEC_POLICY is a nonstandard extension, also present on some BSDs
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
