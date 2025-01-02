Return-Path: <linux-man+bounces-2184-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5139FF7B1
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 10:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1ED01882975
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 09:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B64A19D8A3;
	Thu,  2 Jan 2025 09:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NenUB6pD"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B70192B82
	for <linux-man@vger.kernel.org>; Thu,  2 Jan 2025 09:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735811650; cv=none; b=Gjk1niwo09Guf41HuJGlX6G4G1sDRLUdfhAH/75yI7ViZDUOhoFQfHoXi/ck2WhCLKF/uhej9eccLauEUA0zgnX/Wl3oxV5zqsSFEvjqd0fiUFqhDzWD3hbnE9tjEP9IueNGIaU1u0cQBL9jIyTmPZ7ARPEcuw32lViJA3pdbJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735811650; c=relaxed/simple;
	bh=MQ4oJiDBMkL0CxlvaZctrn1CkJq0lqKObHw433SKzN4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bVGU2MY2toSOoVFw7vjeJigPD6Y7eKDJ5ZT4Xzwctp7eGGGEwilD9/aZ1rOC9RHqsU02Krn9Ae16eZgV4A0dihOQmddeqkf/tQAfME3K/CExxG9470tY+F4iz5ZbVXDGNnTEBa33ZZHHiWCcNYWHmI+qpt7BLEWBTu8tDDbrdrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NenUB6pD; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1735811647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=t29vRN4AcgR0ONuC2yvp9vEI7NnQOki3bwxBVYOB3N4=;
	b=NenUB6pDcHaFTpoxvFoERznkKGi66e8EophXEbU89ettOQCjCLKQpgz2X5XPTkViLhgjwp
	J8TRYEFeL25wUY2aVchk40GeoGAhfCa0uFTObucwYmpID8RrsWLoJ2Gf1m0lRWPtHZkB5F
	t5ouVkZo9H9AUwOBwvVizGWhYQ80sPI=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-378-r8vaTpUDNeqAFUfMGg7UKw-1; Thu,
 02 Jan 2025 04:54:04 -0500
X-MC-Unique: r8vaTpUDNeqAFUfMGg7UKw-1
X-Mimecast-MFC-AGG-ID: r8vaTpUDNeqAFUfMGg7UKw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 988EF1956095;
	Thu,  2 Jan 2025 09:54:02 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.2])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CFD219560A2;
	Thu,  2 Jan 2025 09:54:00 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>,  mtk.manpages@gmail.com,
  linux-man@vger.kernel.org,  libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
In-Reply-To: <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
	(Alejandro Colomar's message of "Thu, 2 Jan 2025 01:19:38 +0100")
References: <Z3W_qgawqyEB-QrA@comp..>
	<ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
Date: Thu, 02 Jan 2025 10:53:57 +0100
Message-ID: <87ikqxee2y.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

* Alejandro Colomar:

>> The underlying futex() call indeed fails with EINTR but it's called
>> again by both glibc and musl.
>
> I've CCed glibc, in case they can comment.  Maybe this behavior changed
> at some point in the past?  I don't know.

Maybe in the LinuxThreads implementation.  I think NPTL has handled this
correctly from the beginning.  POSIX bans the EINTR failure condition.

Thanks,
Florian


