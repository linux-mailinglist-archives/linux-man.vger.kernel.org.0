Return-Path: <linux-man+bounces-2505-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA925A41144
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 20:15:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C6F8168E3E
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 19:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0255718F2CF;
	Sun, 23 Feb 2025 19:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRT6FOSp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EBC189912
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 19:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740338108; cv=none; b=H3o33XLYtEFPoBdIp50txAZJmAi8s+BmqeZYMFXambI1nJ0GwUBTGCehM6qPJz/hiyUWW2qv2rgHWgzNtF2QvBlQ94+xh7uq2KePUrE7oI50s9K8dO/I2R/ztuKF22E1aCk7f9PSMPeqHwsXegPhQtAmgewL9X63chh1YlFk4xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740338108; c=relaxed/simple;
	bh=PLjqw8jogChqNwjOJdvYxjP0cb93hvu0btHdzuxy75w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLCfpLeR/WDkAPepBbStQ8qcQ6xOl3/hChNwLljTEdJFX/vvK/0zH9CkY6/e877tOJC/bBDxznqbAMy0wNsYKqh6cS3gSVnHR2B3w5bTX16KOiU0itI+bc0G5KHgF7zf0MPjdkCsrkk3PUqK9H+TyKM1lVbrbSXcj67zI45GztQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRT6FOSp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38f378498c9so3457970f8f.1
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 11:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740338105; x=1740942905; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6Vyp/3jsj8utL/jM7I00J/lVp9r/B2qms8VzbeqhhUE=;
        b=dRT6FOSp9F7QifgBtj3FOnRyqMHadldBrzFeJrJGLFl7CjwGkM3IjGmzZUFtv0p+Hd
         +Tcea0qyw2mKBF6NTztlwhKroftKIRbITtLv6XsOEMIk2tNNsFKnH2YIX5KIMcvmmafW
         XiYZoDcdzpNr8QztCwXRsPLY7Je3QDcE0ot59RfN9fu45NQsjAaJkAFj+I7xNvmceh2L
         nEhPE0BaSegcHXRRVANaKWjt5naRFVHAv0t5tAaZVwJGEf3AXWgFlIb4Ya66MQls+peD
         l9bFSYfm2DQV0ycSh3lH1h+yxW2SKdwICKM5hxmsmbgmZ4/clyweP4N7FohDQJAW8pjN
         3zSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740338105; x=1740942905;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Vyp/3jsj8utL/jM7I00J/lVp9r/B2qms8VzbeqhhUE=;
        b=uKLrPZlillqjFkAzSL65OjGVMY644PYlVFVVxsAoBdR2iqDH1o6uLfcRkKfm1JFtaq
         QZy8aGDDVK9JHbA9+QdmK7rSQhfCDA84NaoTyiZHUiJCp5Qtt7JVcAmRyOH+032FETn7
         KkRoFmPrDAoK44mo2bp33/y0jwo7ZJMX0l3I5Mt6r381dI66e3gMKM4TERHMuWog2HDS
         65wv6SKUgX/O3rig4fFVPYGt8VqWLKEweGF9+H582FYJOTxnlDS5d0/CoPm9m1Etes5U
         e4Tc2uZGLljHaeelnvsNqKqzURp6m91duErbjk8BfiEv9N0pbqhShv9JE3PWoA27l588
         bCJA==
X-Forwarded-Encrypted: i=1; AJvYcCV5tLyVHJQc8qDaoUXnrBnMb03cC+pqsizCObGRME3WBaMXbk1msk6b4i+VZbu8kJPwibskq0W/v/I=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/+vanykVJhv4Fb6kqs9T+WprdCD8iUWz7lA7ItN9nnIja53Uh
	J4LXBjpUKCpfXpxyMUIeVe6mhWWbsoZTUhlrVAYMyD11I4SLxoFG
X-Gm-Gg: ASbGncvEbLWKd3cou7rui0IjBedbfL/8IB8cSR5z2H4uX0ugv4YhOC4O283cMIOZ6ci
	j57VjCB87DR6EsZKvlf09VsIq4AZi3B86moUf8ipCExDu3JARUrgJ4BbVXulOjBJ9Gs2cSTrzNk
	51H9HEDyGu5nKca/Fobla1mCjZ579l6Ju5b+oq/eRMV3W3eQuoT7IP8637uQBzTDP5jfIDd4rCc
	Y3Uh+Iwd/c7P6oTwSik6/HDf1wpBZy+wcjCTnq8ERW8oqFtFf62bU9RbSiRzWc7tf0PFsYF9ibF
	ObSRMcAnziStyk/AvBbI4/A=
X-Google-Smtp-Source: AGHT+IE34gvKc+ATFlZX1alVK8i/GCOw5hJXIq60hRIXEGpjoAa4eNmhMTO5oV+Dar3L7HG6vFXBnQ==
X-Received: by 2002:a5d:5987:0:b0:38d:e33d:d0eb with SMTP id ffacd0b85a97d-38f7d1ff431mr4169653f8f.9.1740338105022;
        Sun, 23 Feb 2025 11:15:05 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-439b0371c51sm85388495e9.35.2025.02.23.11.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 11:15:04 -0800 (PST)
Date: Sun, 23 Feb 2025 20:15:00 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Jared Finder <jared@finder.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>, Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net
Subject: Re: [PATCH man 1/1] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <20250223.63620ae43aca@gnoack.org>
References: <20250223091342.35523-1-gnoack3000@gmail.com>
 <20250223091342.35523-2-gnoack3000@gmail.com>
 <11238d813065baceaf2a8b84e24eedb8@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <11238d813065baceaf2a8b84e24eedb8@finder.org>

Hi!

Thanks for the review!

On Sun, Feb 23, 2025 at 08:35:16AM -0800, Jared Finder wrote:
> On 2025-02-23 01:13, Günther Noack wrote:
> > diff --git a/man/man2const/TIOCLINUX.2const
> > b/man/man2const/TIOCLINUX.2const
> > index c0acdd0ea..27758584e 100644
> > --- a/man/man2const/TIOCLINUX.2const
> > +++ b/man/man2const/TIOCLINUX.2const
> > @@ -65,11 +65,49 @@ are the ending
> >  column and row.
> >  (Upper left corner is row=column=1.)
> >  .I sel_mode
> > -is 0 for character-by-character selection,
> > -1 for word-by-word selection,
> > -or 2 for line-by-line selection.
> > -The indicated screen characters are highlighted and saved
> > -in a kernel buffer.
> > +may be one of the following operations:
> > +.RS
> > +.TP
> > +.B TIOCL_SELCHAR
> > +Select character-by-character.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> > +.TP
> > +.B TIOCL_SELWORD
> > +Select word-by-word.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> > +.TP
> > +.B TIOCL_SELLINE
> > +Select line-by-line.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> > +.TP
> > +.B TIOCL_SELPOINTER
> > +Show the pointer at position
> > +.RI ( xe ", " ye ).
> > +.TP
> 
> Wouldn't it be appropriate to call out here that this specific code is not
> intended to be protected by CAP_SYS_ADMIN?

Yes, it would, and that's the intention and what this change is
preparing for.  This commit describes the "selection modes" (without
touching on the CAP_SYS_ADMIN topic) and a follow-up commit should
move the CAP_SYS_ADMIN remark into the sections for the individual
selection modes.

I intentionally postponed the CAP_SYS_ADMIN part of the change until
the time when the semantics are finalized in the kernel, because I did
not want to risk calling the slightly broken intermediate logic to
anyone's attention (where TIOCL_SELMOUSEREPORT requires CAP_SYS_ADMIN,
but only as long as one of the lower four bits of the sel_mode are
set) - that behavior was unintentional and I don't want to promote
that further than necessary. ;-)

So yes, I'll send another small patch once we have a fix on the kernel
side which is merged.

–Günther

