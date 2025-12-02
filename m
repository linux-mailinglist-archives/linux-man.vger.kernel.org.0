Return-Path: <linux-man+bounces-4361-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB88C9C14B
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 17:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 166A14E274F
	for <lists+linux-man@lfdr.de>; Tue,  2 Dec 2025 16:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A773279792;
	Tue,  2 Dec 2025 16:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ieq7/jV5";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="iD1Rt903"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7A0248896
	for <linux-man@vger.kernel.org>; Tue,  2 Dec 2025 16:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764691472; cv=none; b=bxMwF/Jux6zGxuy0SpFgpyKDPOZYE30xT9xgTDgkSffjH8zt0ZtxWvWw+dVPSaH3ilwpRrn2g9DGixm8vGvRgRgOK877jnTIAoZvPZbkSvdSesRpWC7II9P12wX8CkhxhE/nKLiVCUN1XsVIDaTcYF27JRL8kjtLH1q2kf/Gzdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764691472; c=relaxed/simple;
	bh=Zu1JiSapNm8AeflcFVNXYYAr2MBBnoWJUArViIfV8bc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=shm1TCSzPgoOahy1gbMOXLFUD4xyKt1t1DjCUCJvPQMuyYhzOrWzTZ7WmBv9kGaZ5kq/yp5g2RMlEpB+7EgtVTQy7Dwu4UEkXvXMQsQzYxbgPmJ7LTzp5cUMgGVJv1YLB0qUqFg4Sifc7GhSGFXJY5ScCEluiZn4dMXKRbTclFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ieq7/jV5; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=iD1Rt903; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764691469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=P+9reoJWIUPgPPM0/OuCSFhRhCcGs3ImrPlX0Ez2aHQ=;
	b=Ieq7/jV5jzDPD3OQ5bbg6q63NusEh+pLg2pnwqZf3xX9gX9tmMA/ibwOa8CODISk/9Z4Ji
	GIw1ckEjHFWIfbF1FcJ5a+BRwfH0CH/nCZpI643NQUiIfhhiQw3fK5MAIOI5sI90MwuVew
	sZ/72XQWwFEvKirxuxyErk2Z0jGvSaA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-y7z5UdfaPrSXpWGAz9SViA-1; Tue, 02 Dec 2025 11:04:28 -0500
X-MC-Unique: y7z5UdfaPrSXpWGAz9SViA-1
X-Mimecast-MFC-AGG-ID: y7z5UdfaPrSXpWGAz9SViA_1764691468
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2217a9c60so1711759685a.3
        for <linux-man@vger.kernel.org>; Tue, 02 Dec 2025 08:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764691467; x=1765296267; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P+9reoJWIUPgPPM0/OuCSFhRhCcGs3ImrPlX0Ez2aHQ=;
        b=iD1Rt9036mdxKwYefS4rPBiVolYU7jmJuaneu9JFR+B3vqcF6JWewJaMP4kMEVedhH
         0cQB2Q/dQsFsanz+fo5fy/p7pp6AETJCj9g3Ca38lgDdzS11UojR0u2ATuKXJoEfMNiL
         QqsKOiIbqH/LeKDBD7BoJJFj+VAOpI0FJOpQmyvjfwx7AVEbQ02HiX7dZpXUhZgWkJL1
         pGadTlZPwPYJkHhIbEKrDBJx9ggN+68K0dXNHyzQFG8tiRGZbpV+QA3APxgWsDjFVKQd
         opRqiAnkFJEqLPjQgrJvMIyPOenTtP/+x16F00tQBkAwYqKCRWBXhmbQwjcRCq7RpHpl
         aDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764691467; x=1765296267;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P+9reoJWIUPgPPM0/OuCSFhRhCcGs3ImrPlX0Ez2aHQ=;
        b=fdkTKTzTtYaBtTvlVCK89gNvEL5BAEKxuFKsPxBadvWLt4dwuFT+5LnbsZiDkFk+x5
         QCuUu1BvfhnQL16Nv7UAUs6yCnnoLkhYNLxEJZv0GpKIAzt8XOq5WgW4/NuSash6A1Yq
         gYVuLJlei5ZS2t5YiqX6dlLOkn/PEJuG6ng3SS4vxTdRQOaZH2knYP+HQnVQTTyxetR1
         zT95KMuVoxrCNX6cgYWOyiP94N7107hD8KB1dyrKzhq4agzQI7MSq97BZeGDq3dbcSUC
         l4me85jUT32gtTsT7en1J0ZrR/Aknq26Uw3fsjOK4fwm3CSLcyUgWzL1Ur/SLxGpfhvn
         R2ow==
X-Gm-Message-State: AOJu0YzpfzbiW/+ZuexCY1BkKvxLL3I0edsr08sjhzoryAH8pdOPKAX6
	93frqTEw64eTqh+NtOsZYPqwk4GgKfLfNIXUZOB4CnifBWOqTif7G2yiaJAz3cAb+Bv+o98XmYn
	OoaGVUaD6zaMT4a1dwZN8BXqey6J5ZMTGMg+AeU/xu7FHStzxuySxRxizNoEqkw==
X-Gm-Gg: ASbGncvxz4KrItnVwm0SfgfCSIASryT5x92vWw0EuNRIV7ZeB/CTjtojV8UB9ynJQZL
	BXbNs5/oKELBoA3UH+SuD/RCRJ2ul30bexD7sZJsdKjJp09Vj5SKZ3J2fwofi35g/Q5MD2VBgdA
	+ToWU7xhkiMIXlyKR0yMBznMXiSup3T866r/c/P6vEw2ZJ2Z6sXhw+fNkJRzjMnf/fTsdX5a/XC
	44u22BlR2rGySmB9x/LbAoRAE3MyKdTCJHxXxHdwiC9GEjris1uTi93Ed5qQrVS4xPo3F5faT7/
	gc2FRIVFVy/sH2tx5YE1zfk6iYRcMv1nA+dxWF1aP/ihPYeIOAc7Qyw9tADz2jtu+lW50JsqUSJ
	YT+iI5+1DYyg=
X-Received: by 2002:a05:620a:19a2:b0:8b2:eea5:3311 with SMTP id af79cd13be357-8b33d1fd27emr5782028285a.26.1764691467599;
        Tue, 02 Dec 2025 08:04:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHv0cxhWPDqv0MsLR2CSScHUHKUTU4uUOJCYBTtm14vOSg3dC3NRjxgFvJCVdnoE3UGhdw6iw==
X-Received: by 2002:a05:620a:19a2:b0:8b2:eea5:3311 with SMTP id af79cd13be357-8b33d1fd27emr5782016585a.26.1764691466821;
        Tue, 02 Dec 2025 08:04:26 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b52a1b7d99sm1092884185a.28.2025.12.02.08.04.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 08:04:25 -0800 (PST)
Message-ID: <d02d88d6-c070-4221-a52b-6d3835fef461@redhat.com>
Date: Tue, 2 Dec 2025 11:04:23 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: manpages-utils
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <jmimqym6lunvyv6mt6gtwn62okem7yxnwrmzk7enuqzezudu3p@4thuem54w56w>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <jmimqym6lunvyv6mt6gtwn62okem7yxnwrmzk7enuqzezudu3p@4thuem54w56w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/2/25 7:56 AM, Alejandro Colomar wrote:
> I've seen you've removed the scripts from the man-pages package in
> Fedora.  Would you mind providing a separate package for the scripts,
> called man-pages-utils?  We're discussing the same thing in Debian
> (with the name manpages-utils) at the moment.

Yes, I can add a "man-pages-utils" sub-package in Fedora. 
> The next release will include grepc(1), which is a script useful for the
> general public.

Nice.
-- 
Cheers,
Carlos.


