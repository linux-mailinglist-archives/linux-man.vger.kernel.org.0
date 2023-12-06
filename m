Return-Path: <linux-man+bounces-221-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB2806AE9
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 10:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04271B20CBB
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 09:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B69E1A734;
	Wed,  6 Dec 2023 09:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="iGq/vxTd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E414D44
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 01:40:59 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a1b75f59a12so77479966b.3
        for <linux-man@vger.kernel.org>; Wed, 06 Dec 2023 01:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1701855657; x=1702460457; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NdsXEprLd6HHm6fn4LOj1PkScl+mGSgUDIFGPbATAlo=;
        b=iGq/vxTdjezu281ZT1I6ZZiZHUBt9u3Znww51YBIR+MefU6EyT3H1VTUI5Stf6jV4h
         /Ggp1mm1lV5ZLMxnaJQfAybasFUUtpliC+md6nA+m8ZGiJFslWFYJpzKanW/iHFtJJ0V
         1C39fKEeE+WYiqagNcRd/Bj4CYvRF5pVq4ngE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701855657; x=1702460457;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NdsXEprLd6HHm6fn4LOj1PkScl+mGSgUDIFGPbATAlo=;
        b=E0aETRZhdBb0OHx8KRmryiW5G3QKss9izQI/7miZa8PJa87NAkbTF18w9KuC3PTpVS
         XisJ9R6QM5/Q9hKiLCoGoaOfWdcKt+loiKBO7tZpxuZ17u/34pxQZU/Z2kXzhKfk3+Ro
         KjAQU/Kbndk7BFi2wXQgbwH9o2ppN3AZn7T2R6fN4AQ2Ci/ckxX9fbHZJHxpzY4tPhaW
         1zZhqflhKtgPAsEadSotUzkyyafB5Im+GLI6ZR7jTplClPEFeWAzv4TfoXK1T1Sdvu1n
         ao0r5I7cJsr24S/nT5PBU+U81tML/O0QdOiUrA3N5a7qluxr+iaIkoscF47aS7HLqvPZ
         J4wQ==
X-Gm-Message-State: AOJu0Yx/5gqPvhzkJmPvn2CxrssxWwjrHnIegtvLkY2NoY8ZTa0MmPqg
	5LxR1+RnaDYCkU7xhjgHp/xn5vHDg3zN0SqNnCRolQ==
X-Google-Smtp-Source: AGHT+IGiyiuky8gen+Lzcnom3IM1I854rjHl5xZVAp0PjEd3Lm828jNZa172WoDAsNxUJddzDdXafiVboFAQHKaioyM=
X-Received: by 2002:a17:906:1c3:b0:a1c:e6aa:4c47 with SMTP id
 3-20020a17090601c300b00a1ce6aa4c47mr215992ejj.36.1701855657496; Wed, 06 Dec
 2023 01:40:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJfpeguMViqawKfJtM7_M9=m+6WsTcPfa_18t_rM9iuMG096RA@mail.gmail.com>
 <20231205182629.qk5s6f7m7sas4anh@ws.net.home>
In-Reply-To: <20231205182629.qk5s6f7m7sas4anh@ws.net.home>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Wed, 6 Dec 2023 10:40:46 +0100
Message-ID: <CAJfpegtv0A8b2Ex7O0AUwZCFsB_OfXvD_ehYR0a6jMr0F_Okdw@mail.gmail.com>
Subject: Re: [RFC] proposed libc interface and man page for listmount
To: Karel Zak <kzak@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man <linux-man@vger.kernel.org>, 
	Alejandro Colomar <alx@kernel.org>, Linux API <linux-api@vger.kernel.org>, 
	Florian Weimer <fweimer@redhat.com>, linux-fsdevel@vger.kernel.org, 
	Ian Kent <raven@themaw.net>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <christian@brauner.io>, Amir Goldstein <amir73il@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Dec 2023 at 19:26, Karel Zak <kzak@redhat.com> wrote:
>
> On Tue, Dec 05, 2023 at 05:27:58PM +0100, Miklos Szeredi wrote:
> > Attaching the proposed man page for listing mounts (based on the new
> > listmount() syscall).
> >
> > The raw interface is:
> >
> >        syscall(__NR_listmount, const struct mnt_id_req __user *, req,
> >                   u64 __user *, buf, size_t, bufsize, unsigned int, flags);
> >
> > The proposed libc API is.
> >
> >        struct listmount *listmount_start(uint64_t mnt_id, unsigned int flags);
> >        uint64_t listmount_next(struct listmount *lm);
> >        void listmount_end(struct listmount *lm);
>
> What about:
>
>     getmountlist()
>     nextmountlist()
>     freemountlist()
>
> For me, _start and _end() sounds strange. For example, We already use
> get+free for getaddrinfo().

Fine by me.  Just wanted to get the general scheme out for comment.

Thanks,
Miklos

