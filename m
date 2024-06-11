Return-Path: <linux-man+bounces-1116-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 140A6904073
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:50:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 399061C2336B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A273D374CB;
	Tue, 11 Jun 2024 15:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="TmfOpa20"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557302E851
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120997; cv=none; b=jYtQFrxbUJR1pGBiYykphZTvjgoEmT+WSa33KmZyAlNCDHW2gSOZz+A2twzPtPB72eDoxirMqs53LbHUT9r+c80PSMRey3eUwT/w314xSjBq7KFehP6bIHXWuHlCQHEZ0xA93lnk6Ov1sEw8vLuh7tPzObBm7c1S0Mr77FcpnQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120997; c=relaxed/simple;
	bh=oyuO+DIEXi0pFXXltBfbZXsIOrGo9jfdLHVUMZK2lB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EVEcpv++kMwf9ohM1dK/RoTT/y7KJwoTDgFDi0bMOYFZblODs/zT7PolbBQY2szxxqdDGZ4mSQGY8VBjwoGONmGJqATSArBTU1feYI9WoM9nI29qeYVQqKnRrCIsL9y6eGy0b9Wa/an+OPDxRkTwJj72Rz4B9kaclQ9VjkREZ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=TmfOpa20; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id BEB123C01409F;
	Tue, 11 Jun 2024 08:49:55 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id Nx9QucETNp8U; Tue, 11 Jun 2024 08:49:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 789C93C0140A0;
	Tue, 11 Jun 2024 08:49:55 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 789C93C0140A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718120995;
	bh=bQ/apbz9yMO9/nh/IPfy+KUeRWlq50/ZQK2OFwWGviM=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=TmfOpa208pyKOgzxw0EdLfZ7dakBdTA7S+PxDL4C0yLJGOsNUoewp0hKt0UgqVuyb
	 55PD8Bl73ijE2vmAztewV1lMlcI8KAjLEjOTx8ynbQyT1hm5ffXvWwAJMErzg9it8k
	 FESdJ+X0ufsDXaqZ96/SHEaa7YnYI2olqOLTYC9oYsvMw8+DWptFSI6shQR7s7Ltpe
	 gT8ae4LVdhwrC+9IirWS6imK3von5bW8R4LDhDuszvleaPtWCMDi9AMHvG5elnsg0Z
	 haxInMrUu7LS1gQ6GltePa2j+4NbJ+SwbVljk6Uv2DlKPk/tH08gwJTNo1K2jHsyuF
	 4mHzjaJOSTYsQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id jHaa10cHj7cy; Tue, 11 Jun 2024 08:49:55 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 5BED83C01409F;
	Tue, 11 Jun 2024 08:49:55 -0700 (PDT)
Message-ID: <bc308817-bffc-4e2d-8048-e3b5b911bd89@cs.ucla.edu>
Date: Tue, 11 Jun 2024 08:49:55 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] tzset: time hh range is now -167..167
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-5-eggert@cs.ucla.edu>
 <yxjbyr7oezx54vk7dnhz6uusmcev2aswv4bny3fnctfohm5knk@2iytchkj5dqt>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <yxjbyr7oezx54vk7dnhz6uusmcev2aswv4bny3fnctfohm5knk@2iytchkj5dqt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-06-11 08:45, Alejandro Colomar wrote:
> I prefer using mathematical notation for ranges.  How about this?
> 
> ... the hour can be in the range [-167, 167] to represent ...

Sure, that's fine. Feel free to install it that way, except "-" should 
be "\-" of course.

