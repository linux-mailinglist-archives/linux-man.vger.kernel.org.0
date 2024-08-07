Return-Path: <linux-man+bounces-1586-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C783A94A784
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 14:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 326E21F21A1A
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 12:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 942131E4EF2;
	Wed,  7 Aug 2024 12:09:27 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A76B1E4EF5
	for <linux-man@vger.kernel.org>; Wed,  7 Aug 2024 12:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723032567; cv=none; b=LvaT/kDPczbK5tkwo0ildCJ1YD9ftN+bNJEF0p7gIXNQTymQwUaXD6vjercOZ6jDfmdX4uZ+fMsNHydxS+ErqFM73Cd9ahjOAafJPkJ2/W2ZwjnJNsQ70UmH+wZWBjXpCO71dHDh7Q/kTt7Mas4F7Cp7tBRHt0LasxjAwqwJFYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723032567; c=relaxed/simple;
	bh=blOQKWliYJ+4hhUp8h8y7vtbwVljEt3oTICIw/NINIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=b3KqdDh9vYQid2dzN2eJyD52imzNPoOEU5RELXC1TiLTIUE3XYduIz1WHWPmaqv8ZQD4z/s64OuQN1APu+FSMs5ihRy8VatdQv++izTjjJYB7o+N2Ww7NrbJpb1Cx2KVTzUQLQSomg4H3MT2M9dSwt+GjaY8pHEswLBqncZkt5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Wf86N39b4z6K9bW;
	Wed,  7 Aug 2024 20:06:36 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 2D5A0140B35;
	Wed,  7 Aug 2024 20:09:21 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 13:09:20 +0100
Message-ID: <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
Date: Wed, 7 Aug 2024 15:09:02 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
Content-Language: ru
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>, Alejandro Colomar
	<alx@kernel.org>
CC: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
	<linux-man@vger.kernel.org>, Artem Kuzin <artem.kuzin@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <ZqoixhC_jvuiK0m4@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml500003.china.huawei.com (7.191.162.67) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



7/31/2024 2:40 PM, Günther Noack пишет:
> Hello Alejandro!
> 
> On Wed, Jul 31, 2024 at 12:58:51PM +0200, Alejandro Colomar wrote:
>> On Tue, Jul 23, 2024 at 10:19:17AM GMT, Günther Noack wrote:
>> > Landlock ABI 5 restricts ioctl(2) on device files.
>> > 
>> > Closes: <https://github.com/landlock-lsm/linux/issues/39>
>> > Reviewed-by: Mickaël Salaün <mic@digikod.net>
>> > Signed-off-by: Günther Noack <gnoack@google.com>
>> > ---
>> 
>> I've applied both patches; thanks!  For the moment, they're here:
>> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log/?h=contrib>
> 
> Ah, thanks, I did not realize you had a separate cgit running there.
> These patches look good. 👍
> 
>> Did you not add a CC tag for Konstantin on purpose on this patch, or did
>> you forget?  Should I add it?
> 
> It's fine as is.
> 
> I CC'd Konstantin on the first patch, because he authored the networking
> features, and their kernel documentation, which are being turned into man pages
> there.  He was not involved in the IOCTL feature, so on that patch he is not
> CC'd (but can happily comment, if interested).
> 
> Konstantin: I would still appreciate if you could have a look and sign-off on
> the networking documentation patch as well, since you are the original author of
> much of that documentation on the kernel side.

  Hi Günther. I have checked the patch. It looks good, I left one 
question there. Please check it. Do I really need to sign-off it?

Regards,
    -Konstantin.
> 
> Thanks,
> —Günther
> .

