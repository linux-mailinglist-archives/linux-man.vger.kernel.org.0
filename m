Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69F5E78B5D
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 14:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726822AbfG2MH2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 08:07:28 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55827 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727337AbfG2MH1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 08:07:27 -0400
Received: by mail-wm1-f65.google.com with SMTP id a15so53606683wmj.5;
        Mon, 29 Jul 2019 05:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gM6RZR/xuSgNkduhudM33+Jl+xZNye+TDqxtWpDFzAo=;
        b=t7MQStdA5gwux77+Pa53mpvuqD+H3287P1yq7MyAcRU9kUXyIRHmHjnNIqnSHdQwWR
         iE7sfIlN3CEcMTeS7EMpnR9+yiqApasHBTjh97OzCr2rzVuRALHa9Cib3pP7u5Vueqdt
         cdaRzyQU5cht/WBYVWFtX3NysfPMRLB5cVM4WCGh+E6i1QRrKQsI9sXRzY6wTl0HcDAM
         SoUzRh81aPSBuHUuD12Vqeh1B2K/Z9Z20N6SepRjaIcMAArgivrCCYk449lLJnG7VOAk
         RNzDHbEksAa3PZ3GwdV1pkxiwYO/cRB4KGQ0W0kPStuQRLXV3xWlg0lLEN0f12UB6pHs
         VUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gM6RZR/xuSgNkduhudM33+Jl+xZNye+TDqxtWpDFzAo=;
        b=UG1wRCgSeapeIpDQcYJ+qH3SgXikY/UYjpn1Zd6GsGJW+2+YCUrmbYBqkxk+miRtVl
         zDI8cUiMX0EdUgZE1aLxJuyA139IRwb1XqzMrKtIC/rubTe8hyh0JbRMWa3x+Chd3azj
         E10QMpRjonezAVk9jfgJUqcBSM4bM150XJihEhNDWyrx0o9rLfWPOxvIE698kNYYGjK1
         2BARRt6TNa8RvI8szMcw6mALfQTDvuk+wkNMszox23oPYfUIZIlmc17CfvluHp31F8hi
         +MpnO/0iyvQTedVMrpiSCNhJTOP4bU/g92euOlLylkL0UtwxTK1dDZeQYhu1iaDMzP8T
         xQFw==
X-Gm-Message-State: APjAAAU+Y8oX29cljxY9ibUwSNEIthmLe1qiUlXlc7/NrpVf6m5h/CPa
        Do1ZV0Q9oF56xntVe90jzmk=
X-Google-Smtp-Source: APXvYqxjBo/7epFEnfJJdpOYUIFcyVlfYCRMmA1B522kacmx8rIl91lwfYyS/+igdir3snROfEy0RA==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr56874498wmg.65.1564402045631;
        Mon, 29 Jul 2019 05:07:25 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id w25sm57989346wmk.18.2019.07.29.05.07.24
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:07:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: Error (?) in man page for ppoll(2)
To:     Alan Stern <stern@rowland.harvard.edu>, linux-man@vger.kernel.org,
        Kernel development list <linux-kernel@vger.kernel.org>
References: <Pine.LNX.4.44L0.1907211104350.15063-100000@netrider.rowland.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4ce02b01-f174-99a1-ac34-21a2c6414df2@gmail.com>
Date:   Mon, 29 Jul 2019 14:07:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.44L0.1907211104350.15063-100000@netrider.rowland.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alan,

On 7/21/19 5:32 PM, Alan Stern wrote:
> Here are two extracts from the man page for ppoll(2) (from the
> man-pages 4.16 package; the 5.01 version is the same):
> 
>        Specifying a negative value in timeout means an infinite timeout.
> 
> 
>        Other than the difference in the precision of the timeout argument, the
>        following ppoll() call:
> 
>            ready = ppoll(&fds, nfds, tmo_p, &sigmask);
> 
>        is equivalent to atomically executing the following calls:
> 
>            sigset_t origmask;
>            int timeout;
> 
>            timeout = (tmo_p == NULL) ? -1 :
>                      (tmo_p->tv_sec * 1000 + tmo_p->tv_nsec / 1000000);
>            pthread_sigmask(SIG_SETMASK, &sigmask, &origmask);
>            ready = poll(&fds, nfds, timeout);
>            pthread_sigmask(SIG_SETMASK, &origmask, NULL);
> 
> But if tmo_p->tv_sec is negative, the ppoll() call is not equivalent to 
> the corresponding poll() call.  The kernel rejects negative values of 
> tv_sec with an EINVAL error; it does not interpret the value as meaning 
> an infinite timeout.
> 
> (Yes, the kernel interprets tmo_p == NULL as an infinite timeout, but 
> the man page is still wrong for the case tmo_p->tv_sec < 0.)
> 
> Suggested fix: Following the end of the second extract above, add:
> 
> 	except that negative time values in tmo_p are not interpreted
> 	as an infinite timeout.
> 
> Also, in the ERRORS section, change the text for EINVAL to:
> 
> 	EINVAL The nfds value exceeds the RLIMIT_NOFILE value or
> 	*tmo_p contains an invalid (negative) time value.

Thanks for the report, and the text change suggestions.
I've applied the patch below.

Thanks,

Michael

diff --git a/man2/poll.2 b/man2/poll.2
index 0b023e0a5..3eacb88b7 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -271,7 +271,7 @@ ready = ppoll(&fds, nfds, tmo_p, &sigmask);
 .EE
 .in
 .PP
-is equivalent to
+is nearly equivalent to
 .I atomically
 executing the following calls:
 .PP
@@ -288,6 +288,17 @@ pthread_sigmask(SIG_SETMASK, &origmask, NULL);
 .EE
 .in
 .PP
+The above code segment is described as
+.I nearly
+equivalent because whereas a negative
+.I timeout
+value for
+.BR poll ()
+is interpreted as an infinite timeout, a negative value expressed in
+.IR *tmo_p
+results in an error from
+.BR ppoll ().
+.PP
 See the description of
 .BR pselect (2)
 for an explanation of why
@@ -354,6 +365,12 @@ value exceeds the
 .B RLIMIT_NOFILE
 value.
 .TP
+.B EINVAL
+.RB ( ppoll ())
+The timeout value expressed in
+.IR *ip
+is invalid (nragtive).
+.TP
 .B ENOMEM
 There was no space to allocate file descriptor tables.
 .SH VERSIONS

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
