Return-Path: <linux-man+bounces-5031-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KESRG9CDhGl/3AMAu9opvQ
	(envelope-from <linux-man+bounces-5031-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 12:49:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C92C6F20D9
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 12:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C2333032063
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 11:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1F13A9D8C;
	Thu,  5 Feb 2026 11:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b="HORYpC/o"
X-Original-To: linux-man@vger.kernel.org
Received: from canpmsgout05.his.huawei.com (canpmsgout05.his.huawei.com [113.46.200.220])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845F3ACEF9;
	Thu,  5 Feb 2026 11:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=113.46.200.220
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770292087; cv=none; b=bX52Pzmote+11WvqJhrkwNch7c0SPVcTH+mZyFoFBp8D+XkO74ZTBbJP5qBZfv5K6zEOWjDRLB56dEXRz1jJjHr9NBLibKGpwTo4CahpLF2BWnmrccBXYDQuciPEJGVHCQ+DXvxVdxYqB3VICifnM0lb6AY8dj7xREBR+fLD1sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770292087; c=relaxed/simple;
	bh=R8ouFOvIM3YEyVU3FyhmSkSI84Ktl1xT8Ezkm5sftRU=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=cNVMR1c0J5dPGF4zARsaVPBWHlQKEQwubgUzCJUsPIVxNt0YjZVIhGtJGxT+XGmyp6r+MUtkjP+hg9Pk6sjDGzSyg/s78lV5mnGV1p+wFgdgnJNaQfHaT3j3wAQJRIJzOIiNBp+WoX5CRtvevPMRBTc9sNKHV3xTCVzJaV+6yTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b=HORYpC/o; arc=none smtp.client-ip=113.46.200.220
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
	c=relaxed/relaxed; q=dns/txt;
	h=From;
	bh=cGgOyeoTNoxsN6zJ2XO4mcwfb4d8rRz67JRHDhtG3aA=;
	b=HORYpC/oBlWO1M/4fN1DXnfKvdA5U0gMFJyn25nzbATYWtOnkjXQoWRtVAngeXlZhvLJX1QyN
	xvqhY0AGe9o9fk2gy9GUHyi6u8EJRnaYprhHsX5FWrhlU9fLIUEhMPtwvdXZ1AeHbfMyEcZ++T4
	v4HgmPHInBpUpaNtY5wNW6Y=
Received: from mail.maildlp.com (unknown [172.19.163.104])
	by canpmsgout05.his.huawei.com (SkyGuard) with ESMTPS id 4f6Fk54Fkzz12LDg;
	Thu,  5 Feb 2026 19:44:13 +0800 (CST)
Received: from kwepemj100004.china.huawei.com (unknown [7.202.195.249])
	by mail.maildlp.com (Postfix) with ESMTPS id 22450404AD;
	Thu,  5 Feb 2026 19:48:03 +0800 (CST)
Received: from [10.34.206.51] (10.34.206.51) by kwepemj100004.china.huawei.com
 (7.202.195.249) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.36; Thu, 5 Feb
 2026 19:48:02 +0800
Message-ID: <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
Date: Thu, 5 Feb 2026 19:48:02 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
To: Alyssa Ross <hi@alyssa.is>, Alejandro Colomar <alx@kernel.org>
CC: Heinrich Schuchardt <xypron.glpk@gmx.de>, David Howells
	<dhowells@redhat.com>, Nicolas Bouchinet
	<nicolas.bouchinet@oss.cyber.gouv.fr>,
	<linux-security-module@vger.kernel.org>, <linux-man@vger.kernel.org>
References: <20260203195001.20131-1-hi@alyssa.is>
From: Xiu Jianfeng <xiujianfeng@huawei.com>
In-Reply-To: <20260203195001.20131-1-hi@alyssa.is>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: kwepems100002.china.huawei.com (7.221.188.206) To
 kwepemj100004.china.huawei.com (7.202.195.249)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[huawei.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmx.de,redhat.com,oss.cyber.gouv.fr,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5031-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[huawei.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xiujianfeng@huawei.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,huawei.com:email,huawei.com:dkim,huawei.com:mid,alyssa.is:email]
X-Rspamd-Queue-Id: C92C6F20D9
X-Rspamd-Action: no action

On 2/4/2026 3:50 AM, Alyssa Ross wrote:
> This is true for Fedora, where this page was sourced from, but I don't
> believe it has ever been true for the mainline kernel, because Linus
> rejected it.

Yeah, I also found this issue not long ago, but I haven't had time to 
submit a fix patch yet.

> 
> Link: https://bbs.archlinux.org/viewtopic.php?pid=2088704#p2088704
> Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqOzzMufBoovXVnfPw@mail.gmail.com/
> Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

I am not sure if appropriate to add my ACK here, if needed, feel free to 
add:

Acked-by: Xiu Jianfeng <xiujianfeng@huawei.com>

> ---
>   man/man7/kernel_lockdown.7 | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
> index 5090484ea..5986c8f01 100644
> --- a/man/man7/kernel_lockdown.7
> +++ b/man/man7/kernel_lockdown.7
> @@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdown.7
>   .in
>   .P
>   where X indicates the process name and Y indicates what is restricted.
> -.P
> -On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
> -if the system boots in EFI Secure Boot mode.
>   .\"
>   .SS Coverage
>   When lockdown is in effect, a number of features are disabled or have their


