Return-Path: <linux-man+bounces-188-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F787FEE73
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 13:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A8FE281B08
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 12:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B5E03DB9C;
	Thu, 30 Nov 2023 12:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Q2HB59A3"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7524D1704
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 04:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701345637;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5zDyNQnTe/a1a+K5frhqHKl1OV9alFTyrp2wttcHkEw=;
	b=Q2HB59A38Z6kMo9vi+MAWFb+HIA0+H+S6zDlfTYLZvSVf5Ua60Dw/ZmzYVKIZaFYOAzmeE
	gGnuEZOjEmOUsf5hjZeM7ssC7FnapyQiYsmecMlsKOMEAq8ppnSrbjZdQxlySDOyPaG2bs
	mSNiGCRI0qPZG3NSg1vFQrE6IYAlPwk=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-2RUQTxZFMoCA8i6Y4hWb_Q-1; Thu,
 30 Nov 2023 07:00:34 -0500
X-MC-Unique: 2RUQTxZFMoCA8i6Y4hWb_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96B7B28040B1;
	Thu, 30 Nov 2023 12:00:33 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58B172166B27;
	Thu, 30 Nov 2023 12:00:32 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: GNU C Library <libc-help@sourceware.org>,  Linux man-pages
 <linux-man@vger.kernel.org>,  Iker Pedrosa <ipedrosa@redhat.com>,  shadow
 <~hallyn/shadow@lists.sr.ht>,  Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strtol(3) setting of errno
References: <ZWhUR9AqoSLKeT46@debian>
Date: Thu, 30 Nov 2023 13:00:30 +0100
In-Reply-To: <ZWhUR9AqoSLKeT46@debian> (Alejandro Colomar's message of "Thu,
	30 Nov 2023 10:22:09 +0100")
Message-ID: <87cyvrv4bl.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.3 (gnu/linux)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6

* Alejandro Colomar:

> Now I realize that commit was probably wrong, and one needs to check
> both errno and the return value to determine that the call failed.  Can
> you please confirm what the correct specification of strtol(3) is?

The most detailed specification we have is the one that is in POSIX.

Thanks,
Florian


