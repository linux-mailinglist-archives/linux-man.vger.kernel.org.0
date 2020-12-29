Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97CC52E73F0
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:34:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726126AbgL2Udo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:33:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2Udo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:33:44 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED836C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:33:03 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id q205so15841505oig.13
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=uKK8aqv6B2mqn81DVBRiFggxnCTizKTML5VbTPxbupM=;
        b=qlma9dsevDIzlUNZ/USBL0fSpJSgiHZdvemwaQbLVuLnTKse5M/j1zy2CqJ4z1luFB
         3Iw4M3fM20HxvnXoUJIadsOOrB/jjN+S2S6UHlGsebsFlRcPMoIw2JgVCQy2xroQ60Z/
         o0yGc33kcOzDKd4FvrsnCnzJQO0wagOiQQl79X3CHo+u1vBSRu5b+MC2D+rMSUZbe95c
         fABP7BPUlf2N/vHumKZo6zPqpx56W6h9dL696caDZaKQlom9PJSXwzwQ6YtJStbi9f9R
         9c/dtZp7SQTlyLO43W3j1D2gSJfBfGXOMhtQXyLFLzYYxuMi+Zi5DMzQ+XxZI6kTxWkv
         vP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=uKK8aqv6B2mqn81DVBRiFggxnCTizKTML5VbTPxbupM=;
        b=ouvREQTXMG/zGbvLIphxzk79Dm40XwEGX/8R01kiUqgpzL/La82rJ38wKWwDRJpbpD
         xUD+Mtr2fI5xDZ9RLnbV6uvxJwTxUBo+0HorHTLr0TzcmxJiDh7LDnvgr6/7nSBZgBde
         o8OAR+RXB4oL8KrhU1QrwpjURmNeYUopE51EygKA2kHTEiO9rko2A/3thng7KPFHOW/I
         Gu6fUj93+9/5rvPvO08rYAtV2wOcPzpkA3uX4OLlSCZGq/wrERmEcBDda20fZCrj78/w
         m3x4oopyimuKVFEOTlsmOmF74mSX6B6mHg7okU1zDf7yEod3/MpGfppG3GmfLlfCYLWB
         5Q2A==
X-Gm-Message-State: AOAM530w0F7bVXQvPbA33DJozpd7wCNrhS7lcQr6+as2yvjR5eg36YsY
        WyItOsTsmv5NA1zO0f5jwMjZeuorDBPuqJ5/1lk=
X-Google-Smtp-Source: ABdhPJwyJaZyQTwM+nq1ZP2zxULrHNIDCBVxyJDAUmHvWPS/GnhLIbjAOKfvYjFYn1gMGmowJfxKvcogOx3paxou9QQ=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr3374965oih.159.1609273983231;
 Tue, 29 Dec 2020 12:33:03 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com> <20201229143859.17473-3-alx.manpages@gmail.com>
In-Reply-To: <20201229143859.17473-3-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Dec 2020 21:32:51 +0100
Message-ID: <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
Subject: Re: [PATCH 2/2] Various pages: Normalize NOTES about non-existing
 glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Ganimedes,

Again, in the subject line, s/

non-existing/nonexistent/

[...]

> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -211,13 +211,13 @@ SVr4.
>  Library support for
>  .BR getdents64 ()
>  was added in glibc 2.30;
> -there is no glibc wrapper for
> -.BR getdents ().
> -Calling
> +Glibc does not provide a wrapper for
> +.BR getdents ();
> +call

s/call/calling/

>  .BR getdents ()
>  (or
>  .BR getdents64 ()
> -on earlier glibc versions) requires the use of
> +on earlier glibc versions) using
>  .BR syscall (2).
>  In that case you will need to define the
>  .I linux_dirent

[...]

Again, the only reason I'm not making these patches and making the
minor fixes is in case you find some other pages that might be added
to the patch. Let me know.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
