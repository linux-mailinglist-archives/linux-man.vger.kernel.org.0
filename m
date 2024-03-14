Return-Path: <linux-man+bounces-601-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 779AD87C187
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BCF81F21AE0
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E08574297;
	Thu, 14 Mar 2024 16:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EQsXFR27"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DC07351E
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710434952; cv=none; b=ZbsKNSU2cnS4YnkK3zhaMuNzO2YEIdjz8w3mU7qrheaWYuMUn7iJ/YacU6VTKFXSyXagHxek6cTnzR6agI5ice3RYx9a2ANMFJqT3Gs35Z50VmVwXVgMtf/Z2l19sGVIaEwz5EgRJWaMeF60ul2tKapTOIGmKcR4uX29DzFq+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710434952; c=relaxed/simple;
	bh=5RFLoPoCyq8WduQOiuT7F89b7P1VjSykYkJTQPokCOs=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=QP5mzV3bYRikmzL6w5H9AgEzbMAh3mOilV9L+VPRjFuHh/qBG1swPhzuippF9mTrkdBsTFnKcWRCzF+Syf8t3oyLH9f6RT5a/OtNsY15tXr6xZkYotbYJj8PrhtU7e5pIKQWzjwuVOM6H5rfe/XRRKkr0aYFsdKiLeACFKtpUq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EQsXFR27; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5689f41cf4dso590271a12.3
        for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 09:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710434949; x=1711039749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xR2EXwgBB+w5y6Z6NPYTE0JRcuhngtJI1b3C0ztA1rs=;
        b=EQsXFR27YkXlt7o8QoX/RPgUIO/eI7DzKpP3RroWSIvwPtjO2L2TTM94lUsbPVMTie
         vZ2cGWHckDOyytW1tIkeJ7KVNHN1lxn7nyDwu7wPqcnFBknj6oIr64NZy+Gmp703YzAP
         3f6vFJkXPMy8q2R2yoU9XA4MWF6DEjIhZ81Ck73DRLX70GuCceUvIqfNEPDvLE2yGaih
         tCD9YHC4PKWFbn10EWNAUH6bv5qVFH7ErawQbtIJN/n9NwA+BVOZiDNSEZPZ9HsU8uj/
         QYCiAaF4Gs93C1KDXBZhdOxEv+iRe+xsUwsCi+ZCB4aXQSyGRZeKyg7zkKE36AIy76HY
         v9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710434949; x=1711039749;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xR2EXwgBB+w5y6Z6NPYTE0JRcuhngtJI1b3C0ztA1rs=;
        b=AWb2uMKBh+69sFNKuaxwlozayQPhn1UoZafErPej3JjlvMbCULGFDVmtYzgp+ONva4
         uC4Uo4S7JKXStE4lvaTr3H8dOOKqIfx/148puUTmMKfpU40NXqk74MoQjuzJ79tYA0GR
         N0cKsggGvfyCSYBxiV0SgclnssevPuC2i3if5O+OwyIjYhf7m6SlIE04mr4Ahk68P+ui
         YrjFIgjAy6gX95XZHQSP7WvLZNqoyuFCWU2CNg4raqlLIPcvaog7Yow+qXI+53zwgit2
         1JTqOnscwrpkF1urUEGwK10kca1sJr6gq1Slg30FtzleHD4dhsDjr0sTDdNk+9ORN1W9
         cC5g==
X-Forwarded-Encrypted: i=1; AJvYcCWcOMPCrlE8wsOs+g8aRvBdqzvAlHC/zV9od8JPg0mwCCS0DPoJxODKTMBaRw7G3sTU0iFBE6nU9r9KVVWnii74PzGJP8lPS6n3
X-Gm-Message-State: AOJu0YxkZBuVD0hLS80AdqA37GTBnLbXatlbuLYd5qCi765mfUokSM9J
	ZSsHv3DDxl5IrMko7KAJp7O4IFPAuEB0wuFgoBuLqy+5U5yRjVmrybxdg7rzEGfwtwNdnQP2kLq
	NOQ==
X-Google-Smtp-Source: AGHT+IFTO9ediyZDv6mJiUc0InMLGPPqtZKrXfh1QsFLRBFQOsVsBb1ExgQOsSLteUQNBCboNpmDvWMcw7o=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6402:ea7:b0:568:5352:bf3a with SMTP id
 h39-20020a0564020ea700b005685352bf3amr11566eda.8.1710434949607; Thu, 14 Mar
 2024 09:49:09 -0700 (PDT)
Date: Thu, 14 Mar 2024 17:49:07 +0100
In-Reply-To: <ZfMhlJ59U3WfG-d6@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240312151513.9718-1-mic@digikod.net> <ZfFt7VRWl1PBrXYQ@google.com>
 <ZfMg4rZRbjSP4mFn@debian> <ZfMhlJ59U3WfG-d6@debian>
Message-ID: <ZfMqg8SkfynNnoAO@google.com>
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested sandboxes
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 14, 2024 at 05:11:00PM +0100, Alejandro Colomar wrote:
> Hi G=C3=BCnther, Micka=C3=ABl,
>=20
> On Thu, Mar 14, 2024 at 05:08:02PM +0100, Alejandro Colomar wrote:
> > > >  .TP
> > > >  .B E2BIG
> > > >  The maximum number of composed rulesets is reached for the calling=
 thread.
> > > > -This limit is currently 64.
> > > > +This limit is currently 16.
>=20
> BTW, do you think this limit change is something relevant for HISTORY?
> Or should we maybe not document the limit?  Or maybe should the kernel
> provide a macro to name that limit (and thus let a user grep it in their
> headers to learn their specific value)?  Or maybe a combination?

I doubt that anyone has run into that limit in real life yet (but I'd be ha=
ppy
to learn about it if they did).

I think the most important reason why this limit is mentionworthy is becaus=
e
landlock_restrict_self() can fail when a process is trying to stack the N+1=
th
Landlock policy on top.  For programs that don't know all of their parent
processes in detail, they anyway can't make assumptions about how many poli=
cies
can still be stacked.  So whether the limit is 64 or 16, it does not make m=
uch
of a difference for the code that people have to write.

=E2=80=94G=C3=BCnther

