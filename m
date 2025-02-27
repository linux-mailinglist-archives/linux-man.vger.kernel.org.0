Return-Path: <linux-man+bounces-2535-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35137A4855F
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 17:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8A61188DF2D
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 16:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26FB1B2EF2;
	Thu, 27 Feb 2025 16:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="ggSeCtQk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpout4.mo534.mail-out.ovh.net (4.mo534.mail-out.ovh.net [188.165.54.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550E61B4138
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 16:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.54.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740674124; cv=none; b=QEJo6EcsUnmLZ+MV9fyg1N1jteEMNTWYM1CteRB6LivPbOJeUUytdiDfCkk7yXCQCMUduugc7ls9Krm9uDI5PeFHvi6RjZESg5do73l38Uch0SCbZpRXvZ1DByXXWRd5tiYLohzb/PRkvOXZ8lkRCgLQMm/Bs3kZpfdvmuozZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740674124; c=relaxed/simple;
	bh=2MC4l2nPBV6pBbd/gHby8BjVoCXz9GkZHszRPQ6YkcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RmGcONBRAz72iKp3oITUQQTirTuH7rLqoh+/t5VVWgNmLUAqYrjxM51lhpsusIk6D1rQ4SouW4CIu9HFjb/JIOUVDOphgHQe3EGCBeLypFXzk9G9D+AITFBovVEp41gmOWRM8SFs4ivebiXK7sJeG8etyPJEOVPX3WlUM6h5Xro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=ggSeCtQk; arc=none smtp.client-ip=188.165.54.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net [152.228.215.222])
	by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4Z3cFy1w8Xz1b7k;
	Thu, 27 Feb 2025 16:28:06 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net. [127.0.0.1])
        by director3.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <fw@deneb.enyo.de>; Thu, 27 Feb 2025 16:28:06 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.118.15])
	by director3.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4Z3cFy0hDWz82Vs;
	Thu, 27 Feb 2025 16:28:06 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.6])
	by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 3C1DAD43BC5;
	Thu, 27 Feb 2025 16:28:01 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-114S00872edf0cd-27d1-41bc-9f45-e3fde7b7acc7,
                    91616DD2EE2BAD0B57837395C6194E4EBC30B89C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.177.245
Date: Thu, 27 Feb 2025 17:28:00 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fw@deneb.enyo.de>,
	Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org,
	Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <20250227162800.36exbwmqky6d7z4t@jwilk.net>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
 <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
X-Ovh-Tracer-Id: 10562629979182935145
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdekjeelgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgeduteevhfejgeelkeevffduuedtvddvuddvveegteeuveejledvveduheduteenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppeduvdejrddtrddtrddupdefuddrtddrudejjedrvdegheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohephedprhgtphhtthhopehffiesuggvnhgvsgdrvghnhihordguvgdprhgtphhtthhopegsohhrihhsrdhpihhgihhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohepshhlhihitghhsehgmhgrihhlrdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheefgegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=OA2AbIdrBdqpYPKH7rfqe4qUFIXH/SxFm+mPUIp34W4=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1740673686; v=1;
 b=ggSeCtQk07hlVFyI5Zj9axR0NolfQrLjIwKTO+M+8JoJ+H1pY7oAxnJQ7vvX1wzTZscJv0PL
 3PZ/ffE8bpATsjEr3YH8WHlXYHOpi/VjuNNl5O5rj60pqxkxe7YwOKji11ZZv7t0DPeUxcElloX
 L9Tpu5Nga0XEUa6tL9EVoRrTsIqyGrBxAKeTNpV72FwrtqLfMTZvdAFRlqjCKpsMMrigoMVw+yV
 DvTFfsqzB7hMkaEJ2ZvR2VFcBgaxunM0JQuHKhNjNIN8QuJKSBpfQ/4Dk/UoTaQiAonSnALsfqV
 MmlubasV+1XuouFini/3GwOjx01T12KHO8a6lLBJoqb0Q==

* Alejandro Colomar <alx@kernel.org>, 2025-02-27 16:20:
>>   Now this latter will resolve to "\#".  If you want to write makefiles
>>   portable to both versions, assign the number sign to a variable:
>>     H := \#
>>     foo := $(shell echo '$H')

Alternatively, you could take advantage of the fact that in some shell 
contexts # and \# mean the same thing:

   foo := $(shell echo ''\#)

>The thing is, on my system, grep(1) is just fine with that escaped 
>hash:
>
>	$ echo '#foo' | grep '\#foo'
>	#foo

The warning comes from GNU grep (>= 3.8): "Regular expressions with 
stray backslashes now cause warnings, as their unspecified behavior can 
lead to unexpected results."

You're probably not seeing the warnings because Debian patched them out:
https://bugs.debian.org/1019724

-- 
Jakub Wilk

