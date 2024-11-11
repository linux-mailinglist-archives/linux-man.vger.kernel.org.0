Return-Path: <linux-man+bounces-1891-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C379C3846
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 07:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA9EDB217CA
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 06:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A12914F9F9;
	Mon, 11 Nov 2024 06:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bY5L6Bzb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88303B1A2;
	Mon, 11 Nov 2024 06:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731305812; cv=none; b=orcpzSI2uR86SDWBKnC9HHUPWlYymVTS/QX0BW8vFbviUJQbbbyjFd956a3bLctc/9aNeJUsSEXjCETeOvQL8zs0yu/lTZdc88l/H2r9mrT+jW1B1asn8TtCfuZcQeyYz8Fn6gPZMHUZvaQSp8ktsnf6KzirGt+xbRa8LtkrNto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731305812; c=relaxed/simple;
	bh=WlYetTUngPh7fs3LohyjRvciW4psn4BgbO1zDS7xcvE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mF29qNsMuihwRjWzywxxNgbJ8s2/pukMsx7izzsIM7vFKUAFbOwk5B0DddX1reTBu4uqJAXKD4GtIL6Nmrjk3U26wtx5A2SfzsO8baKcvF7wBv6g4dZ9Q1ZuzEGFl5I35XT9dPngxE+uxkobNDppaB00M+Rtzkuljfn1Jg/877Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bY5L6Bzb; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e30d0d84d23so3598912276.3;
        Sun, 10 Nov 2024 22:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731305810; x=1731910610; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPlP6fFpjGEUalzsCVuoe0qrtYdjVJhlVuCgB/E1JY4=;
        b=bY5L6BzbWMK2hhpEtnTLLJLmBdt56kKMLCnaUUAOMgMD44oXS+WcPU4OG4Vqf0ha8m
         yKKWUEwNDUgUDhS2gd5H/Gyat/0eLQRdui3Qx0lULiCO+L4PewNfwbngbem+NZpshjw7
         SZQq+Ak/J10V6nUbmwf0L4TJQLfA0QibJ9Ji97gLIKrIT8ktP9/pxGKex+JgPWTL02kZ
         wWKlDNkoO0VteDPl1mkw+d9/MfJjjo7j5N0iG3Des7/r/xBUU/Hs+Ly8r1AA3RcX+MV2
         vq9ljEK3+RYgMda1l8PJMmPA8H5sTP/d2aPZeuABxIgiWzg1iH8Gk2vT1K/M0SDdsTe2
         q3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731305810; x=1731910610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPlP6fFpjGEUalzsCVuoe0qrtYdjVJhlVuCgB/E1JY4=;
        b=XlITkgC257fdH1wjmcO6vBKkFiOnei1en6cunLyurDJmEi/BCOcllECrXSDHgWxeUG
         REPJ0qoQiWmkR+V8cLRnfzlAQCcBptqjVR7xTfGCz34q5bqztL+Y5Ds7QLLm+N1oKUdQ
         jsEg4A8BTNdw5ggrYf1Kh7oBnksB1QawVboao57QXMab2A/LJ5v6iqx6hq5btOh5IKsc
         yQqjh7xyJHV38MGSAUqkv4LNIMgLsDF1hVPxopYyh5G/0boF6vCNy8gxmTKdgdAV5qFX
         JttVImWbOtjPnqHeQlB876bA0MJAKTp+lAvQ5cxmrzZUuuBdRUtGemrlGyFkxYlTqdW6
         VlPg==
X-Forwarded-Encrypted: i=1; AJvYcCV+7VYN4XFxhWVOFT82YiWqRJIAuUZ/POwcouJibqNpI1xC78S09SBNMLUvkZPLlaa7XibYnnMgiX0=@vger.kernel.org, AJvYcCV/awEqQX2V3xI4nZwD5mhLxYAKRyqo7nH8Uah8fiXrmIBdGzuYhJBOEMBAtu3qcoRr2UJvdjMs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz16C/CojNQgzeQvKJHwh9h+6RhI0BeId9/m+6UoOqYJ15aSkEh
	rJBtXZCMa9aldISV1blJoGGjs1y0s74hsWW0bUr0Uli+BzbyAml4RPY1bpod8K1m9z99jIrWkbx
	9ADtHIihZVIrt372v0fhiBu3xOm4=
X-Google-Smtp-Source: AGHT+IHV84jKmVFyzKDZILxkB+cToSUhSPEvIqSiu8JVgo7Pg96vwixgic0N54zkLrLX8UmOYgYGsoA9io96qfGmTYA=
X-Received: by 2002:a05:690c:3384:b0:6de:b23:f2a1 with SMTP id
 00721157ae682-6eaddda4b00mr120265127b3.15.1731305809870; Sun, 10 Nov 2024
 22:16:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com> <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
In-Reply-To: <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
From: Alex Henrie <alexhenrie24@gmail.com>
Date: Sun, 10 Nov 2024 23:17:40 -0700
Message-ID: <CAMMLpeRMKEWkNC=irH5dWwJSMS2jp6OSeB6KJBh2=ZbLsigM7A@mail.gmail.com>
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
To: Alejandro Colomar <alx@kernel.org>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, branden@debian.org, linux-man@vger.kernel.org, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 5, 2024 at 4:33=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:

> On Mon, Nov 04, 2024 at 09:53:38PM GMT, Kuniyuki Iwashima wrote:
> > From: Alex Henrie <alexhenrie24@gmail.com>
> > Date: Mon,  4 Nov 2024 21:14:20 -0700
> > > struct ifa_cacheinfo contains the address's creation time, update tim=
e,
> > > preferred lifetime, and valid lifetime. See
>
> We use two spaces after period (the correct amount).  :)
> (I'm thinking we probably want to document something about it in
>  man-pages(7).  Branden, do you want to send a patch about it?  I want
>  to include the references you showed to me, and you probably remember
>  better those links.)
>
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/include/uapi/linux/if_addr.h?h=3Dv6.11#n60
>
> Please use this format for links:
>
> Link: <http://example.com>

Since the second sentence will be eliminated in favor of a Link line,
the first sentence will no longer have any spaces after its period.

> Which include provides the structure?

linux/if_addr.h, which is the file I linked to in the commit message,
and the same file that contains struct ifaddrmsg which is documented a
few paragraphs earlier in the same section of the man page.

> > > +struct ifa_cacheinfo {
> > > +    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 =3D for=
ever */
> > > +    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 =3D forever=
 */
> >
> > -1 should be rather 0xFFFFFFFF (INFINITY_LIFE_TIME) as it's unsigned.
>
> I prefer UINT32_MAX over 0xF...F, which might be unclear how many Fs it
> has.

INFINITY_LIFE_TIME is not defined in any public header, so let's not
mention it. I agree that it's hard to see at a glance how many F's are
in 0xFFFFFFFF. I would suggest ~0u, which is short and sweet, but
UINT32_MAX is a little better because ~0u isn't 32 bits on all C
compilers that have ever existed.

> > Also, it would be nice to mention that ifa_prefered must be less than
> > or equal to ifa_valid (ifa_prefered <=3D ifa_valid) and 0 is invalid fo=
r
> > ifa_valid.
> >
> >   0 <=3D ifa_prefered <=3D ifa_valid
> >   0 < ifa_valid <=3D 0xFFFFFFFF

I'll add a paragraph to explain those relationships.

> It might also be interesting to add a separate manual page for the type,
> and reference it here.  Otherwise, the page starts getting fatty.

Perhaps. In my opinion, there's not enough material here to be worthy
of its own page.

Thanks for the feedback,

-Alex

