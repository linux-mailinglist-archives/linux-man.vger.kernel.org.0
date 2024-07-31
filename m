Return-Path: <linux-man+bounces-1552-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B462B942B0F
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 11:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E45E31C249CB
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 09:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9EB1AAE3C;
	Wed, 31 Jul 2024 09:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3ma7Yxwt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53D41AB512
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 09:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722419021; cv=none; b=WxyD9p72Eis8Nj2C82r3oNnEdHjWzrlQkK7vsMzNGBLa3iEryBPv6tuUCC3zh8x2ZgwMGUCsmKkOQvIVKFAxsVyLcW55AuCkz1du9NASEf9FmQJBZH7cTCbr3QUDrokixZQlKu+gREwkmViCFr2lNCSERSV3qN4UTEsypmdVmqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722419021; c=relaxed/simple;
	bh=xaUmVipLr0s0RrP8irmD4HR4VdKLCtA6n1xut+x3lVA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=R+AKVMQn0046qXAjZuMZAG8tFaFwadD3wYhxqdF/FQ/QtoiPqPBN7wAu0u6Woj6Cbd+NfZlwa9uHaYEXOYlSL5bcV9wVFL71k3qxuBqtc8E/PfDHbFafsJiFgFKbeMUjmDjqhAD2s06k6oXBzPrw15cxBLq7HMkqk/fbFQLFl0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3ma7Yxwt; arc=none smtp.client-ip=209.85.218.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-a7ab4817f34so478885066b.2
        for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 02:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722419018; x=1723023818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xaUmVipLr0s0RrP8irmD4HR4VdKLCtA6n1xut+x3lVA=;
        b=3ma7YxwtznF/U3cpNRC7gE03a9PimG81rmwl2hvH5uUQRTF2IzSsbAerI9DJknCtbM
         r7EWkXAxqZrHnjWWDrKTGhCPpNRvkLypTLHprtwYeUOYz73M1c9P0w0uuIaSE3Qp9bCX
         8Xl6eNX6Rzwz6e9PoGtraDiR3Tojx+3iFjMPi4TH+1Mx9Pt8itMnUWfG+3ts8Lj6viMM
         TCE+MwHtNDhTysYHOzetlLUZxjxrigybl0NovZOlEESVRkVznolrAG9/or5X4zCpXrFX
         rfYBnIUitOuUHtopB4Ut34f5kWFufgl1Gwo0bt33YLfWzhVEj3NELxDS0w/ee6Dhp/a6
         Nxrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722419018; x=1723023818;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xaUmVipLr0s0RrP8irmD4HR4VdKLCtA6n1xut+x3lVA=;
        b=NhC5AfX+yiXPJ6nYOwNq+FLVamtfhTRTVNyNVAFZXiUzCg7dD7oGYlqwezS7ZUKyY0
         Bom+tgclVEfv62qGsNpbdXDR0ykl+498s7TnUOh8S/p29UOPS9REylCo2Q1P3tkUmv1N
         uMD6hgdSunhuWWUD/uruM+8rwqlhc0ItFOj2ET+azD9Imdv37HJsCzSw5UD0duIS1c4n
         ZanklJKWCpg5XH/o/ty/cIiFPU3HPmBxEvY9B2V3Cc44ehhtN1oyoS03wHv/FxXK1e3M
         vC8SWaKkAIvwNANAHwRrzdmbkxeh1941qVz1q8FChCP0QVQPHYJMI5K8SNDpxGjxpZOf
         SS7Q==
X-Forwarded-Encrypted: i=1; AJvYcCX+Kzlb1U6rNenA/YH/gJpq9BQz9wyTIDmzr/fKJjnSCQtqMS1zwxnoPsj2xeu+ovCbf0+U3/zvXbcVp9PG9F8HpfGfKoTcEUVl
X-Gm-Message-State: AOJu0YzckoS3Fy7QwqUuGCQ1wwXQAeGpMugNOh/4/9PX1hL7fa7dNLby
	78fzRqD/lJZh8ct/75VmO++XbIiR3b0CvUuMYJAPR4VCR76OP13BS9wOFJowUCvPyzPzRO/K8tv
	htg==
X-Google-Smtp-Source: AGHT+IG9IEChPmP47RRMo5SgAJlxZYH8ETpXUseFFKq72i68cgMqIw52FtVXJq8DBgZIaMgu0ur1DEou3rw=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:906:d0c4:b0:a7a:8378:6263 with SMTP id
 a640c23a62f3a-a7d401535e8mr1181466b.10.1722419018170; Wed, 31 Jul 2024
 02:43:38 -0700 (PDT)
Date: Wed, 31 Jul 2024 11:43:35 +0200
In-Reply-To: <yncoitkjxgqypzr4hp2j26dnfxtw3p4cznhulkr2gmkvvii5ml@b4t7thznpzf7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com> <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
 <ZqEU8jHku1ZZOWv-@google.com> <yncoitkjxgqypzr4hp2j26dnfxtw3p4cznhulkr2gmkvvii5ml@b4t7thznpzf7>
Message-ID: <ZqoHR9XwYiBlk8VL@google.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 04:54:43PM +0200, Alejandro Colomar wrote:
> On Wed, Jul 24, 2024 at 02:51:30PM GMT, G=C3=BCnther Noack wrote:
> > On Wed, Jul 24, 2024 at 04:31:21PM +0200, Alejandro Colomar wrote:
> > > It depends on your answer to the pinged question above.
>=20
> I'll apply this patch set, and amend the s/i/I/ myself.

Thank you Alejandro, I would appreciate that! :)

Thanks,
=E2=80=94G=C3=BCnther

P.S.: I noticed that it is not in master yet, but I assume it'll get there.=
 :)

