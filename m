Return-Path: <linux-man+bounces-2377-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0120A2E278
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 04:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86EFC165A7C
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 03:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E728120B22;
	Mon, 10 Feb 2025 03:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="AB6WWDda"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AD446B8
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 03:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739156528; cv=none; b=eqO/c3qU4pQqPUkx/SlpDNSGXT5m//YBb2zl2DzBV5Em3e93vwMPpGmaYBJgNC+MjiP/8Im8n0truV0KQMvHayfPKxzT5P7yIaTJpXamxFfqtb17Q8HOCWR9++3AUk2BpY4njflwo5czo7VC4bPMcMZUJfEOo6ap+tynceROSMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739156528; c=relaxed/simple;
	bh=ntsmlY0jpVX4Lm1eK1BI7ZOaVIn3coY8rcFBvAwAGOE=;
	h=From:To:Cc:Subject:In-Reply-To:Date:Message-ID:MIME-Version:
	 Content-Type; b=kEyUjwW1PejLvmRxXQjypQCTfRfh1MQbBTb5O7xCsdjYjXHRHAoxyrra2iop5Mor+iPuvKgxysk+U1IOpJrolWo4HLzLi4KIPxmp+sKPYjY2bxwsvI4BIfFXKVE1FWbuCJKdNJaCTpxdbYbFNkhxu5lF4NCoFIcp9STAMlmoj4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=AB6WWDda; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739156525;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=SS5Smp61Ec5KdkvJmSkB2J4L12nhkco2Uk0Cj2ggrLk=;
	b=AB6WWDdadADsmpRwgMWuzbkDpeGqRwlLv69uqL6BOUIrgICpNf5xC71HHQGpPobDmhTENx
	xJdpJUcsNcV/F0MnW2q2zgp4uyhAB8c9wQJNpdeC2QkYOYWeaTzradpMsXucg3gpyW/Scl
	T2rpbpsIBLc9OWWDgvm2vu/CV7fRJT0=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-324-D7AHz5XDNpiFiVMYiPX-_g-1; Sun,
 09 Feb 2025 22:02:02 -0500
X-MC-Unique: D7AHz5XDNpiFiVMYiPX-_g-1
X-Mimecast-MFC-AGG-ID: D7AHz5XDNpiFiVMYiPX-_g
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 362E6180099B;
	Mon, 10 Feb 2025 03:02:00 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.88.86])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E2E3180177C;
	Mon, 10 Feb 2025 03:01:58 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 51A31oe03267208;
	Sun, 9 Feb 2025 22:01:50 -0500
From: DJ Delorie <dj@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: miguel.ojeda.sandonis@gmail.com, eblake@redhat.com, will.newton@linaro.org,
        eggert@cs.ucla.edu, linux-man@vger.kernel.org, dakr@kernel.org,
        tamird@gmail.com, ojeda@kernel.org, alex.gaynor@gmail.com,
        boqun.feng@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com,
        benno.lossin@proton.me, a.hindborg@kernel.org, aliceryhl@google.com,
        tmgross@umich.edu, rust-for-linux@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
In-Reply-To: <iocqkifz6dsywt2ueqppsdw53bgcp6i7ju7vadxxxu7pow6w5c@n2wqgypsiq2d>
 (message from Alejandro Colomar on Sun, 9 Feb 2025 00:35:55 +0100)
Date: Sun, 09 Feb 2025 22:01:50 -0500
Message-ID: <xn1pw6o63l.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

Alejandro Colomar <alx@kernel.org> writes:
> On retrospective, we should have added some more details to that commit
> message.  DJ, has the requirement of the size been lifted?  Was it never
> present?

The current code checks alignment but not size.

It looks like that was always the case.

And no, I don't remember where I got the size requirement from ;-)
(but at least it says "should" instead of "must")


