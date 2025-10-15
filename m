Return-Path: <linux-man+bounces-4145-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57580BDF937
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFFE61A218A5
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE64E337698;
	Wed, 15 Oct 2025 16:09:06 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114D53375B0
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 16:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760544546; cv=none; b=ebgNgxS9kuwexcwtE2M3x+1dggtA0H7EO4CoDa2rOOyqvEo04fmoVbZImdHUq0yQQrphG6Zv2kqEWZKIICIHMaPP6v7VnYWcYjVSI9kpdA++DA6nnZ5AgQnpoxI0nqTsAHJY7fbrh3WHkb2I0cVQezWycZtIogstOSDAUQcxC2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760544546; c=relaxed/simple;
	bh=NCJ8JCPRAZ520lUJG/pVoL+DD2oKKzKqm5vPj7OwwnU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CFhxvIPZRiWOOkyPRJYKUfDZpY+2t31Q6VZkay4YoQSsd/3acUTkoJMR1RyZTJZGuLBOpzLJbI+iHXVHmKtVeGu23E7zKABKpm6s9AWejzNJggnLqnwby4vGZwCRuztenuI+4A581y52lznIparxTS/YkgXN/43c4d46lk96d7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from mop.sam.mop (2.8.3.0.0.0.0.0.0.0.0.0.0.0.0.0.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a::382])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id A3205340B7E;
	Wed, 15 Oct 2025 16:09:02 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,  linux-man@vger.kernel.org,  Collin
 Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
Organization: Gentoo
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
	<4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
	<g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
	<426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
	<87ikgg8bgq.fsf@gentoo.org>
	<zbo53h5pugwczbscyg4n7tgydrnnaf6v3enc4stckobwswu377@dt4itqfzh7k3>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Wed, 15 Oct 2025 17:09:00 +0100
Message-ID: <87a51s87vn.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hi Carlos, Sam,
>
> On Wed, Oct 15, 2025 at 03:51:33PM +0100, Sam James wrote:
>> >>> Though it has been discussed on-list that this policy could be seen as
>> >>> forbiding assistive technologies, but that this was not the intent of
>> >>> the Gentoo Council's wording.
>> >> Didn't they?  Do you have a source for that?
>> >
>> > https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
>> > ~~~
>> > As someone who was present at the initital discussion, I can assure that
>> > banning accessibility helps was not the intention.
>> > ~~~
>> > - Andreas Huettel
>> 
>> +1 (as someone else who also voted on it). We may amend it to make this
>> part clear in future.
>
> Thanks.  I find the wording to imply that it also prohibits assistive
> technologies (and I like that sense).  I'd add a paragraph claifying it
> in the sense of disallowing them:

Eh? We're saying we *don't* want to do that.

>
> 	It is expressly forbidden to contribute to this project any
> 	content that has been created with the assistance of artificial
> 	intelligence tools.
>
> 	This also includes AI-based assistive tools used in the
> 	contributing process, even if such tools do not generate the
> 	contributed code.
>
> This includes for example AI-based linters and static analyzers.
>
>
> Cheers,
> Alex

