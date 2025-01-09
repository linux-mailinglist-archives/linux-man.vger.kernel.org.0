Return-Path: <linux-man+bounces-2211-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA4AA0828B
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 23:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6A63A89EE
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 22:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1802046A3;
	Thu,  9 Jan 2025 22:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rUZHiaR9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B535200B95
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 22:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736460139; cv=none; b=KjzIv1VFIlS3rwzIe6JWs6Rd11KgvZndjt+aG3PgePD3xv2uHsvKzezPQ3e+ZZ1xsw4fpZqt+M6WCTD8e9KT1mQyDU0WRHasDs7Ubk1LwCT0bx3iotR9t8VVfopsqQ6VkJTKWs398w8zOL1D02SzsmtetVEKpTExCgMJndVRl7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736460139; c=relaxed/simple;
	bh=63d5dtx00LHDJpVrlqcmdVpplO3pTqlQHmTpl0qCzUI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jUjrK8cfOGzBt5rWXVWYDEZUyeUozDCcYkgnJnJA90gCVLJgQlpc1KVOAPhzRU1e4yBlolPN/k42oS0hSDGyXSG0gaCGwnEA3WSjqC4Uit+YcgZDcIADCSWb12hypv3bw6CM9xL7tnQ1cPMADLeD0iZQPB186T0tRb7bGkkQm8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rUZHiaR9; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6d888fc8300so7635126d6.3
        for <linux-man@vger.kernel.org>; Thu, 09 Jan 2025 14:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1736460137; x=1737064937; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rV+yIAaV+UVK1VMW+TTnx158+jKunzERYZN5w4eUhhQ=;
        b=rUZHiaR9vUxigqeo8OAvwSO3xkdxe1u+eMCXM8gntX9mwnU4mTfccJZ1XjpJ3Abo3v
         pM9XmZX1EQS6rpbdGU+r7R+eku7kA/w7xMMvPNlGJzde6X0ERftJuWFLenrTQQugJVHL
         NXE6wtIUdgDG6JpRvAfDVLXRW58TrobhBx9ZuaBJZdeWYxBW76rq4o4g/MuzrB1BZjrO
         oq+YI8U0W3cWqrK0eCuviK/CXlPXINA40BArRecraUtVajViTyJ1ETeSXunabOz5dmNv
         fqeNut1XRvMzGHRw2F9E1fo+Dz7efUoPVVfvgYDlwBLMqy2efQlLArR9fsyUalZNdaAU
         B8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736460137; x=1737064937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rV+yIAaV+UVK1VMW+TTnx158+jKunzERYZN5w4eUhhQ=;
        b=GegmUAayEbWTUf9sMBewOpP+Y7036DAEW256JQfPfHRdWWZB95fqQDsQVPiYUW3KzN
         FU2uejaUoRO0Ri6gno4LI5wCtH5VCKCciZr07I6wVNCfLCppZU0OjXol9xf4df55gJOb
         Ac/JxqIa+mfnrILv9aaueRpvau+pruBYa0AanaQviZExhz4uPuhxrsGPHzhy2AkVvZ4v
         7BEwNyQMcNsWYVoSkRUneL7m1GU35VDfhzj4S3DoUaYOKPOEuz62O6vojrUXdD4MSI6J
         N3KcUO1UJuy6jLYkmAil4hwbzcLXCvZHO2ifKaHhW6QQeO+EsQxcPcf+bQi2NFpZV4j5
         hANg==
X-Gm-Message-State: AOJu0Yy3qI8ro1cKzeY17QuvRzPlROd1KDUb9NYm4W2fY2WUL6PNBn1Y
	4lVwITCQWlP3jTWTmHOCPX5tfi/mynKYI0LuQTkjSX7lbSc957QeOSPxnDKyc0DBL/qWJA8lVml
	6ZTZG0040INcCTGfgZxKIFdB44yLJhtSqR8IA
X-Gm-Gg: ASbGncsO9IUl6We4vcw9oIo1IFldGeXoypyq3Sg/55J1m/Koy20Au+PUYvMcJv8Si2w
	KQsJuOSh60GnBrkjQaeCMVGTC7AhCSOI72Gk=
X-Google-Smtp-Source: AGHT+IFpJfEubg1RVgCec6OZoOcjZgfJP+K4lPrqxqyu2C1MjiN5xrEQH+AwGuBbJnCaFW9UOBm6XZNBKZNBNcq0lY4=
X-Received: by 2002:a05:6214:20e3:b0:6d8:a32e:8426 with SMTP id
 6a1803df08f44-6df9b1d237fmr121101426d6.3.1736460136862; Thu, 09 Jan 2025
 14:02:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
 <nwauygp7cdhazyz76wuel6vrkukvd447ijquxxswipfpucrhqh@oheowzbs2sqb>
In-Reply-To: <nwauygp7cdhazyz76wuel6vrkukvd447ijquxxswipfpucrhqh@oheowzbs2sqb>
From: enh <enh@google.com>
Date: Thu, 9 Jan 2025 17:02:05 -0500
X-Gm-Features: AbW1kvZZNyDmYWy42b2iMnZqLXP7ubfAQOxaM9oVnv8ycIvaN9S7LuRK8zyqJ-o
Message-ID: <CAJgzZorN0mFU8UVwpWJO19+t_wTJkEApcfrRj_XcG=W54KAzAA@mail.gmail.com>
Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, Dan Albert <danalbert@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2025 at 7:41=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Elliott,
>
> > Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH qu=
irk.
>
> Thanks for using the full path!  :)
>
> Regarding "Add missing", I decided to transform that a little bit.

(no worries, i just copied that from one of your more recent changes i
saw in `git log` anyway :-) )

> Since most stuff we document was previously undocumented/missing, it
> doesn't help much (unless it was undocumented for decades).  I changed
> it for "Linux 6.11 allows using NULL with AT_EMPTY_PATH".
>
> On Wed, Jan 08, 2025 at 06:53:17PM -0500, enh wrote:
> > Signed-off-by: Elliott Hughes <enh@google.com>
>
> I prefer if you write the CCd people in the commit message too.
> I'll paste it anyway (when I remember).  :)
>
> > diff --git a/man/man2/stat.2 b/man/man2/stat.2
> > index 099c56b15..cfbfb654b 100644
> > --- a/man/man2/stat.2
> > +++ b/man/man2/stat.2
> > @@ -175,7 +175,9 @@ can either be 0, or include one or more of the
> > following flags ORed:
>
> The patch is corrupted.  The line above seems to have been broken by the
> mailer.  :|
>
> Luckily, it was easy enough to apply with the following pipeline:
>
>         sed '/175/N;s/\n/ /' | git am -s
>
>
> BTW, you should have a look at this:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/git#n11>
> That will produce more useful hunk contexts.

i think the trouble here is that i tend to just check out a new clone
every time i have something to send to you, so this keeps getting
lost. is there any way you can make it a property of the git project
itself?

... ah, actually, no, i was just on a different computer /facepalm

>         $ sed -n 11,19p CONTRIBUTING.d/git
>            git-diff(1), gitattributes(5)
>                To produce useful hunk contexts in manual pages, we need t=
o hack
>                git(1)'s idea of a function name, and also to tell git wha=
t is a
>                manual page.
>
>                    $ git config --global diff.man.xfuncname '^\.S[SHsh] .=
*$';
>                    $ mkdir -p ~/.config/git/;
>                    $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attribute=
s;
>
>
> Thanks for the patch!  I've applied it.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D996ca597328f0c93eb6d5eea3e86b6ac277db5f0>

thanks!

> Have a lovely night!
> Alex
>
> >  .\" commit 65cfc6722361570bfe255698d9cd4dccaf47570d
> >  If
> >  .I pathname
> > -is an empty string, operate on the file referred to by
> > +is an empty string
> > +(or NULL, since Linux 6.11)
> > +operate on the file referred to by
> >  .I dirfd
> >  (which may have been obtained using the
> >  .BR open (2)
> > --
> > 2.47.1.613.gc27f4b7a9f-goog
>
> --
> <https://www.alejandro-colomar.es/>

