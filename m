Return-Path: <linux-man+bounces-1683-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADDB95D5DD
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 21:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8D24B23109
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 19:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A9C77F11;
	Fri, 23 Aug 2024 19:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="Qc3y3ndv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6FC191F8F
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 19:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724440119; cv=none; b=aO1vthOirD3ZSNzKpf3rU4eKD8/p59KW6LEg86pFAZPTRuBzSrjg90Lg6956+AEfOIsXRYDfZNhZ8WkSM5rF95lsjRXaVy8FTph9vnp1f0ZPoEt+IR0UaofvVET4pQz4lzkv0juG0QxdytEjooZTDKlCM/rh1H11ZnoedxM/yHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724440119; c=relaxed/simple;
	bh=ArvBYSa0EJKUCVAyAegpj9AiBNuiRC5b08zKZ0NefXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U7e2NqfB7UpOnK2d8tQclGFdy80q1hReFtlQxB1ii9f5rZF0D9Gof4JapVeN4l7vUZfo5E9zo+pKF1yJ8roSsr3P62F5OoQSW9SFwbS3CNlPUvQRc1zXC9GfT+9F5JperZjMJNQSp2D9DzgNPdkumJxoV1oFNik0JEp1YfhxXVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=Qc3y3ndv; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 8ED303C00516E;
	Fri, 23 Aug 2024 12:08:37 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id s9wjf7rhT2oc; Fri, 23 Aug 2024 12:08:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id F11AD3C00516B;
	Fri, 23 Aug 2024 12:08:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu F11AD3C00516B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1724440117;
	bh=lkQz+FHipdQv78fdJ40UMY3pHLyxslMq/jxjUetowrs=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=Qc3y3ndv0x6As1GTxzxL10NWGt0YzJp5Pa+JRcGkjwIERjGZDRbF85yzDEL9msfGm
	 lBj/FGCdBTmpwXOCiY2UdEvY48wHMnOYXGt8GCryEPamnWM/kgq1aUUV8qgtE/0j+a
	 C8YK83aEt3KOEwabys1F0NjiEOZSxtmlCH/i6IvehFG0Gx6GRi5cf9R6kUPUBugiF1
	 S+oKTCwAshB1V1sk1F9QKdnv4HtdDSB1KwbydRagNDUj7xC1KHLr+a4RHBVy4ZCHrU
	 /AAZaIKarbBksdTy2jRHrypd6OFzJSYCMS7BoaAOK3vNjwHZ2Xls8VGUgc9YyNyvlT
	 8g7rToTcsfetw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 42mHUF-7FOGv; Fri, 23 Aug 2024 12:08:36 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.150.137.250])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id B206D3C00516E;
	Fri, 23 Aug 2024 12:08:36 -0700 (PDT)
Message-ID: <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>
Date: Fri, 23 Aug 2024 12:08:36 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
To: Alejandro Colomar <alx@kernel.org>, Robert Elz <kre@munnari.oz.au>,
 Andrew Josey <ajosey@opengroup.org>, Geoff Clare <gwc@opengroup.org>,
 Vincent Lefevre <vincent@vinc17.net>
Cc: Xi Ruoyao <xry111@xry111.site>, libc-alpha@sourceware.org,
 DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, carlos@redhat.com,
 "Robert C. Seacord" <rcseacord@gmail.com>,
 Jens Gustedt <jens.gustedt@inria.fr>, austin-group-l@opengroup.org
References: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
 <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-08-23 10:48, Alejandro Colomar wrote:
> Robert, Geoff, Andrew, can you please clarify where is the discussion
> that led to the following change?:

Why does it matter? The tm_wday idea has worked everywhere for decades 
and is now standardized.

For what it's worth, GNU Emacs has been using the tm_wday idea since 
2018, when I made the following change:

https://git.savannah.gnu.org/cgit/emacs.git/commit/?id=b4eb908f858284a7962851fd99c94598f76afa6f

and many GNU tools also use the idea, because I made a similar change to 
Gnulib too:

https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=6ccfbb4ce5d4fa79f7afb48f3648f2e0401523c3


