Return-Path: <linux-man+bounces-967-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E6B8CADA3
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 13:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 017821C2225D
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 11:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62968763F0;
	Tue, 21 May 2024 11:49:52 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [49.12.208.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002F376045
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 11:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.12.208.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716292192; cv=none; b=h3dOSGBm+JEZmQmzbICXq8wvP9S7/mB42ZrL9WzUuhAiFnRbjTk+sJMbu3LS5elb3KBnVOFrj1zcTZNHkdj5njvnuUUJLdX3CPR8M2xka1j6DtTQFOQDjrRIm3dX7K54Eow1FWgVC2sM/iLV8CkmH2MAJqfWYk7CHLGMcXyaWPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716292192; c=relaxed/simple;
	bh=t7PapBbG0tKra5avC75cz8iwl19zLnruQCYufLBWKoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NgdDk8rmmblR0DiJskMb7+cNW4kigRv50U9vwJCr3hkrm3s51aAzhSUcC52wObukUEb4s+hEvUPfNWdwsQzCAoTadDY+lD+/TdXQrUnFc5NJBTRidN6msiD3FuasOhFz5HbLsS8U4hSsfEdVhLpA//3CkHwoi5hfBxgKYpFCJFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar; spf=pass smtp.mailfrom=sdfg.com.ar; arc=none smtp.client-ip=49.12.208.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdfg.com.ar
Received: from [IPV6:2a02:8109:aa26:4b00:1a1e:9a1e:44f7:a3cd]
	by sdfg.com.ar (chasquid) with ESMTPSA
	tls TLS_AES_128_GCM_SHA256
	(over submission+TLS, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
	; Tue, 21 May 2024 11:49:48 +0000
Message-ID: <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
Date: Tue, 21 May 2024 13:49:47 +0200
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
 <Zh-6YjDhSBUNKmqP@debian> <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian> <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
Content-Language: en-US
From: Rodrigo Campos <rodrigo@sdfg.com.ar>
In-Reply-To: <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/21/24 1:27 PM, Alejandro Colomar wrote:
> Hi Rodrigo,
>>> <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf>
>>>
>>> You will find that my SSL cert is self-signed.  It's documented here:
>>> <https://www.alejandro-colomar.es/ssl>.  You can use HTTP links to avoid
>>> it, or add my certificate to your browser exceptions.
>>
>> Oh, thanks. Pointing to a specific release is not very useful for
>> documentation, as I want it to point to the latest version so users can see
>> which fs support idmap mounts on which kernels, I don't want to update the
>> link every time there is a man-pages release.
>>
>> Also, in 2024 pointing to a site with self-signed cert is not something I'm
>> not willing to do in the Kubernetes documentation.
> 
> I guess you meant
> 
> 	s/not something I'm not willing/something I'm not willing/

Yes, sorry.

> Is then HTTP okay for you?  MY website works with HTTP just fine, and

Not really. Lot of browsers switch to https, even if you don't redirect 
on the server.

> doesn't try to switch to HTTPS (but browsers these days got dumber and
> may force HTTPS).  Or do you need something from me?  It wasn't clear to
> me from your response.

I prefer an HTML website (a 8mb pdf is not the best experience, 
specially on mobile), and a fixed link that is kept updated with the 
latest info is what I'd love (doesn't matter if it is latest git or 
latest release, the fact that is periodically updated is what matter to me).

Something like man7.org or man.die.net would be great, if they were updated.

> 
> I might be able to set up hardlinks in <kernel.org> with kup(1) to have
> <.../man-pages-latest.pdf> if HTTP doesn't work for you.  I'd need to
> manually update it at every release, though (but I guess it's not that
> bad).

Thanks a lot! But I'm not sure linking such a big PDF is nice, I think 
I'll just mention to check the manpage.

I'll let you know if I find a use case for the latest PDF, thanks! :)



Best,
Rodrigo

