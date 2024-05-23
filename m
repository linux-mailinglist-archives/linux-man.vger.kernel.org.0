Return-Path: <linux-man+bounces-979-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DD88CCF20
	for <lists+linux-man@lfdr.de>; Thu, 23 May 2024 11:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 389F7B23675
	for <lists+linux-man@lfdr.de>; Thu, 23 May 2024 09:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A463113CFA2;
	Thu, 23 May 2024 09:24:31 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [49.12.208.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D1F13E023
	for <linux-man@vger.kernel.org>; Thu, 23 May 2024 09:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.12.208.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716456271; cv=none; b=MJhJQojwvfZvw5rQrSdshcqFhc6MhISRGyKuNghUAS2WKobkXwtHtpZiPHvVA5qd5TtjqFPwRcgczLTgcJlsYx3fL9y6+EGFkYUwmunEFiKSXkUj5DpyVJxWhijpHZPUwArkVTKTZX2OOdtJxqO6cgR6XUjCcWneCfcZ7F013Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716456271; c=relaxed/simple;
	bh=g5LPouwxW9u0l4m85fdBYzGb0dDTRA0ODJphLLVBf80=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YLrMuNtrCdSQkJe2NrCEBMHH5LwVHVocIBJYIlD8gDADw/X0Wz3ePf3vaaCrtDl/A277oISEnMbkhlqRyxnjdgC8qs/MCCGHSgrEOZut57A3s5F5JpLRMOZ7vVsvXK3WXOB3lpsu3nHu9xQfX3COgnSlaDDblsrRaA26iadRr7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar; spf=pass smtp.mailfrom=sdfg.com.ar; arc=none smtp.client-ip=49.12.208.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdfg.com.ar
Received: from [IPV6:2a02:8109:aa26:4b00:1a1e:9a1e:44f7:a3cd]
	by sdfg.com.ar (chasquid) with ESMTPSA
	tls TLS_AES_128_GCM_SHA256
	(over submission+TLS, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
	; Thu, 23 May 2024 09:24:19 +0000
Message-ID: <4fbaa4ff-b107-4233-90d9-d1dbeb96628b@sdfg.com.ar>
Date: Thu, 23 May 2024 11:24:19 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian> <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian> <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
 <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
 <qyn3hupk2sqn2bogy3zdlfc5mqndfu42uwxnfvb6z6l6ueiqcy@al4qxblxfj2o>
Content-Language: en-US
From: Rodrigo Campos <rodrigo@sdfg.com.ar>
In-Reply-To: <qyn3hupk2sqn2bogy3zdlfc5mqndfu42uwxnfvb6z6l6ueiqcy@al4qxblxfj2o>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/21/24 2:16 PM, Alejandro Colomar wrote:
> [CC += Elliott]
> 
> Hi Rodrigo,
> 
>> I prefer an HTML website (a 8mb pdf is not the best experience, specially on
>> mobile), and a fixed link that is kept updated with the latest info is what
>> I'd love (doesn't matter if it is latest git or latest release, the fact
>> that is periodically updated is what matter to me).
> 
> This has been asked in the past at least by a Google (bionic libc)
> employee.  If any company is willing to put money in it, we could do

I don't think I can help with that, sorry :-(

> something; here are certainly programmers that could do it (I'm not just
> thinking of setting up a website, but also of improving the tools that
> generate the HTML from manual pages; that is, groff(1)).

Fair. Just out of curiosity, do you have any improvements in mind? Or 
not from the top of your head?


Best,
Rodrigo

