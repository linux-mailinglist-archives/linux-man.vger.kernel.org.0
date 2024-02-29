Return-Path: <linux-man+bounces-491-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD6186D792
	for <lists+linux-man@lfdr.de>; Fri,  1 Mar 2024 00:14:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A27E228656D
	for <lists+linux-man@lfdr.de>; Thu, 29 Feb 2024 23:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABD46D52F;
	Thu, 29 Feb 2024 23:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nbuJdCtb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB551DFCF
	for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 23:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709248485; cv=none; b=czlTW2xOOKezuqsKYdq00a7K1LXZ8inEK/b1cPeLtsoji1IF56ZtkPvb0P4BaoPIAT2i4ufNh3z18XBeVF0XxXTPc5Eh8nljcZHs3PpLdFIhO/jM8SHAQV/d4VcaN5hiEqqc20W77V5LYsu4FElD5ZXvo4m/ZlMBhCDkASzSl34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709248485; c=relaxed/simple;
	bh=CXDZ/MzbOR0yF8R0WLy+YZLsEHwRYQnUx6wivzT5sgE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZlHrq3Cd4R6StiDQaptRULR/nH7JNB4oWqZ6cxVYUz8EyGbrsbGE6FzOBW2GOIL7I+DTrYYlzqdBdM88xpFn8WAtSHBNwxaDA1/l0iPWsuFPbREW2v6XrvYBy4y8eqxqVf/vkUHiRyVzV6l+qGig9Qa764pcnWZW1Y7oA6YPqr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nbuJdCtb; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-42e78c39ff0so23171351cf.0
        for <linux-man@vger.kernel.org>; Thu, 29 Feb 2024 15:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709248482; x=1709853282; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pp2xuyBndimqXLE0NyZ1doFU0o1CYrSHwVbfOjrrz/M=;
        b=nbuJdCtbaVOsdcOoRn3HBPWFBpEZSDUISP5SdIwudhCXTG+OmRSh8fNnDyGlg+88kg
         vfZ87gphbwb01/nGyPl5rCM51Gm2db4c0DB9Q0p2m9gb3NHALope9keTa6PGFyI2K5cx
         NG2MbFDCdfSXghC4yZvTT4VRPT9tQJHwNRUNcxWgbrWSVbq2lRPcx4pMPGkis70E/okv
         mbHzpGYxelONt05Ul4BYfm82eldSfN2I1zEXM3VS0UQfjVUweSqJ5UXSboPonc09ygd1
         qET0ONLBX8zLNQm3AIe1ZSBFezwHtJCIuhTvGysr1Ekmuvtu1FuvftAwLvNXO+4ktdw/
         ASbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709248482; x=1709853282;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pp2xuyBndimqXLE0NyZ1doFU0o1CYrSHwVbfOjrrz/M=;
        b=RXBi6ERziP9aTBVqpw6jAayr3yJT/XuVzt5ZotmwB2eDUE6vVPyl7SblfhueMnW89Q
         SVj2dgXFgZBug3XeW/P0zaZPVui71IO9BlppS1JL2yhyIkTebAscL67Hyjx7cQGnm5WH
         mfuEl6SO+fcOoe6niwwD4ugVGL6Nv/IVHyAK6EhJOpMGsgF6Vr0SXUQS2FQEy6e6NXxN
         Rz+heTx5GmJOGLRdxjg1T+jYibYh9+6ZsBa58gGKu2gGw1O+ATEIhks8bJWFNYNM1w/q
         S+/3pzavKjEuVv2QoG9pIEb+WnepZ0l8fTJZZPDaTFC1AG15anvYAZ7PpchWqwmbvxBe
         ZjJA==
X-Gm-Message-State: AOJu0Yz7pjrlWZZhUiNMy8lTMV5MbqWkjefnrZfQcIDfGFChUFDzM2NN
	2hve+/Svu3vE74qFITP+Yix0k44080GTbV/fQHhYQq8lz12u5k89FKPLLGCYIxBATJA3ipPEyIb
	iLDGZjKRBeN4JVtC64GjqblqqPXfeyg/XQOFV
X-Google-Smtp-Source: AGHT+IFjcYlBPYU151iAlOel4ifzXI5UNjLUGQwzIVm4ZhKcKxCVEuxQFglXRs1bHYDdwTJsno9gGQLAuc0b+WWBtcc=
X-Received: by 2002:a05:6214:300a:b0:690:20bd:7abf with SMTP id
 ke10-20020a056214300a00b0069020bd7abfmr4696592qvb.4.1709248482249; Thu, 29
 Feb 2024 15:14:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZopUo5eHBBqJBnsw9AnuDVypzf7GM9vyK5a-btqsZ6Sevg@mail.gmail.com>
 <ZeEJ8QeRhVRDs4Mv@debian>
In-Reply-To: <ZeEJ8QeRhVRDs4Mv@debian>
From: enh <enh@google.com>
Date: Thu, 29 Feb 2024 15:14:30 -0800
Message-ID: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>
Subject: Re: _Fork()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 29, 2024 at 2:49=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Thu, Feb 29, 2024 at 02:12:12PM -0800, enh wrote:
> > (apologies for the post without a patch but...)
>
> No worries.  :)
>
> > fyi, i noticed that there's no reference to _Fork() anywhere. i'd send
> > a patch, but given that vfork() has a page to itself, i'm assuming
> > just adding a paragraph to fork(2) isn't the plan?
>
> Hmmm, I didn't know about the existence of _Fork().  It looks like
> _Exit(3) and exit(3), right?  Maybe we could write a page based on
> _Exit(3).  What do you think?

in the "don't do that other stuff" sense, yes --- here's what i wrote
for the doc comment in Android's <unistd.h>:

/**
 * _Fork() creates a new process. _Fork() differs from fork() in that it do=
es
 * not run any handlers set by pthread_atfork().
 *
 * Returns 0 in the child, the pid of the child in the parent,
 * and returns -1 and sets `errno` on failure.
 *
 * Available since API level 35.
 */
pid_t _Fork(void) __INTRODUCED_IN(35);

looks like glibc has a bit more:

  https://www.gnu.org/software/libc/manual/html_node/Creating-a-Process.htm=
l

  The _Fork function is similar to fork, but it does not invoke any
callbacks registered with pthread_atfork, nor does it reset any
internal state or locks (such as the malloc locks). In the new
subprocess, only async-signal-safe functions may be called, such as
dup2 or execve.

  The _Fork function is an async-signal-safe replacement of fork. It
is a GNU extension.

whereas i assumed that everyone knows that bionic's internal state
resetting is done via pthread_atfork() which, in retrospect, is
probably an unreasonable assumption /facepalm

annoyingly, while this is slated for POSIX issue 8
(https://austingroupbugs.net/view.php?id=3D62) it's not there yet, so
there's nothing public to point to there.

> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

