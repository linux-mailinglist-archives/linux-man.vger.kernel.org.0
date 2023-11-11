Return-Path: <linux-man+bounces-38-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA16F7E8D19
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 23:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78F751F20F8B
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 22:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D28361DA33;
	Sat, 11 Nov 2023 22:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="RGMGbIGC"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197221DFC6
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 22:20:35 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8384530D6
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 14:20:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 367333C011BE4;
	Sat, 11 Nov 2023 14:20:34 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id qqshw9v08ptS; Sat, 11 Nov 2023 14:20:33 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id AF9A13C011BE5;
	Sat, 11 Nov 2023 14:20:33 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu AF9A13C011BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699741233;
	bh=ZrewXse9Dqgzenz3h2mQYShSiSuga+u7w19QkcdjEYE=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=RGMGbIGCCV+vKIUtM6RhbEK9hw2dzx4/8YbHy+zyROCwOScjby9zdhoFBK6MvBps5
	 GrPk5AfaT+F9XWoCVEYm851YTXagH2mCDsRVq2EtRCbJ521QIG1gaNpDFu6/VwndTt
	 yFhkyMfD3W9XEFmeJGz5xLrpA/SHL+2+j4AwFmuwO5kWYAUeoNHWZ/mkUIrUKzuCui
	 NJA/KaNGt0A8BGslhOTOTXDmWCg010ejMulYrpfuS6mITPnqANBsZY0cWmza8mU9/G
	 MZUH7ypFl2nYwAsTKNmhHJaXLDtR5UM02LuIAsYbjwNGhlnKEQllv1DFdvmfo5JFDV
	 4HWhpYd56PKGQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 2lZtOKpAo3Ci; Sat, 11 Nov 2023 14:20:33 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 8C6AC3C011BE4;
	Sat, 11 Nov 2023 14:20:33 -0800 (PST)
Message-ID: <69e6298a-9ddf-4a8e-ba8b-84da9410510c@cs.ucla.edu>
Date: Sat, 11 Nov 2023 14:20:33 -0800
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
References: <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu> <ZU_ui2gbSBrTKXnX@debian>
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZU_ui2gbSBrTKXnX@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-11-11 13:13, Alejandro Colomar wrote:
>     Was strncpy(3) optimized in a recent version of glibc that you have?

Ubuntu 23.10 currently uses glibc 2.38-1ubuntu6. Fortification is on by 
default, so __builtin___strncpy_chk is involved.

Again, I wouldn't take these numbers too seriously. It's just a 
microbenchmark.

