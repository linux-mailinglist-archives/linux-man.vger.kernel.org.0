Return-Path: <linux-man+bounces-4122-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9D8BDB7C1
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6199F3AD400
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0992130CD86;
	Tue, 14 Oct 2025 21:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DaHgE8lO"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE5307ADE
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760478944; cv=none; b=ag1jfn6x9/T/jsocX+8cEhmEDv3pSyOWv/mOr9f3fffY4Sc+XJC49oQx9mW5OAlWrrevlaEGjtDiiFmP4yA6IEJ11NTBEBXrg9EYX92JvHH1rHW+hjLdETjqs0cbraI0bAQBD44i6FDaRfip2uIYXQB1SBHwxlImEM+vGSgTOWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760478944; c=relaxed/simple;
	bh=NIyG3i0QyOXf5dC5b3MPxm7QTd2O639bztg0j4BEy4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gh6/5gpwYE1fJ4aqiqy6pVwRQL2ozVgyL5eXL9QCavHs2HWMoGz3DU4Nc77cW5hBe7depMatcAj3lsr2qL475H/egUQRMtFpGjzI2wvLmi8EWqdiso//JXFup3k7557IOWQXjCf82SnAMh1WrikOybDJU7dtAZNUtEPY6+7FmmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DaHgE8lO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760478942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=oUwksmpaa+yxCL3b4AW2Bixdp7dK+rVeVmYtY+oGqdE=;
	b=DaHgE8lOB9yg93FRk0mYMBKGM+V+HeT48BFgyiwW3GPo9m29HxLq6Ed8zjmLyWJl5c7omT
	MPpt9gsyHwgwCJnBxUO2wQIPhgvRBTdelzVhJbM217Jx4+WfvlOR0DnLYZkFtUyyfM8Z/l
	QXsaoEXJ1BqFuD1iDkLCgcCHT9kix28=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-456-XbdnpQ6qM8KpN-SVMtA9hQ-1; Tue, 14 Oct 2025 17:55:40 -0400
X-MC-Unique: XbdnpQ6qM8KpN-SVMtA9hQ-1
X-Mimecast-MFC-AGG-ID: XbdnpQ6qM8KpN-SVMtA9hQ_1760478940
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-818bf399f8aso376401586d6.2
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 14:55:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760478939; x=1761083739;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oUwksmpaa+yxCL3b4AW2Bixdp7dK+rVeVmYtY+oGqdE=;
        b=FECgu74g9gtiimgfkfGuNGI0LhKjIQyjQ4pILsW2iL4uo3eCeBbt3uePyLBaO4pvRn
         oKVbFMSYqpsPM09I5KLgFksoWTOfg04TAzxO/tZr3SX3CB30ZalbO1O7C8TLu0sY9Wi+
         8cAm8X4I0aEi12/YSJbWa+vSR1MxtVX4SkO0xSW2anOZId3dxnUJ2+mBznxMaHW6kQIY
         KsgitbhF2pEITSbLqjEoEp82CZ1spx0UnuVEqC4YHbDtMJzdXDBjDdumC7e8sFm8hAL/
         4OITe7G65XpAKe8ufaVFarpmzrYIIgcn0r4eqxtpBCd5vpBwgzIrha90h9lx4hC1tQZM
         FRqA==
X-Gm-Message-State: AOJu0YzsAY/S6RdDAGFDGQhK7cA4RR0VqyTKQFQAs/IgayyO8zOaKVaZ
	FfcTgVdVScE5cZ5l1JdsAziXhJZAilJvwhT2E/9lKkJJIxrrRObwNGm21QlJHuuJWYSxhIWjfEz
	0r70llxkcLL+OXfvL6qFVzeWBPqaBd3WwpKYIXCwP/GKAgN+eOIxFYz4IaYeKvVeVJVpX1g==
X-Gm-Gg: ASbGncsrlSuFs68e2xCx/Spaub8KIw7/3t5Ht2sh0En/xOB8ufjriCK3KyD4O4LfSzU
	eUOQ346Pliy2dQ2h6n99Evr69bwC4CRmyPv7FwObT2x2dM3M/+iu0inyR7+ByFhk/D0PgbqaN0z
	OBjMi44tP801u0E6j0i0kS3PKFDWNjZPZeu57sx/nS96s/H4FibywxESjtou/yHnh9AMtL/Xt51
	CHncsN2p1AAMuNlUymTbCvw2hL5dr42CzLP1iFxaWbOVlVLC4ZtpPUR2eg50t396dpbl8ET2F6f
	xCIWLCW2AxHG9+B5sbeBKTPyvZuTHPHnocK3NdkONQ==
X-Received: by 2002:ad4:5f4b:0:b0:783:aeed:f585 with SMTP id 6a1803df08f44-87b20ff9b77mr416064506d6.14.1760478939669;
        Tue, 14 Oct 2025 14:55:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMFcc1y6VfekCC3gitn7XdjeQYtDQFVzwUbFSwela5CwvoOidB84msrKjx17h6/0fVenkmAA==
X-Received: by 2002:ad4:5f4b:0:b0:783:aeed:f585 with SMTP id 6a1803df08f44-87b20ff9b77mr416064326d6.14.1760478939336;
        Tue, 14 Oct 2025 14:55:39 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c012919e1sm6016546d6.34.2025.10.14.14.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 14:55:38 -0700 (PDT)
Message-ID: <25ee1bda-0f88-4d01-954e-c0a1f96e4cc7@redhat.com>
Date: Tue, 14 Oct 2025 17:55:38 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>
 <52x5itydvtb24jhakwaactrtigxoig3k7z6eo2dr3ngr3fdwhh@t6lxeyodyph3>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <52x5itydvtb24jhakwaactrtigxoig3k7z6eo2dr3ngr3fdwhh@t6lxeyodyph3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 5:52 PM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Tue, Oct 14, 2025 at 05:32:17PM -0400, Carlos O'Donell wrote:
>>> +Name
>>> +	AI - using artificial intelligence for contributing
>>> +
>>> +Description
>>> +	Any use of AI for contributing to this project is unacceptable.
>>
>> Does this ban the use of LLMs in assistive technologies like screen readers
>> for the blind, or speech to text for those with mobility issues?
> 
> I'd have to analyze case-by-case for allowing exceptions.

May we please have exception language for these cases?

-- 
Cheers,
Carlos.


