Return-Path: <linux-man+bounces-4064-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C0BBE34A
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 15:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5490B3BCFDF
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 13:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12172D29AC;
	Mon,  6 Oct 2025 13:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="boEiDFdW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323751114
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 13:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759758313; cv=none; b=KFUUjay0/4PPuUY/gppN6NDg1+CNsJgZFHTsEyuc0PcHUWhPyWROjG8WzXzp754FiN6wSwu9NTF+wZ9ZL2FACYvqZz6xsJ67gWIVmdHTbq6x8tXDt38vDazNXc31IIn19Cnt2bB5hAW9cFEEbeZMh+0k7gzq5Bwlecvd+AFsjR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759758313; c=relaxed/simple;
	bh=gY7Cn0R4j+C/xwAHqXy0vJMKwmEkQ6eYzuuBQMAJA+s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HPxKvUuNHd3tP6Ui9+6UEZslCUj+QPY8Lj6Zh80XuMtl7zgc45jPCYnHmDCMq5uM0U3qghVmQkdWlFzKy8ek4yBf2LEVTjGZgkSl2BWLc2hEGlKuFIAKXtZyWMcvgpT2+vf9haiTw0qyXNxu5L4tlwMNUkp5BVJvqbJFzoi2GmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=boEiDFdW; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-77f947312a5so38975457b3.2
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 06:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759758310; x=1760363110; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7Dd+0F85GMq0hM6baKNKYaOpWODHWFkc8dJOJcvzgTI=;
        b=boEiDFdWZHHln+EkAvNcsacP54pU8mzHIPHWgfL7/u1lHux/xLTXhnVlptnMYuJYrg
         Q6qWxtE9qPavVUN7Yx9s4/QnvZGZdMO7iw3LVYTfXUsbX66b0gXMvJsaFoJ9TMFAb/wt
         I+RT9MsR2Dn/gPZfdo7cdnKo8fV0SoTiGJUgeQtdp7xtDCMbdEMDEGJL+hwUQZWynGyK
         H59SeYbA5eb1CeKfpoPnkcIV24oSNyIS4VB5J6jkthUkIcqDn2zVfZnvjMpJZvvKd/iT
         MFSTrFbPEXdQ7sv8mhvbm9uidDh7TrFvXASoEfEYNyrrMU30kLSxH+wTxBlr7cTiiXhp
         sczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758310; x=1760363110;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Dd+0F85GMq0hM6baKNKYaOpWODHWFkc8dJOJcvzgTI=;
        b=jQCjWVEJFm4+rsWQIa6xZq9T1qPmn/cUUm+DJxJ08mDm9NerhlwI1pMRa4+NRzSLuk
         W5j1d6172SifRnViV2VeNkQI2Z3FHzayVhufONge2LZQXrOIwQVpShAysDZ1UWqKpgDu
         UvT4kzDcJovtuV1hMCFfbgMI7TL94hXL8IJDsOIPU3Fd4YGcZ1UNDE+gbR7qKKeoTbiB
         EbvJ5QeZy5x1xoHHkuVokhCzrvIsUZKO27M/VxZco7wsQ9f2tsDEZHb9uNwXTINmLvWm
         6pu9mubw4nw+v/gajTz9XbrfG5JrsmYC4s2zamjqa9u2FnLHWTm2RizsejazKV5/ioO5
         M0Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUcTCN/ML/KVhL31pH90wjdDGPEOg/ZxK+Sghfy0N6/WQhaWAh2z+QiibkdqROvTBag7Bv3/MwOnvE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2iv4lr1TvA68w8JTYJPN1j6NyHVIqgs65FraRypXc46ql9qH9
	Q6yhfqq2oS+Ie/lFxwaLWquTbZkhREEVbJH1FxzVtTNN4oQxBiudSCMzlJNSkZ08s9VglhHnw68
	/FburCxuBMtf3Kd08Kp224pRvNE5dRPA=
X-Gm-Gg: ASbGncu4tpWv3YJChU/DMXMak5AzhPCHGutyd2uIRCumNcDDhtVXlDfwKHv88UYsI/M
	abLI+u2soVr4CbLZx6HIGiTrX7AersJPCnG9/Qck9uaX+PNXLORQZaP2p8PMt9tabdud1/nHOI4
	8t8UrcSIvo8GBvc4AjvhtiN8OSMhF9XqWyCCMnro9+cAHYtOt2TxRfzdZKrg7Vp+aGyerweP5Q9
	1mimb2wBsyRPqeKP61Orxnn04Q0sVS03pU9TwvsV+BupAiLbbgp5eiYDyvMc6+H9g==
X-Google-Smtp-Source: AGHT+IHQwe+SGELlw17QoqUaDR48CNJzbFKCXDf24eF0PDCKb0qGt1k9M3lm6p2y0fByz0S88DfeYE4HF56d4946CUA=
X-Received: by 2002:a53:ba44:0:b0:636:5ea:a88a with SMTP id
 956f58d0204a3-63b9a0ddd2cmr8692889d50.32.1759758309634; Mon, 06 Oct 2025
 06:45:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
 <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
 <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com> <2025-10-06-brief-vague-spines-berms-pzthvt@cyphar.com>
In-Reply-To: <2025-10-06-brief-vague-spines-berms-pzthvt@cyphar.com>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Mon, 6 Oct 2025 14:44:58 +0100
X-Gm-Features: AS18NWDRQ4-uECnyKD_NRVG1xEcLayj4FX-gUnSa68oTI5fxVqr5Z_z4LyCUsx4
Message-ID: <CAMw=ZnQki4YR24CfYJMAEWEAQ63yYer-YzSAeH+xFA-fNth-XQ@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, brauner@kernel.org, 
	linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 14:41, Aleksa Sarai <cyphar@cyphar.com> wrote:
>
> On 2025-10-06, Luca Boccassi <luca.boccassi@gmail.com> wrote:
> > On Mon, 6 Oct 2025 at 12:57, Alejandro Colomar <alx@kernel.org> wrote:
> > >
> > > Hi Luca,
> > >
> > > On Mon, Oct 06, 2025 at 12:46:41PM +0100, Luca Boccassi wrote:
> > > > > > > >  .TP
> > > > > > > > +.B EINVAL
> > > > > > > > +The source mount is already mounted somewhere else. Clone it via
> > > > > [...]
> > > > > > > > +.BR open_tree (2)
> > > > > > > > +with
> > > > > > > > +.B \%OPEN_TREE_CLONE
> > > > > > > > +and use that as the source instead (since Linux 6.15).
> > > > > > >
> > > > > > > The parenthetical in that position makes it unclear if you're saying
> > > > > > > that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
> > > > > > > or if you're saying that this error can happen since that version.
> > > > > > > Would you mind clarifying?  I think if you mean that the error can
> > > > > > > happen since Linux 6.15, we could make it part of the paragraph tag, as
> > > > > > > in unshare(2).
> > > > > >
> > > > > > I meant the former, the error is always there, but OPEN_TREE_CLONE can
> > > > > > be used since 6.15 to avoid it. Sent v2 with this and the other fix,
> > > > > > thanks for the prompt review.
> > > > >
> > > > > Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6.15?
> > > > > The syscall and flag existed, AFAICS.  I think we should clarify --at
> > > > > least in the commit message--, why that version is important.
> > > >
> > > > It was just not supported at all, so it would still fail with EINVAL
> > > > before 6.15 even with the clone.
> > >
> > > Thanks!  What's the exact commit (or set of commits) that changed this?
> > > That would be useful for the commit message.
> > >
> > > > Would you like me to send a v3 or would you prefer to amend the commit
> > > > message yourself?
> > >
> > > I can amend myself.
> >
> > Sorry, I am not a kernel dev so I do not know where it was introduced
> > exactly, and quickly skimming the commits list doesn't immediately
> > reveal anything. I only know that by testing it, it works on 6.15 and
> > fails earlier.
>
> If I'm understanding the new error entry correctly, this might be commit
> c5c12f871a30 ("fs: create detached mounts from detached mounts"), but
> Christian can probably verify that.
>
> Just to double check that I understand this new error explanation -- the
> issue is that you had a file descriptor that you thought was a detached
> mount object but it was actually attached at some point, and the
> suggestion is to create a new detached bind-mount to use with
> move_mount(2)? Do you really get EINVAL in that case or does this move
> the mount?

Almost - the use case is that I prep an image as a detached mount, and
then I want to apply it multiple times, without having to reopen it
again and again. If I just do 'move_mount()' multiple times, the
second one returns EINVAL. From 6.15, I can do open_tree with
OPEN_TREE_CLONE before applying with move_mount, and everything works.

