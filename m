Return-Path: <linux-man+bounces-2774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFE6A89D1D
	for <lists+linux-man@lfdr.de>; Tue, 15 Apr 2025 14:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82D8E164FE6
	for <lists+linux-man@lfdr.de>; Tue, 15 Apr 2025 12:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77BAE294A01;
	Tue, 15 Apr 2025 12:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eYCL6Rf6"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D372949F6
	for <linux-man@vger.kernel.org>; Tue, 15 Apr 2025 12:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744718641; cv=none; b=EaPR/q5eROUguH3f+kpfOyUiX0NNbOMD3RyvP7L+Lnc1zV8rk22dRYkrk0GoAUIP063D82rj5cDni/J/6M4oewZc39u7Uw98zw4tGRrHWOs1GSLxZ1KzJ3YJC4Z6ECyoJwhkHOkuzeN/wNH6qHQPG1R0/hI30PVcgAg1LNvGNFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744718641; c=relaxed/simple;
	bh=QnP5UcPVqvzQ/U2lir0w274r04CdPE4/tOw4PbTCEMI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=axtfhek9EyZe8qJG17BmJZ+pAYVq0Rz8F08xMwSSeXTHbSomIHV944hPgAeHss1LWD4qzJ143loWYBCKQ7uRSB2W1dJWY1vmRIvj9QA/yfaItD0VqWBCb6mKKViDZol+OhHYTurCdD8RfSFO2kAQDVMHfiVrBr/bngjeMzhzOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eYCL6Rf6; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744718638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JiZ02DGm6uin6LVoJrsVchfrEKTINx5BXm0jdJpAP3I=;
	b=eYCL6Rf6/HJ2tkoJO9JTCAYKWkz9ixLKMwthVSqmb8VlVEW5zkBLmKw7ek087D6qm59MhF
	lv4J48/5xYq6LIP4P0o7oiPd4DHazga7NAxMK/5mFiF0P9TZEPH1j3vP3qDItTVkwXOF9x
	9T0z+e5COiQQ/0fTLKhbp6/nNn2q/ik=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-38-MRRIqA7iMCWTZNRT_KmOXg-1; Tue, 15 Apr 2025 08:03:56 -0400
X-MC-Unique: MRRIqA7iMCWTZNRT_KmOXg-1
X-Mimecast-MFC-AGG-ID: MRRIqA7iMCWTZNRT_KmOXg_1744718636
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eb1e240eddso96086816d6.0
        for <linux-man@vger.kernel.org>; Tue, 15 Apr 2025 05:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744718636; x=1745323436;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JiZ02DGm6uin6LVoJrsVchfrEKTINx5BXm0jdJpAP3I=;
        b=vX8VWan4Q9ywod+UEe6FZ/jLkQ4WgpHGiA2yHX1k+uUIH/PRY7OzXgTij9EO0dSjzP
         WPJ9bp9O73ZcT7v0qIkgDC/JQrrC1/RgeRVIzOcMv9OaQcIO5AAdDf/dyawcwrWnEUMJ
         u52dRbHmH231uj0+YklXqrTPN+E8fnhjx6n4dIsMfC3NSSI/aspqOcRO8BLdvRxxOU7O
         brpTkI2ekb5pQinzi82VPEABORBHsWkcb0D7c4AISw9scdv+l7jaaxAgxC4ndQ4HFUYn
         QP15Gri7FArTc7i+4EicoE2M+e6srQ/vxEkNXqLo8xVyqDEPlxBteOvdPWv0J23qAApK
         juOQ==
X-Gm-Message-State: AOJu0YyUpRWHp6ofBIo+iBvUMVdYxfDY9TxWCNEqgUsasKN+iREuU80u
	XXp974vnRzxUnt9cVafQPNQWdqEj0M6/F3arSuwJ9XQOigTFihY2wH8jWzKhobW0KBjlECpgKsz
	Zv7Iax2WMfSHTSKTcSjI7+Aa6PHLTvEdBqSm1HrqwTOTGde/vP1pEfgb65g==
X-Gm-Gg: ASbGncuE1qqd4JRFTG4ET/bHwNqv+fhpjrWUuIf4j1fBbwXtDzKTBE3qL5Rn897+rqo
	gXCjE8PTICUCpKdsaskzyzuwE+2C/59rAzcYvV/tnivQYh3TQdEEThiDdshWTZ40GKSFGEXOh/6
	goi0m515i76MKktGPO3s2CvjhI95zjYSb4d5zs34+WLkm/PkaTHwc4vK18D9lks70nYVGVAagdi
	ggTtN8r/LfKRxdEjjEIGmFHKAClrf0e7M59lejDWI2LVwrMLqmAmNnCkDpmOU1/6AH/1cfiq40P
	NXU4oypw92iB
X-Received: by 2002:a05:6214:319e:b0:6ed:1da2:afac with SMTP id 6a1803df08f44-6f23f119368mr252202016d6.32.1744718636343;
        Tue, 15 Apr 2025 05:03:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENNCUu+wwDUWGfcpCQxdb719UW6X/8YNaAKFo9oi3elEe0c0zwynwiC1VoY/gRfzk60VOKww==
X-Received: by 2002:a05:6214:319e:b0:6ed:1da2:afac with SMTP id 6a1803df08f44-6f23f119368mr252201446d6.32.1744718635940;
        Tue, 15 Apr 2025 05:03:55 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f0dea2179esm100964926d6.124.2025.04.15.05.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 05:03:55 -0700 (PDT)
Message-ID: <06febfb3-e2e2-4363-bc34-83a07692144f@redhat.com>
Date: Tue, 15 Apr 2025 08:03:54 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: clone(2) man page CLONE_NEWPID and CLONE_PARENT can be specified
 at the same time, also CLONE_NEWUSER and CLONE_PARENT
To: hoodit dev <devhoodit@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <CAFvyz31Em4f7AQRDNJ6gtVBoUj1kQA8WZCGcs0EZngCZosf_0w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/15/25 7:34 AM, hoodit dev wrote:
> In clone(2) man page ERRORS section said EINVAL occur when set
> CLONE_NEWPID and one (or both) of CLONE_THREAD or CLONE_PARENT were
> specified in the flags mask
> but in my test code, it can be specified CLONE_NEWPID and CLONE_PARENT
> at the same time and works well (not in CLONE_THREAD)

The use of CLONE_NEWPID and CLONE_PARENT both creates a new PID namespace
and roots the created process at the parent of the caller.

This doesn't violate any of the rules around having only one process as
the root of the namespace.

The restriction of CLONE_PARENT is relevant to the root of the process tree.

I agree with your analysis that you should be able to use CLONE_NEWPID and
CLONE_PARENT. The outcome is that this creates a new process, whose root is
your parent, and who starts the new namespace as pid 1 (init) for that new
namespace.

> In DESCRIPTION > the flags mask > CLONE_NEWPID, it says that it can't
> be used with CLONE_THREAD only

This is correct.

> So, I search linux github to find really CLONE_PARENT can't be used
> with CLONE_NEWPID but there is no logic like that
> (but I found CLONE_THREAD can't be used with CLONE_NEWUSER,
> https://github.com/torvalds/linux/blob/219d54332a09e8d8741c1e1982f5eae56099de85/kernel/fork.c#L1815)

It does not make logical sense for CLONE_NEWPID to be used wtih CLONE_THREAD.

A new thread shares the same address space, and so should logically share
the same PID namespace. PID namespaces are created by cloning or unsharing
a given process that acts as root of the namespace.

Having a single process with a mixed PID namespace would break several
userspace invariants expected by C library implementations.

I expect the kernel to maintain this invariant.
  
> Similarly, in CLONE_NEWUSER, it says that "This flag can't be
> specified in conjunction with CLONE_THREAD or CLONE_PARENT." but it
> works on my test code with CLONE_PARENT
> Also, in ERROR section only mentioned when CLONE_NEWUSER used with CLONE_THREAD

Just because it works, which might be a bug, doesn't mean that we should
document that it works.

My position is similar here, a new USER namespace that is mixed within a
process that contains multiple threads violates a number of invariants.

The transition to a new user namespace should really start with a process
and all threads should share the same user namespace so ids can be stored
in thread-local objects and shared.
  
> I think CLONE_NEWPID and CLONE_NEWUSER can't be used with CLONE_THREAD only.
> If you think my opinion is reasonable, please let me know. I'll make a patch
  
I agree with this statement, CLONE_NEWPID and CLONE_NEWUSER should not be
usable with CLONE_THREAD.

-- 
Cheers,
Carlos.


