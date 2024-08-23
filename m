Return-Path: <linux-man+bounces-1684-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD3F95D5EF
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 21:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D36261C230F8
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 19:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E63192589;
	Fri, 23 Aug 2024 19:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="Fa2pDsL2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D66A8488
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 19:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724440482; cv=none; b=Jde1HTNK5NRBSKOD8TPVfMgtfHGqzuF3ZgquejkQLclxOU5TBKyNgKHTaY/Qj9GXzcBuOjeDeRSB+ymDkAWUcNl1K34Px/bkr5jyJyDyKpCPdexv/boEOdGYpsgCI8H3VaxCXzoJQ75DMtnAE1nhnrWPJKShcjzKeiuDGejzRZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724440482; c=relaxed/simple;
	bh=1b5+C61/PEsfCmIItFzqm5jTkgHYrmygLUIY9jq2LyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gKo7IGSs8pTa3BPjhuFzv20CJUBIqOfWOrVVtouVKPifTTay6CvuUndjuHAwXajpAADfdc0xsZYzubTWPmmheHzxpdpbZPIaVDBgJi3E+GhIjJdut9JD4V6psB8eTDdbqL9f/K2CDgXb8u2tVU9KGz74Dp+5wXPOWyasotdqG6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=Fa2pDsL2; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 0F8D63C00516B;
	Fri, 23 Aug 2024 12:14:41 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id GqOegcRAfRaU; Fri, 23 Aug 2024 12:14:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A60E93C00516E;
	Fri, 23 Aug 2024 12:14:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu A60E93C00516E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1724440480;
	bh=1b5+C61/PEsfCmIItFzqm5jTkgHYrmygLUIY9jq2LyU=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=Fa2pDsL2H5X0swDOcikQoelgbnDkqKNG3wRcAxEqHer5aaoJ52YljuIWaE5rGC+dV
	 U6eR/BlnAb96TH+PrXjYWqzch0Pv6SiPazNNz4f5pq9HfdQqToFlzZrkDVYa/K33Bf
	 g3VZxSAew9m0Y0RZTyTh5RnnqjQkDuwzCANMveSrB+8HIQcNwsWx+CtYMZ/rVJvd08
	 +0aVovQKE6lD2Xg8z4aTWjzmMSzJGBL4KFgDTUBceKytDiB7JZbwuyU73uHg0VXTpS
	 8sw2SQPDpffJ+5f4qly2D04lEeHcPexL/TUkPA5N8PhvLyHSMAre+5EAX8+XjhATdT
	 tPV19D6//xcNA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id rDo9LFs2e2x8; Fri, 23 Aug 2024 12:14:40 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.150.137.250])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 862CB3C00516B;
	Fri, 23 Aug 2024 12:14:40 -0700 (PDT)
Message-ID: <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
Date: Fri, 23 Aug 2024 12:14:40 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
To: Alejandro Colomar <alx@kernel.org>,
 "Michael T. Kerrisk" <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-08-23 11:17, Alejandro Colomar wrote:

> in systems where time_t is unsigned, does a mktime(3)
> call with a time representing a time before Epoch result in an error,

Yes, just like any out-of-range mktime would.


> Does any existing system (or historic one) use an unsigned time_t

Yes.


