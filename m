Return-Path: <linux-man+bounces-2481-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD837A3AC95
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 00:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5CA4A7A5304
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 23:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5507C19CC17;
	Tue, 18 Feb 2025 23:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KmPibyGy"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEC91474D3
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 23:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739921613; cv=none; b=E+mFGYzw3+IT8ZZxh1JTaExDN/4GCaNaV1z0uJJdbypJoSpiP6dSqee6EuHVSO6h5go3mNHY/kAxGWt1YbGlJ/vk31yNliILBJ64Me/ylaOUNLWQGv0Nekt7ezdRs14swhuuQrDbSyE1O/oDKI5AkAxao9QqxKJMMWuZQWfxlOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739921613; c=relaxed/simple;
	bh=pkvxohChHaVYV+W+CklcNuXvckeo5nmCDmtpu+KnfTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bOjOZG9Y5jL04aG6EipdaIOwT3CQtq2wK0upgItxwuBKqdqQeKpkv+AfTLl4qXHnuWvADxM4tl61l44W12PfE0U8YB6b5kdVlSNli6ADgFEIL9C0uXjvRqOmG209O6nvGTg1kQncVV8HdkjOkk9N3yuElCtV9V6Q0HHoyuKQjgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KmPibyGy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739921610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=beZDvX0G2ztVmqD2hItZV++oJf80Za01P3giaeJHVy0=;
	b=KmPibyGyfnNr22TCOAj4KbzG4DtKt8ADz7o3PZx9QH22y6dtT0WQh7X4gttZeSFuP1oPK1
	aLxGO3lm/gbhwxoACJdkSQLGAdlaFchv1pzkylh4tsWte5MU3Fyt/ppBS9LxwRShNZIfJU
	n1lw4Mjoc72gV+t4hcvS6rmGNRWXMlc=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-282-vLdhclNtPoC6Nzf4HUeF2A-1; Tue, 18 Feb 2025 18:33:28 -0500
X-MC-Unique: vLdhclNtPoC6Nzf4HUeF2A-1
X-Mimecast-MFC-AGG-ID: vLdhclNtPoC6Nzf4HUeF2A_1739921608
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7272bdd323dso543104a34.3
        for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 15:33:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739921608; x=1740526408;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=beZDvX0G2ztVmqD2hItZV++oJf80Za01P3giaeJHVy0=;
        b=DJ82TFSrPglSMUFnt0UyG0Vbb2N8Qx4bSTb/yfp8gPKgeJDqXS1noQeXgu2ztHDGkN
         ukT8rs8qrru/L44/to0nScXfQWxRkaZj8KQ5pfZUYf+DItkUuUxZ4XfPlzusHXXRIgbv
         uxfSmcm0A+qdcl74pGf4g4DYlMTUwiy4hQufd+dU4x4TOAYdngoPaNYNUc7YRGzbN/9J
         F3HTMsHaeR2RZeWCMqGU9VqP87umqr/IFtEkZifQ5EwRsfMBd8pSIp7XCMoqeA8EFco5
         3CFTlN4aDu9dAO7KRgPEBoHQqiACCfMzeWgCJHEsjaVnjgyFkO1o+RULxXHWzEHi2wP8
         5tug==
X-Gm-Message-State: AOJu0YwigSvakry60V/cN6IGs8pUhP/hQtpYvfM0grt/vYFu6bwUw+nL
	Lb+WnWmkrN7qJDDjXaf8hQ+FPCVz5qBleN58EZEgxTGR/zQ+ZSLZLEmgHEaOVau7ckfy7U4A2mf
	e9zP2akJf3blpTG6BvCCiqmrm6AGvS5nbDGxJphX7dIbjSXWT9ACCceGsDg==
X-Gm-Gg: ASbGncvsciZqwaOzfet+PrxvBkGh5lQeswe3BJQJ7IAyfwFwwM1ltcICYZEcQbckofF
	D4i/xXrLisNgIs4KXyTRRyJ0kPRMHDsCi3iEKtMx2Qq2QBY0OeM4jwniGsLLj/MeavGL2+KB10N
	swpoegQNZAry7cFPmYILEALYvVjdjNlzmOb5WHlIFabXOK5/nVYrcEn5VL4bSyW5SekuSfhb+32
	4cr/UL/UaeSLqUSlBgd1yaqUt7+Ju36sr3+IKoD3Hae0FkfvnmTGQQb/epwY3rUkw5gAuNcmxiK
	1XJAIA==
X-Received: by 2002:a05:6830:442a:b0:727:3380:66c3 with SMTP id 46e09a7af769-727338068c9mr3060118a34.28.1739921607814;
        Tue, 18 Feb 2025 15:33:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFijtkA6O4LjSYWDIA4MOcT8l4Q4lMu8/45XHV9ZUvr6Zr01g/5k7eT28xQKlUvpZuO96TCgg==
X-Received: by 2002:a05:6830:442a:b0:727:3380:66c3 with SMTP id 46e09a7af769-727338068c9mr3060104a34.28.1739921607526;
        Tue, 18 Feb 2025 15:33:27 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72721e49c2asm1736912a34.23.2025.02.18.15.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 15:33:27 -0800 (PST)
Message-ID: <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
Date: Tue, 18 Feb 2025 18:33:26 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
To: Askar Safin <safinaskar@zohomail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250217165143.1265542-3-safinaskar@zohomail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/17/25 11:51 AM, Askar Safin wrote:
> Signed-off-by: Askar Safin <safinaskar@zohomail.com>

LGTM.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> ---
>  man/man3/getcwd.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 919ffb08f..f3da4b5a9 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -245,7 +245,7 @@ process (e.g., because the process set a new filesystem root using
>  without changing its current directory into the new root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
> -When dealing with pathname from untrusted sources, callers of the
> +When dealing with pathnames from untrusted sources, callers of the
>  functions described in this page (until glibc 2.27)
>  or the raw
>  .BR getcwd ()


-- 
Cheers,
Carlos.


