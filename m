Return-Path: <linux-man+bounces-1530-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D621B93D9C9
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 22:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92341285DDF
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 20:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091E6149DF8;
	Fri, 26 Jul 2024 20:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="c5EyghBC"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A9149C65
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 20:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722025877; cv=none; b=WwwRBV5ZEsVhN6fXi8MqFyHIzDFR3NXBq0U07hFaxKxuCjVU/QftjWg9Zo1kbOlOw6b5MFO6Bvz0LweVoxJLjnecfqcQyNN4KS8PhThKJgC6lj4t4oohuLiRNfAkIJSGjec0ZSi9tT87fxLb03UPzctbzy2vr7mabCXmk2Kyk6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722025877; c=relaxed/simple;
	bh=R+MBI1Od0gHqa9D4jIP3sg69n9YXFd/n75cy6GlW8nk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=kmgLq9p+KrPyq/sBS8FgS1/VUMsBLUK3Wt2UbeGVZFHS321QyqMmZZWXnIZMx2k/tdx0AdVZ8uv3sxF2R2KBUzjQbPsmgmte9oc8LK50UzPJJk0ommihuapsK+kavpNZlEcHh95ehoUe/J3iBw8Sa9vd4ntVtgtHAc9asz67028=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=c5EyghBC; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722025875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SH8V3OOcJaVBB/khIXJK7Al5yYi71odWfMkYZPL9bno=;
	b=c5EyghBCEQcxV/flp2CEVFvmFiZR9kbmSANuqyoyg+Hx6/liFJQq/o9lhxs1c0r5MZGbdm
	1F4kHvS+pvNcMDBkarKx29cWFi87Df0fMBFUsRwCYCjT8eyAkqYFUsA6ffwTYWvPmEbUEx
	kS9ZlGfOBllNZ8pvP4/RM58DBbd5GP4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-XztHpZUjOTi2icktbvFhyA-1; Fri, 26 Jul 2024 16:31:13 -0400
X-MC-Unique: XztHpZUjOTi2icktbvFhyA-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-428077f91a9so260735e9.1
        for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 13:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722025872; x=1722630672;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SH8V3OOcJaVBB/khIXJK7Al5yYi71odWfMkYZPL9bno=;
        b=vxxa7o+Q3iDMH3FhYtdX2yM2SlGiuFrABE9/K2UH+OQAcVUQOP/uTZ4brCGlVu0zbk
         /itqUEOoIcVjY4UOiSTQY0Tf0G25lx0GCT7SUl12A87oNwkHzlU+UXXo5viCrUPbgjdT
         5IVZksBqKDCaedPb4VeaYQvLKs8sNeeUcdzBOK69xjZOl4sByJhfRoAngulz/3bhnvMB
         mZwxsAKOr/D5m2nbICrND/No5htnZ5aN/J5AF0Y+Re62irsZPJ5bltcpvmo4VQmzYIx6
         o6DPpY8957P/3Fp8X3kSjwxMIAry6f0evDzLh/WjmfNElWX89uwO4lYNVOJUKKZf+c/U
         LXNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUknut7isZn5u+w760/m6Rt21v710MoLG0a5pkeICvNdGXm42KL5O2gAZaIvGJVuqU8v8axcDFWFcso77ErOrwSVokZugFiCiwx
X-Gm-Message-State: AOJu0YwbWYdHmKxVZIw1xlKJyEpxvphDexndjJzJGQUcFtj5CKvp9vMj
	AWr5gL57xclKASOUh/JQSY5N4ossVrY88HOulFrtJT5YQxbwOPKmbYkeayHRTRwMSK8WYdwYOMa
	X6aFyxDgVEZC2rlq3UpSYuSh53fr9EP2icH/SKWGoxk7qZL0oC+EL49e8Jg==
X-Received: by 2002:a05:600c:1554:b0:426:676a:c4d1 with SMTP id 5b1f17b1804b1-42811e52383mr4435565e9.8.1722025871964;
        Fri, 26 Jul 2024 13:31:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8MLseTMEsu0EmP8jgOM/VOygn0b9loC8YzB8OU0O/1exgscCppDKMlrgdY49rT6r3lgmlpg==
X-Received: by 2002:a05:600c:1554:b0:426:676a:c4d1 with SMTP id 5b1f17b1804b1-42811e52383mr4435395e9.8.1722025871548;
        Fri, 26 Jul 2024 13:31:11 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428057a635csm89466475e9.30.2024.07.26.13.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 13:31:11 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.95)
	(envelope-from <josmyers@redhat.com>)
	id 1sXRaD-0015a4-KM;
	Fri, 26 Jul 2024 20:30:33 +0000
Date: Fri, 26 Jul 2024 20:30:33 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
    Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
    xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, 
    jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
    ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
In-Reply-To: <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
Message-ID: <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
References: <20240705130249.14116-2-alx@kernel.org> <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq> <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3> <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 26 Jul 2024, Alejandro Colomar via Gcc wrote:

> I don't see why it should not apply to void*.  memcpy(3) should get this
> attribute:
> 
> 	[[alx::restrict(1)]]
> 	[[alx::restrict(2)]]
> 	void *memcpy(void *dst, const void *src, size_t n);

That would disallow copying between disjoint subarrays within the same 
toplevel object (and there's no way to specify an array size for void *), 
which hardly seems right.

> BTW, the author of n2529 didn't follow up, right?  I'd like that in, so
> I'll prepare something after n2906 is merged.  Martin, would you mind
> pinging me about it?

See reflector message SC22WG14.18575, 17 Nov 2020 (the former convenor 
replying when I asked about just that paper).  As far as I know the author 
has not yet provided an updated version / asked for it to be added to a 
meeting agenda.

-- 
Joseph S. Myers
josmyers@redhat.com


