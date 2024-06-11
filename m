Return-Path: <linux-man+bounces-1122-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C73904204
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C84C1F25DA9
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB688482C8;
	Tue, 11 Jun 2024 16:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="CayARLiY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4348B47F60
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718124978; cv=none; b=SyfOAvl+tKM7mm2Vm9dTS5gRL2pf6zpsj6oa8/cjp2aseOuDTit9NyYxx7qCgk44bddzl5wfoYmCP4ol1MTWOQo6eSzQ4LI/pMSuNlxifUqeT7AGC4DCeMTe8Kq8P5FOT1Of66sfR0mf/jn3cqkUPFBBZbTEpsncPXI5tFBx7UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718124978; c=relaxed/simple;
	bh=J/bepjnBfRZR0I5S9YB8IYTGNlsdznIPZTK9kwHjHMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IvIbtixZlxvxCDg0NYNYQeTDhnlj2xCTi4GBZtGUG7wsp5Q72AaRXIvv28SKtV5927y7wGBLVnuGLubuabprDOryBpnb/Fwo+kIlCbsSmtqZzrvgLyhnDXYW48qk3CMFfanUqZbR7oazL2lAzSPWwbMiZpD0JuOZ5Z5KCQ48q0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=CayARLiY; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 8570C3C0140A0;
	Tue, 11 Jun 2024 09:56:16 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 4xthp9I6-HgZ; Tue, 11 Jun 2024 09:56:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 1DA893C00E8B0;
	Tue, 11 Jun 2024 09:56:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 1DA893C00E8B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718124976;
	bh=iAkls9UryupknzpfI6ik9jNeRr/YO34hrFiP76KSrGQ=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=CayARLiYHgwQwUurUnJdugjzhMGnTaySwPjR1vEMCZByiaD9wA46r9/x0kEouG9HB
	 H07htZuEBpoutT5bx6/2CgqjAQ3++v+zHW9PtU2o0DUvqlqpwfNOUVbapL0bkPlFf/
	 AlWXbyAIp8m9D/cw5pZtXSHqJevCBwM8FEd7S7slGSOrkwOGKXNePwWdJoYN1wfSRj
	 iq0iDWJHWWfLtdZk2c24GCLgGLnSyiW9cY72AGswxlrb7/nhwjgEJAMXijZr0oCaOr
	 np5i+qNThfibWHggtcyWdbBovQKJ3OI+3CpJGcw8nkLupijAbCR5tCU8Z/uINKzVOZ
	 89bbGvraS53sg==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id v1_B_pMjG2re; Tue, 11 Jun 2024 09:56:16 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id F1F703C0140A0;
	Tue, 11 Jun 2024 09:56:15 -0700 (PDT)
Message-ID: <1da3bf6d-4ced-4e86-b226-12b120cefcf1@cs.ucla.edu>
Date: Tue, 11 Jun 2024 09:56:15 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/12] tzset: update STANDARDS, HISTORY
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-9-eggert@cs.ucla.edu>
 <ffoptahg44keiagybgev3bcllobdcbev3i3pasrv4lqlsxdlwr@ufl66nu2unwc>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ffoptahg44keiagybgev3bcllobdcbev3i3pasrv4lqlsxdlwr@ufl66nu2unwc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-06-11 09:25, Alejandro Colomar wrote:

> Is C23 also public already?
> 
> Can you send a link to any public document that confirms this?

It's not public yet, but it's "cast in stone" (i.e., merely stuck in ISO 
bureaucracy) and it's OK to cite it now. For some details, please see:

https://www.reddit.com/r/C_Programming/comments/1ay92d4/latest_working_draft_n3220/?rdt=49226

