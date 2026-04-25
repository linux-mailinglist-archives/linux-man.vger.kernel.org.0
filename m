Return-Path: <linux-man+bounces-5402-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAYIO6nY7GksdAAAu9opvQ
	(envelope-from <linux-man+bounces-5402-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 17:07:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A4466AAE
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 17:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F653300A8DC
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 15:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95DC35F180;
	Sat, 25 Apr 2026 15:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O2BQ1C+N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC97337688
	for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 15:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777129637; cv=pass; b=HH84Go0//ufW+f2DhRYPdHrpthWDq6amdk/zs4MuHPr49A56JXEVK+STkewNcm6+XEcPUTUlL58themKEzasbZx9jSCivmL//5NPJ38HTUUjpKcufFUkjG9B9k2GIJckArXAD5QdCsoWsdYDwjpsUHBIJby9Ueh6AWF7lTqr4jo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777129637; c=relaxed/simple;
	bh=gdtnTRxKXM6REgYXFeLaNeXNIAJcbupXuK/IpdBpCwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=npCIJVrGNPDDoQ/H+SLHSDaTfUlW/XfvhiXxZ3rCZeojlUMmRTmoZVinw8YfigCDd7gIaz7gg1xxeo76JgqFs3JGh0B96TUqbpBkOVVRAx6xkyF8kVL2wlUtEvIB6QB7asaUsVfs5y9qm5/kARppbDTZUnpRojSIfVpeBFRPWVk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O2BQ1C+N; arc=pass smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56d8d479149so2952834e0c.2
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 08:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777129635; cv=none;
        d=google.com; s=arc-20240605;
        b=Tj0PfU8lajLauV7EI07sgyAXzaBaA7282Tq7GgMmuRmCblaPi+2YJixbAA7HU376Rz
         9hfq9RtD0R8LHSuSrB9V6lG+dFgWTn598GVZmiZeeLkEUSxurO8XzjNCiPf14gm2JJDV
         XBUfyrMNTz+7oTVQjZyXuinZH3tGmPEd2k/F8bmhxyuIYbGH9dkXZLY8aNBhL3YD4UPO
         RBQEcKjtygKVN5/P6NPw/pxssVgJL82/lc/DdDLMg+6JggRX89mHkSKP6bh3etVkb4DZ
         OZnxTxmvGtGFY0Jboqsn/hN7o00mfdLk2YfNVgeqZTA7p1aVemcl0ugVup7mZcc/1en7
         TODw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=E0bfUIbcPXIn01NiAZhRCKthvXzxL3yoWQc3Y07YIxE=;
        fh=cXlsbC4aR9v5UZaEj5EmAyTHzc9v+PlVA11Y3ix8odI=;
        b=WrWMiw3KNVyw4RTkHNJ86pAdqYicp7bG0PkpnzoT4y6rZwUfhSc5qd/o7FENfgAce3
         aNnXw2pD+7+pQAs9ccvAFA8M9gej0mmUsJR4eun7U1bk0Ry9OBn+YKZR8jhJXZMM48Vr
         8h2/ApJN5HyCxUO4N8bmKDv/2zJWFSvbjg5brOdqGpPN6UClFlqGvGxcCCf6c51tZSm4
         uZWTw8OI7/WDYtkGwWPHXL5TBfgBr+MM3fIkpY8xR+f8F9+7nRNLxCDhcUFjy74yvw+j
         YblCxNksOOZEX2Ja/mFC4JmsB5ucrtQFj35TNSQJ4voUKV32crIIPXRgPY/iapDaS+4W
         Xofw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777129635; x=1777734435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0bfUIbcPXIn01NiAZhRCKthvXzxL3yoWQc3Y07YIxE=;
        b=O2BQ1C+NZNcv2u8pBqFGJlOO4rxUZNS+TT3S+PkQVKIau6xMqaDSHaooGIYbBA9e1G
         /rcHOFJKjsb6DJEjnhKBVSmws/vey3Dvd6wQJyuCXQyO/JXNfDCSQy22E7f05WKJFYeS
         NB8f6kR0V19GKl/qpGKU5yQ1O/0VlbSA0WS5bEZERnjYE8UXfF9iISYLwl10jdClf++C
         SQTWBjZimGD8Mfaled1tohZ3wqtDbvCsAgpD+oaA81mYnBWXwRxTAwMLQg5V2snnZTQH
         SIqzHGJHH4ZEWOdX5Xsbwk9uti3VBeBC/PMv5ZFk0dHN8lTCwmHGJ3rByMT+iyRhaOgn
         iicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777129635; x=1777734435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E0bfUIbcPXIn01NiAZhRCKthvXzxL3yoWQc3Y07YIxE=;
        b=f1j95bOSD44sWsJGGRalHT2PLufrtZFackLoCOB0Zka2yCBRvrsxhpLSqUqQjXO6zq
         Hc/b+jxlr3yBPTAeofb7wIOPyt2WVGGpZJh4wtOwbPpEccnzJFdFuhwoiewKmmcg4a15
         Aw65E2IPGj8Ht+5jSvEihMSlX3N0nPDlvQIchr1s4RtDDEFuacg2urYUwXkMVG3xOMP0
         U+jlAV/7OgYehrk+fTICbC7LHBILTz3Oe/2lKMX1kvEIPXcKWZNIkRIg6dqEfCilAUEg
         kTFqNM6mPKL50QsfoU54Qq927Iis2FTmctBQmmuvdCuBSa1SkZ82OlRykXp81v9Zt/cZ
         dxhw==
X-Gm-Message-State: AOJu0YzycwSMg6IJuvWIpR3F0XKYQGhjcOUXq3yvmnIARaqBtljvxrC6
	TT/i5PMfzm80lPAbrlhMfQpaQU165C9+C6roVvHpwJ8igUFk352//hBCQO6XzNonFOq0SQU/hSY
	KIJf7euqLh+Nu3cUxxOfTXkl5geIYiq4=
X-Gm-Gg: AeBDies6pgTGL5LiWxI4yNFhk+NrpJ2SvEqzRLbRMGLlEi43X47ZYQi5lKAvH+Z4lMO
	88sMi3hoxKGtQjtF8ecq2Jns0e9zQaBup3JL26WFrmk3N7ofL9jw5SApnRCDImri0qfTPIk6+fe
	dR5pCmDmhb4JERdRYGc2aTQx6ARYKy6y044QSYrU4oqTGB7/3APMLWxzIQV7Dd25X4gyJVE8qBE
	xquxtKkXaXGVmls0IlfnVv9Pp0pissDN+lj4TyIHLiY12bNp+hvIdUsGCQAF+Qb275ZDh0FWhVC
	QrfCIqeOIg+FMweo1ilfoSj+KSC2odNtmpo2upQPgFPQn4zMbYwe
X-Received: by 2002:a05:6122:3124:b0:56b:7484:39b with SMTP id
 71dfb90a1353d-56fa57fe337mr19407141e0c.4.1777129635227; Sat, 25 Apr 2026
 08:07:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
 <20260425134048.62616-2-dorjoychy111@gmail.com> <aezULCZu3eZhdUaq@devuan>
In-Reply-To: <aezULCZu3eZhdUaq@devuan>
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Date: Sat, 25 Apr 2026 21:07:04 +0600
X-Gm-Features: AVHnY4KVDTzLdM2k9pjuDTF4LpTI_-0_D2gmGbYWbJci7f6SqcT6W6v7v9v18mU
Message-ID: <CAFfO_h7eZdMUdgYhYc3pEYnYCWK=q6qFis0UmuK=4oh90ADRDQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 237A4466AAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5402-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,devuan:email]

Hey Alex,

On Sat, Apr 25, 2026 at 8:58=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Dorjoy,
>
> On 2026-04-25T19:39:28+0600, Dorjoy Chowdhury wrote:
> > Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
> > ---
> >  man/man2/openat2.2 | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
> > index f0770f3a0..42ebf22ea 100644
> > --- a/man/man2/openat2.2
> > +++ b/man/man2/openat2.2
> > @@ -133,6 +133,19 @@ argument,
> >  .BR openat2 ()
> >  returns an error if unknown or conflicting flags are specified in
> >  .IR how.flags .
> > +.IP
> > +.BR openat2 ()
> > +also supports the below additional flags:
> > +.RS
> > +.TP
> > +.BR OPENAT2_REGULAR " (since Linux 7.2)"
> > +Only open the file specified by
> > +.I path
> > +if it is a regular file. If it is not a regular file,
>
> Please use semantic newlines.  See man-pages(7):
>
> $ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.
>
> That is, break the line after period.
>

Got it. Will fixup in v2. Thanks!

> > +.BR openat2 ()
> > +fails with the error
> > +.BR EFTYPE .
>
> Hmmm, this error code is new to me.
>
>         alx@devuan:~$ errno EFTYPE
>         alx@devuan:~$ echo $?
>         1
>         alx@devuan:~$ man 3 errno | grep EFTYPE
>         alx@devuan:~$ grepc EFTYPE /usr/include/
>         alx@devuan:~$
>
> I don't see it documented, nor defined under </usr/include>.
> Is this error code available in user space?
> Is it a new error code?
>

Yes. This is a new error code added in the patch series i.e., if the
path is not a regular file, then this new error code is returned from
the system call. Does the new error code need to be included anywhere
else for man pages?

> > +.RE
> >  .TP
> >  .I mode
> >  This field specifies the
> > @@ -471,6 +484,12 @@ and an escape from the root during path resolution=
 was detected.
> >  contains
> >  .BR RESOLVE_NO_XDEV ,
> >  and a path component crosses a mount point.
> > +.TP
> > +.B EFTYPE
> > +.I how.flags
> > +contains
> > +.BR OPENAT2_REGULAR
>
> This should use B instead of BR.  BR is for alternating Bold and Roman.
> B is for Bold.
>
> Other than these minor formatting issues, and the question about EFTYPE,
> the patch looks good to me.  Thanks!
>

Thanks. I will fixup.

>
> Have a lovely day!

You too!

Regards,
Dorjoy

