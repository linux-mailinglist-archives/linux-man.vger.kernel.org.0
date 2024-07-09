Return-Path: <linux-man+bounces-1431-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BE992C5EB
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 00:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24544283B7E
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF461514C3;
	Tue,  9 Jul 2024 22:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mY3jjLiT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79F038DC8
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720562785; cv=none; b=EcQeRc3k3aF8YtKyH873WJEMOfKWnXaivv1PKdKpcghfAQk/lUH2NLi0de2M37B7hSCs8JImgG4EPDVflw7TZI73kHp74o7wTPcMT7CPIM8tpIPfF1skA0mjq0OJ/YGkt8qUMm/9LcRm7iHA6ZPiYvhZWN2aIV1x0TtZSZmMyps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720562785; c=relaxed/simple;
	bh=lisGXgX9RN6ZpMbYht91XmhoRi+jX+v2FIi345QQRuA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jLkrXPuu7Oq+ZA5tMSohTJhoWVc4wfKgnKsvEO8CvpnZw895lZ2rwm2vqV2p63KEd90zpiLpML9DHGw3Jo0YFg2FuF4QTGqNWKyk/IRIcEe3JRi2kPSfSRISQ4Lq3evH7i4cr2BXDRsED51NESX/3Yq+4vgG2m3ETvZRk37yIoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mY3jjLiT; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-655fa53c64cso34383667b3.3
        for <linux-man@vger.kernel.org>; Tue, 09 Jul 2024 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720562783; x=1721167583; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JV1zVUoxAxsQjazWeQkzlcAsei2VDTehnKwJ3dYTw0c=;
        b=mY3jjLiTrLnttpo2iyJIGO9GzXDnIBLVqldOImYGvMAOs/atRzfnvq+bvGilUSKpar
         tIx29e93FPv9iYVkWTOyArtOFMmGMWb26zTfITrupq+/Uxh5bFkqT5w2nr+1zkohfKIp
         fnZAaCfzMFi8P3eqpkdAvHkMvnqpdljSQdX7lYqFctzLQHK+o7djpxo3RVenzgvcHnj2
         nf7tIdWQatiA93RCOBwJptTH3PpwCmPFmjBDH/NSfmMONPxqFuDMgOEDnIoI/5EFsNI1
         4iYwhXAyAK8TBFSuIdr5kEZBAc3fGYFrcAlHJiOZRbhuAgVv8+mUkJV3ALt35Doyyx2y
         Yatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720562783; x=1721167583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JV1zVUoxAxsQjazWeQkzlcAsei2VDTehnKwJ3dYTw0c=;
        b=w4cRnWeE3CiKnS6vrPcPd6874sCjrKHd5BokQtyETwGwH+IVLXNrh5GQni5tPA4zRa
         raYWyWwe9dqnJnKqOyJboGxSt4Vw+pCCry3RYacvZ3Xr8jJrR9o7JVX2JzKp0erAoyeM
         WqV5KEkl6e0qN6vRMrBBAUv8wting+D0JCxR7s44pEBpwcRkzJ66YAp0MgA+F8jQwg0U
         qkaXxp2ayfB/c4s6XTit6uFVOARPORDOtd5gWNRUysDhZtrY/X9DQQHhmHJ63pRV7+G0
         1tjzS+55Od7bRae7ONNJFMowhTnUZtyXAJ5w6p18ota5Zr/MH8JXaoTSY99kdEcKIzk4
         UM+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzDMqTqNaMjZBn3Ab9Z70tfZCzElIBgz5R3ukHxnZxP254N/04bJrHxrxwJlVx0OxzRXJf8GxFYLJiKvdDHwG8r/SiV1AUcoS4
X-Gm-Message-State: AOJu0YwmZhjiX1bjAHATCSKAP2F9c9OhUz/I7femVwLyUn4Hg/vUCFbI
	akWwAxXDHk+LdvP4QV0+7Ys6W1lcAAINU7MLO4m90NLIOPWVXxQjLNdMSfOn3odwwyD18wNnN9d
	TaNRzxRZhD+1sSj0KzAGHBgAHa0Q=
X-Google-Smtp-Source: AGHT+IFnDGy1r3p3mTXc6pBzdBr7IPUCR6eWHFSPgVxPdXRv6V/kq0cqLvk2pEadN8Ne7c6k3QvIC7/ROHmdHjmnKnQ=
X-Received: by 2002:a81:9193:0:b0:64b:6f7f:bc29 with SMTP id
 00721157ae682-658eec675bemr43018067b3.16.1720562782831; Tue, 09 Jul 2024
 15:06:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709021335.158849-1-kolyshkin@gmail.com> <20240709021335.158849-3-kolyshkin@gmail.com>
 <20240709094206.GA28495@redhat.com>
In-Reply-To: <20240709094206.GA28495@redhat.com>
From: Kirill Kolyshkin <kolyshkin@gmail.com>
Date: Tue, 9 Jul 2024 15:06:11 -0700
Message-ID: <CAGmPdrxFk5Z62BkVaQwhNsuvbb8C=uHsdFMfA3iJwPCu8bZuMw@mail.gmail.com>
Subject: Re: [PATCH 2/3] pidfd_open.2: add PIDFD_THREAD and poll nuances
To: Oleg Nesterov <oleg@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 9, 2024 at 2:43=E2=80=AFAM Oleg Nesterov <oleg@redhat.com> wrot=
e:
>
> Hi Kir,
>
> On 07/08, Kir Kolyshkin wrote:
> >
> > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3D64bef697d33b
>
> The changelog says:
>
>     pidfd: implement PIDFD_THREAD flag for pidfd_open()
>
>     With this flag:
>
>             - pidfd_open() doesn't require that the target task must be
>               a thread-group leader
>
>             - pidfd_poll() succeeds when the task exits and becomes a
>               zombie (iow, passes exit_notify()), even if it is a leader
>               and thread-group is not empty.
>
>               This means that the behaviour of pidfd_poll(PIDFD_THREAD,
>               pid-of-group-leader) is not well defined if it races with
>               exec() from its sub-thread; pidfd_poll() can succeed or not
>               depending on whether pidfd_task_exited() is called before
>               or after exchange_tids().
>
> > +The behavior depends on whether the file descriptor refers
> > +to a process (thread-group leader) or a thread (see
> > +.B PIDFD_THREAD
> > +above):
> > +.RS
> > +.IP \[bu] 3
> > +For a thread-group leader, the polling task is woken if the
> > +thread-group is empty. In other words, if the thread-group
> > +leader task exits when there are still threads alive in its
> > +thread-group, the polling task will not be woken when the
> > +thread-group leader exits, but rather when the last thread in the
> > +thread-group exits.
>
> so this part is not accurate.

I copied the above text almost verbatim from the merge commit
description (commit b5683a37c881).

Until it's clarified, let's remove this text, adding a TODO instead.

>
> See also 43f0df54c96fa5a ("pidfd_poll: report POLLHUP when pid_task() =3D=
=3D NULL")
> which adds another feature.
>
> Oleg.
>

