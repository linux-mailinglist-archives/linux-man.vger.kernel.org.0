Return-Path: <linux-man+bounces-839-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E9A8B54F4
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 12:19:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54E251C21991
	for <lists+linux-man@lfdr.de>; Mon, 29 Apr 2024 10:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145702E405;
	Mon, 29 Apr 2024 10:19:48 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [49.12.208.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA62D05D
	for <linux-man@vger.kernel.org>; Mon, 29 Apr 2024 10:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.12.208.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714385987; cv=none; b=EbIsVTIp3LGlakNF119dczFugPEBD7E2lw3koX5abtFg2Rlb90PMDTE37QW1rDyfcwQffCWJ+BOSDO/0B3gGk3Q3GLiujxaZr1758M55c9E4v/AWOfgrR7BFf1fQe3h3lgYvhIF0xFAazu1guG0RWDqSiLU0jthCz2xa3mfynho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714385987; c=relaxed/simple;
	bh=DrBu8yLbEKI8BVc5h/lVyg64AxCCBDG1IVf/OjzpdD0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XGwCbMjVX75MTRAI1VPpM/ROfMH0jEk5CAwq1NzheJgu76C5Y5YHXkHTB7Q4y9hyuN7BWSLsaDtWJYwc6nDwEXqLSTGaVbkb+LOvMbDjSug77BcPTXhf91wCirMfT+gurmYAoauOqy66sFDdGjlqVoGrLfEa01Mr2R2t3e88bI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar; spf=pass smtp.mailfrom=sdfg.com.ar; arc=none smtp.client-ip=49.12.208.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdfg.com.ar
Received: from [IPV6:2a02:8109:aa26:4b00:1a1e:9a1e:44f7:a3cd]
	by sdfg.com.ar (chasquid) with ESMTPSA
	tls TLS_AES_128_GCM_SHA256
	(over submission+TLS, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
	; Mon, 29 Apr 2024 10:19:36 +0000
Message-ID: <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
Date: Mon, 29 Apr 2024 11:19:36 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
Content-Language: en-US
From: Rodrigo Campos <rodrigo@sdfg.com.ar>
In-Reply-To: <Zh-6YjDhSBUNKmqP@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/17/24 1:02 PM, Alejandro Colomar wrote:
> Hi Rodrigo,
> 
> On Tue, Apr 09, 2024 at 03:10:46PM +0100, Rodrigo Campos wrote:
>> Let's update the list with the last file-systems that added support.
>>
>> You can easily verify this by "git grep FS_ALLOW_IDMAP" on the given Linux
>> version to see that the fs is listed and then checkout the previous Linux
>> version to see that it is not listed, therefore it was added in that version.
> 
> You could add the following to the commit message:
> 
> $ diff -w -U0 \
> 	<(git grep FS_ALLOW_IDMAP v6.8 | sed 's/^v6.8://') \
> 	<(git grep FS_ALLOW_IDMAP v6.9-rc4 | sed 's/^v6.9-rc4://') \
> | tail -n+4;
> +fs/hugetlbfs/inode.c:	.fs_flags               = FS_ALLOW_IDMAP,
> 
> $ diff -w -U0 \
> 	<(git grep FS_ALLOW_IDMAP v6.6 | sed 's/^v6.6://') \
> 	<(git grep FS_ALLOW_IDMAP v6.7 | sed 's/^v6.7://') \
> | tail -n+4;
> +fs/ceph/super.c:	.fs_flags	= FS_RENAME_DOES_D_MOVE | FS_ALLOW_IDMAP,
> $ diff -w -U0 \
> 	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
> 	<(git grep FS_ALLOW_IDMAP v6.3 | sed 's/^v6.3://') \
> | tail -n+4;
> +mm/shmem.c:	.fs_flags	= FS_USERNS_MOUNT | FS_ALLOW_IDMAP,
> $ diff -w -U0 \
> 	<(git grep FS_ALLOW_IDMAP v6.1 | sed 's/^v6.1://') \
> 	<(git grep FS_ALLOW_IDMAP v6.2 | sed 's/^v6.2://') \
> | tail -n+4;
> +fs/squashfs/super.c:	.fs_flags = FS_REQUIRES_DEV | FS_ALLOW_IDMAP,


Heh, nice trick. Do I need to resend for this or can you add it while 
you apply it?

>>
>> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
>> ---
>>
>> I've took the liberty of adding hugetlbfs that was merged in Linux 6.9-rc1 but there is still no
>> final release of 6.9. Please feel free to drop that if you prefer to wait for the final release to
>> include it.
> 
> Are you confident that it will be in 6.9?  If so, I don't mind having it
> already in the manual.

Yes. It's already rc6 and there was no issue reported for this, the 
patch is quite trivial too and was in linux-next before without issues 
either.



Best,
Rodrigo

