Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C84119586B
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 09:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729433AbfHTH32 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 03:29:28 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:38128 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729260AbfHTH32 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Aug 2019 03:29:28 -0400
Received: by mail-ed1-f65.google.com with SMTP id r12so5209361edo.5
        for <linux-man@vger.kernel.org>; Tue, 20 Aug 2019 00:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZmgPg6eXaTYqaqVxn6bNDndkkFdfh0RrSMqlAfmeR6w=;
        b=tcnPHGXDu1r5CQyswphussQ4K3jBP2Vnf7ktIic0IiU7M7PsHhSMMxPnKxO3/EIAYx
         2BFNnKUbCuxQgxRk3SUYRq1fWTtDLXMmTd2qgE6zuXJO0naNAicYNktSqlYyUrbYGoOq
         d6tQ5m3TupKcHuhAaMOaPKp9iIJscXQd6dnH/arAHBuVnXHe7jl6Tqd5y9L+t0JpVOdE
         0SpF0bi6p1nRt/PN3YvAwhuWfesysOFMjBzWpo/wzlg4va5ND6n8/onlpGTFTishLgMC
         Nj0vz4PcmWeX3bvIsWiZy5zACfZkioDVsCHIt6LP9TIgdmSydXpcjufmFNRkCG/K55IG
         MJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZmgPg6eXaTYqaqVxn6bNDndkkFdfh0RrSMqlAfmeR6w=;
        b=CvpJEe1kLA9D2dWGvjkrgR+J2YwNp8vN7wxp4RlbtBqwDsGri4yyu5gio16g7B3+fq
         IOLkm8pMwTVhgAUW0A9c1luG42YlEaEYl6wVGHqsPRsX7sYWZd7eLG299a+dnMU1gp8h
         z/SuSOJAr/9QckFI+ff63ADPSqPE/7NcNspGee+CfoVPbYUYKVtzpCetIitQ0hQyOnpP
         /XcWVPdtGUVpufGD11ym+Ux1RacO7zmHzcPfQnonHZ1dVdv/fep5jgfyTuxCLU3gc7wZ
         gkfF3NEI+1y5OHn6KtCz9WXTTUpOGj7Q1+SoB2epgoPFvZEkDRVQ5HOzY4+Sh+0QDbgJ
         u1tA==
X-Gm-Message-State: APjAAAVAjyeAbhsBtbm9+EAundpkKOseLjVaFuz2OnuCQTvmHQsBFd2k
        O+h2ANysxlR46Zik2Kowp2km+vRWh64=
X-Google-Smtp-Source: APXvYqyYMDqshFG3aEQb9wRWDcKl6a0PnRr5BJn0iopIz3JgkBqmmquwcv2i5NqLOtiLS0z6wLJ7qA==
X-Received: by 2002:a17:907:2137:: with SMTP id qo23mr24205433ejb.305.1566286166196;
        Tue, 20 Aug 2019 00:29:26 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.61])
        by smtp.gmail.com with ESMTPSA id h21sm1871579ejj.41.2019.08.20.00.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 00:29:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: statx man page
To:     Simone Piccardi <piccardi@truelite.it>
References: <9ca3a9eb-47d5-26ed-f454-6b6c758d406b@truelite.it>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0fc0ceb0-154f-1337-61d3-0259aa61f402@gmail.com>
Date:   Tue, 20 Aug 2019 09:29:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9ca3a9eb-47d5-26ed-f454-6b6c758d406b@truelite.it>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Simone,

On 8/18/19 4:48 PM, Simone Piccardi wrote:
> 
> Hi,
> 
> I was looking at version from 2017-09-15 but it's the same on:
> http://man7.org/linux/man-pages/man2/statx.2.html (2019-03-06)
> 
> There is reported (about the mask argument) after the list of constats:
> 
>  > Note that the kernel does not reject values in mask other than the
>  > above.  Instead, it simply informs the caller which values are sup‐
>  > ported by this kernel and filesystem via the statx.stx_mask field.
> 
> But as reported in the error values, there can be EINVAL if mask has a 
> reserved valued, and I found a check against STATX__RESERVED in 
> fs/stat.c for this. So if you use a that bit (0x80000000U) the kernel 
> will reject the value.
> 
> Probably is better to say that the kernel do not enforce the use of only 
> the listed values, but there are anyway reserved values so and so you 
> cannot put whatever you want on mask (that apply to more values than 
> UINT_MAX).

Thanks for the report. I applied the patch below.

Cheers,

Michael

diff --git a/man2/statx.2 b/man2/statx.2
index 49d48daaa..2370aa1d9 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -265,11 +265,14 @@ STATX_ALL [All currently available fields]
  .TE
  .in
  .PP
-Note that the kernel does
+Note that, in general, the kernel does
  .I not
  reject values in
  .I mask
  other than the above.
+(For an exception, see
+.B EINVAL
+in errors.)
  Instead, it simply informs the caller which values are supported
  by this kernel and filesystem via the
  .I statx.stx_mask
@@ -490,6 +493,9 @@ Invalid flag specified in
  .B EINVAL
  Reserved flag specified in
  .IR mask .
+(Currently, there is one such flag, designated by the constant
+.BR STATX__RESERVED ,
+with the value 0x80000000U.)
  .TP
  .B ELOOP
  Too many symbolic links encountered while traversing the pathname.
