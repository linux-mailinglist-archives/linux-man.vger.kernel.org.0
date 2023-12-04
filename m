Return-Path: <linux-man+bounces-207-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD2D802FC6
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 11:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AB311F20CC9
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 10:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7C91F958;
	Mon,  4 Dec 2023 10:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="D/NhjtgV"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04377D5
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 02:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701684729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cdTeCVbBKNIz3exfVUizApI93s0ffcM8icuOOUOmJ3U=;
	b=D/NhjtgVEDMBli+bT3IoWR21gJwq2xTEyutyvICLyI/6RPPH3XQvhZdGxcwjXhanWrFFNY
	ta1vqJqZhlkRW4hQMeoVu6xml57NdjnVUD5YkGl9kBx9Ay+FlxKW/fbwOxzs0FBsnww/+A
	XHtL6LzDLOBEk8qxX4oUns4rlj5nqGs=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-464-oghA0c7dP9Kc7_wJ_qrlHQ-1; Mon, 04 Dec 2023 05:12:07 -0500
X-MC-Unique: oghA0c7dP9Kc7_wJ_qrlHQ-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-54ca588b6d6so660585a12.1
        for <linux-man@vger.kernel.org>; Mon, 04 Dec 2023 02:12:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701684726; x=1702289526;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cdTeCVbBKNIz3exfVUizApI93s0ffcM8icuOOUOmJ3U=;
        b=hns4rxEdDF/sdZ23Zc/lY9vguUjHvSuqTkMHp1OJ1hTL0hFCLdKAqH1qcNeubQVObu
         UTmrDreLSJsycEQaPKHhr2gXljQfex3E1w63Sot1wL3aLK0SnN598RmV5c1GfGCIM6XI
         kXx0AaCLWOIU5EQ4dXB5pXhqU+GXT7O00g3xDedQX19dEf3E3AW7u6UdcNu0wtkr9GsG
         LQ33B349PIUYGhKxlmIFyk0P21VMGGoMadVMJcdvjsGHD4hiFTJ1hNZVhMVo8uaw+7tp
         wFCQ3MqHpcZ+aUAC68u1sRdeA2sq9H6hjsMAxZpRa/j9+CPZq6OjituLOWYUO1j468Lx
         D3zQ==
X-Gm-Message-State: AOJu0Yw0l+PF0I5FS93V2MVNCv4Om4yTcAqrxGBrp79oMQ9JEnPVYL9S
	ruYvHzLu2st0sPDq068RnI0GLFinbFKFs2dXgEJM4Yy9GMB3aVzEn89HRsUmjMlFrnxSOj2DMbi
	9dVEhJouTHX5lDKT0TMMBJkYW6Ev8xZc8qSMR
X-Received: by 2002:aa7:d952:0:b0:54c:7833:c111 with SMTP id l18-20020aa7d952000000b0054c7833c111mr1771262eds.36.1701684726561;
        Mon, 04 Dec 2023 02:12:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6KO+0DEtzpvHP7tJMyeJVf99YpOjaGGQXV6bz2Km4+w5+B60WueRbh3qCS4/3XJ2MkbutBg9ybAgTn+GT5kw=
X-Received: by 2002:aa7:d952:0:b0:54c:7833:c111 with SMTP id
 l18-20020aa7d952000000b0054c7833c111mr1771251eds.36.1701684726322; Mon, 04
 Dec 2023 02:12:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZWnXlcsVJfPO1Qsb@debian> <20231201220743.32491-1-kuniyu@amazon.com>
In-Reply-To: <20231201220743.32491-1-kuniyu@amazon.com>
From: Alexey Tikhonov <atikhono@redhat.com>
Date: Mon, 4 Dec 2023 11:11:55 +0100
Message-ID: <CABPeg3ZZCDkRaVy2towZ-amU9v-rQSXZ_M_KnfY1SfWhhT-AZw@mail.gmail.com>
Subject: Re: UNIX(7)
To: Kuniyuki Iwashima <kuniyu@amazon.com>, alx@kernel.org, linux-man@vger.kernel.org
Cc: libc-alpha@sourceware.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 1, 2023 at 11:08=E2=80=AFPM Kuniyuki Iwashima <kuniyu@amazon.co=
m> wrote:
>
> From: Alejandro Colomar <alx@kernel.org>
> Date: Fri, 1 Dec 2023 13:54:39 +0100
> > Hello Alexey,
> >
> > On Fri, Dec 01, 2023 at 01:16:27PM +0100, Alexey Tikhonov wrote:
> > > Hello.
> > >
> > > There is a discrepancy between the man page description of
> > > 'SO_PEERCRED' and real behavior.
> > >
> > > `man 7 unix` states:
> > > ```
> > >        SO_PEERCRED
> > >               This read-only socket option returns the credentials of
> > >               the peer process connected to this socket.  The returne=
d
> > >               credentials are those that were in effect at the time o=
f
> > >               the call to connect(2) or socketpair(2).
> > > ```
> > >
> > > This doesn't match real behavior in following situation (just an exam=
ple):
> > >  - process starts with uid=3D0, gid=3D0
> > >  - process creates UNIX socket, binds it, listens on it
> > >  - process changes to uid=3Duid1, git=3Dgid1 (using `setresuid()`, `s=
etresgid()`)
> > >  - another process connects to the listening socket and requests
> > > peer's credentials using `getsockopt(... SOL_SOCKET, SO_PEERCRED ...)=
`
> > >
> > > According to the man page: SO_PEERCRED should report (uid1, gid1),
> > > because peer process was running under (uid1, gid1) "at the time of
> > > the call to connect(2)"
> > > In reality SO_PEERCRED reports (0, 0)
> > > Reproducing code is available in
> > > https://bugzilla.redhat.com/show_bug.cgi?id=3D2247682
> > >
> > > I'm not entirely sure if this is a real bug or rather a  poor
> > > description in the man page, but I tend to think that it's the latter=
.
>
> When calling getsockopt(), we cannot know dynamically who the peer's
> owner is.  So, we just initialise the cred when we know the owner,
> and it's the caller of listen(), connect(), and socketpair().
>
> In your case, the listener's cred is initialised with the caller's
> cred during the first liten().
>
>   listener's peer_cred =3D get_cred(rcu_dereference_protected(current->cr=
ed, 1))

Thank you for the explanation.
So this is an omission in the man page.

>
> And connect() will initialise two creds as follows:
>
>   connect()er's peer_cred =3D listener's peer_cred
>   new socket's peer_cred =3D get_cred(rcu_dereference_protected(current->=
cred, 1))
>
> If you call listen() again after setresuid() and before connect(),
> you can update the listener's cred and get the new IDs at the final
> getsockopt().
>


