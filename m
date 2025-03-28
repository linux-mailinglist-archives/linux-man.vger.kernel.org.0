Return-Path: <linux-man+bounces-2666-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50CA7529E
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 23:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71666169EB3
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 22:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53011F180C;
	Fri, 28 Mar 2025 22:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Lvx4Havo"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7AC1F09AE
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 22:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743202439; cv=none; b=mRRp7k3DUqGj9vquv2/efCfHYZnlnuR89meINvrFBIDKbg7QRaE9j5b93RgFOzmdaRNLqIyxLIapLUQijRPUmKJe1KuHG6KNk57nOoj7GRPFuxUI/2yuVOa8IdFhiompcGZholYIfLjHQexGLgGGrBOoFPDXpDeMBthtJUx9Hgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743202439; c=relaxed/simple;
	bh=t+jqoamvoJv8WrhEDecHA+mXsPElv9DzgRDohvAusj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=OyvxiGHmqjjdGuFAZbXnm1rateH+kCDlePMa1DxCgbzOta8hVkVwiV4N6E3NJ8B53L3xtwBIv0RJ3EKmtEPI7s3rgmudM0apndEhVX8Wn2KsWaJAr4DuPt4kjxZ+zc/wVX8seWzT0ouEQvwzmuXHgWRePeBBw85Wqz18Wizw7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Lvx4Havo; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743202436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NhBpaNhy6jWf2Hz0ZP6CYPf122KUmYnNmpjpKKc9MbE=;
	b=Lvx4Havoun4ARiQl5E6bnjMcM4wLN4P9IG/UnRxyun9/FuivP+szwWPmc61CJTh4uCbPD7
	LuQj8iS6NKqoy8laohNISAbHBvprHz+5uhf4kggHPpq7Y0v2MUAeD+JD7eTMyGK1fvvWbs
	+e6uEaWlFfqHnrQDfhWZ6EB2kwFzy3E=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-mdrSdzHiM7ORLyMjlge1WQ-1; Fri, 28 Mar 2025 18:53:55 -0400
X-MC-Unique: mdrSdzHiM7ORLyMjlge1WQ-1
X-Mimecast-MFC-AGG-ID: mdrSdzHiM7ORLyMjlge1WQ_1743202434
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3d43c0dbe6aso45562375ab.1
        for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 15:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743202434; x=1743807234;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NhBpaNhy6jWf2Hz0ZP6CYPf122KUmYnNmpjpKKc9MbE=;
        b=s9M+LbaWqDbdHaLPHq6ROKsKCvFYI5E9bl5UysaCzmxGAhBvNwZ0BjHh2ip14PIcGO
         vf/RcN5wdZ+D77KYWQi9fQPc7EZ+PjhYJN4jD8kYTnZZGxfyGQDsmZpU7ExX8ekZZozr
         NfP2NH6PZc2oMFinF3xztJLeKCcNTesGdTqIitiel69X8SRwlkJXTdB6u22e7EzSPGi7
         kEekf8c9Gnf7L0RxoL0mRkmpQm7pAQUhBZ9lg6woswOJNl0ANi/qIFWb8qINcIJ/jJ5O
         zcPlu9sRDHA6qsNBS8gdvauoS+2sosdCJEPuMDGFj4CnjOLFD2jwjerKXz9otIPyqP5o
         TIeA==
X-Forwarded-Encrypted: i=1; AJvYcCWoRSgBZmhNeLCzbQv4SMVwrcY33ZEODhv9RELKLvspOzmFBO1lTn/QmVJzbO+ytlmnwOl/S05UC1M=@vger.kernel.org
X-Gm-Message-State: AOJu0YxfpZeo54s9a6Av03tsnmeoHiMKwb+TAsPQqtI7GAFJRGrGXd1e
	45J93NPY6JhA4vXNJVKsddQlmiDBRTlWBGbeWIB9AKOrFGSBTDxZ5J7RuWnkTV8onHhWFhp0ygz
	1FsTKKrX3byUrR2KPV+R7Tlhs1Afzmj86u2wHWOuSUXAXG7WK8Y6C9pM0uw==
X-Gm-Gg: ASbGncuQq+j6DN8axfqwbyqNtvyKbmzXrxNEGBCfD6+IgINfFNfD+d/djfIVSddUrvL
	NvJDM616ZLB2e+GyZ+EX2c269MGPNn2/L/f63VQ88ByquFp0L5+wICvHUBdZ0REwgaDuip/KjRw
	zgFcAcfxXrZoYnr4NBCn1SdOU+4ex81Ojcxi87qdo0DPgQsp+/kIr0OcdfrNthW9hSW9XnRkYB2
	q7LZKTvwB4xAspfsxlcCIs6hKRN4v0nDjBUrg4w9xAF4kya/aXrA4ZzWeBKGsCgDRM+KXEiEk5a
	FxzilhjdnaL21pK/
X-Received: by 2002:a05:6e02:3a82:b0:3d4:3d5d:cf7e with SMTP id e9e14a558f8ab-3d5e09edfcfmr14400385ab.16.1743202434089;
        Fri, 28 Mar 2025 15:53:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGBqZU774BGoBr6lbzimu45XhHdtcDNd4snqXy7IEtvn1AmvirwTEQz0iKa3+r0Phnm6JJ2w==
X-Received: by 2002:a05:6e02:3a82:b0:3d4:3d5d:cf7e with SMTP id e9e14a558f8ab-3d5e09edfcfmr14400295ab.16.1743202433718;
        Fri, 28 Mar 2025 15:53:53 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5a632e5sm6838825ab.14.2025.03.28.15.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 15:53:53 -0700 (PDT)
Message-ID: <292e1d29-48f3-43e8-9177-0238d0d91cb8@redhat.com>
Date: Fri, 28 Mar 2025 18:53:52 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] make consistent example in recv.2
To: Peter Radisson <radisson97@web.de>, linux-man@vger.kernel.org,
 "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <189ef077-18f4-43a3-9008-286a75e7bd91@web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/27/25 1:54 PM, Peter Radisson wrote:
> 
> Replace 0 with NULL als in the example a few lines above
> ---
>   man2/recv.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/recv.2 b/man2/recv.2
> index ba17d03a3..21f65e86f 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -325,7 +325,7 @@ socket (see
>   .BR connect (2)).
>   It is equivalent to the call:
>   .PP
> -    recvfrom(fd, buf, len, flags, NULL, 0);
> +    recvfrom(fd, buf, len, flags, NULL, NULL);
>   .\"
>   .SS recvmsg()
>   The
> -- 
> 2.35.3

Agreed. They are both pointers. It should be "NULL, NULL".
It should also match the text under DESCRIPTION.

LGTM.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

-- 
Cheers,
Carlos.


