Return-Path: <linux-man+bounces-1647-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3361E95B0E5
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 10:47:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E55A0281981
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 08:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E2A55892;
	Thu, 22 Aug 2024 08:47:53 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1565C16D4EF
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 08:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724316473; cv=none; b=G3/KGXMxI1Q6DRdiiRSNP1SLrq8NGML8kYUfLd/Oxt3qUlUj4t+GvZgP7Tp3oTyErSQPjYpe77e6FV2nnsgOjEarOhfU2cY8DpJkO9DOrtxUoCELRgVEuSUo8Lb5kdd0TiXc8b84Ltfq9XUpcUB47v9Ocs/KJ4PtByEHSV2XYQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724316473; c=relaxed/simple;
	bh=K/ec4D0XhIHftHL7+zv3S9WkQLNcSBTyWBmu60bU+Qk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=afC0ZMO8Xxv0Lq5WgfaWJAirIXvBaxDrZ6/W8wVaGb4TQN2N+OFXJPK19ygqF19BJ14aT6cIHijrNLTrj9MAEr8j88uplG4ZfJPM8pBXICSINrxdswClkzM+MwDbCiABPPJ+a7OwqhdfrgaOGUpo5SuDy7qFa2HpDQeMjqEb/n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WqGwT3q33z6LD5k;
	Thu, 22 Aug 2024 16:44:41 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id A9E9D140D1A;
	Thu, 22 Aug 2024 16:47:48 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:47:44 +0100
Message-ID: <8a588feb-294e-1ba6-38b7-b814208f0c13@huawei.com>
Date: Thu, 22 Aug 2024 11:47:44 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Content-Language: ru
To: Alejandro Colomar <alx@kernel.org>
CC: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>,
	=?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
	<linux-man@vger.kernel.org>, Artem Kuzin <artem.kuzin@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
 <vw755xl6gszlioyauluh4iusd4fvzlmotwvzxxrwa2m42q6hu5@fobtpva5l5pe>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <vw755xl6gszlioyauluh4iusd4fvzlmotwvzxxrwa2m42q6hu5@fobtpva5l5pe>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/22/2024 12:54 AM, Alejandro Colomar wrote:
> Hi Günther, Konstantin,
> 
> On Wed, Aug 21, 2024 at 06:30:09PM GMT, Konstantin Meskhidze (A) wrote:
>> 7/23/2024 1:19 PM, Günther Noack wrote:
>> > Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
>> > 
>> > The intent is to bring the man pages mostly in line with the kernel
>> > documentation again.  I intentionally did not add networking support to the
>> > usage example in landlock.7 - I feel that in the long run, we would be better
>> > advised to maintain longer example code in the kernel samples.
>> > 
>> > Closes: <https://github.com/landlock-lsm/linux/issues/32>
>> > Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
>> > Reviewed-by: Mickaël Salaün <mic@digikod.net>
>> > Signed-off-by: Günther Noack <gnoack@google.com>
>> > ---
>> 
>> Co-developed-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
>> Signed-off-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> 
> I've appended the tags, and pushed the changes to master.  Thanks!
> 
> Have a lovely night!
> Alex

   Thank you, Alex!!! :)

   Best regards,
   Konstantin
> 

