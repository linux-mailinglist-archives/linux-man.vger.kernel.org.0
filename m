Return-Path: <linux-man+bounces-1522-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF3A93B323
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 16:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 093631F22727
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 14:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2484715ECCE;
	Wed, 24 Jul 2024 14:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HxWNEsWC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5030415B13D
	for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 14:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721832695; cv=none; b=DGExzdWzNswe3lK0EBd7mHhWuBfn+qdymw92EvaHXYaKpzD/Carjj507hhttvZUL11P6CZyoPdiTL13Ip5KSNGzj+R41ai4xoTlxTbX5pnZ9mD4F+2VM+yQJ7VhrLJZUZ/H5tOJFBfmdzAszqv0b41y925z9zVJsc5BBoCPnhoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721832695; c=relaxed/simple;
	bh=vhDTQHKO35aJsAIvVBtViD8Z2Dw0UmzrBGRLbF+XS20=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=eRbMtKSq1PbIZUe3ZnH9AldPs1LaIVpZQTihGJ8HFhADTvHJkaXYzI4PRNY2R1j9zLiHtKMx2fGnFRsbdUtFHnYdX2Y0a/kVfg5fza1zunYSZHC+MVHbWrKYSUQ9fkh2bDDDw9hQ1tpGJfqclNY8jxVITm9cOJWLBEBqsyWK0ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HxWNEsWC; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-a7ab4817f34so47385066b.2
        for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 07:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721832693; x=1722437493; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KbbEtj1Tj8d218VzmEsiEfeEuMQRWnyUMsQQ2zGCw9c=;
        b=HxWNEsWCQiBZbsdtOhxoyyMz2NFi92pfjEJ4ufbbzb4ZiigH0TWxs0jB0ZuCQmJCHC
         2Hnomthyh76VLZxpv7yT3r9nIqcYBf+rq95oiGBfxwsY0coCo3I6BXju6qbUJtXwiSC1
         LIUzGlfT7Lova5avmXlDuIqniBmolV8pYm3h+wB8PW9gYX+GGCZdQzRMalA34NLPJHmV
         0cVkfB/M6N2f5KLoC/c1n/6qOxlcJud/RibHEqOT18zoPw0O8IXUiBpAo3q3V8wmrPVf
         5D8htt1kzT8thD1EerAC0gZxX9k4UAjaz1yWHcTvyr979AlCMMBF0q7o4fpI0QZAVLST
         HkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721832693; x=1722437493;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KbbEtj1Tj8d218VzmEsiEfeEuMQRWnyUMsQQ2zGCw9c=;
        b=aDCkpqh1oKNK85x0vn1PgX0554XiSLeEqmTkpqFyRPlJe9t5BuxkFFc8YACn8xuUI1
         2vfgmAVcKzFyo4phBnNfLa3Z45AVO/t62sm6pq3mDBZpZFz904Fw3/8x0rtQ4SqWo/Xr
         vIINeobQCVLYiOVgyU9wvC5LHPHckcw8H5w88uwco6XetBct/7MZMB+oEpuakcOL5SdU
         ZS9irtXx7g5vx6UW47TALlbGke+nV1oJ40fFVaoMzghDyQi7QQvdwq7CMp/RImK4QftU
         yrGIrynMbt8Jf6QAkND8rdhGPWFnKKxdIPA4ueAc9fZCmG0RbPna/akt9jhBaYV01kgp
         jOgA==
X-Forwarded-Encrypted: i=1; AJvYcCW1fkZC6AyyE4jkXA696t+TRoYbSMj0kCIN1cU6cZ9slexT5mLChSW7Sf/tRYwpO55nz595UTK7gCqJlfhe4Qw5nugZyy6FRQm4
X-Gm-Message-State: AOJu0YykWJb7W5D64VqNyOY/Rhqdk1lOV9IW2wRN00SFWIzG78/7WGPQ
	AKM5cgcsZqn12FdylMb2UGAPeqMh+vMSY9JU0rMwL3O38xofbn+tHZwXy+YJCaUiMNPJj58Xmp5
	jPQ==
X-Google-Smtp-Source: AGHT+IF5VhQ/hF8+jnHLhj9HVd1qFKVpUGB6TXwyMJcMpDSeysTkoZUwegI8BX+6rHcLf9wBMldb+8VU+9Q=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:906:cc59:b0:a7a:81cd:524c with SMTP id
 a640c23a62f3a-a7ab0dbb06fmr132766b.1.1721832692366; Wed, 24 Jul 2024 07:51:32
 -0700 (PDT)
Date: Wed, 24 Jul 2024 14:51:30 +0000
In-Reply-To: <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com> <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
Message-ID: <ZqEU8jHku1ZZOWv-@google.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro!

On Wed, Jul 24, 2024 at 04:31:21PM +0200, Alejandro Colomar wrote:
> On Wed, Jul 24, 2024 at 04:19:18PM GMT, G=C3=BCnther Noack wrote:
> > On Tue, Jul 23, 2024 at 03:03:13PM +0200, Alejandro Colomar wrote:
> > > On Tue, Jul 23, 2024 at 10:19:16AM GMT, G=C3=BCnther Noack wrote:
> > > > @@ -143,8 +151,8 @@ was not a valid address.
> > > >  .TP
> > > >  .B ENOMSG
> > > >  Empty accesses (i.e.,
> > > > -.I attr\->handled_access_fs
> > > > -is 0).
> > > > +.I attr
> > > > +did not specify any access rights to restrict).
> > >=20
> > > This looks like a wording fix, isn't it?  If so, it might be worth a
> > > separate patch.
>=20
> Ping.

Thanks, I missed that.

It is not a pure wording fix, but it corrects an overly specific error
description that does not hold any more in the case of Landlock ABI version=
 4.

With the introduction of Landlock ABI v4, attr->handled_access_fs is not
technically accurate any more, but it can also be attr->handled_access_net(=
!)
now, in the case where someone uses these new networking features.  So I ma=
de
the phrasing a bit more general to cover both.

> It depends on your answer to the pinged question above.

Sounds good.

Thanks for the review!
=E2=80=94G=C3=BCnther

