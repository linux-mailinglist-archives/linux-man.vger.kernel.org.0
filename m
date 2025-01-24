Return-Path: <linux-man+bounces-2290-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6996DA1B9D5
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 16:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC42416BE58
	for <lists+linux-man@lfdr.de>; Fri, 24 Jan 2025 15:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D905B15C120;
	Fri, 24 Jan 2025 15:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QpzNyE9f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B8015623A
	for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 15:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737734375; cv=none; b=V573Rt8lNKeGI9xU2Y8nNlWkGtC+k0Y1Tv/MRaD1+ylmTgG8+JK5vJ7ABxU3XdollrCigeJxjrhACtZ4h8NolQ9iiNWFVAsC0diF+rRfHi/ThVgs2YCYz0C/pxd9YTQCHhKXgTMe8ou6GD0EXshnCjuCpOd56B1ACzzNJNWOd1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737734375; c=relaxed/simple;
	bh=+KRLIfnyeJPrif5G5HDtKcm8D/d+GXmVgYUQXlVyLQ8=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=M99yEbo6YlFQMyMWAWWJF3nCXCJmwsAQZyqZzhY3z7F7gUQNSVsjz9dJ80jxKGIrtgQnR52sWaLZqrtO0KyUmzM0Lf6F3TnHTGIqFSoeYMJKVyZmwSSRGvw8CcRjMizF50ms3owFwXglWKGM1fmN6AnfEtAg53Y5aX3JEjE7woc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QpzNyE9f; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5d43ec75bc4so2155682a12.2
        for <linux-man@vger.kernel.org>; Fri, 24 Jan 2025 07:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1737734372; x=1738339172; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdViMlf+B3m3pMlbw0hFGndBSZ6z3FZ8BlcO9x58SSY=;
        b=QpzNyE9f3aElLuiAQ/w9OZerNKfePJUZA4jyfuha1w8Ceg2zgodo+DM/E7Hsjw8Z7Q
         wA6zYjQfYuysIFizvgYW6vTmtXqBRMdnXwqUUbr2I/5UcLuJB7BXaTDmOAmXblD7NsTM
         PcYh+XLoM9Qtq63IbDuqkcJIPB2L4VzEedPkPI5gDQZRfaRjXJ2QnxJLdrT/+p9elggO
         t48GfM2RUaXIo8JiMg7gTeH0myskl4E9rbozBURRjEnr3y53tF0+WDIuYwQB/+j+zQGF
         OuQzx2PKQq9IjCNAHIdXFkhkUoTYiE2NiYimQuG6XA148Y3orlkz5JmJJDQg1DX3mAAy
         CrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737734372; x=1738339172;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kdViMlf+B3m3pMlbw0hFGndBSZ6z3FZ8BlcO9x58SSY=;
        b=M/gkdPd/qgzDMtvx5VmNAGw42nDb9XsetsWSlJyHXo9do2C5ugz6e74P3cSox8M4NX
         e+WRVlohBMOPcTYrSHccHjWO9EwdHfLImemi+jh9vgPH4+ndGri56uxmPD2r60+EdONb
         Q2CA31JdFu6g+/J7fLSwZgLUaMqulXMkUIRugkDNe9faaGlxwgi/Qe6kQP7+BzOrtAOg
         Wx0WSu6If2rKtStyf0QsezLzy9aZbJUdaPt4TyqjEDmqWwgbr9slLXFHty9FpH8gOclg
         fcjWaajzdypYOLxto/GbADnEy/Nty149GwAreTuPlMw7vCXLvq12HWiGtNQeqABQtrBG
         6DDg==
X-Forwarded-Encrypted: i=1; AJvYcCVOhaaP9HZlWuvRejGaliblWkEe991vQZtGyvvxZdjPSeVZ0ibWN8wpUAhKI9Bh+4aTxK6ROpwZ6O4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyLbMydwGUHowUin/cSvG5a2RqZBlSyvVegHOEzCu6S4aHK8g86
	5aZSweaqG1LuFxj/SMEQ6B+c5STvmiR2j0HDYT3C8mbMqHOj4PdgRR2Zgcb+o0qsEXOeFHm7zqi
	Q8Q==
X-Google-Smtp-Source: AGHT+IHBjnJZ9lNLN2T82XUdfn1AKrXoltI195i8la9kEPDGjxpzQKK7KX862kh3XJj4WaxO0kRuNQW+JEU=
X-Received: from edcg12.prod.google.com ([2002:a05:6402:428c:b0:5d9:a87:f287])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a50:d58c:0:b0:5d3:e8d1:a46
 with SMTP id 4fb4d7f45d1cf-5db7db12cdamr22774844a12.30.1737734372278; Fri, 24
 Jan 2025 07:59:32 -0800 (PST)
Date: Fri, 24 Jan 2025 16:59:29 +0100
In-Reply-To: <20250124154445.162841-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250124154445.162841-1-gnoack@google.com> <20250124154445.162841-2-gnoack@google.com>
Message-ID: <Z5O44dxg8y-QZV62@google.com>
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: linux-security-module@vger.kernel.org
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

This is an attempt to clarify the kernel documentation for Landlock's IPC
scoping support before I send the same wording to the man page list in trof=
f
format.

(Adding Alejandro and the man-page list to get an early review on wording a=
nd
clarity.)

On Fri, Jan 24, 2025 at 03:44:45PM +0000, G=C3=BCnther Noack wrote:
> * Clarify terminology
> * Stop mixing the unix(7) and signal(7) aspects in the explanation.
>=20
> Terminology:
>=20
> * The *IPC Scope* of a Landlock domain is that Landlock domain and its
>   nested domains.
> * An *operation* (e.g., signaling, connecting to abstract UDS) is said
>   *to be scoped within a domain* when the flag for that operation was
>   *set at ruleset creation time.  This means that for the purpose of
>   *this operation, only processes within the domain's IPC scope are
>   *reachable.
>=20
> Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Cc: Tahera Fahimi <fahimitahera@gmail.com>
> Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  Documentation/userspace-api/landlock.rst | 53 ++++++++++++------------
>  1 file changed, 26 insertions(+), 27 deletions(-)
>=20
> diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/use=
rspace-api/landlock.rst
> index ca8b325d53e5..6b80106d33de 100644
> --- a/Documentation/userspace-api/landlock.rst
> +++ b/Documentation/userspace-api/landlock.rst
> @@ -317,33 +317,32 @@ IPC scoping
>  -----------
> =20
>  Similar to the implicit `Ptrace restrictions`_, we may want to further r=
estrict
> -interactions between sandboxes. Each Landlock domain can be explicitly s=
coped
> -for a set of actions by specifying it on a ruleset.  For example, if a
> -sandboxed process should not be able to :manpage:`connect(2)` to a
> -non-sandboxed process through abstract :manpage:`unix(7)` sockets, we ca=
n
> -specify such a restriction with ``LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET``.
> -Moreover, if a sandboxed process should not be able to send a signal to =
a
> -non-sandboxed process, we can specify this restriction with
> -``LANDLOCK_SCOPE_SIGNAL``.
> -
> -A sandboxed process can connect to a non-sandboxed process when its doma=
in is
> -not scoped. If a process's domain is scoped, it can only connect to sock=
ets
> -created by processes in the same scope.
> -Moreover, if a process is scoped to send signal to a non-scoped process,=
 it can
> -only send signals to processes in the same scope.
> -
> -A connected datagram socket behaves like a stream socket when its domain=
 is
> -scoped, meaning if the domain is scoped after the socket is connected, i=
t can
> -still :manpage:`send(2)` data just like a stream socket.  However, in th=
e same
> -scenario, a non-connected datagram socket cannot send data (with
> -:manpage:`sendto(2)`) outside its scope.
> -
> -A process with a scoped domain can inherit a socket created by a non-sco=
ped
> -process. The process cannot connect to this socket since it has a scoped
> -domain.

Tahera, Micka=C3=ABl:

I suspect what was meant in this paragraph are Abstract Unix Domain Sockets=
 of
the datagram type? -- the scenario where the process has an (unconnected) U=
nix
Datagram Socket and then can not call connect(2) or send(2) *on* it?

I removed this paragraph because I believe it's sufficiently covered in the
section that I wrote about Abstract Unix Domain Sockets below.  If I'm
misunderstanding this, please let me know. :)

> -
> -IPC scoping does not support exceptions, so if a domain is scoped, no ru=
les can
> -be added to allow access to resources or processes outside of the scope.
> +interactions between sandboxes.  Therefore, at ruleset creation time, ea=
ch
> +Landlock domain can restrict the scope for certain operations, so that t=
hese
> +operations can only reach out to processes within the same Landlock doma=
in or in
> +a nested Landlock domain (the "scope").
> +
> +The operations which can be scoped are:
> +
> +``LANDLOCK_SCOPE_SIGNAL``
> +    When set, this limits the sending of signals to target processes whi=
ch run
> +    within the same or a nested Landlock domain.
> +
> +``LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET``
> +    When set, this limits the set of abstract :manpage:`unix(7)` sockets=
 we can
> +    :manpage:`connect(2)` to to socket addresses which were created by a=
 process
> +    in the same or a nested Landlock domain.
> +
> +    A :manpage:`send(2)` on a non-connected datagram socket is treated l=
ike an
> +    implicit :manpage:`connect(2)` and will be blocked when the remote e=
nd does
> +    not stem from the same or a nested Landlock domain.
> +
> +    A :manpage:`send(2)` on a socket which was previously connected will=
 work.
> +    This works for both datagram and stream sockets.
> +
> +IPC scoping does not support exceptions via :manpage:`landlock_add_rule(=
2)`.
> +If an operation is scoped within a domain, no rules can be added to allo=
w access
> +to resources or processes outside of the scope.
> =20
>  Truncating files
>  ----------------
> --=20
> 2.48.1.262.g85cc9f2d1e-goog
>=20

=E2=80=94G=C3=BCnther

