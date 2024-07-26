Return-Path: <linux-man+bounces-1532-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253493DA23
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 23:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48D161C2316C
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 21:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921481422D4;
	Fri, 26 Jul 2024 21:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z88LMQ37"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2DD210EC
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 21:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722029006; cv=none; b=AmGCE9WcesfT3MK5PNkoffyoAfaQHRulcZ/CFA+GvNAWo6FQDMSvNsBiIW5L36xD86RYPHpZhxZ2/aPPWGL1hfE3rfFLdJb7cKtXfxdTAtvaqBZp+rk80vZ5EpiHFcdYBaIEKUcBPuESVsuRn73qLlnjiZSncM84FSZDqKu/VHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722029006; c=relaxed/simple;
	bh=wSHE1k9x6m8duyn7J9bi3lU3tAnyjXdTnvV2KQWbswQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=sPwVeaf7XBkzYXGuLyIoBv3l62Zn97PUX2zGqY8z9OLzBEFANIvWIm1VEAbS3n6bhExaoHXDR7q6PX3EaRRfJmvyQgyCC4bqbTRrzgSEe/h/jjkLKqmzfUbCsWYJinNpXZTfaoXI+3mT/rg7PxGJHX/StYDDOdaZyMeT62YR4t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Z88LMQ37; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722029003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uedLPKcf7HAyZb82ltxrr5sI3VFM/XxiXZmbRYEhjic=;
	b=Z88LMQ37K9pyekyg909E1IYrsegYkiAPAOXMfoZ+b7LmpwJmPlLUGKRkfsL9pT0UUSgyH3
	/kBF75Rq2+6mSXaOt4Jo3Jcze3NMXrpm5ekNoO/4sJkT/vkOTZmtRGl29wCuceR23j39Cg
	z0XMp44TiJqpuJVCcS9rrTSuT3iayHQ=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-691-Q__vJMn2PLOERjPLdF-m3A-1; Fri, 26 Jul 2024 17:23:21 -0400
X-MC-Unique: Q__vJMn2PLOERjPLdF-m3A-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3683f34d8d9so55379f8f.3
        for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 14:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722029000; x=1722633800;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uedLPKcf7HAyZb82ltxrr5sI3VFM/XxiXZmbRYEhjic=;
        b=C2Bhqj+0tM3FR5CrsiUTR8BB0JN+/4cLrZt02CTLgbi1C/zCwJ+c4WjwW7/OBxs+qt
         V5X6x7XUpHK56MVswZXtcPuWnK20nSHJLUJUie/ajZJ4X5s97jpoSq0R1D51v2a5ROkm
         b8SRKMF4Xcs9iA+lD3noRCQQr0gYu3ZtR3uNfhReZCL85vVG0pNxR3rmr1pCJSS2ZZvV
         i4zGtEbzSeZz29pKaFn3pcE4OfrriL05ux/Lk3Cx3c8nGhDdUq2eztzOY5ykdtZY3V5X
         EcjDxQZLR/cwwdHTXJJtTif3QiZZsuTO7p9YQx3NOCXwgsUEkO4rrnAo++hgE12k6omy
         qzWg==
X-Forwarded-Encrypted: i=1; AJvYcCVGwZkGZw8FojPi/jUjEAjHCqKiRLqg/Lf/ryfVgNNG4T8XUofnTaUtvddihi9RCfFZG+rBpPLZ5rReuuLQu/x9eK3ndmAuWjhw
X-Gm-Message-State: AOJu0Yweu9Bcpq/fQx6AVDZAF+ZYd/ltCup185yrUlIBT3dd+uPrUUD3
	rLs0z+4LplyHjzqTKEFDC88x1Y0m7fP/lQmGi3f4VzucKRM5Y+kMO461CyeUs1RPCRcInEdRbd+
	Hmt7b2a21Tf9XREpLgaQCo8qqLPJgX90W/ViU7Avo44L/uDt6+pIZt2GEzA==
X-Received: by 2002:a5d:5911:0:b0:366:e9f9:99c1 with SMTP id ffacd0b85a97d-36b5d0c0f34mr529224f8f.53.1722029000335;
        Fri, 26 Jul 2024 14:23:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzzEYxaKfwThKZxnoUYbNeN9mdy1kf+ZaA3OGt/8UBOIfHFyxTxEIeA8bbW/sDusIooy5fdA==
X-Received: by 2002:a5d:5911:0:b0:366:e9f9:99c1 with SMTP id ffacd0b85a97d-36b5d0c0f34mr529211f8f.53.1722028999968;
        Fri, 26 Jul 2024 14:23:19 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36861b1esm6031550f8f.92.2024.07.26.14.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 14:23:19 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.95)
	(envelope-from <josmyers@redhat.com>)
	id 1sXSOg-0016Th-Ka;
	Fri, 26 Jul 2024 21:22:42 +0000
Date: Fri, 26 Jul 2024 21:22:42 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
    Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
    xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, 
    jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
    ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
In-Reply-To: <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
Message-ID: <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
References: <20240705130249.14116-2-alx@kernel.org> <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq> <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3> <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst> <48bf010-43ec-6761-13b1-55864296a90@redhat.com> <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 26 Jul 2024, Alejandro Colomar via Gcc wrote:

> > See reflector message SC22WG14.18575, 17 Nov 2020 (the former convenor 
> > replying when I asked about just that paper).
> 
> Where can I find reflector messages?

https://www.open-std.org/jtc1/sc22/wg14/18575

> And another one to propose that [n] means the same as [static n] except
> for the nonnull property of static.

I'm not convinced that introducing extra undefined behavior for things 
that have been valid since C89 (which would be the effect of such a change 
for any code that passes a smaller array) is a good idea - the general 
mood is to *reduce* undefined behavior.

-- 
Joseph S. Myers
josmyers@redhat.com


