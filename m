Return-Path: <linux-man+bounces-2357-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EBA2D88B
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A6861888919
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1FDB194C6A;
	Sat,  8 Feb 2025 20:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VOq0DLO9"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BFA243966
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 20:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046098; cv=none; b=V6n5FL3ps9e6OlqB6WMTsypC8YwcPKRdBKPKqgUlqLwSI14ZSvFnkE0sWY5K4xm4eRr70NfHG0qwvJmNqgBJLkMwp3Y47rlgNVK7bnUHbPhwWEUnlavrJ65TrTnSbrEnyJdPdn2ExGF5tsfNa/dcRHXwNZv+TRlxQZjCBVV6fyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046098; c=relaxed/simple;
	bh=x1OIqM2FU3HqxaNcdd87MOtNvlcSZVhKbB9f+9f4H9I=;
	h=From:To:Cc:Subject:In-Reply-To:Date:Message-ID:MIME-Version:
	 Content-Type; b=QTjhTzVUATOpB7KPEsZTbhbo6QW5bZ/Qshw8zA2RE3r2a4EaJSaIeg+Tykzl7GdGhB98G40AYexMclHLBoGECcuvSrsGez3ZmOrX37SSSaiDHQVOSAeNB1cjozCDO0QF5+bmhOn5GFEiQMR84JqTUWxYDcJ/eI8P4mhiqeV71kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VOq0DLO9; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739046096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=rDfuiscGWjU0HzVClM0mdvNpLypV4eXXeeagWgAcPN4=;
	b=VOq0DLO95AxcR7+hMNAPjM3TFEhxQQYO5PZS/LWSEPT/7/Lm25V9NCM+ZhN48MEoonSZ9s
	7cxUO14I93f2gZrOwtSNbDzZjyC9E4DTTBCcrNGHcKeQw+eJ9OlIeG0TO7Ms4mLkYea0/m
	JIn/OuL2Lh5zql7RXhf21ba7EDfBAI8=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-110-sV3q8yFhPIC_pe3mlhzWMA-1; Sat,
 08 Feb 2025 15:21:31 -0500
X-MC-Unique: sV3q8yFhPIC_pe3mlhzWMA-1
X-Mimecast-MFC-AGG-ID: sV3q8yFhPIC_pe3mlhzWMA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1117A1955DD0;
	Sat,  8 Feb 2025 20:21:28 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.88.57])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0A89E1956094;
	Sat,  8 Feb 2025 20:21:26 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 518KLOcp3191142;
	Sat, 8 Feb 2025 15:21:24 -0500
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
In-Reply-To: <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 (message from Alejandro Colomar on Sat, 8 Feb 2025 20:19:22 +0100)
Date: Sat, 08 Feb 2025 15:21:24 -0500
Message-ID: <xn4j14nq63.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15

Alejandro Colomar <alx@kernel.org> writes:
> -  aligned_alloc()
>	It makes sure that the input is a power of two, or it fails.
>
> -  posix_memalign()
>
> 	. . . It requires that the input is power of
> 	two,
>
> I wonder why glibc silently overaligns aligned_alloc() without reporting
> an error for an alignment of 2, while it reports an error for an
> alignment of 3.  It doesn't make much sense at first glance.  No
> standard seems to require that, so it looks like an arbitrary choice.

Because 2 is a power of two, but 3 isn't.  No power of two is a multiple
of 3.

GNU malloc only supports alignments that are powers of two.  The
resulting addresses might *happen* to be multiples of other numbers, but
you cannot request that.

As for why, ask Posix:

"If the value of alignment is not a valid alignment supported by the
 implementation, a null pointer shall be returned."
 [EINVAL]
    The value of alignment is not a valid alignment supported by the
    implementation."


