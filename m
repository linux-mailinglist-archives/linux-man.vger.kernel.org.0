Return-Path: <linux-man+bounces-3033-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC71FAC4EC7
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 985B517D8EE
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76CB32561AA;
	Tue, 27 May 2025 12:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bvozfrtv"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A64C2ED
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748349447; cv=none; b=mCrNEa1gxX/B9fDJQlPACtjjuASq85gLT435SvxdUxl4xghtAuHSMHKCm8Y8AiejfkS1OvcDYgqnUKoo3eSJEHeq1VNBrxV0rbIWkiRIV80CjegXkVwPIYLlzKXbTJiwqT9l1/pbHqvhPz8pfAdrSKRGDV8EDboR5iaBiIdILr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748349447; c=relaxed/simple;
	bh=481EDfX8TnMPTPr/DsgRAVVXOnYi08UC+JO4XWZG77Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N5BBn4iHdKXkhTiTGeQs+L5DBC6JshB3b8XkeEJE2ZxyFQJ9HUjlmv92Od/eE/rkFiTWGYkbpTo2MSiV+oRhn3GAO/UIlcbOl6djj5TPiwQezAsPHHA3aH2sxo24dVkfOSbXsuKXpPH+yjwxtvTn4xdLmkMP1jq8agTlql0xHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bvozfrtv; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748349444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=VAGW/zJKvtf1Chat5NrEIIga+jAS60CZ2Glooy7WkVk=;
	b=bvozfrtvL4ignS4xivVPo0tKaYUSRNWi5oF+HioaM6+cqFTN9e2NVVYhdb6ln+lfrxKloH
	m58JIPFlEmBQm/PxO2zvxm10YMqal7nHpLrFz2QHbYHCclTvpsqHhBD6Xn5Y47FpxKbg5D
	LukiuoommIsj3lYYu4oBzw6ke+K9rTo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-mBfl_gbFP5OAZBpKE0zoRA-1; Tue, 27 May 2025 08:37:23 -0400
X-MC-Unique: mBfl_gbFP5OAZBpKE0zoRA-1
X-Mimecast-MFC-AGG-ID: mBfl_gbFP5OAZBpKE0zoRA_1748349443
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6faabeb105fso25112176d6.2
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748349443; x=1748954243;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAGW/zJKvtf1Chat5NrEIIga+jAS60CZ2Glooy7WkVk=;
        b=BivXEox6iWLmdQ7uUmP3zEB9XWMiQuSs5EY3kPv9iNmr4LAMSB9K85aTb6dNKb31hK
         69GOHvYcG+gakN9Qm+taBbQOMm5s3y/tomO656kBya3Ghg/rOmMNZeyMVFnV4jy5rU/6
         MXpUXM2fjCCGXFYXDhZ5ZkdQdIrrYV13RkfbESNLu8GQz9xPXzLH3pOeoPjz5FYLggX5
         FNzaEKie7aZzrWewqOMxq3Yc1EmhuyUiVGH1gqF35OmZ+6XomlqPzMbx+KJOghXVe+Qq
         Y/iCfgltIqBR11/QRTAevLiA4yhmiJ5sDN8M8HiKS5cxdRc7DlINvJ5mp+NYOG4Z4qeh
         03Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXt/lheIhHc7sxsmsmeH7IgEB2LONR8VhHDnmvLUHcwX5dqNo0tsNMn8D3UF3ML+vM8OzIrZCP3dNc=@vger.kernel.org
X-Gm-Message-State: AOJu0YybSthAOdbSuavZMHeqc061gHKtfyBtCwKHSRMcNMGm2NPCgzKe
	tGmMsjpOWc0lXz3zoq8glV7nzoaUkPy/uSpSk15eHE2FCMZjCyg4qZS8pjcxyWSd26HG80OuLQs
	FqyE0ebx9Mmpy9UnMho1NjK/bJojotF9esWiaoQhcBU4l05IrAjETfarZsx4Tew==
X-Gm-Gg: ASbGncsp36oU+R9YjkyPaGI7jydV1DrYblBf4rlW+aFp1CS8EiSPgyBeHZRYqE7+wno
	7P6cVuN1zutKnOxz/XXu+nKM8udwZfDcvh+gyPIT1H0Nz3qtN6YxeA2/NpT3+KmM6+BzpKuP/3R
	5VBQuJJw8WmISEos+M8WySu2XfcQ/HZBqc/jzxveYOe6xjCfBkRZvpP+/AvIJUhawzA4StBxYZy
	EG2E+mGsBqfMeJlqaQhiXQDLR4HVtp3evPaIf0CxkcjV9fap7sK/RuRRen8l8w/aSQBZIJTKb54
	cuocKxjMYMhe
X-Received: by 2002:a05:6214:f04:b0:6f8:d223:3c32 with SMTP id 6a1803df08f44-6fa9cff5fdbmr197749376d6.10.1748349441094;
        Tue, 27 May 2025 05:37:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn6rM7zIhBWM0ojcYjLo5FHgIgcDP8rE8HvzJc8io8/Nf+ie+HCkUB/7kL77Xg4EQAKkG6fQ==
X-Received: by 2002:a05:6214:f04:b0:6f8:d223:3c32 with SMTP id 6a1803df08f44-6fa9cff5fdbmr197747306d6.10.1748349437832;
        Tue, 27 May 2025 05:37:17 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fab8831927sm3469376d6.104.2025.05.27.05.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:37:17 -0700 (PDT)
Message-ID: <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>
Date: Tue, 27 May 2025 08:37:16 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>
Cc: Alejandro Colomar <alx@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Todd Lewis <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <20250527142812.51ee1c30@inria.fr>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250527142812.51ee1c30@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 8:28 AM, Jₑₙₛ Gustedt wrote:
> Hello again,
> 
> On Tue, 27 May 2025 08:12:41 -0400, Carlos O'Donell wrote:
> 
>>> 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand
>>> description of FUTEX_CMP_REQUEUE") Fixes: 8297383e9eeb (2015-12-15;
>>> "futex.2: Clean-ups and FIXME removeal after feedback from Thomas
>>> Gleixner") Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
>>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>>>
>>> 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
>>> 	index 128612ee1..9a15a0fdb 100644
>>> 	--- a/man/man2/futex.2
>>> 	+++ b/man/man2/futex.2
>>> 	@@ -501,7 +501,7 @@ .SS Futex operations
>>> 	 (Specifying the argument as 0 is not useful, because it
>>> would make the .B FUTEX_CMP_REQUEUE
>>> 	 operation equivalent to
>>> 	-.BR FUTEX_WAIT .)
>>> 	+.BR FUTEX_WAKE .)
>>
>> This is incorrect.
>>
>> A value of zero means no tasks are woken.
> 
> No, `val2 == 0` means that as many as specified in `val` are woken,
> and that no task additionally is queued on `uaddr2`. So this is
> definitively a wake operation.

I think we are talking past each other.

Since the parenthetical is not clear about val vs. val2, it can be
read in two different ways.

See my comments downthread about how to improve this.

-- 
Cheers,
Carlos.


