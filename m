Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 243EBEBF3E
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2019 09:35:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726555AbfKAIfp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Nov 2019 04:35:45 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:53326 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726532AbfKAIfp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Nov 2019 04:35:45 -0400
Received: by mail-wm1-f65.google.com with SMTP id n7so8551271wmc.3
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2019 01:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=al5wV1AiBlegXuE82jAE4mhJ0rjn07XXy274CnCMDVQ=;
        b=qiNg+eL0myswFG6vUyGqiotaErTGDMiDmfipZ2VgNUaKyMhboNcrk/8P2xZK0++l1v
         u1m3gf2UjQxWRVB5vmGlUcT47wrxvHkoJ5w01oRcMzYqB+jK9ZpMuwUOAMwvhwhv1v1y
         nu1NXetHvpOtHQ1V93A30scuDRkVd+TVAdFZTA1lWz1e0e9PB7cJN2W67vLMUHhe4QXn
         kJXM0yoJdIneabNzlZ4fsDsXKQNfTkVU8KPT5VgpqA8wyze+GvnRf6ILxrkS9kr5Brri
         MLtlIBoOshleOY8tQEzQ0PG6wG5sSuzvZm06AgKE4J8ImL7PzWcLZOeGHZqnn87O7HwQ
         pRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=al5wV1AiBlegXuE82jAE4mhJ0rjn07XXy274CnCMDVQ=;
        b=LIRmJjaG5Nfq9ArW0huZqOPusCM2dIaSLOxpTyexoL4K74jxByFXvX4mX0Dm6puUP0
         KwOWUnyjnpL/lyDFAvRCnMysnWfUYhGkRTezOCMRq8z3OIDZBLO/Pi+3ZrkskKKgjsB4
         GTgG5AK60SqxvE7eC4tc0HIB9NTADaQgXbDlXlpI+Y04WNSKnqy4nq1NL9XLhoSp3++i
         Y9/YVv7P3n5uEjSpprNYIsFf35JcNm4sW1ohMtcBymC8zDexS8ihWSG4nKKm1VteKfBE
         nFdS7XNLkYPZYgqFBhs9jS8VSkdg4VMscRxUp2KuB66BsygZ+F9mybHjRh61J593DPf9
         qL1g==
X-Gm-Message-State: APjAAAVQGx886VDV2CljeZT3AYGcrGkJg3IwYSO2S4Xq2lmhHO3nWh3+
        di8bXqeu7x1JO/0vfRQEVCa8DaX9j4E=
X-Google-Smtp-Source: APXvYqxzX1Cup1YcZ96d/gQo8KZC6TN2jieYxHKAKS2mtV9qWsKnQyEQ31/Gcd29ZiG76hYtB132Cg==
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr8858261wme.168.1572597343031;
        Fri, 01 Nov 2019 01:35:43 -0700 (PDT)
Received: from [172.20.35.63] ([91.217.168.176])
        by smtp.gmail.com with ESMTPSA id a16sm9115100wmd.11.2019.11.01.01.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 01:35:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] fallocate.2: Add gfs2 to the list of punch hole-capable
 filesystems
To:     Andrew Price <anprice@redhat.com>
References: <20191031162647.1224-1-anprice@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b4bd20fc-939f-ad5f-7efb-476fc194f34a@gmail.com>
Date:   Fri, 1 Nov 2019 09:35:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191031162647.1224-1-anprice@redhat.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andrew,

On 10/31/19 5:26 PM, Andrew Price wrote:
> Also remove a stray " from the previous item.

Thanks! Patch applied.

Cheers,

Michael

> Signed-off-by: Andrew Price <anprice@redhat.com>
> ---
>   man2/fallocate.2 | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/fallocate.2 b/man2/fallocate.2
> index 35a319e39..0ea6ad55f 100644
> --- a/man2/fallocate.2
> +++ b/man2/fallocate.2
> @@ -133,8 +133,12 @@ ext4 (since Linux 3.0)
>   Btrfs (since Linux 3.7)
>   .IP *
>   .BR tmpfs (5)
> -(since Linux 3.5)"
> +(since Linux 3.5)
>   .\" commit 83e4fa9c16e4af7122e31be3eca5d57881d236fe
> +.IP *
> +.BR gfs2 (5)
> +(since Linux 4.16)
> +.\" commit 4e56a6411fbce6f859566e17298114c2434391a4
>   .SS Collapsing file space
>   .\" commit 00f5e61998dd17f5375d9dfc01331f104b83f841
>   Specifying the
> 
