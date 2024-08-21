Return-Path: <linux-man+bounces-1634-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D19895A150
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 17:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C65371F23FDA
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 15:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6384F14D2B2;
	Wed, 21 Aug 2024 15:24:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08FA54673
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 15:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724253861; cv=none; b=eMQ3AFgmhVX8k4BOhVbvylne5TJUDz2xFC2MYSC96g81Ds1WavVC0hMQB5mxhDE3V/P/P1zIJQBLhhg5rzupgh/WI+IabxhDZHdlyIqI2Mn78rg8z9EihwTOpblYB+WtI2W3H9mMObO9/NLbm9q2IhDugL+3fhjToHeFiFN2Dok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724253861; c=relaxed/simple;
	bh=NLZxsHcgGvltRcY2nU7Fiv1OYsd7utt/3as9isFuL4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=aARAgFw2M+7wyd3yo60YP54ItVeRK43+k/xwboXPELP1MxnLMZv85gwVDCK5J5fv1kBHmRjecf4rLkhj3yuGdUn3EEJ2QedO2TxEM06ghr920M3j2vCnUeihA/wabm6wursFm4W6JRo9VCDqEkOruJvtuue1oyPd1FhYBnpi76Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WpqmP6bZNz6L78P;
	Wed, 21 Aug 2024 23:21:09 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 081AE1400D3;
	Wed, 21 Aug 2024 23:24:16 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 16:24:15 +0100
Message-ID: <1985d9e7-0de3-9553-2383-45acfc7a177b@huawei.com>
Date: Wed, 21 Aug 2024 18:24:13 +0300
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
To: Alejandro Colomar <alx@kernel.org>
CC: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>,
	=?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
	<linux-man@vger.kernel.org>, Artem Kuzin <artem.kuzin@huawei.com>, yusongping
	<yusongping@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
 <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
 <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>
 <usnabic6hep6kfyijtjjfwykfs62ox4scamegddk3gv4pl3y2t@3aij6xe2um3w>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <usnabic6hep6kfyijtjjfwykfs62ox4scamegddk3gv4pl3y2t@3aij6xe2um3w>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/21/2024 5:06 PM, Alejandro Colomar пишет:
> On Wed, Aug 21, 2024 at 04:26:43PM GMT, Konstantin Meskhidze (A) wrote:
>> > I'll extend the wait until September.  I guess Konstantin's on vacation.
>> 
>>  Hi Alex!!!
> 
> Hi Konstantin!
> 
>>  Thanks for waiting!!
> 
> :-)
> 
>>  Can you please explain the procedure for me? Do I need to resend the first
>> patch with my "Co-developed-by" and "Signed-off-by" or you can sign-off it
>> for me?
> 
> No.  The usual procedure is a reply to the patch to which you want the
> tag applied, with the explicit tags on separate lines, so that they are
> easy to parse.  If I were to send the tags, I'd add the following:
> 
> Co-developed-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
   Got it. Thank you so much!!

   Best regards,
     Konstantin
> 
> Have a lovely day!
> Alex
> 
>> > > [1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
> 

