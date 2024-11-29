Return-Path: <linux-man+bounces-2079-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1D9DC348
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 13:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE2CA164021
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 12:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EAC19C569;
	Fri, 29 Nov 2024 12:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PaWVca2C"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4D8198E74
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 12:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732882456; cv=none; b=oGoSqqU3pFihh4rd2N4AhTMtkLvuyhcQU6AvDGGlpbnPrnhl/1IOubyI8jsVuGbd+UOZ8iIZhIbcQq75pcmPegWq7BMA7J5XiQtLe7kxCy7zcvap64Wt4lChF12mw5YjPDzu8lx0lOX0qvROV1rpQUi64JTLuI7ZfVwtJHZfQ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732882456; c=relaxed/simple;
	bh=w5JsYI4VhyyRRqWAuGQUQ/rCTTFdtQD0jkgwbSOGNa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LaCyKuAreIZOYpS9PNmktMg/hjfH4Ziyp1KjCmOseReJ82dSBbjgZkIRCOWIdAAs9hoijWxOh/FB8Vzo9eRBeoKZmgaGl0d6ci0UljlAjG0Q2xxSJMuTPgdDYfYZ8eYT9B26PNSj9FCIpelaPE9ep/jXFOGoR0ow1OaHDuPyIz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PaWVca2C; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732882453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=hlfEri01GyeMuNcS++/NWlLaQFjqg0a8FX75YUa8fV0=;
	b=PaWVca2C+JdrXM6LYuWCTbUJbmycjA7XP0P1Y5O6IZmohX5QJsiVnoO+Zp/j2IQOqpFh6Q
	3y48CeEM3gQpKNpwXl7EU/74habdZjjVTQ66WZcocse4aky/T1ibraaAv1Cns1kwibnJEW
	Zrh40BCQNmA9Kxyz8mUe5rNJRV4UkLo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-4xq3qDbjOwqz19Ft3vPEhw-1; Fri, 29 Nov 2024 07:14:12 -0500
X-MC-Unique: 4xq3qDbjOwqz19Ft3vPEhw-1
X-Mimecast-MFC-AGG-ID: 4xq3qDbjOwqz19Ft3vPEhw
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-38242c5b4ffso1178996f8f.1
        for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 04:14:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732882451; x=1733487251;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hlfEri01GyeMuNcS++/NWlLaQFjqg0a8FX75YUa8fV0=;
        b=VprolmSog9W1g+aXro607qGwA6gqbeu5pSwSS0d2wSwSBn1fswAU1o97+h5m1S9uO3
         i/WJcydAz0j4iHrgxnSqRIN3v4hwEY5xIqqgibr1syzX4OQLxMyfffY32I2d2SNWd/Xu
         zdXuZcfZ0nMsFSXnCqkq37aKeyLClgRJ4emK/5+KzaqVExF4nGvcxrM0AvJ1maX4VQmQ
         AM5HIkxtrbdkH4utKiDIhQ11P9JU4DSkIx61rVn7+qUVfvAdTUywq9ueFWWbmvxwvZEx
         gWxIJq3ci76Zucp3izY2w3IV6QZuzPXSJy5VvfnXRuJ1Snbiga1XTda4ClJclMJus5kB
         EemA==
X-Gm-Message-State: AOJu0YyRFFkPsHNM9qvfTDwOakMAtIv7k1l5fKOg4cpKPFKXu5MstWkY
	Vhf2ndx56gRrJlmuG6yudEq5yCiDD621M3/cFHQxzboSynHvGQ0zJ3D1BI79DXLDfoBsQO3zYpy
	hEt2rGKtHtTHBJxvUWI5xuvWoFp3h2afcz4J2MeXTSrEsXgKDKli5gsj+Nw==
X-Gm-Gg: ASbGncuKElv+Va3v9vlhduyUIGnX4LZi4PQJ3MM3shUuvtx6lqc438Xsh/b5gj782yz
	Y4mW2pxV8cJFKXhjKZCSdmJB+vtoYJZFqRtTWv6gjknqKD3x5w5qcM1aXXgcgO88eq44XODCk2s
	fJbS5+2DJV3BPLvWMGgslJcF0WAiwXl4oJnnP7cnvg5U1STmfCkIxgWKLdg2JXKf6EnQgmqNaoK
	2bR/2TYQ1U1vYcn/XtW7r9jWSqhWX52ogtI0tHrNBGvxszdLnQdQsvZme5pewegdvE0Bms4H/Lk
	gn9c0v8IaXi2UvYKViGn1Dy3O8rl1fn3F4HdiOv10SNOJnFXVczfsYoEi4Kp/1VBWsSVsLP5IB3
	XLA==
X-Received: by 2002:a05:6000:2a9:b0:382:5141:f631 with SMTP id ffacd0b85a97d-385c6ebe29cmr8918695f8f.29.1732882451221;
        Fri, 29 Nov 2024 04:14:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhogCXQuVnNz4yHxtdr8VbpquoBwUo/ZwAaF7Aj1lG3OSxyn/u7+OACGAVhb8XJqWZL2dvfQ==
X-Received: by 2002:a05:6000:2a9:b0:382:5141:f631 with SMTP id ffacd0b85a97d-385c6ebe29cmr8918671f8f.29.1732882450900;
        Fri, 29 Nov 2024 04:14:10 -0800 (PST)
Received: from ?IPV6:2003:cb:c71c:a700:bba7:849a:ecf1:5404? (p200300cbc71ca700bba7849aecf15404.dip0.t-ipconnect.de. [2003:cb:c71c:a700:bba7:849a:ecf1:5404])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd36919sm4284557f8f.39.2024.11.29.04.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 04:14:10 -0800 (PST)
Message-ID: <b6b1a9a4-0189-40d8-9aef-a4393c795451@redhat.com>
Date: Fri, 29 Nov 2024 13:14:08 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 "Liam R . Howlett" <Liam.Howlett@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
 Jann Horn <jannh@google.com>, linux-mm@kvack.org
References: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29.11.24 10:55, Lorenzo Stoakes wrote:
> Since Linux 6.13 it has become possible to use all madvise flags when targeting
> the calling process. Update the man page to reflect this change.
> 
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> ---
>   man/man2/process_madvise.2 | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> index b78a61553..d12407bdb 100644
> --- a/man/man2/process_madvise.2
> +++ b/man/man2/process_madvise.2
> @@ -54,7 +54,7 @@ This value must be less than or equal to
>   or accessible via the call
>   .IR sysconf(_SC_IOV_MAX) ).
>   .P
> -The
> +If manipulating another process, or prior to Linux 6.13, the
>   .I advice
>   argument is one of the following values:
>   .TP
> @@ -74,6 +74,9 @@ See
>   See
>   .BR madvise (2).
>   .P
> +Starting in Linux 6.13, when manipulating the calling process, any advice flag
> +is permitted.
> +.P
>   The
>   .I flags
>   argument is reserved for future use; currently, this argument must be

I was briefly concerned when reading the subject, then I realized here 
"calling process" :)

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Cheers,

David / dhildenb


