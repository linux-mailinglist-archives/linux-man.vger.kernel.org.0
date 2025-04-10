Return-Path: <linux-man+bounces-2766-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD54DA84BD4
	for <lists+linux-man@lfdr.de>; Thu, 10 Apr 2025 20:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5A297AFD72
	for <lists+linux-man@lfdr.de>; Thu, 10 Apr 2025 18:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3CA26A1B3;
	Thu, 10 Apr 2025 18:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="D1LPeSbP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE70F1EE033
	for <linux-man@vger.kernel.org>; Thu, 10 Apr 2025 18:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744308561; cv=none; b=Oa913ZLmiIDseSAh4Zbvmk6h3EuZQ98MeYBQUfbezLgGi148zhJVHLuSjRKBIsOR+tSGa2fkmqC33xcQKTlY34gChiV2Fz7446V422G/PlUiKp8ndO9zbg5TUhZ0yyoh8vSVxsn75PO8nfKiuHne4uhtTyyJFrUJZh3/7OWHtno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744308561; c=relaxed/simple;
	bh=0HDDxhVx/K0ziiZR6k0q7SWMPPlZTv6XCbxbFMZZ+eA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WE59E8L3fh542pyXNvsROk8EtfgNfUiO0wmtV0w/NtrUbPu/MOuben2kZJ73XTdj0NAKqnEMK0p7gxiSArvqE2BEbz87Pw+EcIK2uXjOgJgZ8eH2ocFSu5Q7b056Shqq1cMc7vLUr2pPCi7g839gXOk7MHZ/5skLlv96zTLy1xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=D1LPeSbP; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5f09f2b3959so1391a12.0
        for <linux-man@vger.kernel.org>; Thu, 10 Apr 2025 11:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744308558; x=1744913358; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBiqOCa6ORKwj1OnHeplbDO55Ve1gweoAeDCTwRqF24=;
        b=D1LPeSbPK/svSntwMBAFPoG+rmNBNph+9p540Cg3+280gRV7dbPkk/j8Ur+ZmbLYAH
         DIlrEpKKTlb9BsXNZhRPeCLkalL9NEwa2BthpzF6w7G7AIgrxzzzVyUDDwY/l5XT4t35
         WgS+RzFbES+3thTzdy6MFc6nPEUgz/k5KVfAODjQ6StxmqvFXaSOFgiTKfO0TDkoIo9C
         eUMdyFkFreT/SMy/g6rClMx/K6gqr/BoYmWw9ruw84/pfgMkKdGCu1L9ug16filAJNoL
         TXm7ZKklKpaZaUFCBSHlNjEDDlLOMnYsa1Y4XBJFLeUsW90cDpdP9dI+7HO6B5nmahhF
         wF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744308558; x=1744913358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBiqOCa6ORKwj1OnHeplbDO55Ve1gweoAeDCTwRqF24=;
        b=fmEFL+v3tEOKdG1PKNJBwtaH1bWH2+EbfAkWMWy/wJ6LN9ZEB+8mqV1qtKYzO1Yy6F
         vCYhnUHFiCBId6vIvSquhpNMRQxg2WeBAlSHGrlYp4vKF6yf9682s5tKOW/hjKIBzxQq
         +2tZVVF0bzmxIW22hUiIm7iy99SFWB7aAVNJ+jwgJ+O9hoaf6kMxu6HBefouHKkmdKJC
         SNjwjbwSvTg8KmxLvoKKGkE1lQsWAAzDHyZ7ctkf+27dEdv841BhrgmrcBmeetaxcoXT
         LWzFzJ6AdC5JuQS10+cpUgaDeiPqrDYi6zi450dwPB8b/ZmO1zAApXb95XOKssrFKxL2
         gdhw==
X-Gm-Message-State: AOJu0Yw9xIy7ppXN66dNAHFnhuGCChBVtfzI6X+The88yFHGZo+S8/bb
	Sux+8WLnfXLimk1XyuuYaV3h0MkL1T4C1QO3kqQC/P8qw1UaMvv1nn3Nxdf+tI2jyFYENRKXnBG
	vMzMzYPcaErgGDHz4V+6odZeLxMcf5sMoHh8q
X-Gm-Gg: ASbGnct9vxCGM/Y/CHXzpKOIsdAfAcM/il0LCpqWWZufsdlmrB4IGfWqXVXXTGSqnJb
	bDFN+BZnA7YMk198eLTpcl9CBYk4/YgOLT43hgXe2QbEpS2MuOyHCriFg8G/vrJM2BUt4w98DCd
	zPPXai+cTHPfXDUKUGuu4BTbFoaFQeiCJ+9kPZ3aPVAQ6r2lLAQg==
X-Google-Smtp-Source: AGHT+IHNd5gXrt93ytFjFAhFM4sr1y4z+b+KauHs3T6o81++KG4r0d89C9pGvaHfV7xqhuqJ9PXrG12gji4ZcKyV42c=
X-Received: by 2002:a50:954c:0:b0:5e4:9ee2:afe1 with SMTP id
 4fb4d7f45d1cf-5f35d0668ccmr5169a12.2.1744308557381; Thu, 10 Apr 2025 11:09:17
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250409200316.1555164-1-jannh@google.com> <eou3zcpvohbtr3ixeibqec4grb5jdf35ss7xi5fy5qjgpxysde@fenpacxwsnqb>
In-Reply-To: <eou3zcpvohbtr3ixeibqec4grb5jdf35ss7xi5fy5qjgpxysde@fenpacxwsnqb>
From: Jann Horn <jannh@google.com>
Date: Thu, 10 Apr 2025 20:08:41 +0200
X-Gm-Features: ATxdqUEquuGPwCLacfB2WZNL8q6DeiACwrXJzMpGsndOI_o7ZP3y3hmfCBM6HUQ
Message-ID: <CAG48ez2Ox6YudW9iOS=0PvM3_NZr0fvJTda1z8eC+uybYYPANA@mail.gmail.com>
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than PTRDIFF_MAX
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 9, 2025 at 10:41=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
> On Wed, Apr 09, 2025 at 10:03:16PM +0200, Jann Horn wrote:
> > References:
> >  - C99 draft: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pd=
f
> >    section "6.5.6 Additive operators", paragraph 9
> >  - object size restriction in GCC:
> >    https://gcc.gnu.org/legacy-ml/gcc/2011-08/msg00221.html
> >  - glibc malloc restricts object size to <=3DPTRDIFF_MAX in
> >    checked_request2size()
> > ---
> > I'm not sure if we can reasonably do anything about this in the kernel,
> > given that the kernel does not really have any idea of what userspace
> > object sizes look like,
>
> Hmmm.  Maybe it could reject PTRDIFF_MAX within the kernel, which would
> at least work for cases where user-space ptrdiff_t matches the kernel's
> ptrdiff_t?  Then only users where they don't match would be unprotected,
> but those are hopefully extra careful.

Perhaps. But then some tricky things are:

1. How many existing users would we be breaking with such a change?
Probably _someone_ out there is deliberately mapping files over 2G
into 32-bit processes and it sorta worked until now...
2. We don't really have a concept of object size in the kernel, and it
might be hard to reason about whether mmap() is used logically to
create a new object or extend an existing object. I guess we could
limit VMA sizes for 32-bit userspace to 0x7ffff000 and enforce a
1-page gap around mappings that are at least half that size, or
something like that, but that would probably get a bit ugly on the
kernel side...

The first point is really the main concern for me - we might end up
breaking existing users.

> > or whether userspace even wants C semantics.
>
> I guess any language will have to link to C at some point, or have
> inherent limitations similar to those of C.

This limitation is really a result of deciding to make pointer
subtraction return a signed value, so that you can subtract a bigger
pointer from a smaller pointer. I don't know whether other languages
do that.

> > But we can at least document it...
>
> Yep.  Most people are unaware of this, and believe they can get
> SIZE_MAX.
>
> >
> > @man-pages maintainer: Please wait a few days before applying this;
> > I imagine there might be some discussion about this.
>
> Okay; see some minor comments below.

Thanks. (I'll probably be out for the next two weeks or so, I'll
probably get back to this afterwards.)

