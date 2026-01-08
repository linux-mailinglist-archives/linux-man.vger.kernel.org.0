Return-Path: <linux-man+bounces-4731-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F73D048FE
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 17:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17DD23010642
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 16:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449802D321B;
	Thu,  8 Jan 2026 16:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="N2vVmXcA";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Fy08pIEc"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21CB2C21DF
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 16:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767889574; cv=none; b=dnFjoF/j0EERY5+XiC8gYF1o/JPcdSVd6zqHh7NYQYR3pMFeXzyg6Ol0/k1OweuBN1UqV9ZuY14/pdOW2ojFc6Z0tLDHSjuApMTdUnF/4Ml6uxAxiONAD03T5g/57io8i5/4ihAz9bA73i49ZmdgHVKN/sAXw/wvDgoqcwLSN3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767889574; c=relaxed/simple;
	bh=oIrpoPa8Lyn/ssL6VYX6goYxvR91DjpmFk5uGocwbVE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=HIJl5my5R/PKrd9nuXwA0GO9QNv8OFNK6ojjsfP7v/lMS8Nb5+ojX71A2ds99E/mNbnCqHwar9uXE8+Jyh8p2KLcOWI1EBaIfD47PHxoHa43+I05T+S8HiD6DLJMwrSpFadF4bPH4i3E88iwE7mv87nbKuVvhx0ZrFYq1mEtso8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=N2vVmXcA; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Fy08pIEc; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767889566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gSmLEXlMz4yYM2myMFp40+mXvfbuHnRwVC+Kf1wwDU8=;
	b=N2vVmXcAidwEqgTgClRi21IG3DyxVkviuChD6tpk8ZbNyOYWs+U0yQWiCKnpKnER5pPQ2q
	xJrwhzAD3YRJjHat10y0hbME2/UGaCUcyaGYTKlAtY6byRIKSqufN+ZAhCwaFTbYgY8Wli
	qHqelbQVwjXei/kSigp9gyr6wJYqwxI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-624-wMn2VeGhM7S9cc6konjtWw-1; Thu, 08 Jan 2026 11:26:05 -0500
X-MC-Unique: wMn2VeGhM7S9cc6konjtWw-1
X-Mimecast-MFC-AGG-ID: wMn2VeGhM7S9cc6konjtWw_1767889564
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4775d110fabso31786305e9.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 08:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767889564; x=1768494364; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=gSmLEXlMz4yYM2myMFp40+mXvfbuHnRwVC+Kf1wwDU8=;
        b=Fy08pIEcN4U9KUQSurP/6yiqDXbLf1Y2H68j1YEOPGejNI5DuytxKP6QcSYqG3MnCO
         wQsu7d6bZM0HyMxgz3nMqd9sfSc+fClQ1wPQasKUWR/KebODRK/nlpqU38/UvN8kaXVq
         sFzouHB7QIk+3N1ykO0Jz3nkpmUU0y+WJKtMdffswSqLH99diTngy3+9ZV9xDFa+0OJi
         JbRvA2sufc4Q9/RYIC9t6hZP66/RwAg0gLLmFphOTNFSuXSU0Pkj6in+UOJAyYJJTZDT
         S2fb8AWDa9KUIIF6mLnk5wQXtjbCOCLc11isZJ5KEizfI1C7J2a5psEFeNpRppEzJeya
         29lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767889564; x=1768494364;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gSmLEXlMz4yYM2myMFp40+mXvfbuHnRwVC+Kf1wwDU8=;
        b=nCsoRvBhsJxmY0NtrIKC49LcKT7GKl1+B8MaS8tVj910av0ukqyx51CO7x0buRlBdA
         U8kc8hq1HlcCYmRnEVcnNHJx0Lu6XK+9PYcpuyrRqlwI84epQGLbvQlR+FcbJQwyqwO5
         w0WbpoW3MreYMMKM7OMx2/KewHv/UbOfS6LukV8YD0JirulHzAQRToPY7vQ7lyLkJpaT
         pbri/GjWJ4GEvGpmDQ7VAgDJXrNIl4D7H9NuwienCxSyvr9dbVrtvZ7fv0I7Qax3344E
         fxB9nHotE3WR/kP+4ImohUmwbguuMaXKO2sqHpDEn58i/mZnOwH7bpfQo1/fLQ26IBEc
         7vYg==
X-Forwarded-Encrypted: i=1; AJvYcCVYgcwZKqTEA3QHcy5Ut/9m8HgVdSUwWfyoNPCp3DQ59G/raxeFZBjTPDaB7a3CD9PJUd50r97eOas=@vger.kernel.org
X-Gm-Message-State: AOJu0YzLwYKVygct4hXeN1jvRz80OD3te10EaTIrQLppcg5D58e17CLo
	uGhqewBaYnxenZVUPJahpB9VNizO+Fqydtm6GEYjvtHy7jkLqEfBySOY5HFp9NaKhOX2wCJe8AF
	2R72UA+7VZI3qeY3sJ/MFYlDhJ2wKHqKhix6ntMVn+EJCuhYMmj6a94RE2oq8Z0iVqz3RMw==
X-Gm-Gg: AY/fxX5vPn7KcAdPUprQn48ob5FrpxwI55TkcVVsMgC/XJocziIeOQ4dztFAgpn5xYQ
	Bb/jeg2ZhObWo6FxvkgibqS1uxyQZv3DSaiYndDaJFQy6HsnpAG19aTIS6RtHmwLVveCE5OVNVe
	hTsT/98uQ9ae2nRl9eW4mXvnSRGtvifuJ+kegibMNFO9GoVoQC38Wdho3iiUYHUW5myOImKZlMc
	alVE8D29Z6IPrp1P8n6WF/yUyEzX1WEVpJeoJ9ahbgdPG0mTxJZRXQzq44O/CrxqGmlqg6thg/Z
	BggcWpGM83aR/BcuLgySvlFzGQmw1AEB3JtYNGwm13/car3DosDPRVG/6yuWOl+QpY0RuOZDPir
	+5vZ8DAXu2bxnshg27mDA0z5ywh//3WHLF7AVavdU
X-Received: by 2002:a05:600c:648a:b0:47a:9560:ec22 with SMTP id 5b1f17b1804b1-47d84b17ae4mr75862955e9.14.1767889563837;
        Thu, 08 Jan 2026 08:26:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuUJg9jiDNSOHIt1i+kFV/AGQXFAcVRHcbuR1bFUIlNYyf9DFrBSFn+H5l2q5yvCJJ47esXw==
X-Received: by 2002:a05:600c:648a:b0:47a:9560:ec22 with SMTP id 5b1f17b1804b1-47d84b17ae4mr75862665e9.14.1767889563409;
        Thu, 08 Jan 2026 08:26:03 -0800 (PST)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f695956sm163419205e9.6.2026.01.08.08.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:26:02 -0800 (PST)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.98.2)
	(envelope-from <josmyers@redhat.com>)
	id 1vdspl-00000008kBX-3bYE;
	Thu, 08 Jan 2026 16:26:01 +0000
Date: Thu, 8 Jan 2026 16:26:01 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: David Svoboda <svoboda@cert.org>
cc: Martin Uecker <ma.uecker@gmail.com>, 
    Alejandro Colomar <une+c@alejandro-colomar.es>, 
    Robert Seacord <rcseacord@gmail.com>, 
    "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
    Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
    Aaron Ballman <aaron@aaronballman.com>, 
    "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, 
    "musl@lists.openwall.com" <musl@lists.openwall.com>, 
    "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [SC22WG14.34679] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
In-Reply-To: <PH1P110MB16361EF635C579E30308D647CC85A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Message-ID: <38b040b1-2de9-4e70-8f9e-32fe5d51b160@redhat.com>
References: <20251223161139.196AB356CF9@www.open-std.org>  <20251223164349.F0BC5356D1A@www.open-std.org>  <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>  <20251223211529.6365A356CF9@www.open-std.org> 
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>  <20260106210527.AA3FA356D3A@www.open-std.org>  <20260106214930.A5C8E356D2B@www.open-std.org>  <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM> 
 <aV4N-0egpfxhmnta@devuan>  <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>  <aV69o8h0I3Px7ryV@devuan> <20260107220138.AE8DF356CFB@www.open-std.org> <9ba7ba75043cdabf30bc98260848aa8b9e43c0bd.camel@gmail.com>
 <PH1P110MB16361EF635C579E30308D647CC85A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 8 Jan 2026, David Svoboda wrote:

> I would agree.  I interpret "informally take over" to mean two things:
> 
> 1. I would like someone to volunteer to scan the C2y draft standard 
> (n3605) specifically to catch errors in Annex J.2.  In particular, are 
> there any UBs in J2 no longer in the standard. Likewise does the 
> standard have any UBs not in J.2?  The result would be a document 
> recommending editorial changes to Annex J.2.

It's probably not just J.2.  My guess is that J.1 (Unspecified behavior), 
J.3 (Implmentation-defined behavior) and J.4 (Locale-specific behavior) 
could all also be out of date relative to the normative contents of the 
standard.

In the case of checking for UBs, it needs to include "shall" or "shall 
not" outside constraints, whose violation is UB and ought to be listed as 
such in J.2 (when it's not a ghost - so when that "shall" or "shall not" 
expresses a requirement on C programs, not on implementations, that it is 
possible to violate without also violating a syntax rule or constraint), 
as well as places that explicitly say "undefined" in normative text.  
Also, some entries in J.2 may be things that are implicitly UB through 
lack of definition (so the absence of something in the normative text 
saying "undefined", "shall" or "shall not" isn't enough basis to remove 
something from J.2 editorially, you also need to locate the change that 
removed the UB from the normative text to demonstrate that there was an 
accidental failure to remove an entry from J.2).

Trickier cases where it's less clear why the entry was in J.2 in the first 
place, or where you need to argue that the entry is in fact a ghost, 
should still get papers.  It's the ones that can be identified as 
accidental omissions to update Annex J (in either direction) when a change 
was made to the normative text that I think can be made editorially by 
merge requests without papers (and then if someone is concerned with such 
a change afterwards, they can request a revert and a paper to discuss it 
further).

I've wondered if it would be better to set up the LaTeX source of the 
standard so that the Annex J entries appear in the sources alongside the 
relevant parts of the normative text and get automatically collected for 
Annex J, rather than appearing separately in annex-port.tex, but that 
would be a big change and a lot of care would be needed not to lose any 
Annex J entries in the process.

-- 
Joseph S. Myers
josmyers@redhat.com


