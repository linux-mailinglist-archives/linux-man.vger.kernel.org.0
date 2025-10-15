Return-Path: <linux-man+bounces-4154-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F70BE0523
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D3E964E1E5F
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B5B283686;
	Wed, 15 Oct 2025 19:11:52 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1306A24E016
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555512; cv=none; b=hCvsOe55nitG7tyiY6/wXzl7axRmXdP7cgNQWSZlBIzj8GsQ8sTvctud6kLg0pZ+Ox0YqVBClSugLuaYSsvtXdDeMa27+WJlNSV5jAGeDdkPwyUfL9ZCAEWVsSRKQPJ+McZn3sP6cDiRFgtyYAEgzcuj5KZRMAjMWGmsMz6BsMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555512; c=relaxed/simple;
	bh=rDk/ZzUY29Ygf+9Xuuob9NmvCeLaQGUQnNSUEpswi3g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=drP+qXXqwUJXihUV7i33xzrYoQVOpKELcavaxJZ6PKvBf0nBPPUOjjFHn4izM2Lo1GX76ltoC1BRdX88/gDrBEcV1GbnyKPEGbJr2WR9yno8cg+Eo+i+XHRaqcpwrqSVaCSnhsSTn4TV4E9l569g4J7ItbckUQt4mrgxZYz+Wak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from mop.sam.mop (2.8.3.0.0.0.0.0.0.0.0.0.0.0.0.0.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a::382])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id B98FB34106C;
	Wed, 15 Oct 2025 19:11:49 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,  linux-man@vger.kernel.org,  Collin
 Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
Organization: Gentoo
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
	<1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
	<7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
	<878qhc6lv5.fsf@gentoo.org>
	<e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
	<pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Wed, 15 Oct 2025 20:11:47 +0100
Message-ID: <87tt0056a4.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> On Wed, Oct 15, 2025 at 09:03:28PM +0200, Alejandro Colomar wrote:
>> Hi Sam,
>> 
>> On Wed, Oct 15, 2025 at 07:49:50PM +0100, Sam James wrote:
>> > >> We should base the contribution policy on things we can objectively
>> > >> measure and claim.
>> > >> 
>> > >> Rejecting AI content in contributions is objective and measurable
>> > >> since you can't attest the DCO clearly with this content.
>> > >
>> > > Rejecting AI content would follow the first concern, but the second and
>> > > third concerns would be entirely ignored by a policy that permits AI
>> > > static analyzers.
>> > >
>> > 
>> > It is hard in my mind to justify rejecting TTS or similar that may be
>> > based on AI.
>
> BTW, I assume TTS means text-to-speech.  Please don't use abbreviations
> not supported by wtf(1), or parenthesize their meaning in the first use.

I normally try to honour that. Anyway, I'm not interested in discussing
further at this time. I don't think the way you've suggested this
subproposal is constructive.

>
>> 
>> The following is enough, IMO, as justification:
>> 
>> 	Ethical concerns.
>> 		The business side of AI boom is creating serious ethical
>> 		concerns.  Among them:
>> 
>> 		-  Commercial AI projects are frequently indulging in
>> 		   blatant copyright violations to train their models.
>> 		-  Their operations are causing concerns about the huge
>> 		   use of energy, water, and other natural resources.
>> 		-  The advertising and use of AI models has caused
>> 		   a significant harm to employees and reduction of
>> 		   service quality.
>> 		-  LLMs have been empowering all kinds of spam and scam
>> 		   efforts.
>> 
>> 	Quality concerns.
>> 		Popular LLMs are really great at generating plausibly
>> 		looking, but meaningless content.  They pose both the
>> 		risk of lowering the quality of a project, and of
>> 		requiring an unfair human effort from contributors and
>> 		maintainers to review contributions and detect the
>> 		mistakes resulting from the use of AI.
>> 
>> 		AI tools should be considered adversarial, as if they
>> 		were a black box with Jia Tan inside them.
>> 
>> 
>> Cheers,
>> Alex
>> 
>> -- 
>> <https://www.alejandro-colomar.es>
>> Use port 80 (that is, <...:80/>).

