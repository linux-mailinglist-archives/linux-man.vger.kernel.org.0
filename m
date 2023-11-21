Return-Path: <linux-man+bounces-136-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 654277F3802
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 22:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 971001C20C45
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 21:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D04854667;
	Tue, 21 Nov 2023 21:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="MYwnjQJG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F514D5C
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 13:18:58 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id DF1C23C011BE6;
	Tue, 21 Nov 2023 13:18:57 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id lxSWzXHEYb_A; Tue, 21 Nov 2023 13:18:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A68313C011BE1;
	Tue, 21 Nov 2023 13:18:57 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu A68313C011BE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1700601537;
	bh=boiF1iEFc/kotjGbh3pvexILvIbZPSl5m4vTwhKVO9A=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=MYwnjQJGA77qUcJvL2HtrjwPMJMpRAHZBqvgjsq9m0N9IpiwL+gkmObPY8XgsTB3y
	 2ZvEh1cR2Io8yIpp3ileGPfiW3piJzf3sk90rPR0FClGFYdxuxAFsxA8xzt2pOr2m1
	 gNAjwCfGXLvg+Tv/PlskuKLnr68HQt16iJZypCn4+CBzt9vR24Wq4TtnrIwLvXCbH3
	 4SV14l8yM8m40wHJhalEvI4JH80zfOZFugi8ahpKrPg6SBy+x+HfxXCE8xJBYFe/Z1
	 wwSX6SupLJwh12//9qIK3xKkvxWGNumzRiN5SrTTwpyamFtB4llnR+YhiG55wLWd29
	 8MZZ7FtIiFHTQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id WrsLaF0_uQ4P; Tue, 21 Nov 2023 13:18:57 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 8F07C3C011BE6;
	Tue, 21 Nov 2023 13:18:57 -0800 (PST)
Message-ID: <1f070716-51d5-4439-bca2-1df2351d318a@cs.ucla.edu>
Date: Tue, 21 Nov 2023 13:18:54 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] stpncpy(3) fixes
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-5-eggert@cs.ucla.edu> <ZVF8B-guyK2Zby4P@debian>
 <ZVz37_06mbiMBMVc@devuan>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZVz37_06mbiMBMVc@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/23 10:33, Alejandro Colomar wrote:
> I've applied some of the changes in separate commits:

Thanks for doing all that. Although I haven't had time to check the 
results, I'm sure they're an improvement.

