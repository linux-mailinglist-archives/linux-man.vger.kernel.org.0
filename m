Return-Path: <linux-man+bounces-460-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 051F185A85A
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 17:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEEEF1F24D0A
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 16:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D4D3B786;
	Mon, 19 Feb 2024 16:11:36 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0A3B1B2
	for <linux-man@vger.kernel.org>; Mon, 19 Feb 2024 16:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708359096; cv=none; b=Y4kUWH6VUtS0evPstysjLPrqOqpEsizwHd8uY56d3OvBBC3LUDHo6gXtYYlCfXuWJY92fqmlO8EDhfJxMnO3Xr5skykI9QQvvdowFnDSMiD1cyUzHa+XrVxJ4bvPNcFCOTQj6PXTTvUbOJuy+3zSFtl+o5HBS3skMIe95Vd5ryE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708359096; c=relaxed/simple;
	bh=PCUc3TqNm3CNsSIED3om3FX/aE+mefY9A5M331+VemA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=S2xhx/KcIzVmFGcv+pxLKIFnIK3lVkDVeyMOKYrWF2+72rFvTVtpu2qYa4dDm8ToKcWXybLCBykQsgnKa8eeZXTVvV1ehLSN5y6VYebw45BDImpSc9cphMtDdU/6n6+GgFmiZIYmeBKsBo1EmI7viCY+7ZVLmUe3BX+j/1Gic7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: by air.basealt.ru (Postfix, from userid 490)
	id 7A7DD2F20259; Mon, 19 Feb 2024 16:11:28 +0000 (UTC)
X-Spam-Level: 
Received: from [10.88.144.32] (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id AABC62F20254;
	Mon, 19 Feb 2024 16:11:24 +0000 (UTC)
Message-ID: <32e90728-a746-f6f3-ab9d-27dcf4fc468c@basealt.ru>
Date: Mon, 19 Feb 2024 19:11:24 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: man page for syscall delete_module is outdated
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
References: <08125e65-52ed-a846-2b38-c7f63071c898@basealt.ru>
 <ZdNCCy_Yx4Ekx4Mj@debian>
From: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
In-Reply-To: <ZdNCCy_Yx4Ekx4Mj@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 19.02.2024 14:56, Alejandro Colomar wrote:
> Hi,
> 
> On Mon, Feb 19, 2024 at 11:17:29AM +0300, Александр Офицеров wrote:
>> Found out that man page for delete_module syscall is outdated.
>> The behaviour described there doesn't match to code, specifically for
>> unloading module if its have no refcnt. Parameter O_NONBLOCK described in
>> man doesn't exist anymore in kernel versions 3.13+, which is quite old, only
>> O_TRUNC parameter present for actual kernel version, O_NONBLOCK does
>> nothing.
>> I've also opened an issue on bugzilla:
>> https://bugzilla.kernel.org/show_bug.cgi?id=218489
> 
> Would you mind suggesting a patch?  Also, would you mind showing your
> findings in the kernel code?
> 
> See also:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING.d/bugs>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING.d/patches>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING.d/mail>
> 
> Have a lovely day!
> Alex
> 

Sure!
O_NONBLOCK used in "try_stop_module" function, which is invoked by 
syscall delete_module, here is the code of this function for kernel 
version 3.12.74:
https://elixir.bootlin.com/linux/v3.12.74/source/kernel/module.c#L775

However, in later kernels, this parameter disappeared.
Also, here is the code for 3.13:
https://elixir.bootlin.com/linux/v3.13/source/kernel/module.c#L767

In recent kernels, 6.7.5 for example, this parameter also absent:
https://elixir.bootlin.com/linux/v6.7.5/source/kernel/module/main.c#L637

I'll make patch for man tomorrow.

