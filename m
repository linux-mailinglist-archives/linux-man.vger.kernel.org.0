Return-Path: <linux-man+bounces-9-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F82D7E7F0B
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2BCBB22171
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10083D388;
	Fri, 10 Nov 2023 17:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="oF2+5SEk"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF4A3C09F
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:54 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 984E759D3
	for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 22:15:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 821423C011BDE;
	Thu,  9 Nov 2023 21:36:44 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id lGvPFZaas7tI; Thu,  9 Nov 2023 21:36:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 4499C3C011BDF;
	Thu,  9 Nov 2023 21:36:44 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 4499C3C011BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699594604;
	bh=RLJ82Ex7eI8zb4+vCLFqA4LBb7ihr2VnJCC6mLxObbM=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=oF2+5SEkzjSE6rlxwgeOyig9TiAGCzazICP/JGoD4GXEzxfzg0q6SO/UzifbBF50G
	 HqNgsuFlrukT32Xbl+2nt+wIYa7ijztddUNPQqyW31Ct0oAazMc7RsyDzyeeBzN2Og
	 duRIJ2mXk0gD0IT0utZDcFBY1Pqj8ZKIyJauwRqXvILeF5Z92XO5EmpNq4nEmWWsfu
	 Cj+RZjCVp8GSnPWeJiwGhVRW4ZFIELpet/bKSSVfbe0TSRg11HmkUFyFO/7ArYmRIk
	 40pf6KzBEaJTkSHXOH1HkrhQhm9fhntlGBWLCTGwbEJ+GFhLLUkguLDwHTEpdqdfDj
	 uR7DjzCa3f1MA==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id TZXO-Usaoemr; Thu,  9 Nov 2023 21:36:44 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 0F9453C011BDE;
	Thu,  9 Nov 2023 21:36:44 -0800 (PST)
Message-ID: <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
Date: Thu, 9 Nov 2023 21:36:43 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZU1v-JKBP9iWXOOT@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-11-09 15:48, Alejandro Colomar wrote:
> I'd then just use strlen(3)+strcpy(3), avoiding
> strncpy(3).

But that is vulnerable to the same denial-of-service attack that strlcpy 
is vulnerable to. You'd need strnlen+strcpy instead.

The strncpy approach I suggested is simpler, and (though this doesn't 
matter much in practice) is typically significantly faster than 
strnlen+strcpy in the typical case where the destination is a small 
fixed-size buffer.

Although strncpy is not a good design, it's often simpler or faster or 
safer than later "improvements".

