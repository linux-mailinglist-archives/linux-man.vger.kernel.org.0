Return-Path: <linux-man+bounces-183-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6987FD407
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 11:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2773D28323A
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 10:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6A21A727;
	Wed, 29 Nov 2023 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=szeredi.hu header.i=@szeredi.hu header.b="EuilvnO2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1B7DAF
	for <linux-man@vger.kernel.org>; Wed, 29 Nov 2023 02:22:16 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso1360566a12.1
        for <linux-man@vger.kernel.org>; Wed, 29 Nov 2023 02:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1701253335; x=1701858135; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9+e0dRtq/eVvLjlvv0ngS2mg6O6proBJR0bbQEcbEis=;
        b=EuilvnO2ySuvARzfTdfao9rmmv+y4MwgZF8tyBr3epm5frC9kqehKwVq5jVfxXlrfH
         +294uXc/tzV0T7ylOYzLcNWSonRX0UybZYrFe5SYcfiFRpRUQfAWPX5H4edLj8pb10un
         C2Rg0IjhiXZeCxfFz+uIiZeztY3sfcLqSZM9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701253335; x=1701858135;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+e0dRtq/eVvLjlvv0ngS2mg6O6proBJR0bbQEcbEis=;
        b=uxCMbnAm+eW98+gUJ1Miv2d6Lw1aqS/T1TlXgKe3X2WsVKqCPGdNZ/c91B8yWodguc
         3YqT9zsZs9+UF5mma/cN8l2jaNz6VNPvp9/2EN9I0uZtmkz336yeZFbJCHRygcGFJ4C+
         J9Sjw0imo1s43ftztlylGUT1SOHyCn9h9IXa2VIRE7Rk3rp3AOJceAtpNthwcrO/ovq/
         tj9hPtljDQHvXN7P7yftRGIEMviClwu7ppITuo4sAJ5IhLgOPK01SDTSyGw7NthqXf5w
         plGYGuZHAHB1Sm/vJfj9UDukpKM4L07jIp8RARy7XD5CXO+59MDdm0VNwOCpP8A4VVXQ
         wXQA==
X-Gm-Message-State: AOJu0YxO0l3xUt6RpYlJdnP2dFOGbJHe5mSl//4ZSzNKwkjkmjj7HAMy
	B+sQ2JPO2A2qa1VWql2qQ3X5za4teOtIV7D93c6lmg==
X-Google-Smtp-Source: AGHT+IFe2Auyy4JtaCYUTdFf1+k/Lokr/YEBdAfPiw0kmqkfN2zVsdt+ss1NgQC1HNqb46A1IyXx57LD6A+Zxv5YRCY=
X-Received: by 2002:a17:906:74dc:b0:a17:89f4:72b2 with SMTP id
 z28-20020a17090674dc00b00a1789f472b2mr895144ejl.25.1701253335332; Wed, 29 Nov
 2023 02:22:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128160337.29094-1-mszeredi@redhat.com> <20231129-rinnen-gekapert-c3875be7c9da@brauner>
In-Reply-To: <20231129-rinnen-gekapert-c3875be7c9da@brauner>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Wed, 29 Nov 2023 11:22:03 +0100
Message-ID: <CAJfpegsTGq0TW0oFDnYiTeM+z66M73k1jXXjFE6GwebPQYSgGA@mail.gmail.com>
Subject: Re: [PATCH 0/4] listmount changes
To: Christian Brauner <brauner@kernel.org>
Cc: Miklos Szeredi <mszeredi@redhat.com>, linux-api@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-security-module@vger.kernel.org, 
	Karel Zak <kzak@redhat.com>, linux-fsdevel@vger.kernel.org, 
	Ian Kent <raven@themaw.net>, David Howells <dhowells@redhat.com>, 
	Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"

On Wed, 29 Nov 2023 at 10:53, Christian Brauner <brauner@kernel.org> wrote:
>
> On Tue, 28 Nov 2023 17:03:31 +0100, Miklos Szeredi wrote:
> > This came out from me thinking about the best libc API.  It contains a few
> > changes that simplify and (I think) improve the interface.
> >
> > Tree:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git#vfs.mount
> >
> > [...]
>
> Afaict, all changes as discussed. Thanks. I folded the fixes into the
> main commit. Links to the patches that were folded are in the commit
> message and explained in there as well. The final commit is now rather
> small and easy to read.

Looks good, thanks for folding the patches.

>    * Remove explicit LISTMOUNT_UNREACHABLE flag (cf. [1]). That
>      functionality can simply be made available by checking for required
>      privileges. If the caller is sufficiently privileged then list mounts
>      that can't be reached from the current root. If the caller isn't skip
>      mounts that can't be reached from the current root. This also makes
>      permission checking consistent with statmount() (cf. [3]).

Skipping mounts based on privileges was what the initial version did.
That inconsistency was the reason for introducing
LISTMOUNT_UNREACHABLE.  The final version doesn't skip mounts based on
privileges, either all submounts are listed or the request is rejected
with -EPERM.

For the case when some submounts are inside root and some are outside
useing LSMT_ROOT should be sufficient.  LSMT_ROOT won't fail due to
insufficient privileges, since by definition it lists only mounts that
are below root.

Thanks,
Miklos

