Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 24D8C137792
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2020 20:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727709AbgAJT6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jan 2020 14:58:42 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:34489 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727650AbgAJT6m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jan 2020 14:58:42 -0500
Received: by mail-pj1-f67.google.com with SMTP id s94so2093968pjc.1
        for <linux-man@vger.kernel.org>; Fri, 10 Jan 2020 11:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iDlPsO13rMyuvBn7PtQdBQqfvK9YYjK4+HZevxaZqZM=;
        b=cfsdIFGBvDZNxmD1mZR3mNvxGeTcE5+GWhp8K+lpe+kRyx7HIH4d4mEUwVUGExbiCe
         WJf/aYn7Cir9cagwUnKznRKAj79E0j1PCEC9uNKOkgsQ/eUIIehwxOT2xYYLK7xaFwkk
         jLc++kDmPB8LGrXC2kbbga9g4veWf0HEUZd6g7qXBbAdphR+kGxPH1CnYfave8PBtQPZ
         ejFICT4+iXo0KNIwdLpTIVFLak7bXqx7SHelnn79ibtBevs+373nz8P/fgWZ86SZYzpb
         9kEd53Q4JWNgP8h5PZKWzMgHr7Kpdn3SMlKhBf2vylg8Q28sapE4sjh1h6iHbID3p/UM
         Nwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iDlPsO13rMyuvBn7PtQdBQqfvK9YYjK4+HZevxaZqZM=;
        b=jDfSjTQZ0uAodKdDt8WsJFaItGhEceGv4gkWwYQ7PkMEy2WN5QV0VotQRNEZEeW+Kg
         1SdrfEhGrPSNBu/bRWMRhgpxYHWNNGCiwBt+QN22IROJnB2OK2UFXJexLUzmO7z6sUrE
         NoYi673pAgkcREHvhwilrKxUBxorhuukrR4eIEowmpTRHT9TUUsx1mtF6pxPbrYd68uv
         LX2FNPHWw0QYE2Cs9LUShVZoBQx5bDqj/0UrBPsMZdST3PqHQcCpbI4gx6zZyEkpguwA
         IQ+8+BZ0QvCiX0moI/N5mciDjTFiR7uAjb0HykXvprrdSqChqlfO6xP1thv3IITjGfh1
         XsDA==
X-Gm-Message-State: APjAAAVgg5Pln+H/wqRnZyVbSMMUtGRAkVH+bh6Ut7e7qNd5KCCTdeF+
        QhC9sY8QLMbQ4fOewDB9KjXjnWIh
X-Google-Smtp-Source: APXvYqwH1aKtYsdxuvEiVnlGrTH1QyiXkDqlrDdK6hR/gvcOWApx85WMg3gZajBpkKeJIeXuQUiJZA==
X-Received: by 2002:a17:902:6b8c:: with SMTP id p12mr258370plk.290.1578686321328;
        Fri, 10 Jan 2020 11:58:41 -0800 (PST)
Received: from ?IPv6:2406:e003:5fa:5f01:e752:f840:6823:1947? ([2406:e003:5fa:5f01:e752:f840:6823:1947])
        by smtp.gmail.com with ESMTPSA id j9sm3821449pff.6.2020.01.10.11.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 11:58:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 1/1] malloc.3: Remove duplicate _DEFAULT_SOURCE
To:     Petr Vorel <pvorel@suse.cz>, linux-man@vger.kernel.org
References: <20200109153651.4847-1-pvorel@suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ff59d055-3e9c-4ac3-0731-b0a8b94b1247@gmail.com>
Date:   Fri, 10 Jan 2020 20:58:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109153651.4847-1-pvorel@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Petr,

Hello On 1/9/20 4:36 PM, Petr Vorel wrote:
> Fixes: d8d701003 ("malloc.3: Since glibc 2.29, realloc() is exposed by
> defining _DEFAULT_SOURCE")
> 
> Signed-off-by: Petr Vorel <pvorel@suse.cz>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/malloc.3 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man3/malloc.3 b/man3/malloc.3
> index 111e2a067..c3b688ab3 100644
> --- a/man3/malloc.3
> +++ b/man3/malloc.3
> @@ -51,7 +51,6 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR reallocarray ():
>  .ad l
> -_GNU_SOURCE
>      Since glibc 2.29:
>          _DEFAULT_SOURCE
>      Glibc 2.28 and earlier:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
