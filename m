Return-Path: <linux-man+bounces-2239-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FAEA12980
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 18:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0021C167231
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759D91A239C;
	Wed, 15 Jan 2025 17:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ph0qFxeD"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3F915688C
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 17:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736961136; cv=none; b=g3WVCV/w8lskY4WKX5BRHHshPE6PhUg69D1RWHvxl+4taC+7GiY/n1qrXt6S6FaS5MHLZa0U9nRAV8aBPuIOZwZXqN10+Ofq1goUbPsWuPKrryz1an5PuNwYB3EYT6Rd73q+Xd9juo3feMwGSGD1XXHX8lYUdP7MCVCP94vvnNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736961136; c=relaxed/simple;
	bh=Q+8QgaTEw5b5LXwvCl3tHAzrSKTDngbQZg7cE3RyT8o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NOOnFFi4j+IA28D7Nn9ZLpnqa1kpK/zfTT+giwVeU1SqdpBQA9HA+GQfYe1udyceQ2QewtjDG+FuMYhFKexVdIvsg3PfV9ZemLKFdp5j+ONIubl1C6odSxvinBLVLqqeNNSHnVj/PY8xDujCqV7IKig6pHQ64PKtZlgpDFSLqk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ph0qFxeD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736961133;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VRQHDpuqg7ZYVjVOKwelrDede3vxXPe7ykn50k0p3B0=;
	b=Ph0qFxeDunVjposoEUeK/iDmqJQ8oTR5bTKx58tDh0drtxbukTFUosA/Zrly1k/82ehJEz
	9QA5Nyz4vMLal+II7QzUGbogTQfKw3WOj5U1ofVyjpVdUjtIYc7147Cm6CxtpIkcx0XD1p
	WxvIvva52mzbnLBJdrqqtvFyY5t4Izk=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-345-k08CgrhyMTWwqUs6M9zRzw-1; Wed,
 15 Jan 2025 12:12:09 -0500
X-MC-Unique: k08CgrhyMTWwqUs6M9zRzw-1
X-Mimecast-MFC-AGG-ID: k08CgrhyMTWwqUs6M9zRzw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB79C195608A;
	Wed, 15 Jan 2025 17:12:08 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.35])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 398FA1944D01;
	Wed, 15 Jan 2025 17:12:06 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [PATCH v4] man/man7/pathname.7: Add file documenting format of
 pathnames
In-Reply-To: <20250115162052.131794-1-jason@jasonyundt.email> (Jason Yundt's
	message of "Wed, 15 Jan 2025 11:20:51 -0500")
References: <20250113213301.410280-1-jason@jasonyundt.email>
	<20250115162052.131794-1-jason@jasonyundt.email>
Date: Wed, 15 Jan 2025 18:12:04 +0100
Message-ID: <87y0zcgfx7.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

* Jason Yundt:

> +.IP \[bu]
> +Filenames can be at most 255 bytes long.

I don't think this is accurate, particularly not for network file
systems and file systems that use UCS-2 or UTF-16 internally.  The
latter typically have their own 255 character limit, but a character can
take up to 3 bytes in UTF-8 (as used by Linux).

This is why we deprecated readdir_r.

Thanks,
Florian


