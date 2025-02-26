Return-Path: <linux-man+bounces-2517-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A28CA46CC2
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 403D1165E7A
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 20:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4046627560B;
	Wed, 26 Feb 2025 20:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Bb6rcsi4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF9D239561
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 20:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740603129; cv=none; b=LJZFoyb/kcP2WBugTOFAkVNYEIeMQGSEe9INHHEzgQTMgs9z90NvF+Lw1hY4BpKijH1YGWrHq6mPAXdQuGk/9LVHwSj3WvtQmzLtiY63rvUFCQMJuXbCSpm8007N3ea5Bx1uV96bd+2JTcgDtwdSaxLIseaY+HDdx/q+vJFCKRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740603129; c=relaxed/simple;
	bh=qLeNzGiffa3FQiNPh+WMIQvPoNGqN5UQ8vdCJV/ZsBo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=TDbrzO+BYb0BDnaV7aCQ5K6Yf7McCM2CPmqj1jcjvyzdygecqvqpf19BVCf5ebf3lPwosREANnuYvWVHzDwv1Wv8ki1639ecEN7Pnm0FpmW29ehkq1dwf8YPVMi1hRJg3J1v1eVC1CbK76y8btFM4VcUxpauEtDn/RWNCmQcAxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Bb6rcsi4; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-abbe5ac36a9so17540966b.2
        for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 12:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740603125; x=1741207925; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nfo6LOVIBgaxVEOIiwKzecjyhsJ5Uqb27G7+Hmwtfv8=;
        b=Bb6rcsi4ceTJE/rsFADysXNjLXJHsM4fquasOpWoBJkJ4+F4PuHxwKthcogJtFlMKd
         4THbqHyXX1rHl6v0si1Lba+GIy6JTqzhMGiUB0IXUaJv07wHu5eM9jeA/RXEkGt9jyDC
         KPVg0KKiVfJ2UotRC36705VyLzVQRctJ0jKXScfV/iXLU/OdInJoI14U1IJfHPz4ZVqm
         E4fzIAFrps1zWj77yjNqdIV4sS3aMK6a+gdJaneG9rLgv1IaP/gxuIJ6STfU5p8Nz5ij
         Dxxsi1/gGrum7BGTzyvCr4rS0pOHrscI2p8INRLK2bPntVsVDndeBmcxivSTZ2TVjfFC
         ac+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740603125; x=1741207925;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Nfo6LOVIBgaxVEOIiwKzecjyhsJ5Uqb27G7+Hmwtfv8=;
        b=Yk7IMZqKKC6FlZS05JF0laIiasVGfjLEWNGYvfQocgSDrEnDS35yYIOga+ECUlpsTN
         0A1KO1+eRDq4UOzEAxoPYLw8dAVwx+v/4GbH3rrJu5ZG52XTfTXvWzywI8675YUFSC7L
         d9p/UwIBGtsenRz58yiYNPRvddoHAEu/t2Cm7n/1Ei1R7YjZAoA5hTlAd+qLU+GdjGGV
         ChLWW9wVYCA40fk47fqYrJRUOYfwxK3bRrMmPxzYRd4yxSRjuDu1YWnHzee3QnuV2yp0
         mherIaQPGJiQDK00szvMWHgNGIlW4LLK7KeD1RdKHlaFwYHgr6W48FFo4wSkpXJV4Pze
         o0Ig==
X-Forwarded-Encrypted: i=1; AJvYcCVWnbzT2jiyrhckxIOa0PSvLULRZxXy+9uQLUaKESmJkuPwk4vFlPzewl5OKsheucKfecL+dyFZqv0=@vger.kernel.org
X-Gm-Message-State: AOJu0YyULdm6q5zgASeKtbiL3CBTnK5qs6NgDCE+k2aDFaNWKk2i+EJ+
	ATRxmyQdi9zIQDkpleqldq8SFtLNgFN38F32Tiw1ZHNl0XZiRxnurq+j7xaNpBqReyfPD6b4IDt
	6ow==
X-Google-Smtp-Source: AGHT+IEw51xQGb3kVX2bWPS9Yd6yv9U50vQX32a6s3TTn3NTtwUzePxM2yNlhDPbwDzeYycc677lIdrCANA=
X-Received: from ejbps3.prod.google.com ([2002:a17:906:bf43:b0:aba:fab7:ee3a])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a17:907:970c:b0:abc:b96:7bd2
 with SMTP id a640c23a62f3a-abc0d97d421mr2451975666b.11.1740603125355; Wed, 26
 Feb 2025 12:52:05 -0800 (PST)
Date: Wed, 26 Feb 2025 20:52:03 +0000
In-Reply-To: <erjborzfvlvlczeahjt7esghr4v3slgxdht6efftekofxljhiq@mkw2ibzvpvsx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com> <20250124154445.162841-2-gnoack@google.com>
 <Z5O44dxg8y-QZV62@google.com> <erjborzfvlvlczeahjt7esghr4v3slgxdht6efftekofxljhiq@mkw2ibzvpvsx>
Message-ID: <Z79-87HoTPM94HWf@google.com>
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-security-module@vger.kernel.org, "Micka??l Sala??n" <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

On Sun, Feb 02, 2025 at 01:51:54PM +0100, Alejandro Colomar wrote:
> On Fri, Jan 24, 2025 at 04:59:29PM +0100, G??nther Noack wrote:
> > On Fri, Jan 24, 2025 at 03:44:45PM +0000, G??nther Noack wrote:
> > > -IPC scoping does not support exceptions, so if a domain is scoped, n=
o rules can
> > > -be added to allow access to resources or processes outside of the sc=
ope.
> > > +interactions between sandboxes.  Therefore, at ruleset creation time=
, each
> > > +Landlock domain can restrict the scope for certain operations, so th=
at these
> > > +operations can only reach out to processes within the same Landlock =
domain or in
> > > +a nested Landlock domain (the "scope").
> > > +
> > > +The operations which can be scoped are:
> > > +
> > > +``LANDLOCK_SCOPE_SIGNAL``
> > > +    When set,
>=20
> Do we need to say when set?  I'd say that's redundant (of course if you
> don't set a flag, its effects don't apply).

Removed, thanks!


> > > this limits the sending of signals to target processes which run
> > > +    within the same or a nested Landlock domain.
> > > +
> > > +``LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET``
> > > +    When set, this limits the set of abstract :manpage:`unix(7)` soc=
kets we can
> > > +    :manpage:`connect(2)` to to socket addresses which were created =
by a process
> > > +    in the same or a nested Landlock domain.
> > > +
> > > +    A :manpage:`send(2)` on a non-connected datagram socket is treat=
ed like an
> > > +    implicit :manpage:`connect(2)` and will be blocked when the remo=
te end does
>=20
> I think *if* would be more appropriate than *when* here.
>=20
> > > +    not stem from the same or a nested Landlock domain.
>=20
> This could be read such that send(2) is replaced by connect(2) on a
> non-connected datagram socket.  But you want to say that a connect(2)
> is implicitly executed before the actual send(2) (which is still
> executed, if connect(2) succeeds).

Thanks, that can indeed be misunderstood.

> How about this wording?
>=20
> 	If send(2) is used on a non-connected datagram socket, an
> 	implicit connect(2) is executed first, and will be blocked when
> 	the remote end does not ....

I think this would be misleading as well, because the send(2) on the
non-connected datagram socket does *not* actually perform an implicit
connect(2).  (If it were doing that, the socket would be connected afterwar=
ds,
but it isn't.)  But we *do* initiate a communication with a previously unkn=
own
remote address, just like connect(2), so we enforce the same Landlock polic=
y as
for connect(2).

(Remark, connected datagram sockets sound absurd, because there is no conne=
ction
at the network layer. On datagram sockets, connect(2) only fixes the destin=
ation
address so that it can be omitted in subsequent send(2) calls.).

Rewording it to:

  A sendto(2) on a non-connected datagram socket is treated as if
  it were doing an implicit connect(2) and will be blocked if the
  remote end does not stem from the same or a nested Landlock domain.

(P.S. I also replaced send(2) with sendto(2), which is a bit more appropria=
te in
the middle paragraph - you can not actually pass the destination address wi=
th
send(2), that only works with sendto(2).  I replaced it in the third paragr=
aph
as well for consistency. It still makes sense IMHO considering that send(2)=
 is a
special case of sendto(2).)

=E2=80=94G=C3=BCnther

