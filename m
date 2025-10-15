Return-Path: <linux-man+bounces-4147-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C24E7BDFA6D
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D5BFB5009D0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F203375D7;
	Wed, 15 Oct 2025 16:26:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EC03375DE
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 16:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760545607; cv=none; b=JI7Ko8t3Vq88y0RYCs6AiQLdxavTw5omi+o0jdegPgRw1xgfShW0n+r9nKyikFZ71QZas7wRT98Nb5rnrc52lyAph6/QOfjExUe8UuogCuBx7GlGxUFZQq43O+pPymgde0zcU+0FXNqKPKjlXP4eDgphqV5Q5wCKFGB6RNhXJYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760545607; c=relaxed/simple;
	bh=lqCkWdMQa6z/Q1NEcc+r7Gn1UlLVkcJAEC/V/Vp9gD8=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=a3NpEU+m9BKIT8Q3UQ5qJ5gno7ULABjuHIAsMTbTabJCpa2CGh4MyQuskBHSSHUxW/CHyvH7Ev8o6fJv/EsQu9FibmVGywr5kGgnEHQJ0MmanZ2gGZI1pOSA8t5i71ouM4BrRq/ydmzzw70pitljPqgaplLX+MsxOmT0cFXOYuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from smtpclient.apple (b.0.e.9.d.e.d.3.a.3.1.f.3.e.9.4.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a:49e3:f13a:3ded:9e0b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id DDAB0340D21;
	Wed, 15 Oct 2025 16:26:44 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Sam James <sam@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for contributing
Date: Wed, 15 Oct 2025 17:26:31 +0100
Message-Id: <2AD6042E-935B-4106-BCCF-4F889AA63E13@gentoo.org>
References: <qbs5taw5aij5luerfojhdyewvclnzjgfrs3jumduuxevfy5mgz@bh3mhhb5m7f6>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org,
 Collin Funk <collin.funk1@gmail.com>
In-Reply-To: <qbs5taw5aij5luerfojhdyewvclnzjgfrs3jumduuxevfy5mgz@bh3mhhb5m7f6>
To: Alejandro Colomar <alx@kernel.org>
X-Mailer: iPhone Mail (22G100)



> On 15 Oct 2025, at 17:21, Alejandro Colomar <alx@kernel.org> wrote:
>=20
> =EF=BB=BFHi Sam,
>=20
>> On Wed, Oct 15, 2025 at 05:09:00PM +0100, Sam James wrote:
>> Alejandro Colomar <alx@kernel.org> writes:
>>=20
>>> Hi Carlos, Sam,
>>>=20
>>> On Wed, Oct 15, 2025 at 03:51:33PM +0100, Sam James wrote:
>>>>>>> Though it has been discussed on-list that this policy could be seen a=
s
>>>>>>> forbiding assistive technologies, but that this was not the intent o=
f
>>>>>>> the Gentoo Council's wording.
>>>>>> Didn't they?  Do you have a source for that?
>>>>>=20
>>>>> https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
>>>>> ~~~
>>>>> As someone who was present at the initital discussion, I can assure th=
at
>>>>> banning accessibility helps was not the intention.
>>>>> ~~~
>>>>> - Andreas Huettel
>>>>=20
>>>> +1 (as someone else who also voted on it). We may amend it to make this=

>>>> part clear in future.
>>>=20
>>> Thanks.  I find the wording to imply that it also prohibits assistive
>>> technologies (and I like that sense).  I'd add a paragraph claifying it
>>> in the sense of disallowing them:
>>=20
>> Eh? We're saying we *don't* want to do that.
>=20
> Yup.  I'm saying I disagree with you, which is why I added a paragraph
> clarifying the sense.
>=20

OK, but that's not a clarification, it's a substantive change (that I don't t=
hink there's consensus for).
>=20
> Cheers,
> Alex
>=20
>>>=20
>>>    It is expressly forbidden to contribute to this project any
>>>    content that has been created with the assistance of artificial
>>>    intelligence tools.
>>>=20
>>>    This also includes AI-based assistive tools used in the
>>>    contributing process, even if such tools do not generate the
>>>    contributed code.
>>>=20
>>> This includes for example AI-based linters and static analyzers.
>>>=20
>>>=20
>>> Cheers,
>>> Alex
>=20
> --
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).
> <signature.asc>

