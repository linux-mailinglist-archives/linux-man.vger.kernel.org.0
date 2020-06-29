Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7001320E207
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2020 00:00:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730935AbgF2VBu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 17:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730926AbgF2TM4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 15:12:56 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 958BEC0005E7
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 04:49:45 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id i14so16250128ejr.9
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 04:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lkWpHIlQyILEeNFukmj1BINgV54G6BUVaeEdgMPAqR8=;
        b=seraMI23AzwNQoCMneAcj/g/ZbGjTEwMTj2O0criygkrMbFLCQs9jqRJQLSI+lv0+n
         u28Wc0x+1vKSpzPZ5j3MuBlwcpKrVSSrhk2U2IJroMJqlp3vCekqGtAogjgOZDD8o9Co
         yM4JZXmNiYBnfufhgA+P3m5i0tfSkETSp3lNVzA6L78PB/OSssGt5gXwoRZ0OqqI9cdf
         3cnpE8HZVH1cokJlg8/eorKoWAv++ub/F76qrZvw5mn9oBQtaaPnkXqrZhS6CWG4Pbyb
         JEdeSlQRz3jHrAz7tgcoBGRgP4z6MFwy9BOyXnYI0qU+GHiIOlK7FhicunmVQJIlc9LG
         V7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lkWpHIlQyILEeNFukmj1BINgV54G6BUVaeEdgMPAqR8=;
        b=jxcx6QID4ZU0T3u37pVoMPhwR7lJo14h2/3yMyLAbjJG+pMhYFpZi8qM7aeNZKLvDk
         EqwAHIpW3ypJOBqkZVZGRP/64CnveTMhw3G1JWUIlBLq8YYYI28Rf0cxBPRTkk9GpGj2
         y8sc7/W7NCx33H62EtkuVshWBSeBC5aWw7bUqQwavuazHVlD628F5IomsePyBFglQ+8U
         CNGnaE2BGoY3U8eXxn+niJ3gECrtiJFAtNRWIEhv//qiYwMl9OW8Azju8Zo+s1TM/tze
         3G06jeDKJB+u/PZM2+q48E0H3WKz7wNVwt5Q7rs0jAOQ60AnOryFEdZAC5eFvX2nWyXe
         9wYg==
X-Gm-Message-State: AOAM530QmXqyPdhIc+gyqKaHFwYDN4Xrdkh60gMR44EdKo7ULjAtkxtx
        O2n/Mu3F3K/YjijXHuf9ZZo=
X-Google-Smtp-Source: ABdhPJzNwKqenx9hyjBXuEpH/OvqUbS/52tgPW42N9Kx5N92OqdyPVgVXtBx9I4LqFF34jqXFmGh9g==
X-Received: by 2002:a17:907:405e:: with SMTP id ns22mr13137262ejb.6.1593431384277;
        Mon, 29 Jun 2020 04:49:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id p34sm28854971edp.49.2020.06.29.04.49.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 04:49:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
        linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
Subject: Re: [PATCH-v2] iopl.2: Updating description of permissions and
 disabling interrupts
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
 <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
 <87zh9snqiu.fsf@nanos.tec.linutronix.de>
 <2103b6f3-42d1-8f92-0e97-e43ccd12c1b7@deloquencia.de>
 <CAKgNAkiNQw5DE9X5Mw2MMF+=bXHzAz45ym+=s2_C2Nz=p4zfQg@mail.gmail.com>
 <47c9d9ae-37da-6eec-1040-d1f9b85dc109@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <218262ac-089b-c23e-2b7c-e10bf9b64c96@gmail.com>
Date:   Mon, 29 Jun 2020 13:49:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <47c9d9ae-37da-6eec-1040-d1f9b85dc109@deloquencia.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On 6/26/20 10:29 PM, Thomas Piekarski wrote:
> Updating description of permissions for port-mapped I/O set per-thread 
> and not per-process. Mentioning iopl can not disable interrupts since 
> 5.5 anymore and is in general deprecated and only provided for legacy X 
> servers.
> 
> See https://bugzilla.kernel.org/show_bug.cgi?id=205317
> 
> Reported-by: victorm007@yahoo.com
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

Thanks! I've applied this patch.

Cheers,

Michael

> ---
>   man2/iopl.2 | 34 ++++++++++++++--------------------
>   1 file changed, 14 insertions(+), 20 deletions(-)
> 
> diff --git a/man2/iopl.2 b/man2/iopl.2
> index e5b216a14..be9acfd1e 100644
> --- a/man2/iopl.2
> +++ b/man2/iopl.2
> @@ -39,29 +39,17 @@ iopl \- change I/O privilege level
>   .BI "int iopl(int " level );
>   .SH DESCRIPTION
>   .BR iopl ()
> -changes the I/O privilege level of the calling process,
> +changes the I/O privilege level of the calling thread,
>   as specified by the two least significant bits in
>   .IR level .
>   .PP
> -This call is necessary to allow 8514-compatible X servers to run under
> -Linux.
> -Since these X servers require access to all 65536 I/O ports, the
> -.BR ioperm (2)
> -call is not sufficient.
> +The I/O privilege level for a normal thread is 0.
> +Permissions are inherited from parents to children.
>   .PP
> -In addition to granting unrestricted I/O port access, running at a higher
> -I/O privilege level also allows the process to disable interrupts.
> -This will probably crash the system, and is not recommended.
> -.PP
> -Permissions are not inherited by the child process created by
> -.BR fork (2)
> -and are not preserved across
> -.BR execve (2)
> -(but see NOTES).
> -.PP
> -The I/O privilege level for a normal process is 0.
> -.PP
> -This call is mostly for the i386 architecture.
> +This call is deprecated, significantly slower than
> +.BR ioperm(2)
> +and is only provided for older X servers which require
> +access to all 65536 I/O ports. It is mostly for the i386 architecture.
>   On many other architectures it does not exist or will always
>   return an error.
>   .SH RETURN VALUE
> @@ -79,7 +67,7 @@ is greater than 3.
>   This call is unimplemented.
>   .TP
>   .B EPERM
> -The calling process has insufficient privilege to call
> +The calling thread has insufficient privilege to call
>   .BR iopl ();
>   the
>   .B CAP_SYS_RAWIO
> @@ -99,6 +87,12 @@ and in
>   .IR <sys/perm.h> .
>   Avoid the latter, it is available on i386 only.
>   .PP
> +Prior to Linux 5.5
> +.BR iopl ()
> +allowed the thread to disable interrupts while running
> +at a higher I/O privilege level. This will probably crash
> +the system, and is not recommended.
> +.PP
>   Prior to Linux 3.7,
>   on some architectures (such as i386), permissions
>   .I were
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
