Return-Path: <linux-man+bounces-2235-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9503BA11CC1
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 10:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DAF4188C5EE
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 09:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E52F246A2F;
	Wed, 15 Jan 2025 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OsziDGCE"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F1246A09
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736931702; cv=none; b=hhaJeslFBpGG8TTBD24MCoevnjspg8HxhAqOIaOSih9iasMrQnd2Mq7LQjaQYxPe8ySwlCt+vzpi22Jh3m+YIl3QTCgP99ZTkDgy66F7BwUEhWLs4Pl26SbXAX4g1prWO3agcPLMOww3W3t4IUUE0FUgWq6NAz2T7ztyHzlFFxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736931702; c=relaxed/simple;
	bh=W7a9GsMbQ7TAXNiFIUJ7Y9F+bCzHvm083ADjSSVlUTU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=agmKvX2dIbvEJttfwcqP8RYgtaRzTXJvbjCoxhKb35fGXffHD0vxa4iCxODCfhzCYvlEwO1ZsIokJozjAkTPaX+yXJjZbergUlVN8wQjExvTJ+ai8MbJiqMVq21fqYjAzCWm37C56bI+CO1p+y563oouuymF0hOTMPwOVZyvyHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OsziDGCE; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736931698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uxbLXEE6ExxXcqn/HKi1qjKIzthEQ0o/WR1J/cAvRLI=;
	b=OsziDGCEV2BEAm4PUCwcBivyBqEwzV/PkOri3MajoteSj3+IRlYh6KQ4dQ0kqC3xAmr7Qw
	nWNn7NebpOIVelMgNBhqFKebNDgCQ+o27eITjLJ8NmyVVSl9qSHgrNIuu2Qm9r9Z1Hr9y1
	XnnTlvVcpj7qXa2J7L8OyMJpp8s3AMk=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-536-en2vN0RmNB6r7ty4vxxVVA-1; Wed,
 15 Jan 2025 04:01:35 -0500
X-MC-Unique: en2vN0RmNB6r7ty4vxxVVA-1
X-Mimecast-MFC-AGG-ID: en2vN0RmNB6r7ty4vxxVVA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9A08D19560B4;
	Wed, 15 Jan 2025 09:01:33 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.35])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2EA5019560AD;
	Wed, 15 Jan 2025 09:01:31 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
In-Reply-To: <20250114125453.27520-1-jason@jasonyundt.email> (Jason Yundt's
	message of "Tue, 14 Jan 2025 07:54:45 -0500")
References: <20250113213301.410280-1-jason@jasonyundt.email>
	<20250114125453.27520-1-jason@jasonyundt.email>
Date: Wed, 15 Jan 2025 10:01:29 +0100
Message-ID: <87ikqglac6.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

* Jason Yundt:

> +The kernel stores paths as null-terminated byte sequences.
> +As far as the kernel is concerned, there are only three rules for paths:
> +.IP \[bu]
> +The last byte in the sequence needs to be a null byte.
> +.IP \[bu]
> +Any other bytes in the sequence need to be non-null bytes.
> +.IP \[bu]
> +A 0x2F byte is always interpreted as a directory separator (/).

There are also rules about overall length.  Some pathnames cannot be
resolved by the kernel directly, even though they exist and can be
resolved piecewise, say using openat.

There are also places with more stringent pathname limits, like the
sun_path in AF_LOCAL socket addresses.

Thanks,
Florian


