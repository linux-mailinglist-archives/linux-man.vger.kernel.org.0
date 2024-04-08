Return-Path: <linux-man+bounces-726-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD089CAF6
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 19:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE4671F23754
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 17:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446F3143C6A;
	Mon,  8 Apr 2024 17:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="dXSA0BWj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BE25BAF0
	for <linux-man@vger.kernel.org>; Mon,  8 Apr 2024 17:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712598422; cv=none; b=XsdW5x5two9IbATtwVxb0NYLIOdYkNuYQDDQmpNzncR6IGpR5t4Ol9cVESq0LMajC+vscaZ1cq0VTPCp60yudnLevW30pdQIEjTjAhu3mZOjHNlJTp/7xKATpuLo/08qmrZtxhHh+81UInOBM3j86Rbl10bIi9piHhbXMty1Jas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712598422; c=relaxed/simple;
	bh=cBsv5bUogZ9xJj3HCwWahgCLi0W5ciDVjwa3wG5Tw90=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SFZtBOd3ryp2k7oFI66NCyfs3UG0PZobrZCTwP9dxAToKMhosY/36nSBCmHKk511LFYcWhJEpHw2GlzbAtMpvGm2qsagxyGGyxoH+QEtz7hq/P3LUvo/wbWqsPHtZElDgGUzH2Qyx1hLI+JpD3R0VZ83gfi/0YDSgWVh24P1FPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=dXSA0BWj; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 071B43C011BDC;
	Mon,  8 Apr 2024 10:47:00 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id v_cl2UUOHQRl; Mon,  8 Apr 2024 10:46:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id B1C913C011BE0;
	Mon,  8 Apr 2024 10:46:59 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu B1C913C011BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1712598419;
	bh=+5xSh8mMQqvEosHnq4DcqPomQ9qNK7VN8/PQB0mnjXc=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=dXSA0BWjywYKYhAMH9NJOejy+mrZVODNfsq0cs4EduhxG6/hqiCmvYJnmytOJfDI3
	 MzoAi91fGDN74hvSoIgqR+0v17LdjJuN302Mv6oqTtklkURsJyRufK8Cz5mFM2Sj5b
	 rZQpd7vXviZRnyZyHaXoATBApbMVK87S9ziQnEraMYCZ8Kzj1RV0gBVFlN0lVuCppc
	 z58Crc3M4OrHGbk61vLDH1+snWWMKwQpoPRBfGSRutAjQ0d4+BJOeXk2AnCjto9sAk
	 wrvA5i63v7geJ0ZEne+fMm4fwxzll2PIpUoawhbZs7/2k3RwAztGUsmEOc9eMjkxTq
	 B6SDQ5Sd6MLog==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id CCbZ9ce173PO; Mon,  8 Apr 2024 10:46:59 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 8C21E3C011BDC;
	Mon,  8 Apr 2024 10:46:59 -0700 (PDT)
Message-ID: <dd4367ce-1e27-494b-8d87-0b2f627f7835@cs.ucla.edu>
Date: Mon, 8 Apr 2024 10:46:59 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] tzfile.5: Fix indentation
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Time zone mailing list <tz@iana.org>, dickey@his.com,
 linux-man@vger.kernel.org, groff@gnu.org
References: <20240317124350.96716-1-alx@kernel.org>
 <b01d6dcd-81ce-4da2-9186-0003069a1c33@cs.ucla.edu>
 <20240317190642.qozzibfnfrqbhued@illithid>
 <0d79c040-ee97-4e1b-a478-d4fceafb23ad@cs.ucla.edu> <ZfdsoDbomdrjp5o6@debian>
 <d39d2de7-52f8-4231-8863-2706ed89c827@cs.ucla.edu> <Zff8pT_1eWttIGPi@debian>
 <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu> <ZhOrbl8GE4WhXGvD@debian>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZhOrbl8GE4WhXGvD@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-04-08 01:31, Alejandro Colomar wrote:

> Hmmm.  I use "\-v" in the Linux man-pages, and it works

Ha! I just checked and it works for me too. It did not work in 2014. 
Apparently since 2014 PDF and HTML viewers have gotten smarter about 
searching, so that "-" matches any form of dash. So perhaps I should 
remove this \- complication from the TZDB man pages.


> You can probably configure that in man.local, no?  I know at least you
> can disable hyphenation, which solves most of the functional problems.

Fine, but that should be the default. Users shouldn't have to fiddle 
with man.local to tailor output format to be good for the usual case. 
man.local should be for the unusual cases.

