Return-Path: <linux-man+bounces-218-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4DD805D50
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 19:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30D48B2110C
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 18:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3D468B9D;
	Tue,  5 Dec 2023 18:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="AnFNEpNC"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C518B10FC
	for <linux-man@vger.kernel.org>; Tue,  5 Dec 2023 10:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701800797;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9vLZwFal9fP9J1mspSe58NdnT8TEzp8c71VShhTDYr8=;
	b=AnFNEpNCRBojFfVwI99Q6vi4CUDj429dS7e2DaFqws+g6eTl4A3b4n7UAfTGl4b31kigOd
	o2hzRH3w/sRqUtDsOg03syQOLJarKhEO2+aT60IuC9kc5qj4AfNB2LgiJ/usl07M7l52dP
	pEdKfolg32z8Jyhr8htrxJzVkjCXVOs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-459-nm6oeEwhOLyrD1M9IU2apA-1; Tue, 05 Dec 2023 13:26:34 -0500
X-MC-Unique: nm6oeEwhOLyrD1M9IU2apA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8AD5836F22;
	Tue,  5 Dec 2023 18:26:33 +0000 (UTC)
Received: from ws.net.home (unknown [10.45.225.175])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB3141C060AF;
	Tue,  5 Dec 2023 18:26:31 +0000 (UTC)
Date: Tue, 5 Dec 2023 19:26:29 +0100
From: Karel Zak <kzak@redhat.com>
To: Miklos Szeredi <miklos@szeredi.hu>
Cc: libc-alpha@sourceware.org, linux-man <linux-man@vger.kernel.org>,
	Alejandro Colomar <alx@kernel.org>,
	Linux API <linux-api@vger.kernel.org>,
	Florian Weimer <fweimer@redhat.com>, linux-fsdevel@vger.kernel.org,
	Ian Kent <raven@themaw.net>, David Howells <dhowells@redhat.com>,
	Christian Brauner <christian@brauner.io>,
	Amir Goldstein <amir73il@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC] proposed libc interface and man page for listmount
Message-ID: <20231205182629.qk5s6f7m7sas4anh@ws.net.home>
References: <CAJfpeguMViqawKfJtM7_M9=m+6WsTcPfa_18t_rM9iuMG096RA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJfpeguMViqawKfJtM7_M9=m+6WsTcPfa_18t_rM9iuMG096RA@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7

On Tue, Dec 05, 2023 at 05:27:58PM +0100, Miklos Szeredi wrote:
> Attaching the proposed man page for listing mounts (based on the new
> listmount() syscall).
> 
> The raw interface is:
> 
>        syscall(__NR_listmount, const struct mnt_id_req __user *, req,
>                   u64 __user *, buf, size_t, bufsize, unsigned int, flags);
> 
> The proposed libc API is.
> 
>        struct listmount *listmount_start(uint64_t mnt_id, unsigned int flags);
>        uint64_t listmount_next(struct listmount *lm);
>        void listmount_end(struct listmount *lm);

What about:

    getmountlist()
    nextmountlist()
    freemountlist()

For me, _start and _end() sounds strange. For example, We already use
get+free for getaddrinfo().

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com


