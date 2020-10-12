Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C834828C018
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 20:55:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730781AbgJLSzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 14:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727115AbgJLSzz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 14:55:55 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 026F6C0613D0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:55:54 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 13so18077396wmf.0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=okfetYo/RHRwCwMwo1jwCeEAbX8hw2WUZCRluCtlTBc=;
        b=mWkMGo19SJXjGzCWn6FWQD2ZY8jGjAyq2rJIbXrCNuVzx01ntQL+u+4K/cOSD9cnFt
         dXla54h2ykyFlSCrNmJ9dbl31KzSdAAYdqaQXtITihifzH4j2JX2HdzLNji3gn4Hkfr+
         mYHJyb5FXVwHJ6LqCKT+Ke6Ag4vCCZePnYVr/CvSEsoN9PXjU823nagxNDrdJyyzqXMU
         kI+SXT9J2K+KfnIu2bofB0zxOJg73p8DUJuHW2UZd1JSKJrk/CFlwkVXcNDk0rU14NKT
         YQPS16eYtzsvOLkt/MuKnp6UvrrZrf3aRgahIWZ7UXME/2OIpSl0WJGqraOT2LY00XK2
         I9mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=okfetYo/RHRwCwMwo1jwCeEAbX8hw2WUZCRluCtlTBc=;
        b=fR/GIsjS4O1PmPiKMvxmdBWI/YCdJKOKV7sx6Mac+10t7YOFk2nx9319jEVgnalSlp
         nT4Rz/KcO2QrHodUsPwF1FuvxlBwLSusTcjGDpvKMfztGpjCL204Lxof9gq+x7ZAbEbT
         Ls3FN+IH4/XcDjDFzLR+fTi3N8WX3EuSjF/A5y8d6wwYHBGVIPLw0RTUM4GK9//zmpqd
         vrG2PnfFcNlA5JiFTOs9EiEB1FXwEaaYSxVSN8/nwnRPON7znT2nf1tiYLwuXGUQ7Gw1
         nl/ErzAH6HqN8sytODWmEZ+9wQhxdvzX3M8uWojazk5Xeu6aiyLRFSz1J+Y94XdTUozQ
         oCAg==
X-Gm-Message-State: AOAM531CCr7FU0SgFnLeGww8XLYCpkGhp8vkISDIaya4gkenZG7VN1Jw
        rHxeeG/vMyOxqIGUQO2cGVY=
X-Google-Smtp-Source: ABdhPJwqz/ZYFnuCtLn7od5BSaee4TvSbnlyqyPiz6eIGKQBIWrBKObLZ8zw27G5y5+HME58FahPmQ==
X-Received: by 2002:a1c:8056:: with SMTP id b83mr11964644wmd.124.1602528952654;
        Mon, 12 Oct 2020 11:55:52 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id u5sm29124230wru.63.2020.10.12.11.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:55:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] resolv.5: Document the trust-ad option
To:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
References: <87sgaj1yfe.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b2f05cdb-8316-4a14-c64f-7f63d3bda3c2@gmail.com>
Date:   Mon, 12 Oct 2020 20:55:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87sgaj1yfe.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/12/20 1:22 PM, Florian Weimer wrote:
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Thanks, Florian. Patch applied.

Cheers

Michael

> ---
>  man5/resolv.conf.5 | 31 ++++++++++++++++++++++++++++---
>  1 file changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 7013c8a28..6f3de7faf 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -35,9 +35,10 @@ The resolver configuration file contains information that is read
>  by the resolver routines the first time they are invoked by a process.
>  The file is designed to be human readable and contains a list of
>  keywords with values that provide various types of resolver information.
> -The configuration file is considered a trusted source of DNS information
> -(e.g., DNSSEC AD-bit information will be returned unmodified from this
> -source).
> +The configuration file is considered a trusted source of DNS information;
> +see the
> +.B trust-ad
> +option below for details.
>  .PP
>  If this file does not exist, only the name server on the local machine
>  will be queried, and the search list contains the local domain name
> @@ -317,6 +318,30 @@ Sets
>  in
>  .IR _res.options .
>  This option disables automatic reloading of a changed configuration file.
> +.TP
> +.BR trust\-ad " (since glibc 2.31)"
> +.\" 446997ff1433d33452b81dfa9e626b8dccf101a4
> +Sets
> +.BR RES_TRUSTAD
> +in
> +.IR _res.options .
> +This option controls the AD bit behavior of the stub resolver.  If a
> +validating resolver sets the AD bit in a response, it indicates that
> +the data in the response was verified according to the DNSSEC
> +protocol.  In order to rely on the AD bit, the local system has to
> +trust both the DNSSEC-validating resolver and the network path to it,
> +which is why an explicit opt-in is required.  If the
> +.B trust\-ad
> +option is active, the stub resolver sets the AD bit in outgoing DNS
> +queries (to enable AD bit support), and preserves the AD bit in
> +responses.  Without this option, the AD bit is not set in queries, and
> +it is always removed from responses before they are returned to the
> +application.  This means that applications can trust the AD bit in
> +responses if the
> +.B trust\-ad
> +option has been set correctly.  In glibc version 2.30 and earlier, the
> +AD is not set automatically in queries, and passed through unchanged
> +to applications in responses.
>  .RE
>  .PP
>  The \fIsearch\fP keyword of a system's \fIresolv.conf\fP file can be
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
