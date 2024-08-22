Return-Path: <linux-man+bounces-1646-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C295B0E1
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 10:47:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 061911F262E6
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 08:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E0016EB65;
	Thu, 22 Aug 2024 08:46:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3F216DEAC
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 08:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724316378; cv=none; b=PZpRXQJA/Pic207dX0DB+FOpBlJ4iCZPBtTILbOPsQozQI5xgKwZ6qu+k5tLvERMBpL3wLHBCAps1CUjXr7XYuGae4GsHpCyZeY/Zg6/IOR7qhJXCf7bkO7O/LaFkxMzxD9v9E6RAoe4wjebjD9PcRDXQAVuIWWn9hR8RpaTjTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724316378; c=relaxed/simple;
	bh=Abxm4+auBbZXMdl8j+nlQzwljg/aMjpONdC5RuCtLiE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=OgIM7KtJ59XaaucwN7C6sEsa64isn3jSXVfwX/xa4vysDZMtKRZo6nvzPA6DUZLjXUklWbM6UkQDwnNvbJeYr+MFrR4ufVJ9GoCmtKsGYOxTwwyvWT9KmEltlpZ59ZD5Ex9Bc7zwxHuacPycpJROZPz52Pls8xa4Z578CmBejOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WqGtl1pJZz6K9bP;
	Thu, 22 Aug 2024 16:43:11 +0800 (CST)
Received: from lhrpeml500004.china.huawei.com (unknown [7.191.163.9])
	by mail.maildlp.com (Postfix) with ESMTPS id 758CB140A46;
	Thu, 22 Aug 2024 16:46:12 +0800 (CST)
Received: from [10.123.123.200] (10.123.123.200) by
 lhrpeml500004.china.huawei.com (7.191.163.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:46:11 +0100
Message-ID: <66eef8a3-007a-2a64-c95b-f23edc872db0@huawei.com>
Date: Thu, 22 Aug 2024 11:46:09 +0300
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
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
CC: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?=
	<mic@digikod.net>, <linux-man@vger.kernel.org>, Artem Kuzin
	<artem.kuzin@huawei.com>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
 <ZsYXx1unBN1kISK9@google.com>
From: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
In-Reply-To: <ZsYXx1unBN1kISK9@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500004.china.huawei.com (7.191.163.9)



8/21/2024 7:37 PM, Günther Noack wrote:
> On Wed, Aug 21, 2024 at 06:30:09PM +0300, Konstantin Meskhidze (A) wrote:
>> 7/23/2024 1:19 PM, Günther Noack wrote:
>> >   [...]
>> >
>> >   Users should use the Landlock ABI version rather than the kernel version
>> > @@ -439,9 +455,10 @@ and only use the available subset of access rights:
>> >    * numbers hardcoded to keep the example short.
>> >    */
>> >   __u64 landlock_fs_access_rights[] = {
>> > -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
>> > -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
>> > -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
>> > +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
>> > +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
>> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
>> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
>> >   };
>> >   \&
>> >   int abi = landlock_create_ruleset(NULL, 0,
>> 
>> Co-developed-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
>> Signed-off-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> 
> Thank you very much, Konstantin! :)
> 
> —Günther

   Thank you, Günther!!! :)
	
   Best regards,
       Konstantin!
> .

