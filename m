Return-Path: <linux-man+bounces-4141-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 884DABDF290
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41E613E476A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 14:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C587F2D061E;
	Wed, 15 Oct 2025 14:51:38 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DC92D24AC
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 14:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539898; cv=none; b=geATYKvnrnBvZWMmD2BhG6p20FcgGRzmHe8fZtXSnIbs8TTfLX1f7mJtwucktwjN67ZT1E2DUyJiBOEB0VcErn1KvOcSX/WWQgcFFLI64C0KiwuRECgJjK6nwNhZ3AgdteheFGCjUVzXKOk/3PMe4aMO3t3Oqohi2BywLfZJoJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539898; c=relaxed/simple;
	bh=vXh0mcmR8WcEX55b1QkvPM/wd4ZPbRL/bxc141xCT/w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HYVhb7RjjQ5caPnZCOBDPrHxdVRsy2iBwG8GQwlHEojnrKvg7L5MyoQ7ofplekfZFlptqQiMoDVWkdPmqlP0/+DRi7L3c4J5nqgJ8cZHRQxVSjkyLqEpi3AxTe7n5KNjneTMsK0lazJ/Lz7/YrWlKD6TuM4KviBGEZ+v1oaZzW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from mop.sam.mop (2.8.3.0.0.0.0.0.0.0.0.0.0.0.0.0.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a::382])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 37307335D42;
	Wed, 15 Oct 2025 14:51:36 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org,  Collin
 Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
Organization: Gentoo
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
	<4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
	<g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
	<426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Wed, 15 Oct 2025 15:51:33 +0100
Message-ID: <87ikgg8bgq.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Carlos O'Donell <carlos@redhat.com> writes:

> On 10/15/25 10:03 AM, Alejandro Colomar wrote:
>> Hi Carlos,
>> On Wed, Oct 15, 2025 at 09:25:14AM -0400, Carlos O'Donell wrote:
>>>
>>> Needs a v4 so we can review the final CC-BY-SA-4.0 license requirements.
>> Oops, I missed that.  Sorry!
>> 
>>>> +Description
>>>> +	It is expressly forbidden to contribute to this project any
>>>> +	content that has been created with the assistance of artificial
>>>> +	intelligence tools.
>>>
>>> OK.
>>>
>>> Though it has been discussed on-list that this policy could be seen as
>>> forbiding assistive technologies, but that this was not the intent of
>>> the Gentoo Council's wording.
>> Didn't they?  Do you have a source for that?
>
> https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
> ~~~
> As someone who was present at the initital discussion, I can assure that
> banning accessibility helps was not the intention.
> ~~~
> - Andreas Huettel

+1 (as someone else who also voted on it). We may amend it to make this
part clear in future.

>
>>> I don't have better wording.
>> Okay.
>> 
>>>> +Caveats
>>>> +	This policy can be revisited, should a case been made over such
>>>> +	a tool that does not pose copyright, ethical, and quality
>>>> +	concerns.
>>>
>>> The original content is CC-BY-SA 4.0, and so you need attribution and
>>> a link to the license and a statement that you altered it.
>>>
>>> e.g.
>>> This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
>>> Text derived from the [Gentoo project AI policy](https://wiki.gentoo.org/wiki/Project:Council/AI_policy), used under the Creative Commons Attribution license.
>> I'll send v4 later.  I have written this, at the bottom:
>> 	Copyright
>> 		SPDX-License-Identifier: CC-BY-SA-4.0
>> 		Text derived from the Gentoo project AI policy
>> 		<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
>> Cheers,
>> Alex
>> 

