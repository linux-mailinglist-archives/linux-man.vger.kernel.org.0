Return-Path: <linux-man+bounces-1526-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623893D8D0
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 20:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9FCEB22978
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 18:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8543BBC1;
	Fri, 26 Jul 2024 18:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="H1uFHgZ6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820D15C8FC
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 18:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722020260; cv=none; b=nL5g8wD9Bf0JFYRvMgU2/NzdQxSiEqfhywfmsy76KMySJrO+70uQ6WhAuJhl0R8Lytw8SGIQ2wWGp83Yd7tnDKRNqfXBg2Nw3HozMCz8UL/AtO4d9VlXwO081uz4iu8gntTcvolocdo+w7ynttX5/g/RdKDYSgyHSyygCrmRGvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722020260; c=relaxed/simple;
	bh=s3ngYf894i8MCPnEqjLwS0DC/LGFwGaBbtaEWthplIA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tR6hLZh4CE05JIqSaLkIo8NqljXjzZaAZuuxbYbxRbeE28qZor1/4PDats17jczq0GiTxVFWbgNteOr61Xs7Rfpv3au8lpJOgAj4uT3BeMnLVFo5v2y+MjKti6umXMhCBBM4BbLROAZie4DKKCaXx7EJS6xwRmcOnJywuyCdNH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=H1uFHgZ6; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 354B43C00E420;
	Fri, 26 Jul 2024 11:50:59 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id GRmM3dAUokKc; Fri, 26 Jul 2024 11:50:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 959DD3C00D400;
	Fri, 26 Jul 2024 11:50:58 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 959DD3C00D400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1722019858;
	bh=9TPLtePzd6hGdrCLIRFqUZOcMSChv6n+189w+eAUHHI=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=H1uFHgZ6aG3n8K2peByw2SwhAjBfQTxBzrr0MLiHLAaPbyosYUBgS8yreT2KeZKy1
	 /QxQNwZVhCIdwBqsE8iqxOs4xw8GZ2PtXs5uC7ETm+4HrWO01WWTvHLXU2uJV6OUzS
	 hNqstLqfbALVPN4EuxEBoa47vFJ/P7H4kRc7f9pPUAR3P02YP8VqMjKt8Uf0vd1xw9
	 1XGfx/8/KmXH7aeyw5B8a8XmeRFqIxxtknI3wLn4xy/hwqay+Z9gEmMRY7wL1clBmO
	 dEsn13dZM+7gkqz67bsE/TytZ3JdVWB4KfEGZv8kyiErbTqiOUcZvEoVJPHwjq8+14
	 xjOWAkGgZ9qJQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id U-m1KP43XnP5; Fri, 26 Jul 2024 11:50:58 -0700 (PDT)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 59D543C00E420;
	Fri, 26 Jul 2024 11:50:58 -0700 (PDT)
Message-ID: <c436ef35-7087-4c04-a344-c535836bca1a@cs.ucla.edu>
Date: Fri, 26 Jul 2024 11:50:58 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
To: Joseph Myers <josmyers@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org,
 linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com,
 lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com,
 sam@gentoo.org, ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com,
 dmalcolm@redhat.com
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
Content-Language: en-US
Autocrypt: addr=eggert@cs.ucla.edu; keydata=
 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
Organization: UCLA Computer Science Department
In-Reply-To: <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/26/24 09:24, Joseph Myers wrote:
>   Maybe someone who was around then could
> explain what "noalias" was, what the problems with it were and how it
> differs from "restrict"

You can get a hint by reading Dennis Ritchie's 1988 email with the 
unforgettable bottom line "Noalias must go. This is non-negotiable."

https://www.lysator.liu.se/c/dmr-on-noalias.html

... and this is partly why I haven't read Alejandro's proposal. Fiddling 
with 'restrict' should be done only very carefully and only if there are 
really important advantages to messing around with it.

