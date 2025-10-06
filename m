Return-Path: <linux-man+bounces-4056-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65759BBDE07
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 66C584E10E7
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771D3224234;
	Mon,  6 Oct 2025 11:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jWkTGJmm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB26234973
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759750376; cv=none; b=FIANmet79pVK4GGtBCVJpWwD5J5yvz4q/wWtNx0I0X3Jgyp4pkwtDl+eyf9j2eN/n9nAIu/+iJcLWNrsW2aVHo9A4WAY+MgBI6+g6z8r61He3TWefbXiJ4zThjOZ9sfjwzg50KuEMW2uothYlzpxPvRk2mVu0jYlPOH4x4khuwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759750376; c=relaxed/simple;
	bh=kqE55Orcgletd2s3Q85ZooYbgYFdrk2Fde1z3ZAVsEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bcGQI4RCIqaohN3xxKjHCnk8GfSjVjrbWwR41Z9l3BtzVHsUcDCbJ6dPs7U6vygtQkX+MGNJGJtvkC8FiuNWvtRknJEt81JWF1OPQ5QjzLqfVpscRzI4yyFetX478ByCxSzQaFq9JQ02SMkKGQelyCQ0qHsdjonIoK8i9aG9Sps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jWkTGJmm; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-71d60504bf8so48349837b3.2
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 04:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759750374; x=1760355174; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0ISHss/+vv08s16hc2tw0s4vVrhZKTnlNbWE+zdCR1I=;
        b=jWkTGJmmEctxgACkUhySxjUPWuTcYhmjKyCUIpITBUN3uPLcznXSt2HIb25x4ToGFL
         k4/dHutUPiadn3eFfy+AsNN1dZfplzOYSlc+tODPbl1E73ajnXXR1p0iEhXjH587mdNw
         aTJ6/yK9DElvS2EqXK8tudb8/C/r+LEDSykBPajLWkZ8tG704VZzN9+h4fyLnX2jCyX2
         uJdomQaJHJ4Flu1yUgoFdUH0xnyWELwHpUot2wujzRToWGCkScpk7nwTvAa7YSSo8GV/
         McwMggRBKKuJnsIbVJqOtfNaVU1l+WE5hI8OMxynARq6lXgR3Bh6wb70+5CScA0bNzXH
         oU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759750374; x=1760355174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ISHss/+vv08s16hc2tw0s4vVrhZKTnlNbWE+zdCR1I=;
        b=jzL/ibAgGa61icUUbFnpcmZIGnlUvOi/3WzT5ImXnxuRbXrPKJWI0zp8TGAvxEawAF
         R+xU8p+4x4lhIjbT7dQ+yy//4qyC1Z6QSqUrkHIn22uJ7V02v2GxjFl08OjVaoxV543A
         UnsUiTVm6F/2Eoe5NmtXorU6fvmKbVpAAHSGTeBJ9fcDqVZgko9CvZwAx5znd1cDVfpX
         P6yY/Bga5sS+z5MrwG/kjybpbyoyFy/fEg98TKA7GX+wRpT+csDoCF4rjMTzC/hPuWuG
         aep3Ej1JGXqdK4CTT5RcsohDW1Yr2Zo+Oi9LplOAsvrq/WbIdA1TWJtgAA8FGGDMk7cV
         E1Zw==
X-Forwarded-Encrypted: i=1; AJvYcCV/djUttSIZ24XVSY7n9ew8KNled0WV0sPnJmYFH4t4Zv9meTAvcyGOQLSlrmKCLl7rlj+TaAavkvs=@vger.kernel.org
X-Gm-Message-State: AOJu0YzhdZ6bjjQxNOnvtncOsTcidm+43GYK28J4bZpV4qZeNqqpChwu
	lCLHMk/eNJZ48StyRKzGgmfy9LUVOZVEge8FvClSBVRSzmIXWACarEVusE6qtaN6xtI1I6gU5LV
	n3UGB6Az7fD8hKzJD2pgoTDWXIIb1C++GgIb+
X-Gm-Gg: ASbGncsxXMRWHaRyjVKudORAzltMjIpcJQcsw7KI/369IxA5SsUxc/7qkskZvifYkPa
	PzCtFIZ9Q+gP+J83oYQfoyzvL+wWBwJ9kBFtsm4IisZS8MZsOMc2DZD2KijJA3s/KCD0nYYMYNl
	glF1bAfqwmiuDOfKc/OJXomTWK7Ga/Chh/XUADDEhfTQCqXE+CwdCUddx4+wy2rxXMGNDts9tDH
	67xfN1hIC90N/LS307gAhpvxt1rp4Sc/AqtcOeUP7Ci7nlZK0OsQYZoPFJSMpXjbu1nzR9fWxqB
X-Google-Smtp-Source: AGHT+IHN2CCC4/WNLpzjKBnCYCZpNgbedBkF3MhFGF8WJDHbuW8uDfnEfyFdzP08CRFqG+kCRJrMDeNBb9VSxvk+qBI=
X-Received: by 2002:a53:d7c1:0:b0:636:ca97:d6d2 with SMTP id
 956f58d0204a3-63b9a078113mr9914014d50.20.1759750373588; Mon, 06 Oct 2025
 04:32:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006103852.506614-1-luca.boccassi@gmail.com> <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
In-Reply-To: <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Mon, 6 Oct 2025 12:32:42 +0100
X-Gm-Features: AS18NWA0zb7rIDaEi0XGRg7822OPrLUYZH2XJtV8hwCqdg3fltpHCetDSVRrRaU
Message-ID: <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Alejandro Colomar <alx@kernel.org>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 12:19, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Luca,
>
> On Mon, Oct 06, 2025 at 11:38:12AM +0100, luca.boccassi@gmail.com wrote:
> > From: Luca Boccassi <luca.boccassi@gmail.com>
> >
> > open_tree() with OPEN_TREE_CLONE is needed to apply a mount multiple
> > times, otherwise EINVAL is returned by move_mount().
> >
> > Signed-off-by: Luca Boccassi <luca.boccassi@gmail.com>
> > ---
> > As requested by Aleksa on https://github.com/brauner/man-pages-md/pull/19
> > and based on the 'fs' branch where move_mount(2) was added
> >
> >  man/man2/move_mount.2 | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
> > index 13063ac1f..e3dfc1ea8 100644
> > --- a/man/man2/move_mount.2
> > +++ b/man/man2/move_mount.2
> > @@ -457,6 +457,13 @@ which would otherwise cause the unbindable mounts to be propagated
> >  was attempted,
> >  but one of the listed restrictions was violated.
> >  .TP
> > +.B EINVAL
> > +The source mount is already mounted somewhere else. Clone it via
>
> Please use semantic newlines.  See man-pages(7):
>
> $ MANWIDTH=72 man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.
>
> To be precise, that would mean breaking the line after period in this
> case.
>
>
> > +.BR open_tree (2)
> > +with
> > +.B \%OPEN_TREE_CLONE
> > +and use that as the source instead (since Linux 6.15).
>
> The parenthetical in that position makes it unclear if you're saying
> that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
> or if you're saying that this error can happen since that version.
> Would you mind clarifying?  I think if you mean that the error can
> happen since Linux 6.15, we could make it part of the paragraph tag, as
> in unshare(2).

I meant the former, the error is always there, but OPEN_TREE_CLONE can
be used since 6.15 to avoid it. Sent v2 with this and the other fix,
thanks for the prompt review.

