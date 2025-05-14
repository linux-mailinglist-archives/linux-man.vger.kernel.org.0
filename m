Return-Path: <linux-man+bounces-2918-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A674AB72A0
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 19:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5558B1BA2A89
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120A428030F;
	Wed, 14 May 2025 17:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SBBNXbic"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344A927F4CA
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 17:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243287; cv=none; b=py976WbWsZ6CqeRcgEFCaovCzgLVk+YyCgej2T66gkv30eU316kvtZLoREUwLTelBuiFOS8vllgF6n22W5l86cjsnFqp6KYXmxctCIjaGBZI+c8SpWlrxwv/8Vqa0xKa76XAA4WIbYXWp9NhroQst+hmJnUTziuVGLp9Rq6P8ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243287; c=relaxed/simple;
	bh=xGa9vmwXydEwlPLupPDKkTKtG05KmVxcjZ3uA4nOhuk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFE58qeaPw0RTSFM1S9x6fdaUL3l4P0LdEZLB5SCA/EtEMRboES+QznwiTsoP+88tmdc4FrkGDdW8uP15ulyl2WK7hCTdn+ou7Vc7X9nsv01U0Q2bU224QIQRDiIyBWZcRyf0aS9h4tu+WeCVYSxb4IMWrHlpVoy463tlzGRaK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SBBNXbic; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747243285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XrntOKw058pFaozmugo5yCPQxOrKWoF9hOsnY8/r2Kg=;
	b=SBBNXbictZPTuIaDfpvlzvoGhD5y2mOu3292Ldb32MX4HH0j1wzOn2i5HuHF+XYkCYYrsL
	w5PUZWEo2lA3ex9ARbGaB0M0C7692zduK1z29jl4VgvJMoapHkcSMqGWyKhJm8AwfpzDE2
	5iiA7rLWHrcFi4pHk9JD7HYhAFezZl0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-eP-HS-g5N9uuo0lrbkLUew-1; Wed, 14 May 2025 13:21:22 -0400
X-MC-Unique: eP-HS-g5N9uuo0lrbkLUew-1
X-Mimecast-MFC-AGG-ID: eP-HS-g5N9uuo0lrbkLUew_1747243282
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c955be751aso1294607685a.2
        for <linux-man@vger.kernel.org>; Wed, 14 May 2025 10:21:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243282; x=1747848082;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XrntOKw058pFaozmugo5yCPQxOrKWoF9hOsnY8/r2Kg=;
        b=xEHfiQHJb0pxK7LWKYxh6S6U4wylYSsZ+/3icGi4wancbEsB2Y+gGvHD+S6SQoWc7a
         N6El07b/c9jKfgEfZvNRYOdy8KuYlAoaJ0BlBKlfuTWbDUaFFMq48v8FaNEnDFGQRIXi
         jEGd37CEDaFncwotLPnNTcR6wMDr8JI4mkTKkNhL5lQkWR4CoshacFBidsY42nkCm+83
         ljeVoKPX9Vd082DO2hePhEeZuYxvJr1Z9c0Li3G0FgvnD6LUOphi85sSVez8asLnGPwa
         /WCQNgG7BG95QwSWZJwgWktJKxLugs9jQIghh1MzK1BcDFVPuc/HKXZSNQrou8xQ0+Lj
         ecrQ==
X-Gm-Message-State: AOJu0YxNesFQ08y4whJDfieMnu5RDnDCzuQUbtWdRsQYUcuvelCb22y6
	R+qhjwkRcD99i3Q3y1ldv0b+N0xagqS6T2nf4e7UdunX0XjJXFVay9wcLdil3K9KSqSXaisoMDz
	jRHLLBSp0eX0ikUCMJ2QX8lj/JQTCRdeMJKjEJ9Q03heTBcj4aTjc3eQ8hg==
X-Gm-Gg: ASbGncuvt1a854ia1iMROX0bqsrZH/KVApLMtw2xFvGId8uvLrzgBtoAwlODTUqyoT7
	GYrRh5S536n8GQUgA/ebFR1F92EW2+aeY7PD16Ima4wMfbkn8jkNbV/ZenAslmpVkcngy5VcNJT
	ESVyYLcFBsyIKEeD9ftK/ZfPLDU0HtIGVX8KoMrgVCCz0wllBEFVptuxV3sZSTcNOkCxuozwMXv
	TUUYK/QdZkDNClCpZK6cSIlZGL2X2fZaBYZj+eH7GIGlirVkH+MFw7Tu5wx9bx+X18ucAI11tY4
	uug=
X-Received: by 2002:a05:620a:3902:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7cd2885ce98mr656490085a.48.1747243281672;
        Wed, 14 May 2025 10:21:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlRhej31PFKXT+uomnSZgUi1MBJW96d3uyGJIRGzzt4n9pb6pmzr2pMVVfkmYyry22hZPjdQ==
X-Received: by 2002:a05:620a:3902:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7cd2885ce98mr656487685a.48.1747243281342;
        Wed, 14 May 2025 10:21:21 -0700 (PDT)
Received: from x1.local ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00fe77c6sm874667585a.108.2025.05.14.10.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:21:20 -0700 (PDT)
Date: Wed, 14 May 2025 13:21:17 -0400
From: Peter Xu <peterx@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andrea Arcangeli <aarcange@redhat.com>,
	Mike Rapoport <rppt@kernel.org>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org,
	Robert O'Callahan <robert@ocallahan.org>,
	Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and
 feature probe
Message-ID: <aCTRDSCSiRrswEXP@x1.local>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-2-peterx@redhat.com>
 <6eobuzkwm6xhpis4s52dtit55fws37elv5d7zygaf64czcjag6@brz2nrc6qptu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6eobuzkwm6xhpis4s52dtit55fws37elv5d7zygaf64czcjag6@brz2nrc6qptu>

On Wed, May 14, 2025 at 05:59:48PM +0200, Alejandro Colomar wrote:
> > +.P
> > +For historical reasons,
> > +a temporary userfaultfd is needed to probe
> > +what userfaultfd features the kernel supports.
> > +The application needs to create a temporary userfaultfd,
> > +issue an
> > +.B UFFDIO_API
> > +ioctl with
> > +.I features
> > +set to 0. After the
> 
> Please use semantic newlines.  Break the line after the '.'.

This one was overlooked indeed, will fix it.

> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be  started
>        on  new  lines,  long  sentences  should  be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and  long
>        clauses  should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier  to  see
>        the effect of patches, which often operate at the level of indi‐
>        vidual sentences, clauses, or phrases.
> 
> Also, please say "zero" instead of "0", as was in the old paragraph.
> That will allow git-diff(1) --color-moved to detect some movement of
> text.

This was not part of the old text, but sure, will do.

Thanks,

-- 
Peter Xu


