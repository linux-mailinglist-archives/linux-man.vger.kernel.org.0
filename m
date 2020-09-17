Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B591826D4B2
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 09:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726217AbgIQH1u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 03:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbgIQH1f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 03:27:35 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4B0C06174A;
        Thu, 17 Sep 2020 00:27:32 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id m6so891127wrn.0;
        Thu, 17 Sep 2020 00:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=czSaS/+PcCSVF/p30RlzihA9j+M2SX1R1vYVTpIx28o=;
        b=DINy8PblpT4Z40k51M/wjj40Y4D90dodWuEd/sGp9qkbTdSo4oWNypCo58OLtEkm4P
         FErPZ56a9gwsG4fcG2RDu5HYEQC6g8hpKBnBxDyV1wLVQ76xw0pZoT/n3Jf2RS2w17bd
         cfkVg+Wg5sE4y/qUNr8xeSeYqspCLjmm+WGDsPcuwfV45LNM+fZxHfQjCfb0XYQn4CoB
         v5vTphQCwdS+o0aRmy7yDgw/HukLRGz1nXWtai0CTd2Shij9H04pn8gQi5Xk/gDcaPzZ
         PAgJ14UW/q4Loahm1R0WbtMwevVwUhbXpc5P0lYCJngKYtv50OkU28H1ApoecP/243J5
         OIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=czSaS/+PcCSVF/p30RlzihA9j+M2SX1R1vYVTpIx28o=;
        b=Ss9bYhnEW+tVEYh8Iu/RATCY8C0rYVcWgr/3Gft2fn5ytdEfz3v8kcQ1pCO1haUdtu
         5yNyogYLhD5Af+iNzLjbyISir2aMk+FBbTga1xPi6i0kgnCJl3BcgKoc4BRLYPds+Dco
         MpoXoHtJmEVssi15EFJq0tDNpv70UqCFbsJk1T1wJ2kmRvjHB8vD1epJ1pam79Zih8Zz
         yOCNf/30jwpf81QIr6NmtD9UfK+C2d/dUXsEaV2q3pPiWg505uS+zz2S9zIdHMjJr0a/
         fHx1+hDKZ0jGANAOImPWbsC1W4rS6JQWbk/vcnSCoIbKG2NBIL0BtYGE1yCVWFSJs1eW
         v8jQ==
X-Gm-Message-State: AOAM531BlgPolUf9Bcn1f88a4mRgwmb5uKLA6RlQqvIeGsge6APyNxq/
        Lq1erzA9jzj7u2FcCTdG9AhArWggXgU=
X-Google-Smtp-Source: ABdhPJzdy8CfL0HpJg711Imn3PnfxSrKbC+sb47XGUjjVGVLA/qQCZftJvgQ8dwdo9DxOM9L7zOPtg==
X-Received: by 2002:adf:83c3:: with SMTP id 61mr29888912wre.287.1600327649315;
        Thu, 17 Sep 2020 00:27:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id d18sm37524446wrm.10.2020.09.17.00.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 00:27:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, selinux@vger.kernel.org,
        smcv@collabora.com, jmorris@namei.org, serge@hallyn.com
Subject: Re: [PATCH v2] socket.7,unix.7: add initial description for
 SO_PEERSEC
To:     Stephen Smalley <stephen.smalley.work@gmail.com>
References: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f3f44617-5ebf-1e86-75e4-24edc9f6271d@gmail.com>
Date:   Thu, 17 Sep 2020 09:27:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen,

On 9/14/20 8:07 PM, Stephen Smalley wrote:
> SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
> connect(2) in Linux 2.6.2 [1] and later augmented to support AF_UNIX stream
> and datagram sockets created via socketpair(2) in Linux 4.18 [2].  Document
> SO_PEERSEC in the socket.7 and unix.7 man pages following the example
> of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
> on AF_INET sockets when using labeled IPSEC or NetLabel but defer
> adding a description of that support to a separate patch.
> 
> The module-independent description of the security context returned
> by SO_PEERSEC is from Simon McVittie <smcv@collabora.com>.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=da6e57a2e6bd7939f610d957afacaf6a131e75ed
> 
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0b811db2cb2aabc910e53d34ebb95a15997c33e7
> 
> Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> ---
> v2 adds kernel commit info to the description and man page and uses
> the suggested text from Simon McVittie for the description of
> the security context string in a module-neutral way.

Thanks. I've applied this patch, and added Serge's Reviewed-by.

Cheers,

Michael

> 
>  man7/socket.7 |  5 +++++
>  man7/unix.7   | 46 ++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+)
> 
> diff --git a/man7/socket.7 b/man7/socket.7
> index 21e891791..c3635f95b 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -690,6 +690,11 @@ Return the credentials of the peer process connected to this socket.
>  For further details, see
>  .BR unix (7).
>  .TP
> +.BR SO_PEERSEC " (since Linux 2.6.2)"
> +Return the security context of the peer socket connected to this socket.
> +For further details, see
> +.BR unix (7).
> +.TP
>  .B SO_PRIORITY
>  Set the protocol-defined priority for all packets to be sent on
>  this socket.
> diff --git a/man7/unix.7 b/man7/unix.7
> index 50828a5bc..298521d4a 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -349,6 +349,52 @@ stream sockets and for
>  .B AF_UNIX
>  stream and datagram socket pairs created using
>  .BR socketpair (2).
> +.TP
> +.B SO_PEERSEC
> +This read-only socket option returns the
> +security context of the peer socket connected to this socket.
> +By default, this will be the same as the security context of
> +the process that created the peer socket unless overridden
> +by the policy or by a process with the required permissions.
> +.IP
> +The argument to
> +.BR getsockopt (2)
> +is a pointer to a
> +buffer of the specified length in bytes
> +into which the security context string will be copied.
> +If the buffer length is less than the length of the security
> +context string, then
> +.BR getsockopt (2)
> +will return the required length
> +via
> +.I optlen
> +and return \-1 and sets
> +.I errno
> +to
> +.BR ERANGE .
> +The caller should allocate at least
> +.BR NAME_MAX
> +bytes for the buffer initially although this is not guaranteed
> +to be sufficient.  Resizing the buffer to the returned length
> +and retrying may be necessary.
> +.IP
> +The security context string may include a terminating null character
> +in the returned length, but is not guaranteed to do so: a security
> +context "foo" might be represented as either {'f','o','o'} of length 3
> +or {'f','o','o','\\0'} of length 4, which are considered to be
> +interchangeable. It is printable, does not contain non-terminating
> +null characters, and is in an unspecified encoding (in particular it
> +is not guaranteed to be ASCII or UTF-8).
> +.IP
> +The use of this option for sockets in the
> +.B AF_UNIX
> +address family
> +is supported since Linux 2.6.2 for connected stream sockets and
> +since Linux 4.18,
> +.\" commit 0b811db2cb2aabc910e53d34ebb95a15997c33e7
> +also for stream and datagram socket pairs created
> +using
> +.BR socketpair (2).
>  .\"
>  .SS Autobind feature
>  If a
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
