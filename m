Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19D5026D4BC
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 09:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbgIQHa5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 03:30:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgIQHaz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 03:30:55 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F528C06174A;
        Thu, 17 Sep 2020 00:30:55 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e17so932904wme.0;
        Thu, 17 Sep 2020 00:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PuaGpLJDApH+jGs+MQ9dUkaklX1pJUm8t9QttKRpp0g=;
        b=eOT3TO+7+r5Hs8TuswbuY47BLkn+filB6ZKXdrNoHwzwq9GepZP2OCPN3acphvxiIw
         rnPN0/N+BxEuPc5zaRq3nJ6ebmm7QDozITNMg3ECTATWUit83f5vpmYFMY+nVTdYUWJ6
         jQR6l+dGPn3mZkuHdCmCAL9DvD+7yRLA8N2bKBypMgyL7I5QS7qnr75qLNloe/moqPVr
         iiv/5NoONlnWtLLkHMHtazyvvmhzgUZmff4TrmBbBmqDC9UajkfBtfjWe/mpe75kTS5A
         MXVLAd/+nHcRsFVkRzHQQgbFLuTgrKEvSJwPI5uaP+ivVq9bB2oTCbAwZ8hm7qw2xUyD
         fEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PuaGpLJDApH+jGs+MQ9dUkaklX1pJUm8t9QttKRpp0g=;
        b=j7cMz/bLbx/xvB8riMwHuq8Uj93IB19B+VPdmTuoRGKAWOASYIfuxboZTe2MlsobZS
         sibVXKBZjm2feXNeAY5QHAtxKEFATFlgvmSxPbNG4m3MjGN3j0jXUaaDsu86b86NVXjt
         e/JqVQJ+WuX0JyaUNuwhJ7Y98ADK07AYWPCqku/VnG0jMFmkFdWF5nvjMb1KHITBLwXG
         xad9Y6PE4+JEJmebjs1RKo7nBskVYbqnTYlQpdnreN/U+5BrBc2zrattBDqXIQmjZ7zd
         HmkOdaA/YmtB+FjUfKJ4/bJUDVxk6DiQGD6WWF5eUEWyGEWRhryR7Annl3viCDGMaYVe
         lxtQ==
X-Gm-Message-State: AOAM530c8B4/bTjc+/pLE1Q4Sf3wdRhmNqV1K2lwAJLdllIjYA+aNNHR
        UzpwJL580i0aM7RBUkKjQFE=
X-Google-Smtp-Source: ABdhPJw+dENvFGeibmU5VRwk97GGpsIdtSh6SK9TVn+P3gQf4/wqcd9W0ZK+LqKgch8RiaLptUs4EA==
X-Received: by 2002:a1c:bad5:: with SMTP id k204mr8816703wmf.111.1600327853719;
        Thu, 17 Sep 2020 00:30:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id s26sm9781809wmh.44.2020.09.17.00.30.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 00:30:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, selinux@vger.kernel.org,
        smcv@collabora.com, jmorris@namei.org, serge@hallyn.com,
        paul@paul-moore.com
Subject: Re: [PATCH] socket.7,ip.7: Document SO_PEERSEC for AF_INET sockets
To:     Stephen Smalley <stephen.smalley.work@gmail.com>
References: <20200915163959.25334-1-stephen.smalley.work@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9683e83-2e26-ad3b-8e03-93c61b37c7b8@gmail.com>
Date:   Thu, 17 Sep 2020 09:30:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200915163959.25334-1-stephen.smalley.work@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen

On 9/15/20 6:39 PM, Stephen Smalley wrote:
> Augment the description of SO_PEERSEC to cover AF_INET sockets
> in addition to the prior description for AF_UNIX.
> 
> SO_PEERSEC for TCP sockets was introduced in Linux 2.6.17 [1], and
> SO_PEERSEC for SCTP sockets was introduced in Linux 4.17 [2].
> 
> This does not cover usage of SCM_SECURITY for UDP sockets, which
> was also introduced in the same commit for 2.6.17.

(Would you by chance be able to write a patch for this also?)

> Examples of the necessary labeled IPSEC and NetLabel configurations
> to enable use of SO_PEERSEC for TCP and SCTP sockets can be found in
> the SELinux Notebook [3] and the selinux-testsuite [4].
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c7946a7bf45ae86736ab3b43d0085e43947945c
> 
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d452930fd3b9031e59abfeddb2fa383f1403d61a
> 
> [3] https://github.com/SELinuxProject/selinux-notebook
> 
> [4] https://github.com/SELinuxProject/selinux-testsuite

Thanks. I've applied the patch. I'll wait a few hours before pushing
in case Reviews/Acks come in.

Thanks,

Michael

> ---
>  man7/ip.7     | 56 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  man7/socket.7 |  2 +-
>  2 files changed, 57 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/ip.7 b/man7/ip.7
> index c522b219c..03a9f3f7c 100644
> --- a/man7/ip.7
> +++ b/man7/ip.7
> @@ -979,6 +979,62 @@ Argument is an
>  .I ip_mreq_source
>  structure as described under
>  .BR IP_ADD_SOURCE_MEMBERSHIP .
> +.TP
> +.BR SO_PEERSEC " (since Linux 2.6.17)"
> +If labeled IPSEC or NetLabel is configured on both the sending and
> +receiving hosts, this read-only socket option returns the security
> +context of the peer socket connected to this socket.  By default, this
> +will be the same as the security context of the process that created
> +the peer socket unless overridden by the policy or by a process with
> +the required permissions.
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
> +.B AF_INET
> +address family
> +is supported since Linux 2.6.17
> +.\" commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
> +for TCP sockets and since Linux
> +4.17
> +.\" commit d452930fd3b9031e59abfeddb2fa383f1403d61a
> +for SCTP sockets.
> +.IP
> +For SELinux, NetLabel only conveys the MLS portion of the security
> +context of the peer across the wire, defaulting the rest of the
> +security context to the values defined in the policy for the
> +netmsg initial security identifier (SID). However, NetLabel can
> +be configured to pass full security contexts over loopback.  Labeled
> +IPSEC always passes full security contexts as part of establishing
> +the security association (SA) and looks them up based on the association
> +for each packet.
>  .SS /proc interfaces
>  The IP protocol
>  supports a set of
> diff --git a/man7/socket.7 b/man7/socket.7
> index c3635f95b..2f9039333 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -693,7 +693,7 @@ For further details, see
>  .BR SO_PEERSEC " (since Linux 2.6.2)"
>  Return the security context of the peer socket connected to this socket.
>  For further details, see
> -.BR unix (7).
> +.BR unix (7) and ip(7).
>  .TP
>  .B SO_PRIORITY
>  Set the protocol-defined priority for all packets to be sent on
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
