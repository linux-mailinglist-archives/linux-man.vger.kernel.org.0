Return-Path: <linux-man+bounces-1520-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 567F693B286
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 16:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7ABF61C221D7
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 14:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1506D125D5;
	Wed, 24 Jul 2024 14:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="aZcIwRrS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1948F48
	for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721830764; cv=none; b=gHbJmf4chZyrtvXak2rKs/PLjfMRr9bdKAWpt/RybnjtmAaDqBt4MNThMO7g6cMAk+2//7bcYqgHNvunESqyIeVrqZSVtFGMlR8V+K4u9c/u0dBillNPbgPcYkkbDvA8XsCU2dLQeMMzG8ELp7jLjBLSsrGu/qJrTfr8Lo++7sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721830764; c=relaxed/simple;
	bh=n/A8zFwuubhHTDGhlx1bXIlWsrJq9ytSP88AptRSWak=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Yz7UrvZmPLMKs0iT9o5Xd3ozZ7eduQYyQtaWUMbRYvWxHBn4vxFywyc67PNNn+J2l1K8bmE/v2TD0C76pw89GOXf6cGuF4EoZW3cWQilgSLyITLV7KKaFT4L2EfhySlrz1RxjN3p0IH7V1YvYfXGsjtxuu7apCHtqnOdHegM6WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=aZcIwRrS; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5a8b0832defso1390625a12.1
        for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 07:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721830761; x=1722435561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHaf6b0tBH5NWIw+Ac0Bi0tSQ2nu+q4rYtn724MlEvA=;
        b=aZcIwRrSNcybxxiKNyIyb3NfdgGwBk16HG7rZl9PA6E+ROjopFonK/rcJOb+kTX3na
         BwYmAZr0Kagj9jWW6apXvGCc2+xkfvgj2VkFSWjFqC8aN6mBcM1jTdEHsHorDhp5kfoE
         2UpQPTUvOgQBhS69ttA4Wn4WUJAQW+WuD87SEYkVejvR/Sx+SwGZaVxF2ea8EXLEGZk/
         GdkDAhqLsOuLb6VdCQMLRH0XItmCEldlDZiLmptjILbmXAoW2FAyE+ctJWI9LddqTqKR
         hlIZ+Po+Yd6zWWMHIyC2aGxV4l/cLNCCvvl8z9ESsFGAh+NfG+M6LVN3IXJdX7jhZ6yo
         BkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721830761; x=1722435561;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YHaf6b0tBH5NWIw+Ac0Bi0tSQ2nu+q4rYtn724MlEvA=;
        b=lerg/GfJFmvMdJdxYoM8144cAvN4g+/Vw9ZX1MlFG1gzkM2r89NvPohLAtHQDcLgpg
         2ZkNuE+na51y4Xbj8YNaju8+S6ROkUHNZuJBfMDGVBxQPlRNP7awIb4a+awCNfwY5TAW
         l/S6tVIR2sHNd5xy7ayfr3o2ZhHYinizopB04HU3EkB8wMjGHkvfhFuOGvVY3GXfR5K4
         z76Rd9wRNKFETULOTk4caKwK8Ew+BL4Qyhn4JbHCGRcqL5s8vrWVXprTxhu1Atm2+SxG
         ji/b8+9PLu/oO6llJ23mwgtymo3wKjJ23LTd/FyF1VAJjafGukQ9goUQDbZEXKpuAkrq
         rezg==
X-Forwarded-Encrypted: i=1; AJvYcCXSTwjFQgwruzCNF7CfnGtvtY5NPxkgQUAK3qkkeRnoqtWDkuZ56B7WmbZS5vK/3gf+Tumfby2f1Bit55c4UcPez2UOBCapEJcR
X-Gm-Message-State: AOJu0YzJkzlPxHy4bCSwXN2V7XmaZY2dbepYSaHJAAWsT/hiWgUT9HF/
	HJKpxURGD2cW1MDqts2cikvnJZZaiBQv/6U6vW/Z0b1e6q5rVC9tF/AO7YFgeLFyBJHXr2bug45
	XxQ==
X-Google-Smtp-Source: AGHT+IENRuYWm6g/9NMl4mOXWM1YN7T7b1o+qlv32JX5bS32Mn5AhUy3DHFrtU6l3ggYyDI9BPIQ5SSjY0c=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:aa7:c911:0:b0:58a:ff34:2cad with SMTP id
 4fb4d7f45d1cf-5ab1c04ffc7mr2072a12.4.1721830760961; Wed, 24 Jul 2024 07:19:20
 -0700 (PDT)
Date: Wed, 24 Jul 2024 16:19:18 +0200
In-Reply-To: <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
Message-ID: <ZqENZk7VcbBeaXFG@google.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

On Tue, Jul 23, 2024 at 03:03:13PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 23, 2024 at 10:19:16AM GMT, G=C3=BCnther Noack wrote:
> > +.EX
> > +struct landlock_net_port_attr {
> > +    __u64 allowed_access;
> > +    __u64 port;
> > +};
> > +.EE
> > +.in
> > +.IP
> > +.i allowed_access
>=20
> s/i/I/

Thanks, fixed. o_O


> > +contains a bitmask of allowed network actions,
> > +which can be applied on the given port.
> > +.IP
> > +.i port

Same here


> > +is the network port in host endianness.
> > +.IP
> > +It should be noted that port 0 passed to
> > +.BR bind (2)
> > +will bind to an available port from the ephemeral port range.
> > +This can be configured in the
> > +.I /proc/sys/net/ipv4/ip_local_port_range
> > +sysctl (also used for IPv6).
> > +.IP
> > +A Landlock rule with port 0
> > +and the
> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > +right means that requesting to bind on port 0 is allowed
> > +and it will automatically translate to binding on the related port ran=
ge.
> >  .P
> >  .I flags
> >  must be 0.
> > @@ -89,6 +132,12 @@ is set to indicate the error.
> >  .BR landlock_add_rule ()
> >  can fail for the following reasons:
> >  .TP
> > +.B EAFNOSUPPORT
> > +.I rule_type
> > +is
> > +.BR LANDLOCK_RULE_NET_PORT ,
> > +but TCP is not supported by the running kernel.
> > +.TP
> >  .B EOPNOTSUPP
> >  Landlock is supported by the kernel but disabled at boot time.
> >  .TP
> > @@ -111,6 +160,11 @@ are only applicable to directories, but
> >  .I \%rule_attr\->parent_fd
> >  does not refer to a directory).
> >  .TP
> > +.B EINVAL
> > +In
> > +.IR \%struct\~landlock_net_port_attr ,
> > +the port number is greater than 65535.
> > +.TP
> >  .B ENOMSG
> >  Empty accesses (i.e.,
> >  .I rule_attr\->allowed_access
> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_cre=
ate_ruleset.2
> > index 105e9b062..ca635ddbc 100644
> > --- a/man/man2/landlock_create_ruleset.2
> > +++ b/man/man2/landlock_create_ruleset.2
> > @@ -41,6 +41,7 @@ It points to the following structure:
> >  .EX
> >  struct landlock_ruleset_attr {
> >      __u64 handled_access_fs;
> > +    __u64 handled_access_net;
> >  };
> >  .EE
> >  .in
> > @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
> >  in
> >  .BR landlock (7)).
> >  .IP
> > +.I handled_access_net
> > +is a bitmask of handled network actions
> > +(see
> > +.B Network actions
> > +in
> > +.BR landlock (7)).
> > +.IP
> >  This structure defines a set of
> >  .IR "handled access rights" ,
> >  a set of actions on different object types,
> > @@ -143,8 +151,8 @@ was not a valid address.
> >  .TP
> >  .B ENOMSG
> >  Empty accesses (i.e.,
> > -.I attr\->handled_access_fs
> > -is 0).
> > +.I attr
> > +did not specify any access rights to restrict).
>=20
> This looks like a wording fix, isn't it?  If so, it might be worth a
> separate patch.
>=20
> >  .SH STANDARDS
> >  Linux.
> >  .SH HISTORY
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 652054f15..52876a3de 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -189,6 +189,19 @@ If multiple requirements are not met, the
> >  error code takes precedence over
> >  .BR EXDEV .
> >  .\"
> > +.SS Network flags
> > +These flags enable to restrict a sandboxed process
> > +to a set of network actions.
> > +This is supported since the Landlock ABI version 4.
> > +.P
> > +The following access rights apply to TCP port numbers:
> > +.TP
> > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > +Bind a TCP socket to a local port.
> > +.TP
> > +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> > +Connect an active TCP socket to a remote port.
> > +.\"
> >  .SS Layers of file path access rights
> >  Each time a thread enforces a ruleset on itself,
> >  it updates its Landlock domain with a new layer of policy.
> > @@ -339,6 +352,9 @@ _	_	_
> >  2	5.19	LANDLOCK_ACCESS_FS_REFER
> >  _	_	_
> >  3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
> > +_	_	_
> > +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> > +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
>=20
> Did you actually want \[ha]?

I believe \[ha] would show the caret character in the document?
What I want is different, as documented in tbl(1):

  On any row but the first, a table entry of \^
  causes the entry above it to span down into the current one.

The table cell should render like this:

  +---+-----+---------------------------------+
  | 4 | 6.7 | LANDLOCK_ACCESS_NET_BIND_TCP    |
  |   |     | LANDLOCK_ACCESS_NET_CONNECT_TCP |
  +---+-----+---------------------------------+

We are already using the same approach for the table cells further up in th=
e
table.  IIRC, the tbl(1) preprocessor wanted *something* there, and \^ is t=
he
placeholder that you can put if you don't have text to put in that place?

Assuming that I'm right about the \^, do you want a separate patch set for =
the
.i/.I change?

=E2=80=94G=C3=BCnther

