Return-Path: <linux-man+bounces-2618-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D88AA6ABA7
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 18:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 238AD3A9419
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 17:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738A922257D;
	Thu, 20 Mar 2025 17:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jPaTqWNy"
X-Original-To: linux-man@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8994922370C
	for <linux-man@vger.kernel.org>; Thu, 20 Mar 2025 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742490144; cv=none; b=fT6KMjg4A6i7Na/dy6+awg0HMJvdjqqZ4FMQQ+DyBX5QIG9xseGT6IFqHOxdgFo+Y0khMBHp87w9ngDmL3rDqUWbE983D8MnE7VpmoLQbR9ufwOO0ksMlIgMkLrOyd+jAIL2yjTPpeZncDe0I6QWwdK/QWD7wHQO3oWhf/5gF4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742490144; c=relaxed/simple;
	bh=wmfBX4H5ouLEwlvbLNHdWBOfqEzgXZoz5kpQeWHeHhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CWGHqmQ03sEHIpEMNPQxFsRHc6rLJmN1gjmPUKONc/TVqeEkr+idVYc3Fn4oIWDrgVCoTDAeArrDAhff/dSVwZqS/Ix1MyV16eIIhxlh+vmGuDzv5yYnIQbFN7ISAURi+a8EEjA+AKwTNyGkiLE/jEUqbK/OfvrTAjQmqg6u4Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jPaTqWNy; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1742490143; x=1774026143;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=wmfBX4H5ouLEwlvbLNHdWBOfqEzgXZoz5kpQeWHeHhM=;
  b=jPaTqWNyp4ZrjxKevPwq6EFiZo5g56TUsmi5EU7ellKmGYOkzhqi2xos
   dt7/c5DV05yZ68miqq9M/VumCRlZ5pfleWrYJpWXNyhSz7Ywl+uttCFAH
   8ydJNz32T2Yr6XiaVKQhchaA6FYVx1eUgHtRe9SbKr1DXJiTiaOi3vZzt
   iCDyGrFM5P0hVNy0AwjXTvuIYY3uQ0kVCSCMv4qUWzpyL45tuo6BmOgQS
   2U+J8xLgsv6zqC5HgZXroMotogblTOWakNvh3HALUprqL9oM0hFfptHvY
   EDvnEiviDwRSQrVJ094jLpqGxBskDi1/90BuDuGttZ6unb189zvCPZpbl
   w==;
X-CSE-ConnectionGUID: HDRlhQzvSf6UfGXgpuWztw==
X-CSE-MsgGUID: H6J+7CpuTx+dJVpEe7JXHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61261188"
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; 
   d="scan'208";a="61261188"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2025 10:02:22 -0700
X-CSE-ConnectionGUID: ar7Uf2+ASK+rppc8ZA3Ybg==
X-CSE-MsgGUID: FBscEXpZS0eI515EgwHSSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; 
   d="scan'208";a="154052173"
Received: from shandley-mobl.amr.corp.intel.com (HELO [10.241.241.117]) ([10.241.241.117])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2025 10:02:22 -0700
Message-ID: <47de99ff-0943-46a1-92d4-a2306978a229@linux.intel.com>
Date: Thu, 20 Mar 2025 10:02:21 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
To: Alejandro Colomar <alx@kernel.org>, Joe Konno <joe.konno@intel.com>
Cc: linux-man@vger.kernel.org
References: <20250320163319.808000-1-joe.konno@intel.com>
 <zvmwpscmqqyyqwktnvd7e56tw2bpop7hlhold4wfhx5nn46vdv@54zng5rcq2gg>
Content-Language: en-US
From: Joe Konno <joe.konno@linux.intel.com>
Autocrypt: addr=joe.konno@linux.intel.com; keydata=
 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
 tCRCdsPPABEppd2LVTTt4EIZ
Organization: Intel Corporation
In-Reply-To: <zvmwpscmqqyyqwktnvd7e56tw2bpop7hlhold4wfhx5nn46vdv@54zng5rcq2gg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Derp. I can't blame Monday for this one. ^_^ Apologies for the noise.

On 3/20/25 09:42, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Thu, Mar 20, 2025 at 04:33:19PM +0000, Joe Konno wrote:
>> Checked, and nodemask parameter for this syscall has been a pointer
>> since v2.6.7 (near as I can tell).
> 
> It is currently documented as such.
> 
> 	unsigned long nodemask[(.maxnode + ULONG_WIDTH - 1) / ULONG_WIDTH],
> 
> It is an array parameter, and array parameters are adjusted to pointers.
> 
> 
> Have a lovely day!
> Alex
> 
>>
>> Fixes: 77f31ff920bc ("get_mempolicy.2, mbind.2: SYNOPSIS: Use VLA syntax in function parameters")
>> Signed-off-by: Joe Konno <joe.konno@intel.com>
>> ---
>>   man/man2/get_mempolicy.2 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man/man2/get_mempolicy.2 b/man/man2/get_mempolicy.2
>> index 526acc0c9a17..d6a8eca9564b 100644
>> --- a/man/man2/get_mempolicy.2
>> +++ b/man/man2/get_mempolicy.2
>> @@ -18,7 +18,7 @@ NUMA (Non-Uniform Memory Access) policy library
>>   .nf
>>   .P
>>   .BI "long get_mempolicy(int *" mode ,
>> -.BI "                   unsigned long " nodemask [(. maxnode " + ULONG_WIDTH \- 1)"
>> +.BI "                   unsigned long *" nodemask [(. maxnode " + ULONG_WIDTH \- 1)"
>>   .B "                                          / ULONG_WIDTH],"
>>   .BI "                   unsigned long " maxnode ", void *" addr ,
>>   .BI "                   unsigned long " flags );
>> -- 
>> 2.49.0
>>
> 


