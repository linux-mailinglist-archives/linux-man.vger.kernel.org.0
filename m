Return-Path: <linux-man+bounces-4031-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C13BB4437
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 17:06:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16FBD188B2EE
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 15:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1830215A864;
	Thu,  2 Oct 2025 15:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WRdQCzTg"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501D91B808
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 15:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759417589; cv=none; b=bsPGcgDJByZMrcXPzAV/RYYlAdBHnhaWmkWElbX1Qi/zJBoQaNUb+55mRlmnUxXwlA95d5gGNqAPEPaa/FxGdUgDzSaTrg5SWip8cEO14TVKagn+pe0fMFRiZyaC4wD+bk61nnl41b+6oqoU6m4o0RsyW8DWXMhjtYFObear8Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759417589; c=relaxed/simple;
	bh=05ZRLGOYdqR09raubHrHyQadRDSOqMu62QU38BnrygQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HNZXhoEq1OAcCUFtvtHZbZuAksGkwEi0LX6qAGpIP9UOyH9j6Ix3O4/3kaAt0t3Y7reIi9u0WAPE05eYlq0vGM30P+vvWNyQEVP4qn9ttZ2LfpJc+VVldFTF6VIN8sqsEsFEIRx3GmrYuhABiZth/D41uOj/sXv341sbSKZ7rIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WRdQCzTg; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759417587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rb6YHj4tcmAFWmqqVOSGI24I97PdR8EnoBI/OXR6d0k=;
	b=WRdQCzTgENMppOTsVu9OK5/fGfH47UAQQksGkunT/yHXbnbOYpTA+pV1BMWLzN10eyOHP7
	ycMHz01VF6lLJG2jsfAMnQaTdq9hgQddnJCmrP6ypRi/8NLp2LA0g/dtr10rrUCjWq4CSI
	HOQwC2xTO+Vx87Tr3dTuJDeaKCZxUXo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-693-yRn8j1gWO5yEzD4mZ5L3cQ-1; Thu, 02 Oct 2025 11:06:26 -0400
X-MC-Unique: yRn8j1gWO5yEzD4mZ5L3cQ-1
X-Mimecast-MFC-AGG-ID: yRn8j1gWO5yEzD4mZ5L3cQ_1759417584
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46b303f6c9cso7864105e9.2
        for <linux-man@vger.kernel.org>; Thu, 02 Oct 2025 08:06:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759417583; x=1760022383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rb6YHj4tcmAFWmqqVOSGI24I97PdR8EnoBI/OXR6d0k=;
        b=LClE1WGd5XuUM/fxTXMiu3Cpz/X3Ewa+ZQBXJ9kuvlWCpuVK+PWzVkXrOF3kj78CGb
         7GbMcJ5GLQ68s7mxi7QDnDSPkb2zTknvk/YCZXF6q0zLrrtBw09pQSHkv/naEdwNoxw/
         WvNY97/o7jXHCw8iN26B1Z0yjrkk0JItmtMj2LINeRHRjCcP7RTEyurGoKthaTf+lSID
         yP0DDZ03vvdQHLdn8e/6x8tmYmzn4JpVmE++v1WNbp3ZBq820ZVsJyQW1h03MldHb27e
         VxvJsbepe4LfV9bkm6yYyGoHimYLsnwpLSsrvGZdBDZDZV+umKzvHTI186c9ErICbClp
         oakA==
X-Gm-Message-State: AOJu0YwmVRnE3rbkpzV2WnRrCkZeD65XGpOWZ5cPgIlf25ff/SPJi7WK
	4lOGqe2KSyINr27A8NhUeaUynmw8vZ10N4UjKuxWeWbsCtOgjzfh4qLnGUayIGN3J0e0QLhEfwR
	g8U18C/InItNoa2Dun9edYaFTJATuuarAEabc1dnTVN4s9inVo1w2VL3WVK4w1w==
X-Gm-Gg: ASbGncsSnRq3+8LRNioUKGsHMFpkYrgA26iz90SowUtvqpFVRrP/BiA2P0HRSi+XApd
	rBr7hMun7iK7xRJ6CkkQSaV2TjTrfcbddIFR8enhk7p4jyqtRyi56Qz3x73fjlQfuglKpzhgi6A
	CqaUvGsrgRvNd18okM4WgoexphQVRenwX5zXTYrub0qvGNNrE4/Y/EDE4/ewdCrcjJ0IzA+kE8N
	zZVhvYcZnrAb/ysd+SdZrYV00jPjunIYZjd8UPH1B4abtRk30FaBG6Z0kf1epUSJ5DFH5I5272F
	Mo0dHtMliWDVNYpdMbwrApTHtC68rZ3WCIR0ZXcgVDGN8CQQnd9EIftEoyzFpadUxjaSL8wvEWD
	xYI+ALNBK9ruRM4kO0Y+R2KuW
X-Received: by 2002:a05:600c:4f93:b0:46d:fd71:f69 with SMTP id 5b1f17b1804b1-46e6127ba38mr62754135e9.14.1759417583587;
        Thu, 02 Oct 2025 08:06:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiTAWgJ93CUeW9ibqVXzaNLgayYZK6O9qG3bMmDhJ2oCyNP+XIZdUmm9zFbgEJjTxtbkI20A==
X-Received: by 2002:a05:600c:4f93:b0:46d:fd71:f69 with SMTP id 5b1f17b1804b1-46e6127ba38mr62753905e9.14.1759417583173;
        Thu, 02 Oct 2025 08:06:23 -0700 (PDT)
Received: from debian (2a01cb058918ce00b1193b1af18e29db.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:b119:3b1a:f18e:29db])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e61a0204fsm87963635e9.14.2025.10.02.08.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 08:06:22 -0700 (PDT)
Date: Thu, 2 Oct 2025 17:06:20 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <aN6U7PkSopJdIB-9@debian>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <aN6PoAPSQYuy-kJV@debian>
 <k6gzpa3l7kux4j24jekirc2d2izvlizruk2iydst7w7hi542ev@qdvoql6ypykw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <k6gzpa3l7kux4j24jekirc2d2izvlizruk2iydst7w7hi542ev@qdvoql6ypykw>

On Thu, Oct 02, 2025 at 04:59:21PM +0200, Alejandro Colomar wrote:
> Hi Guillaume,
> 
> On Thu, Oct 02, 2025 at 04:43:44PM +0200, Guillaume Nault wrote:
> > On Fri, Sep 19, 2025 at 12:54:01PM +0200, Guillaume Nault wrote:
> > > Add a brief explanation of the RTAX attributes that can be used in
> > > RTA_METRICS.
> > 
> > Hi,
> > 
> > I haven't got any feedback for this patch. Anything wrong with it?
> 
> Nope, I was attending a conference last week and didn't have time to
> look at this patch.

No problem. I just wanted to make sure it didn't fall through the
cracks. Thanks!

> I'll try to have a look later today.  Thanks for the ping!
> 


