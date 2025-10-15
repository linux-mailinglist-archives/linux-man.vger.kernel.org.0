Return-Path: <linux-man+bounces-4151-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FC1BE0411
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 20:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5260A1A233E8
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449373009EA;
	Wed, 15 Oct 2025 18:49:56 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C4229BDAD
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 18:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760554196; cv=none; b=oAn+T7w/uooaAXOv3RPGUHagB2mtJLc+wjukz8jUBMV/scJ+m8FpMTfRsgYcN6OkaZwgcrdba8k1yIY5TLaUK5FE9vAjYlANiweiUQnGhw68VPfQbKntr5tt8XZm+uJOypoIPgWp1b5lqlol+v/jYxBm5VBUODbBmVUQohQ3l0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760554196; c=relaxed/simple;
	bh=UTr0EF8Ga+PyqrV1uCOWnpe91Eb3HITuWAU/a0ivQfM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=L/QBej+NCwgQnLymkxfsOgWcbeXVYP7JcJBC76A6aNB7Js2th3RjgVit+8VsNYN21jqO8WBRmis7mc5JdkjsDCEn47Xn7gdJmh2l8jQOpvy4uDO6qJpjXmlMmdS3CiWrlr2No7Pprdes7kzwKTBIgIoy5uLQ7065dww9ESfVCvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from mop.sam.mop (2.8.3.0.0.0.0.0.0.0.0.0.0.0.0.0.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a::382])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 130B233FE60;
	Wed, 15 Oct 2025 18:49:52 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,  linux-man@vger.kernel.org,  Collin
 Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
Organization: Gentoo
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
	<1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
	<7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Wed, 15 Oct 2025 19:49:50 +0100
Message-ID: <878qhc6lv5.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hi Carlos,
>
> On Wed, Oct 15, 2025 at 12:03:07PM -0400, Carlos O'Donell wrote:
>> > In v4, I've added a paragraph clarifying that AI assistive tools are
>> > also included in the bad.
>> 
>> Isn't this the *opposite* of Gentoo's policy and QEMU's policy?
>
> It is the opposite of what Gentoo claims their policy says.  But it's
> what my read of their policy says (and I'm not alone there, as the same
> interpretation was mentioned in libc-alpha@).  They should clarify their
> policy if they don't mean what it says.

I already said we plan on it. I thought that was pretty clear.

>
>> We should base the contribution policy on things we can objectively
>> measure and claim.
>> 
>> Rejecting AI content in contributions is objective and measurable
>> since you can't attest the DCO clearly with this content.
>
> Rejecting AI content would follow the first concern, but the second and
> third concerns would be entirely ignored by a policy that permits AI
> static analyzers.
>

It is hard in my mind to justify rejecting TTS or similar that may be
based on AI.

>> > diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
>> > new file mode 100644
>> > index 000000000..faab2df1b
>> > --- /dev/null
>> > +++ b/CONTRIBUTING.d/ai
>> > @@ -0,0 +1,57 @@
>> > +Name
>> > +	AI - artificial intelligence policy
>> > +
>> > +Description
>> > +	It is expressly forbidden to contribute to this project any
>> > +	content that has been created with the assistance of AI tools.
>> 
>> This is OK, the forbiddance is on the created content.
>
> 	"created *with the assistance* of AI tools"
>
> If I write some code, and iterate over it by passing it through static
> analyzers and editing as appropriate, I'd say the code has been created
> with the assistance of those tools.
>
> Let's consider this example from The Lord of the Rings.  Did Celebrimbor
> create the three Elven rings with assistance of Sauron?  Sauron did not
> produce the rings, but it influenced the author enough to introduce
> vulnerabilities in the rings.
>
>> > +
>> > +	This also includes AI assistive tools used in the contributing
>> > +	process, even if such tools do not generate the contributed
>> > +	code.
>> 
>> I object strongly to this paragraph.
>> 
>> It is the *opposite* of what Gentoo's policy intended.
>> 
>> This is policy over-reach into the lives of contributors.
>
>
> Cheers,
> Alex

