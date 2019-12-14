Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A847D11F034
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2019 05:54:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbfLNEye (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Dec 2019 23:54:34 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:33433 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726638AbfLNEye (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Dec 2019 23:54:34 -0500
Received: by mail-ot1-f67.google.com with SMTP id d17so1765374otc.0
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2019 20:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kF2LTk5gfYgdgyxbwhIc4a0O70rC9c7LoAGhzZHeh2U=;
        b=ooEapzsgpAW5wI5dX7sIFmh93u3KLYx3nie+2TPYCj70n1ezTX8DjD6uUl4Tp5CVAl
         hsGfWlyE6xOk6uNg4OwC26WoSIBjrmri2nV44LTjhIyLbQNB2BNvsjCx4OR6Zw1SgPjm
         pLzbVDBMv3cpb+k9daX1fmDypdBzrJ684Wyrx9MvBld+kce9X11B/EQit4R3o882KiGE
         K5jzTiwb97asrIM+ihrJ9DKoLWImjVQkNI/raPjMhLKDbKRYE1g390dluK8vEuhZ+vCn
         aVJifE+5TeYeqyyTApuRZ9xw5HrbTNT0/mAqBpQPYNLyCQ269nni+oVgeoJ7e1bkNJ9J
         AjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kF2LTk5gfYgdgyxbwhIc4a0O70rC9c7LoAGhzZHeh2U=;
        b=BBUssva3cPMfvFTnO5UeUtmY9K7mrSjWBiNWLJvLgWTBisikFBO3rDZQyMdqosxZLm
         +NxJHGJQ7emCeaGB+y2D06aD8s/D7H03zzpVJuzT2Rg6TbsDqCmlooSAkJ7nU5u4Dg3r
         W6tcvsuT7M2seWQAk1edmqKZPOce8jbWSgU+GaQKe9Cvq9W8ctV4F7mMCFdQuuR80YEJ
         UXvmNkfyk8IkB17b+E+09o2MptyodZyrXheyTF8dkKGJ6c0BdZagOo6Ig/R3YEdgleSU
         1QR+nayvQFN2fPFl73JsyxDkza05vNyhikE50tujTtXba3GztQZz2CGJtfT9tkfQ+BcJ
         kjJg==
X-Gm-Message-State: APjAAAXbD7GUhay02yIrRrRNTRN/ASkXdteWtfCXMxaDFXFL7AHN2c6d
        mcHvSU1cVobGYdEjfDChE0E=
X-Google-Smtp-Source: APXvYqxViILY0ddQZNdDMyARJumi6QqtNdT5/0BsaejHEI9fK5FFp6A04UlwWp9yK8CwYAeZwbCAyA==
X-Received: by 2002:a05:6830:1c85:: with SMTP id v5mr13977979otf.35.1576299272877;
        Fri, 13 Dec 2019 20:54:32 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:dac0:2450::34])
        by smtp.gmail.com with ESMTPSA id r13sm4098791oic.52.2019.12.13.20.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 20:54:32 -0800 (PST)
Subject: Re: [PATCH] modify_ldt.2, set_thread_area.2: Fix type of base_addr
To:     Andy Lutomirski <luto@kernel.org>
Cc:     linux-man@vger.kernel.org,
        "Metzger, Markus T" <markus.t.metzger@intel.com>
References: <cae4fcdc7ef5f2a1f2c81afb9bb1a9c552e39c4e.1575491386.git.luto@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9db2d109-f56a-75b6-78be-b8baeaa7ac0c@gmail.com>
Date:   Sat, 14 Dec 2019 05:54:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <cae4fcdc7ef5f2a1f2c81afb9bb1a9c552e39c4e.1575491386.git.luto@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andy,

On 12/4/19 9:30 PM, Andy Lutomirski wrote:
> Historically (before Linux 2.6.23), base_addr was unsigned long for
> 32-bit code and unsigned int for 64-bit code.  In other words, it
> was always a 32-bit value.  When the ldt.h header files were
> unified, the type became unsigned int on all systems.  Update
> modify_ldt.2 and set_thread_area.2 accordingly.
> 
> Indeed, on x86, the GDT and LDT specify 32-bit bases for code and
> data segments, and this has nothing to do with the kernel.

Thanks. Patch applied.

Cheers,

Michael

> Reported-by: "Metzger, Markus T" <markus.t.metzger@intel.com>
> Signed-off-by: Andy Lutomirski <luto@kernel.org>
> ---
>   man2/modify_ldt.2      | 2 +-
>   man2/set_thread_area.2 | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/modify_ldt.2 b/man2/modify_ldt.2
> index 0db6efea47ad..ae979ed41a7d 100644
> --- a/man2/modify_ldt.2
> +++ b/man2/modify_ldt.2
> @@ -79,7 +79,7 @@ structure is defined in \fI<asm/ldt.h>\fP as:
>   .EX
>   struct user_desc {
>       unsigned int  entry_number;
> -    unsigned long base_addr;
> +    unsigned int  base_addr;
>       unsigned int  limit;
>       unsigned int  seg_32bit:1;
>       unsigned int  contents:2;
> diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
> index b2f0882ed9ad..3b6b22efd9aa 100644
> --- a/man2/set_thread_area.2
> +++ b/man2/set_thread_area.2
> @@ -67,7 +67,7 @@ to a structure of the following type:
>   .EX
>   struct user_desc {
>       unsigned int  entry_number;
> -    unsigned long base_addr;
> +    unsigned int  base_addr;
>       unsigned int  limit;
>       unsigned int  seg_32bit:1;
>       unsigned int  contents:2;
> 
