Return-Path: <linux-man+bounces-2665-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58600A75286
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 23:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C5516DCD9
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 22:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B4E55E69;
	Fri, 28 Mar 2025 22:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UJHTX3mX"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BC02F3B
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 22:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743201932; cv=none; b=UCN8/75lfxtOeM/a4mu7J4HWRgccECEwAzYqL6lpsBKu/8AFnle6eqjJuewF3SlgqbRLHWVGYmGpSDufiSGSI6P9Mv0JBGxbPicFOrfzY/T+8+VedeYmCGanGZX038znUJuBH0lgNAz5HjgyksWcCfiWubO84gzOjppewM1UrtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743201932; c=relaxed/simple;
	bh=E8XS3tvlK9IcRKJrjLxqAiC1LS3kAtvCMkMsnh3kXMg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J6xD97SEEu7/FeZ5skIoacPBRFq6YtpqVXdo2BmVxtcN/HAxf+BSUWctELs3cUUyfgZuqDCjp6Ll0gtb79SB5gvOGbqfH/kAKcmttJn81Kg/HB+YE7u/u8M3WUJsk+PioHvrlVkIFSEr3E3OHP/gjQDDkgfXwk+ommXPYZUHtHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UJHTX3mX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743201929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=o/3RsSK+VA3FmfnERHdMXbHUOGSgfw/lYbDvf9pauQY=;
	b=UJHTX3mXkP8g5mMyUB9NG0WUl8exvjjsJLPVI3XJsgM1u18gzWBTeOrRC935/VYn9MimCm
	opRpdkjlsN3BW8lOGv0GEfViag0U9mNEsepXvZqQyY9qeAn2JY5WACvtSDBbbt/EzgGlN0
	oLRj2jVdgvOyFgkG40hEGTLzzor9vM4=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-653-JjL-ugy4OpCasEmTtT8eHg-1; Fri, 28 Mar 2025 18:45:27 -0400
X-MC-Unique: JjL-ugy4OpCasEmTtT8eHg-1
X-Mimecast-MFC-AGG-ID: JjL-ugy4OpCasEmTtT8eHg_1743201927
Received: by mail-io1-f70.google.com with SMTP id ca18e2360f4ac-85b402f69d4so275077839f.3
        for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 15:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743201927; x=1743806727;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o/3RsSK+VA3FmfnERHdMXbHUOGSgfw/lYbDvf9pauQY=;
        b=VIXPj3gcZwmZE18HYCwIB9BK6IFM10r2PYkntYZrHlmpanxYRkL6EGxlLF5iJbBnbj
         62td0Ux1eIm49ze6RYH/hNuoVRiAJZAfXmyb3cYTnYXGAWllPzHYlCDQ31tMif5FUAe9
         G/1XT2OV9bUmQava8escpYkQJf9+r36Hxl70KD5w8IzoL4KT2v/KiY6oS3t4eXaSUUW7
         P32StRgmDB5JvVe0+mW7tmDLLPBq4LQV2cHyLdSpkP9jCxuCVxzDSuMz+SXgEHC1iuWF
         rlRzR5rGA3pbXzMifWwnCMN7o3JH911CDBzb+Zf+HCtYsLxHVX6Y5UqTqwkOoxrLyg1i
         ryMA==
X-Gm-Message-State: AOJu0Yzlh+DUOWcBETWyj203rZDdzBxFrNW46mRB/7jDBtQSJkH21HdY
	H1CXfAXr65EyH+2jwBLxYuGpi71xqlDyh46ynmluN1s2ukktSu9L9j+hn093pa7oZKEbKET8AXR
	WaKQYuAlTtxM5YhgFoHh3ZiGuzVC9HuOwkwJE9BCUNPDRd04vVVgpsBk9ZQ==
X-Gm-Gg: ASbGncuv8Y06r3hdeTQmaBBAg6rMVdBZZx7LAEQbX1iaW62WNrShwGJCI6a8C4eSWPJ
	vRMoYVf0YHFAk+/VBpTO+MNPQvP9bURj4t5j2KW3I40gWqM0ZWuwfrfsUoLIZt0mTqEz4oX5aux
	vF/vPCLTuZr98ffumpgERIz09MwxqGutiy0yyaVSPc/WEixZA4Wncvz7bdIzTJ8FBUbYVoj/toH
	aY1zpOtzPr7Ef/ljf/0a6tisWnt/TZMe7/l4d6RCsu9CP7LRM7w2TuJelSmqR50MxYddooSSqdA
	OxjTsTEH39/toM9X
X-Received: by 2002:a05:6e02:3108:b0:3d3:deee:de2f with SMTP id e9e14a558f8ab-3d5e0908c92mr13812835ab.7.1743201926796;
        Fri, 28 Mar 2025 15:45:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTgm4y4Ngr+KeAZCiIh1i+A8Nnf32GGcaN6pn1PPHQlBa3db0WX1OHN2uL+35MjkwllbsaQg==
X-Received: by 2002:a05:6e02:3108:b0:3d3:deee:de2f with SMTP id e9e14a558f8ab-3d5e0908c92mr13812605ab.7.1743201926298;
        Fri, 28 Mar 2025 15:45:26 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5ae2636sm7027855ab.46.2025.03.28.15.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 15:45:25 -0700 (PDT)
Message-ID: <4fee13e3-d3d6-47be-87b8-d4303918cbaa@redhat.com>
Date: Fri, 28 Mar 2025 18:45:24 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: fix: recvfrom() error handling
To: Peter Radisson <radisson97@web.de>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
 "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
 <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
 <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
 <7cf47smc7ntz2k4rkekbuzehzymi3fnvwybsrn42pqgptm75wg@6s5b6mrwkhfv>
 <977a59f6-4e1e-4f7d-996d-8dbcd7a46794@web.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <977a59f6-4e1e-4f7d-996d-8dbcd7a46794@web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/27/25 1:47 PM, Peter Radisson wrote:
> Am 27.03.25 um 18:28 schrieb Alejandro Colomar:
>> On Thu, Mar 27, 2025 at 05:35:21PM +0100, Peter Radisson wrote:
>>> V2:
>>> * removed 1 empty line
>>> * and changed wording to "content of" to make clear *addrlen is used.
> 
> V3:
> * changed wording:
> less that null -> negativ

s/negativ/negative/g

> 
> thx for fast reply, unfortunately i noticed an other problem with the
> page. I will report in an other mail.
> 
>>> To replicate the problem:
>>>
>>> // intended use
>>> struct sockaddr_in  sock_out;
>>> int slen=sizeof(sock_out); //socklen_t
>>> recv_len = recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
>>> &slen);
>>>
>>> // error case
>>> struct sockaddr_in  sock_out;
>>> int slen=1;
>>> recv_len = recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
>>> &slen);
>>>
>>> funfact: this escapes the error handling in the linux kernel (no crash)
>>> set slen=-1 and you get EINVAL.
>>>
>>> hope that helps.
>>>
> 
>  From 9f464fde8dd168b71430ca29f631153e3e3fb2e5 Mon Sep 17 00:00:00 2001
> From: Peter Radisson <--show-origin>
> Date: Thu, 27 Mar 2025 18:39:29 +0100
> Subject: [PATCH] Be more verbose about recvfrom(2) error handling
> 
> Signed-off-by: Peter Radisson <--show-origin>
> ---
>   man2/recv.2 | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/man2/recv.2 b/man2/recv.2
> index 2659957a6..ba17d03a3 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -293,6 +293,22 @@ The returned address is truncated if the buffer
> provided is too small;
>   in this case,
>   .I addrlen
>   will return a value greater than was supplied to the call.
> +If
> +.I src_addr
> +is NULL
> +.I addrlen
> +will be ignored.
> +If
> +.I src_addr
> +is not NULL and the content of
> +.I addrlen
> +is negativ the call will return with

s/negativ/negative/g

> +.IR EINVAL .
> +If
> +.I addrlen
> +is less than sizeof struct sockaddr_in the src_addr will
> +not be modified.

My suggestion would be to place this as an entry under ERRORS
for EINVAL.

Adding all of this conditional text under recvfrom() seems overly
complicated.

We should document the success case and how it work for truncation.

> +
>   .PP
>   If the caller is not interested in the source address,
>   .I src_addr
> -- 
> 2.35.3
> 
> 
> 


-- 
Cheers,
Carlos.


