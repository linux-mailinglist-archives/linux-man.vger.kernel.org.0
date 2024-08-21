Return-Path: <linux-man+bounces-1632-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 979EC959EAC
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 15:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAE341C217AD
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 13:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A952219ABC0;
	Wed, 21 Aug 2024 13:31:00 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2FA15B134
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 13:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724247060; cv=none; b=Fh8+uD/rf8MRCEXG2XUVInE8du0Il6Q7aqjMGTZ7LHFFJDbi/O5TdSEIufopTXp8VY6GzEoU9LBTz4D3fb8tHO4urJuFy7aZ0heybJAc2oaUZYUSwsNjB2nYW/terC7Sob/U/tX+DLnWW4sXa/ObXxirttVAxTP7xK48ObKljHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724247060; c=relaxed/simple;
	bh=zwyuhixgoLvmmBGdf3IGby4+yGo1SNXXyRuBtSg2xGI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=eKqg7C/XYB6SD3ZlISBTXLg6U7z7jBVPrR3lxLYqId5wqor/FWgSxuBoZIzubwguPO3kg8ZHo8k4dYx/A/2rgpDYP7xhk3esrScPjVQ1LDNppE9clwXmnEnHcRkZzGVLoby/cEAb1QqdBEh+V5cEXQSSo3ycHVqL9ho5O9p/5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WpnDz5fqDz6FGkQ;
	Wed, 21 Aug 2024 21:27:15 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 91CB0140B18;
	Wed, 21 Aug 2024 21:30:54 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 14:30:53 +0100
Message-ID: <7f0e36f4-0ee4-f127-ba87-3e9c018320ff@huawei.com>
Date: Wed, 21 Aug 2024 16:30:52 +0300
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
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
CC: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?=
	<mic@digikod.net>, <linux-man@vger.kernel.org>, Artem Kuzin
	<artem.kuzin@huawei.com>, yusongping <yusongping@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <ZrSZRi5BPelnaq6X@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/8/2024 1:09 PM, Günther Noack пишет:
> On Wed, Aug 07, 2024 at 03:09:02PM +0300, Konstantin Meskhidze (A) wrote:
>> 7/31/2024 2:40 PM, Günther Noack пишет:
>> > Konstantin: I would still appreciate if you could have a look and sign-off on
>> > the networking documentation patch as well, since you are the original author of
>> > much of that documentation on the kernel side.
>> 
>> Hi Günther. I have checked the patch. It looks good, I left one question
>> there. Please check it. Do I really need to sign-off it?
> 
> Thank you, Konstantin!
> 
> I would like to put both your "Co-developed-by" and "Signed-off-by" into the
> patch, because:
> 
>    (a) We should give you credit for the documentation that you've written :-),
>        and this man page change is based on your documentation in the kernel
>        Documentation/ directory and headers.
> 
>    (b) Committing this man-page change would put it under the
>        "Linux-man-pages-copyleft" license, which is different than the licenses
>        used for the kernel, where the documentation was originally written.  I
>        would like to add your "Co-developed-by" and "Signed-off-by", so that it's
>        clear that we all agree on this.
> 
> For reference, the rules for "Co-developed-by" are also discussed in [1].
> 
> Would that work for you, if we put your "Co-developed-by" and "Signed-off-by"
> lines on the "ABI version 4" man page commit?
> 
   Hi Günther!!!

   I appreciate this. To be honest this would be a honor for me.

   Can you please explain the procedure? Do I need to send the first 
patch with my "Co-developed-by" and "Signed-off-by" or you can sign-off 
it for me?
> Thanks,
> —Günther
> 
> [1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
> .

