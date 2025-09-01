Return-Path: <linux-man+bounces-3818-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8A0B3EC12
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:18:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 963D02053D5
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39AD92DF13E;
	Mon,  1 Sep 2025 16:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jpo0Ru6T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6032D5936;
	Mon,  1 Sep 2025 16:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743510; cv=none; b=ctSmmicMXX4mV8hfYXY6+BlLbZy1HYFzV7YeIoPD6/pzPBUWKmub0LFffoaCYKPEFMR0W8WBefke7lJjiIwu9H0DUA7GXdPZp/Jc4N0h9lleaeCyLtGH4Vgazw5kMn1ZbUebfAlu4rj//0z5esvTxjBCKH2jzH7KNYe/JTYfbsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743510; c=relaxed/simple;
	bh=UtOCrLxqzamnGb7bO1ATcpwJzcjzTdRVFJYrwOP3Tf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HbLiy/k1V1n3wKw6lip90dv3Ppw2L+72sKqw6rKb9vDNSJMc2Ami/QHe+HqogD2cGsMPETrAumOYjc1LI+beAwWwvprf1ashPPaJQOiNLM0CLDlgkbssUEHNvCSIN+c8MYgos4JQqgupDpfAfVRCVHlRKY3b2Lianr6uXjVuwDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jpo0Ru6T; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3d48b45f9deso1030318f8f.1;
        Mon, 01 Sep 2025 09:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756743507; x=1757348307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4T20e8TU6kS3w6Y7quMf/EXjDBpaK6/eQzUTY2kj1Qw=;
        b=jpo0Ru6TAHZwtkAymp8UulCi2+KcfhGdOSoK2snY6v3IXEIteWS7cINRvzEY56e0CM
         J8MqcJWUxzb1B6ww0InlHBZ9s0ps+xzvgcu5SZb8VSccHAP7rzJSpyGXjyl06znsebSa
         n2pLWkbYXrdwNNnPX+/myFI2Z4TVnVThPAKJudsM2/7mRn6tzxQY+5D9FY8BV1Gtul5m
         InQWf0uZSEqXpvUhPCHXt2cxNZMarpH9L69SRxKA3w/ib/EGdiASAUI+yyTl6/Q8JLRi
         ftLKG20vu8gM4swWRvahRJK/8JZMq/OqsAXH8yX4m318Jym9tdN7Lii6YsWUErPhXFS4
         3w+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756743507; x=1757348307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4T20e8TU6kS3w6Y7quMf/EXjDBpaK6/eQzUTY2kj1Qw=;
        b=jmYOxsC3fDOSfjhMCTLUa71bpRFn7SM7fEI29SQ0hWYjoz8gRjjRB2Sc+Xj4JXYbUV
         jPg5gFZpZHZqg5RjNgzjlsvi9Fzb2nahy/Hz2OoByLNBJIRW3x1ggPafsfe5w2DHLZHf
         Y8hyEFPOlJ5IWh0IiHXTlrYLmXXRYzMblkchZPHWcQqjVFLkic4i8KykIk+nkAc0+rJa
         ICJkJh2JT1VT+KCwOwKyNz3ZSXShjdEVBe8GoDz0/NKyfpgx3rz197nGm2yfaNN+Qghw
         +6JI8cFe11tqCoN5Z1QMakPUBhTBKgVTaE6Nsfs8Duwa00JVTGLTxx8ZF48SfjamRCSF
         C6qA==
X-Forwarded-Encrypted: i=1; AJvYcCW1/yT2AUw5aaJEZ/viKRR/8pxtx97tN/rEC8NP1+nsSNSSJzakCitQSD4H2mVuldCVMa6VkZVYQy44rJ4=@vger.kernel.org
X-Gm-Message-State: AOJu0YxTxREWZ7tZTT0XidXrKrw8fvUOhP+ANQUHptcGc28AATrDbO6a
	NK+q+AnRrBOiP5nU14nXYs8aFEdBn6kk6ikaZlk0fpmd+5dJVYnfdGJQ
X-Gm-Gg: ASbGncsDtQtP73bkrEILNZ3kmI++l+9aGw9n2mDtALzYpLChvZQax+ctbZWg37yyTBm
	P2M0b+Z/AWmAG6mPFjmJTmZZYY5O6xBOEsyBxcXAy7NL26Ad9u42y16m3+LRlCtPVpRcoErrjvB
	7icLjYJYZKH30GvDflPjmUEsCldZuTRZxgyr447B69vlNB+/l0WPF8MksSP5JDqkivY4vKaukYM
	km5+T19PxDWJGM35+HOQV4b6Pkb15tDCidki1Yll2tNmFSpdawnqVsYWYoNQOuYqo4F4bgSuQOY
	dDj7nVfmz+8c0+3M1+/RJSiVnqKX8XwqV3tLBCxXYAwNR76NtephGwBzKV1PDRO+zmCCo92LUEf
	hbeXFvVNcZ3bO5EY60Jo//TtnvM8isnNLv+AHsWfIbCjYuoHBjvZkq1il9RbAuzolQIalPWw=
X-Google-Smtp-Source: AGHT+IE4o1X666yM5YK4CWMgLOs9K0BUTaD/qeKFd/cch0hzU4hnLxPKY4JoNDxrEJrrsbDrncdUUQ==
X-Received: by 2002:a05:6000:1786:b0:3d1:721:31de with SMTP id ffacd0b85a97d-3d1dc5a279fmr6680867f8f.7.1756743506453;
        Mon, 01 Sep 2025 09:18:26 -0700 (PDT)
Received: from ?IPV6:2a03:83e0:1126:4:1449:d619:96c0:8e08? ([2620:10d:c092:500::6:8e4b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d729a96912sm4104778f8f.8.2025.09.01.09.18.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 09:18:25 -0700 (PDT)
Message-ID: <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
Date: Mon, 1 Sep 2025 17:18:22 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, david@redhat.com, lorenzo.stoakes@oracle.com,
 hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev,
 ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com,
 Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
Content-Language: en-GB
From: Usama Arif <usamaarif642@gmail.com>
In-Reply-To: <20250901160903.2801339-1-usamaarif642@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/09/2025 17:09, Usama Arif wrote:
> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
> THPs when advised. IOW, it allows individual processes to opt-out of THP =
> "always" into THP = "madvise", without affecting other workloads on the
> system. The series has been merged in [1].
> 
> This patch documents the changes introduced due to the addition of
> PR_THP_DISABLE_EXCEPT_ADVISED flag:
> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>   is configured for the calling thread (with or without
>   PR_THP_DISABLE_EXCEPT_ADVISED).
> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>   completely for the process, or disable except madvise
>   (PR_THP_DISABLE_EXCEPT_ADVISED).
> 
> [1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmail.com/
> 
> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
> ---
>  man/man2/madvise.2                      |  4 +-
>  man/man2const/PR_GET_THP_DISABLE.2const | 18 ++++++---
>  man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>  3 files changed, 61 insertions(+), 13 deletions(-)
> 

I am not sure what the right time is to send the mandoc changes.
The patches have been merged into mm-new for more than 2 weeks.
We can still review it and I can resend if needed after the kernel release if that
is a more appropriate time?

Thanks!
Usama

