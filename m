Return-Path: <linux-man+bounces-1099-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C47903FF3
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 987341C20B6C
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14DD224C9;
	Tue, 11 Jun 2024 15:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="XSzK8Mq7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CC6219E7
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718119538; cv=none; b=OY8E/TZKA0GUTzR34/leDaSnPewp/Wz5zXMNs5SOiLJAfRV45LHoRtI2EcHJvYPaobI0HTNxuY6BVMboKbpLu9AOZh/nWV/gFY4Ujii13wzx4+7urlaV7/qea0snZbwQsB0yFDcv7CphSduXdSLEphT6QkSFvAWwUm+b7jCCU/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718119538; c=relaxed/simple;
	bh=n1GwRxn2f9Z8VqDXDEC82Nfar77EeMVF7DzmN2V1TAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HyJXwNRCeTIT1dCHNRXPUxnEI3x7h80XqIwaI7Tm+paNh+Nrizb45800hk7veBnmNMxnkDKAlkmX49aNReleVz2ztawkL9IW3kpHwujSKQY5pppw56VTodXJGfBGOvy1YocRJlfk6wY/+5FboCIDAfYvZzMLLBf6bzgb/ZI9hPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=XSzK8Mq7; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 4AC3D3C01409F;
	Tue, 11 Jun 2024 08:25:36 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id XLmLNp8c7uLc; Tue, 11 Jun 2024 08:25:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 00CC83C0140A0;
	Tue, 11 Jun 2024 08:25:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 00CC83C0140A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718119536;
	bh=QiKE05FI0UvMtuyblxyRUjCD+oAXDP53T4tTZk+gPN4=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=XSzK8Mq7gG+870aRg2z4zYyykTDaX5Z3UYsntOku37akh4+emUa+8ZU4cMFj+a34O
	 a666yERDy6Lxd5u5xLMRGiQTsYQEfT2QrdTLuNSGaCjODot1+MqZT4k+XE2st0KTnF
	 kvjRJkWBR9P8594DHTNdi6KihM2ItBP8F2WX1RJFQgFTu1IaX3GPLX4K1QOC9mwwwN
	 EL36lOYwlPbvPEkpAxvt5t7mg3+VbH9Yr3uLNe0rkPAv/Ozf2r5SVc5Bw7pngemxfA
	 BgGgT12VhyhDRH7fZbRIswSFceb4giYkdyhRQCh/Qkbf1KvW24UI7/G78eoXyZl/jQ
	 Wwwpqh4+BcuEA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Xhx84V9vaYHG; Tue, 11 Jun 2024 08:25:35 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id DA9FF3C01409F;
	Tue, 11 Jun 2024 08:25:35 -0700 (PDT)
Message-ID: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
Date: Tue, 11 Jun 2024 08:25:35 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
 <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
 <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>
 <7k3zem6o7y25szuxuxe6zmhi7xqioqe4d74s74y32yhceht2cr@lscysoj5eqoq>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <7k3zem6o7y25szuxuxe6zmhi7xqioqe4d74s74y32yhceht2cr@lscysoj5eqoq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-06-11 02:03, Alejandro Colomar wrote:

> Feel free
> to send patches to make those sections more acurate, by documenting the
> actual first POSIX standard that documented them.

I don't have time to do that with all the man pages, but I've done it 
with ctime.3 and tzset.3.


> Of course, if a standard or system made significant changes to the
> interface, we also document that there.  I suspect some of this 2024
> change will have to go in HISTORY?

I constructed another two patches to try to do that.


> Thanks; I'll have a look.  (Hmmm, I need to make neomutt(1) inline
> patches like mutt(1) did.  Or I'll review it with mutt(1) maybe.)

I had forgotten that attachments are not your style. For convenience I 
plan to follow up with all the patches (now 12 of them) in individual 
emails.

