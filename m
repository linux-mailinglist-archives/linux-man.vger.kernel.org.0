Return-Path: <linux-man+bounces-2263-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DCBA16822
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 09:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B45D63ABA2C
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 08:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 572D519A28D;
	Mon, 20 Jan 2025 08:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ULQTxZa6"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B733192D63
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 08:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737361241; cv=none; b=meXB7zKL9jEG4jViOKJKLtJ2V8iVrlPcIEIbH9uNhAPOXWN9nNEayOtDMkcbnJWPZTmBTBwPwP+HyhzUYgwbSbk79lJ7nn16e2Hy3fIPTiSWA8wkvCR8fJN1qteCtTK+ovE25Z5FNYTYBLTzP2L1dp9wnTN2Db7eYhf7pEEs5as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737361241; c=relaxed/simple;
	bh=jriNF0MPgkt4IvHKvJh67SadXnDBaR0U7TjN/+Tn8aI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AVW2qnoU8td0ls6vQm5hJfurVGhOQO7AYZ3M10po9uxwNkc/rxifZhuA9IFFfyrD/eWZSwjSONdT2ADReLrOTVL5hiqMFRz3+vljsAwjD0RNlCsp3hy1IcXJ2tupPLrliOvbTqjJiQDFBNFkRtX4RY6JdR9BTRdv+xX5uunCogc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ULQTxZa6; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737361238;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9S/+UO+Jpo6Uinha9DvO1nZtXGfn/AQMkOrZO1sikog=;
	b=ULQTxZa6CSnjREyEZi/6a5s+6FMsp+mhtc18Km8jJeAeVNI2ZzQDaCgA4tluXVlktDPCyZ
	FrzUX/wcxNeEaadw2ihEehPk799hIpfWNdQ0en5SUm/AH3RFP/qzERrVsyUj/ivEhaBfB+
	tftKeLW461gFQYxbDG/MAZDtzCxF80Y=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-204-8LgFmMbLMNCa5mHrPvhm2A-1; Mon,
 20 Jan 2025 03:20:33 -0500
X-MC-Unique: 8LgFmMbLMNCa5mHrPvhm2A-1
X-Mimecast-MFC-AGG-ID: 8LgFmMbLMNCa5mHrPvhm2A
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 18D4A1955DDA;
	Mon, 20 Jan 2025 08:20:32 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.54])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A98AD19560BF;
	Mon, 20 Jan 2025 08:20:30 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,  linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
In-Reply-To: <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
	(Alejandro Colomar's message of "Sun, 19 Jan 2025 16:24:50 +0100")
References: <20250113213301.410280-1-jason@jasonyundt.email>
	<20250117130205.33119-1-jason@jasonyundt.email>
	<zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
	<y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
	<ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
	<t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
	<5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
Date: Mon, 20 Jan 2025 09:20:27 +0100
Message-ID: <877c6pew1g.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

* Alejandro Colomar:

> Hi Jason, Florian,
>
> On Sun, Jan 19, 2025 at 08:17:46AM -0500, Jason Yundt wrote:
>> > It seems you're passing a non-terminated string, and thus it's produci=
ng
>> > a non-terminated string.  Why don't you pass a null-terminated string?
>> >=20
>> > That is, inbytesleft should include be the length + 1.
>>=20
>> Here=E2=80=99re my concern: iconv(3) is going to see the final element of
>> utf32_pathname and interpret it as a U+0000 null character.  In some
>> character encodings, U+0000 null is encoded as a single null byte.  In
>> other character encodings, U+0000 null is encoded as something other
>> than a single null byte.  For example, in Modified UTF-8, U+0000 null is
>> encoded as the bytes C0 80.  Is there any guarantee that
>> nl_langinfo(CODESET) will return a character encoding where U+0000 is
>> represented as a single null byte?

> Florian, do you know this?

Character sets used by glibc locales must be mostly ASCII-transparent.
This includes the mapping of the null byte.  It is possible to create
locales that do not follow these rules, but they tend to introduce
security vulnerabilities, particularly if shell metacharacters are
mapped differently.

Thanks,
Florian


