Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41760169A16
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 21:48:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbgBWUs0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 15:48:26 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40061 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727033AbgBWUs0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 15:48:26 -0500
Received: by mail-wr1-f68.google.com with SMTP id t3so7987109wru.7
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 12:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N7phQPQuXOZHBO1cLuYeWgcDS+EIaf102KWpj9eht70=;
        b=s9J4nNBbG+lJhjEeKxr0YvAmvbL0xQNvdkBrTqJ0IZo9WnT884hO0v/2m8f7mx4qBD
         IBB5kKr7ITX0y6eQLY7jufCTB6K6Gcmh2ip9GIErLlLYKeWLUyKf3n4LosoU6F4pW/s8
         hDvrXAROgD1ujqysKf9lCemI6y/oDPzyTRHlPfB7wXkROUgmM3whosI6mBSdpnkxLtO8
         YDYfv2uYCRECX30he95SCaxNW4jVleDglTW8D8I6dTovbpeNX4KcmiS4gjiPt7QyGgTk
         XyhLtojoobl71Nq9QMjf/gEdbUMZzibaMb9Et7YnRNxmpLLY6/ZpJS1wb1WulzUrJuKz
         a66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N7phQPQuXOZHBO1cLuYeWgcDS+EIaf102KWpj9eht70=;
        b=ivYoam6aBUFoI+tztxlwsVqouqyH8e7t8ZvCcs43Jx3R7xM0GpzzQQe+kpkObXlR+W
         QOa0UdMsA5yBTHdN59HITGHPwBb4TGD7mEO9WMWin/ZvVLGPEbwEQ31NqZNgBwUnT/7Q
         9c7o0EMqWCJk1KQjpLlx0SPNy0++jS6ulT9/eT2ZOVM0y335AVybPnHvjm4UjjVpO/09
         g9NQzeaGO96DxrnIEjUURq8yl9HGr9RUlz79UzwOxdy3FK1PS5P3cPZ2o0GD6p9Rnxqe
         QYWA1PgJFXFEA/luC76R4vv2G7Pi0VBGx3T0KBVjW2l215f3xNLHetouMKR30Apu/3YX
         IzTA==
X-Gm-Message-State: APjAAAWLeA0jjvWG9JoybSedaq+vB9lBMyU9cGScEVWWFfp2b+p+NSrp
        76E1QNzndZu3ZvWzB/Os8JqrKlEI
X-Google-Smtp-Source: APXvYqxDl4PijTnV/8L0UEiT8ESg5Bj2Xoc1PlUSlPgSJFwfaxIJytjx0AZ1BiZDsdS7tvFPPBhM3g==
X-Received: by 2002:a5d:61cf:: with SMTP id q15mr60476423wrv.74.1582490903900;
        Sun, 23 Feb 2020 12:48:23 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id d3sm3599961wrr.56.2020.02.23.12.48.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 12:48:23 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: ffix (trying to fit the table into 80
 columns)
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20200214153908.GA22244@asgard.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <abaa9529-2b44-b37f-e8fd-1972cc2c5bd7@gmail.com>
Date:   Sun, 23 Feb 2020 21:48:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200214153908.GA22244@asgard.redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:39 PM, Eugene Syromyatnikov wrote:
> * man2/syscalls.2 (.SH DESCRIPTION) <\fBgetdtablesize\fP(2)>: Remove "since
> Linux 2.0" part for the osf_getdtablesize note, as syscall is generally
> available since Linux 2.0; add line break after the word "as".
> (.SH DESCRIPTION) <\fBpwrite\fP(2)>: Add line breaks.
> (.SH DESCRIPTION) <\fBvm86old\fP(2)>: Add a line break after "in".

I'm a little lost here. As far as I can see, the page already renders
okay inside 80 columns, so I don't quite understand the point of this patch. 
Can you say some more please.

Thanks,

Michael

> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man2/syscalls.2 | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 637ad2c..22ec394 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -335,7 +335,8 @@ T}
>  \fBgetdtablesize\fP(2)	2.0	T{
>  SPARC (removed in 2.6.26),
>  .br
> -available since Linux 2.0 on Alpha as
> +available on Alpha as
> +.br
>  \fBosf_getdtablesize\fP(2)
>  T}
>  \fBgetegid\fP(2)	1.0
> @@ -569,10 +570,15 @@ T}
>  .\" Implements \fBpselect\fP(2)
>  \fBptrace\fP(2)	1.0
>  \fBpwrite\fP(2)		T{
> -Used for \fBpwrite64\fP(2) on AVR32
> -(port removed in Linux 4.12)
> -and Blackfin (port removed
> -in Linux 4.17)
> +Used for \fBpwrite64\fP(2)
> +.br
> +on AVR32
> +(port removed
> +.br
> +in Linux 4.12)
> +and Blackfin
> +.br
> +(port removed in Linux 4.17)
>  T}
>  \fBpwrite64\fP(2)		T{
>  Added as "pwrite" in 2.2;
> @@ -823,6 +829,7 @@ T}
>  \fBvhangup\fP(2)	1.0
>  \fBvm86old\fP(2)	1.0	T{
>  Was "vm86"; renamed in
> +.br
>  2.0.28/2.2
>  T}
>  \fBvm86\fP(2)	2.0.28; 2.2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
