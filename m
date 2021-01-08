Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 156A72EF0AC
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 11:30:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726886AbhAHKaC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 05:30:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726875AbhAHKaC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 05:30:02 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9E76C0612F8
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 02:29:21 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id e25so7988598wme.0
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 02:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U6Y+ojL3TXA5/lv1GVr+wfJClMzYF9iQvi6lCCM+orY=;
        b=o34nS/fGMNZOCk3p34PAvRhEejDjiAZoAKTo7UCb9VTW9wvJnZyHnguVWXFeqkY7he
         ebXjsnimix9qik5ByC+RKySOlv9tstv4NfRK34UnNpmWsT46kqUAcKpXxqriWPhvupNE
         MO/iMxA+4Az3MDQ7JSIJ9KZzBuZUn+Ak1O6KIxrY4xfxuB6Ab7ix2eJtPnDax5fyT3kK
         I0krcNDfbatOt17MSnlOGjlZ9KUNpm7qDDAzmJGEuvOdCn15TVLW3alFymWRGjiiNWty
         0vKQxJe7kzQuokCbnvuxZCXTVE06ROz3ZCDs99nER0eTr9NL1tCEMIrwC2nGk4VP6fgx
         yfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=U6Y+ojL3TXA5/lv1GVr+wfJClMzYF9iQvi6lCCM+orY=;
        b=cM3KSwrwHczP/dZCMDojY+xTELL/p55MZn/EGHQlhWk35tuZGlpS+BOzY3Fti0Xv/S
         EDFUfeG3XE+LfNzSvjSIR4ExYEeR0HbEq6w3fJT5QeDxUJE5mbULLpnpeIIMyQtdEcYf
         pxZF7UxvAPf6BL+MuQSZAPYGD6QKyil8vrsz4GUMZIgslJzDDA6WwyAJkvhl3bDGZHPI
         FOLsZ7z7yQ86w3Rv4TjqtEqP+8YKZSYiEdzTw/3DR1oOSAJB9CQmCBSelFl4h2f8MoJp
         6iE+jjLo9T/MgD/aa7E/MQ6Y6WUHuWq8rT6+97GfdvC7pfMG9aimh+U5+5OYDyioBe7j
         Qubw==
X-Gm-Message-State: AOAM532MjW1uvV0r5Ud2rB2FkboTWMv64+X2vYpbZA9WpIc5iFl/eZlQ
        0wMpncBK2cR5/poP0hHqMhIR8KTQIR4=
X-Google-Smtp-Source: ABdhPJynaX8ZjLySTGHuKp+Kk33sP+F1CvywN3ThgZPQC6FClXoHNAaqsmv1/U4TKjKNGjLVNQifsg==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr2449227wml.106.1610101760043;
        Fri, 08 Jan 2021 02:29:20 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id s205sm11644519wmf.46.2021.01.08.02.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 02:29:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] netlink.7, tcp.7: tfix: s/acknowledgment/acknowledgement
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210107165518.36629-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
Date:   Fri, 8 Jan 2021 11:29:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210107165518.36629-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/7/21 5:55 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Take a look at

https://books.google.com/ngrams/graph?content=acknowledgment%2Cacknowledgement&year_start=1800&year_end=2000&corpus=5&smoothing=3

and compare American English vs British English using the drop-down.

When I inherited man-pages in 2004, it was a hodge-podge mix of 
American vs British spelling. My native spelling is the latter,
but I value consistency and felt that things needed to be
standardized on one or other, and in computing, American is the
norm so that is what I settled on.hodge-podge

I'm largely at piece with American spelling these days (it 
is the spelling I use in most of my writing), but I guess
the one point that still bothers me are the American spellings
"acknowledgment" and "judgment". They just feel wrong.

However, I now learned from the Ngrams that even in British
English, the spelling without "e" was historically the norm.
So it seems that it is British English that has changed, 
not American English!

I was about to say that I must decline this patch. And then
I thought I'd take a look at the POSIX standard. It seems
to largely follow American spelling (e.g., "color", "canceled",
"recognize", "analog").[1] But, it uses "acknowledgement"!
(There are even a couple of instances of "judgement" in 
the standard.) It seems like others like to have the
extra "e' in those words...

So, I'm not sure what to do with this patch. 

Thanks,

Michael

[1] It's also worth noting that there is a gradual movement
toward American spellings even in British English.


> ---
>  man7/netlink.7 |  8 ++++----
>  man7/tcp.7     | 10 +++++-----
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index 6559d4d96..f10582d79 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -221,7 +221,7 @@ The message is part of a multipart message terminated by
>  .BR NLMSG_DONE .
>  T}
>  NLM_F_ACK:T{
> -Request for an acknowledgment on success.
> +Request for an acknowledgement on success.
>  T}
>  NLM_F_ECHO:T{
>  Echo this request.
> @@ -315,7 +315,7 @@ For reliable transfer the sender can request an
>  acknowledgement from the receiver by setting the
>  .B NLM_F_ACK
>  flag.
> -An acknowledgment is an
> +An acknowledgement is an
>  .B NLMSG_ERROR
>  packet with the error field set to 0.
>  The application must generate acknowledgements for
> @@ -494,11 +494,11 @@ is sent to user space via an ancillary data.
>  .BR NETLINK_CAP_ACK " (since Linux 4.2)"
>  .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
>  .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
> -The kernel may fail to allocate the necessary room for the acknowledgment
> +The kernel may fail to allocate the necessary room for the acknowledgement
>  message back to user space.
>  This option trims off the payload of the original netlink message.
>  The netlink message header is still included, so the user can guess from the
> -sequence number which message triggered the acknowledgment.
> +sequence number which message triggered the acknowledgement.
>  .SH VERSIONS
>  The socket interface to netlink first appeared Linux 2.2.
>  .PP
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index d6836f3a8..8b78cb6e1 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -264,22 +264,22 @@ meaning that the option is disabled.
>  Control the Appropriate Byte Count (ABC), defined in RFC 3465.
>  ABC is a way of increasing the congestion window
>  .RI ( cwnd )
> -more slowly in response to partial acknowledgments.
> +more slowly in response to partial acknowledgements.
>  Possible values are:
>  .RS
>  .IP 0 3
>  increase
>  .I cwnd
> -once per acknowledgment (no ABC)
> +once per acknowledgement (no ABC)
>  .IP 1
>  increase
>  .I cwnd
> -once per acknowledgment of full sized segment
> +once per acknowledgement of full sized segment
>  .IP 2
>  allow increase
>  .I cwnd
> -by two if acknowledgment is
> -of two segments to compensate for delayed acknowledgments.
> +by two if acknowledgement is
> +of two segments to compensate for delayed acknowledgements.
>  .RE
>  .TP
>  .IR tcp_abort_on_overflow " (Boolean; default: disabled; since Linux 2.4)"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
