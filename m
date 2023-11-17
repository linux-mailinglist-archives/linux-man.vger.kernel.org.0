Return-Path: <linux-man+bounces-88-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C10B7EF5AF
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 16:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C71B1C2029D
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 15:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08483374C6;
	Fri, 17 Nov 2023 15:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="Al1KvqZw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD8F11727
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 07:50:38 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-991c786369cso309425666b.1
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 07:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1700236237; x=1700841037; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ggYsKAq3PetgT1da3he/7rcZ0DZHQBHjy+YREp5P8Zk=;
        b=Al1KvqZwpsVrDaAy/eijoMrXk4czKbYq3Qo93dXUvUWLH8ld0XByY9lvbLY4O1ZWgz
         D3aYhu1vcTkWdSJksTkQRMnTuuoh348JInX2wY2GLfjiKHTITLcMOv0l5jUMU3COkk0e
         wfY03A0tJP0vLeqW3QhUmVKxRLulpQ/eKDgNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700236237; x=1700841037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ggYsKAq3PetgT1da3he/7rcZ0DZHQBHjy+YREp5P8Zk=;
        b=JVt5gckl3u9JNSiC+WLnL/NkOB3SLPOMAC9Dg+4UeIK48tacfEIMPBSFntaC7LIF22
         im5L4yIkwOMfQQQ1jseiTh7Q/nR7R/xaI1/AnlImH8xoA3skyaS25nELNZxpf3IEafxH
         OOYbviKTGXGW3Ouki8P0rGkFH8I0F49CXgU2/RBEqii+j+D10c1QPF314q8G3sI3HJWu
         FAUTdAg/k8s68yAT8fG8U6IKbhhedzEuBonNqon78UZSmkOsIu7o3BdsrmjrqJBzeTLa
         pPWvdgnqbqWhZSxrHDBkgg8K70f1SIwESoFgIJ9EdeZyXIolDkA3G/mkvC1ciPDRD6iz
         amQQ==
X-Gm-Message-State: AOJu0YzWqNtnjrY/4sHfRgW1AX6RztWByEemh+SEyD4cTsLJ6hHUre7M
	6S2sfRQQyR0PHU/HMU71rm21EMJy4bVhR2gEIQTtiA==
X-Google-Smtp-Source: AGHT+IGfcN3i/lp7UWRuRD8e2MAeBb9T/5Yu6czOiR/qYpzLwiorOwKTCdzfyabx6KCwmR23G+CYxpI6ZuVC/T4SkmA=
X-Received: by 2002:a17:906:4c47:b0:9e5:ceb5:ada6 with SMTP id
 d7-20020a1709064c4700b009e5ceb5ada6mr5022163ejw.75.1700236237244; Fri, 17 Nov
 2023 07:50:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJfpegsMahRZBk2d2vRLgO8ao9QUP28BwtfV1HXp5hoTOH6Rvw@mail.gmail.com>
 <87fs15qvu4.fsf@oldenburg.str.redhat.com> <CAJfpegvqBtePer8HRuShe3PAHLbCg9YNUpOWzPg-+=gGwQJWpw@mail.gmail.com>
 <87leawphcj.fsf@oldenburg.str.redhat.com> <CAJfpegsCfuPuhtD+wfM3mUphqk9AxWrBZDa9-NxcdnsdAEizaw@mail.gmail.com>
In-Reply-To: <CAJfpegsCfuPuhtD+wfM3mUphqk9AxWrBZDa9-NxcdnsdAEizaw@mail.gmail.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Fri, 17 Nov 2023 16:50:25 +0100
Message-ID: <CAJfpegsBqbx5+VMHVHbYx2CdxxhtKHYD4V-nN5J3YCtXTdv=TQ@mail.gmail.com>
Subject: Re: proposed libc interface and man page for statmount(2)
To: Florian Weimer <fweimer@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man <linux-man@vger.kernel.org>, 
	Alejandro Colomar <alx@kernel.org>, Linux API <linux-api@vger.kernel.org>, 
	linux-fsdevel@vger.kernel.org, Karel Zak <kzak@redhat.com>, 
	Ian Kent <raven@themaw.net>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <christian@brauner.io>, Amir Goldstein <amir73il@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Nov 2023 at 16:13, Miklos Szeredi <miklos@szeredi.hu> wrote:

> open/list/.../close style of interface in libc?  We could do that in
> the kernel as well, but I'm not sure it's worth it at this point.

I wonder... Is there a reason this shouldn't be done statelessly by
adding an "continue after this ID" argument to listmount(2)?  The
caller will just need to pass the last mount ID received in the array
to the next listmount(2) call and iterate until a short count is
returned.

Thanks,
Miklos

