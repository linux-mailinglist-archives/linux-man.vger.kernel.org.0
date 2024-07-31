Return-Path: <linux-man+bounces-1564-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09884942D6E
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 13:41:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12F7D1C21A09
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 11:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415751AD3E9;
	Wed, 31 Jul 2024 11:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LgI1OggS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787111A8BEF
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 11:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722426059; cv=none; b=F+bpnNoW/RcsWVB5Q6QdOY+wDm2UR/+Mnn7naguvW+kqyRXG+SvsnUdQ2yBNuRzZQtw41+o8pX43u7LqpGADCbs3QEfr0TzDDFMQiwyNBOF8cD0xtZP7MQhdr/xJawGeT7RIaXwn7qT5K0JVlxA1TRj+zwpGNkCKgffK0vDjgik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722426059; c=relaxed/simple;
	bh=TEzwC5FailQbhioOG4IlYj+k+R/5P6iWbDzsmaGDvbo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=oAku4nFWhQovBnWPRAaRZpwQ00G8TZtUFZ1xZqigVdk7CBdJGZAwseRZMY8lbYa+Qbyc6bjYX4nuUkEvLAhuavmtLD68jupdKozrUIKGurKJ0V3M+0lnhiHKgMOK7v8w4lw4SRgIKM+NmwppJioZQyiMGmeLIiD7kmWXW0TAkKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LgI1OggS; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-66b3b4415c7so116880237b3.0
        for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 04:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722426056; x=1723030856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XAKOXlVXw/veabl8uPJuaABkg8vyy8vTdLJ9JZj/w+Q=;
        b=LgI1OggSJIoOMFd2QAD1h9Cu9gcEK4e508DueVaFwnMuLtyoBymg5/nOgpt3hw4/5a
         QARrY4J86u7SCJjUD3ZllmuZtcxGZ4+h09YOS5JcNMoJ1tPgz/sVbPKxI6JR0OqJayx9
         TC2fwgEFeik+D6EDtpKIKkherb40HK1es2wtqZQV8H/ERJD4IUHUl5hgYyXk8RM4M4/Y
         Wblj54TM43IhlyXoMYhI7IXrj1+xsJ670ITukvnlDXfcLG7D28zayrfpHzTKuiuDyUgs
         0ysviGMkpeKKOzZb6tud1wXQKoGR/zCWzmQh02xKPnV4rh14AgbRqX0D245pRnkR1UMm
         V16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722426056; x=1723030856;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XAKOXlVXw/veabl8uPJuaABkg8vyy8vTdLJ9JZj/w+Q=;
        b=YxCER2cd0x8FP7EkAMRbvM4alRWr9w7qRc0MsLOhNWBg4CGa+2FYi7fb0UOCy0LCcT
         J1XvJwHPJHRJ+Agl2Q14tYOrgaiOR66wbAQURnJEbQWumppKW7ALXIydujO94xNKY/x+
         TlVmbqlVn4NmzhVR5/jcI1T1MozOJhsS5ZefX0iP66M1fzAL72Hhi1bEHs6RrGe1QVkb
         8A7zjRN193cxpgF+++hTyNOwIhVwG/ZMlUzpXXjZTx/FYqasX80v+XItY2jvxOBkMndh
         NNeL7oxgTqWlQbH2JhiDiaZitlNFP70nhVhrFvMB+ibjjshBomda7fKoP4hXQP2fHb8w
         dT+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWULEU3kEWoABzJUWWFe/2FXZQEjBylgss7JUOuC2H13a4IdvB638Qh//1hRXyXZR+kkiMDFgrgiK/17F8qJRZpH/NTsBOUDGc
X-Gm-Message-State: AOJu0YzW7j7UZdIrBP4FzMVNlWWnbN6SB63ZAYdvMhleZrs/8pDrOPMj
	x5G2/oJdbsXWKNCi3ik/eK/ieTmohqNFoYumLBvPYEeBolur6y09W2OQ9L9g0fDMoW14WNevU8S
	V4w==
X-Google-Smtp-Source: AGHT+IEdnAgzNMx+/ZAr9WeahUrBtMFrekZ0PhrPvgVVU1oDn0k1HZV4kwe+ARRflkDcytVzWbu+VKudPw0=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1202:b0:e03:62ce:ce7b with SMTP id
 3f1490d57ef6-e0b545231c2mr23923276.10.1722426056184; Wed, 31 Jul 2024
 04:40:56 -0700 (PDT)
Date: Wed, 31 Jul 2024 13:40:54 +0200
In-Reply-To: <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
Message-ID: <ZqoixhC_jvuiK0m4@google.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

On Wed, Jul 31, 2024 at 12:58:51PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 23, 2024 at 10:19:17AM GMT, G=C3=BCnther Noack wrote:
> > Landlock ABI 5 restricts ioctl(2) on device files.
> >=20
> > Closes: <https://github.com/landlock-lsm/linux/issues/39>
> > Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > ---
>=20
> I've applied both patches; thanks!  For the moment, they're here:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/l=
og/?h=3Dcontrib>

Ah, thanks, I did not realize you had a separate cgit running there.
These patches look good. =F0=9F=91=8D

> Did you not add a CC tag for Konstantin on purpose on this patch, or did
> you forget?  Should I add it?

It's fine as is.

I CC'd Konstantin on the first patch, because he authored the networking
features, and their kernel documentation, which are being turned into man p=
ages
there.  He was not involved in the IOCTL feature, so on that patch he is no=
t
CC'd (but can happily comment, if interested).

Konstantin: I would still appreciate if you could have a look and sign-off =
on
the networking documentation patch as well, since you are the original auth=
or of
much of that documentation on the kernel side.

Thanks,
=E2=80=94G=C3=BCnther

