Return-Path: <linux-man+bounces-1631-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F481959E9A
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 15:27:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFBB2282F4E
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 13:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB93199955;
	Wed, 21 Aug 2024 13:27:04 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E8919994C
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 13:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724246824; cv=none; b=gmQd87ZFOyVJB8GV/FRA0WBvCf4k3QFdM9UUdw7V34zafvujaBuI18U7za9V2J4CEt4gqI4cpHRk81oiae+pOa4UpmBOoVHq1M7xhUTMFXqWEzyOK2eQD1CdWL71mZBCkiwg1fcPk0Z5al57ABdWC/K689kyHQYeX3IctU80kdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724246824; c=relaxed/simple;
	bh=UFuYefNKthGolZ/YbRWIMHBZvz9Aqa4g1iHJWiW4/8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=MOdMey/eqKEqTUfw4eEvjzHaPh4soH4kgqOfYIh94OnaUOmBv4AN/cCWFApGLOWYaiGxICN7ofsNQj7OUzxBluJhg6Vst3xhWXC4B+7IP5nOs/cc+Rud0LNrLI2FgIr7yQGuSKx9+9kGLQOt9J6od7+VjoMXGpyigBLwqeIpqoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Wpn9314T0z6L73H;
	Wed, 21 Aug 2024 21:23:51 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 0F664140680;
	Wed, 21 Aug 2024 21:26:57 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 14:26:56 +0100
Message-ID: <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>
Date: Wed, 21 Aug 2024 16:26:43 +0300
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
To: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?G=c3=bcnther_Noack?=
	<gnoack@google.com>
CC: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
	<linux-man@vger.kernel.org>, Artem Kuzin <artem.kuzin@huawei.com>, yusongping
	<yusongping@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
 <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/16/2024 3:37 PM, Alejandro Colomar пишет:
> Hi Günther, Konstantin,
> 
> On Thu, Aug 08, 2024 at 12:09:10PM GMT, Günther Noack wrote:
>> On Wed, Aug 07, 2024 at 03:09:02PM +0300, Konstantin Meskhidze (A) wrote:
>> > 7/31/2024 2:40 PM, Günther Noack пишет:
>> > > Konstantin: I would still appreciate if you could have a look and sign-off on
>> > > the networking documentation patch as well, since you are the original author of
>> > > much of that documentation on the kernel side.
>> > 
>> > Hi Günther. I have checked the patch. It looks good, I left one question
>> > there. Please check it. Do I really need to sign-off it?
>> 
>> Thank you, Konstantin!
>> 
>> I would like to put both your "Co-developed-by" and "Signed-off-by" into the
>> patch, because:
>> 
>>   (a) We should give you credit for the documentation that you've written :-),
>>       and this man page change is based on your documentation in the kernel
>>       Documentation/ directory and headers.
>> 
>>   (b) Committing this man-page change would put it under the
>>       "Linux-man-pages-copyleft" license, which is different than the licenses
>>       used for the kernel, where the documentation was originally written.  I
>>       would like to add your "Co-developed-by" and "Signed-off-by", so that it's
>>       clear that we all agree on this.
>> 
>> For reference, the rules for "Co-developed-by" are also discussed in [1].
>> 
>> Would that work for you, if we put your "Co-developed-by" and "Signed-off-by"
>> lines on the "ABI version 4" man page commit?
> 
> I'll extend the wait until September.  I guess Konstantin's on vacation.

  Hi Alex!!!
  Thanks for waiting!!
  Can you please explain the procedure for me? Do I need to resend the 
first patch with my "Co-developed-by" and "Signed-off-by" or you can 
sign-off it for me?

  Best regards,
     Konstantin
> 
> Cheers,
> Alex
> 
>> 
>> Thanks,
>> —Günther
>> 
>> [1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>> 
> 

