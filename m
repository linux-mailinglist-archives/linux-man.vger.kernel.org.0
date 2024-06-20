Return-Path: <linux-man+bounces-1252-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F05910A09
	for <lists+linux-man@lfdr.de>; Thu, 20 Jun 2024 17:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB4091F22F62
	for <lists+linux-man@lfdr.de>; Thu, 20 Jun 2024 15:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180091B0121;
	Thu, 20 Jun 2024 15:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C0te2hXy"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5271B011E
	for <linux-man@vger.kernel.org>; Thu, 20 Jun 2024 15:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718897846; cv=none; b=FO4MKrYj5yCFrxZnZvv3GW9ylJKOIQCkK83qo9CH2ZBSvp9Xxzt5JTr9kl0YsY/rQBkLPh7Hvsdf0N2w1ehaqsQH9A/6pUUaiq80xCzIZ7CUxUji/PV4mxeVw3/rurxtIQO2PQ3L6bzOIsBCVpvc6F+eo5ADAtSydaVLmqQRxJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718897846; c=relaxed/simple;
	bh=bInvRvhFpdAXIoy54RrLFbi1HAJQ7zVeNSdSlOjxidA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=G2fmBLH8CGjDfDPI4CudqrtI75sGxHC/DW5WaWWBI08oivqipUlQ3p4Bhs4bDgUwHmTQJo3CKfM3YtZxwmZgn0A0LG0J88XeetikPXD6JdYUS9uXfjvqXhk0ucG7luiMoDGH014dUusn+K59SVm3Wo7LMp295xCm4Yy8xJ3/I7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C0te2hXy; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718897844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Lfo9x2MKmfvFsielY6Ib6fkqvW1DCPEsIQ8S7Qk5yOE=;
	b=C0te2hXy28zKwccf8Xhygo14cvGNoRMCSlxi572zdohezemvutQZyoEBwO8fQ1I5Z1Vj5z
	zmhBdS5dfPf7w01/ujR2P4lbr6VzOhbGC3Y0qopk+asWEja7X0+RWn8d2O1tvZkVvfyy6I
	T1YLUP2IflHIKI17FUsZ5A3aeoj5qds=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-515-OmdMpJ0uPrC99tGFCd_udg-1; Thu,
 20 Jun 2024 11:37:21 -0400
X-MC-Unique: OmdMpJ0uPrC99tGFCd_udg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 672811955D6A
	for <linux-man@vger.kernel.org>; Thu, 20 Jun 2024 15:37:12 +0000 (UTC)
Received: from redhat.com (unknown [10.2.16.54])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22AD73001D1F
	for <linux-man@vger.kernel.org>; Thu, 20 Jun 2024 15:37:10 +0000 (UTC)
Date: Thu, 20 Jun 2024 10:37:08 -0500
From: Eric Blake <eblake@redhat.com>
To: linux-man <linux-man@vger.kernel.org>
Subject: clarifcation on interfaces like strnlen
Message-ID: <qqn7wdgo72mn3be67yiyoiq3g5v6pcoejemdpqdb355k4rdto6@d5u32xrwsbrr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20240425
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4

In today's Austin Group meeting (the group behind POSIX), it was noted
that there is a potential discrepancy between C2Y and POSIX regarding
whether strnlen(3) operates on "strings" (the C standard defines this
as a NUL-terminated sequence) vs. length-limited arrays of characters
(which may or may not contain a NUL byte within the bounds given).

https://www.austingroupbugs.net/view.php?id=1834

One of the contributors to the C standard (Chris Bazeley) then replied
that his proposal for strnlen to C2Y was based in part on the existing
wording of https://man7.org/linux/man-pages/man3/strnlen.3.html, where
the man pages were not as precise as the POSIX Issue 8 wording, as
well as the fact that C is already inconsistent in its wording for
strnlen_s; although he also expressed an openness to revising his
draft based on consensus.

It may be worth some preliminary cleanup patches to the Linux man
pages for strnlen and friends to follow the example of POSIX in
distinguishing when an argument is a string (must have NUL terminator)
vs a length-bounded array of bytes (which may or may not include a NUL
terminator), to make it easier for everyone to share common wording
when C2Y eventually adds the function.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.
Virtualization:  qemu.org | libguestfs.org


