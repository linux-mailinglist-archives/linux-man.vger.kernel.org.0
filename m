Return-Path: <linux-man+bounces-4029-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0451BB4346
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 16:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F69C3C66A6
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 14:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF35D30DD32;
	Thu,  2 Oct 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JYtChcRD"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B792C027F
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 14:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759416233; cv=none; b=MEKugkqRrOU9+xbdJIHO0ChFIMgAjOHV4x/d5wQK+582jVa/wt8ens8lJFnzTwithwBWFPXc5u6M9QK/dOLZ9wh68Te3kpw3O1+InEECIUZBigDr7OIzs9GWDBv7GmM6zjQ8IKVTRcAyFa2x0qiTTCrm6c1S8zs+4Kyt29tKGXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759416233; c=relaxed/simple;
	bh=YQUF6a/nym5vBk/cSWYX86fcjlNVgmfiyQCvjSNZfso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GECU00ifctq9+duflQ2hKK3P9YUZNeSur1FnYvZdzDqjneI+B2WfqaPRTL/OqIF7ZDBmPMGcvFNYE3AwfAFJccfdQtxgO1HUbM2a5IVa2ytraM/jz0lUjQra+lrRRdsdiDRqx/AoV3O5pHv2GE4YZIu+efaigZSTJgNTiLOjgUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JYtChcRD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759416230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=z4NM3QuSpSdD+mfhRB+yXW2fg8a98qq3lkpPjlqHYdo=;
	b=JYtChcRDl4NvpnosAagZkoNMo6FBIdN3+zsCGNP4FKFDYjlqlhbJrYyoMn5Bx4Ft6/aaU7
	p6LCXMtyagJaha1cxv/RwwTnberGF9Uwc2QLqoMnIj8dBvJR0DZNXs6lGA2BBnw/Lk2UKz
	l+u33U8t/UlEs/fCfmhjhd1z2kTKOw4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-435-l2ZbAWomNNOqD2GfQxkkRg-1; Thu, 02 Oct 2025 10:43:49 -0400
X-MC-Unique: l2ZbAWomNNOqD2GfQxkkRg-1
X-Mimecast-MFC-AGG-ID: l2ZbAWomNNOqD2GfQxkkRg_1759416228
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-46e4335fa87so5795145e9.0
        for <linux-man@vger.kernel.org>; Thu, 02 Oct 2025 07:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759416227; x=1760021027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4NM3QuSpSdD+mfhRB+yXW2fg8a98qq3lkpPjlqHYdo=;
        b=S/+xtVgfzB+l9kklgfyq6uPDhEucTFWT411XtYul9jvnqQR7c7kPxDn0ro1xpTJawq
         o/7vIeT6wF9Vg8eK9kgkaB2Fj8IO27b1+SEwuWQgf+0Zi6TXPq8QtHeBguQuENsp3Fup
         lZyalCSo40toeBoLFTPtQSozsePC44+VTxb0RlW5HgLVWkUqob+JjqvlitwtG3D/g34b
         5wTkK+ibqmAE14ONZSI4qTPpxU2Z9Da+I+h5mx5Hy1fh5plZAGR0dOIBREiLQA0LHWXH
         +DIKs9qa1/I0fyk4ixT6zS0+WtRUhwMUUV4UTDQXKnX0Wa097VMLgLP87mElo3aayFyT
         sbPg==
X-Gm-Message-State: AOJu0YyQEnhgfb+qJkRjGhvhgrMnxNMdJh3pInTmJKifzSwHOhH1YJgQ
	Z4iwO6bW3CfXTOCNWx6ffxAN/QcQwWGxfWBUkIEqCpxdHqG0CXwOAh9c+KxKUd4c6jJRN2C7iq2
	H6ANnTD2e6iqJ/c9fyfGCXFJvmLeR6jIomwIgaTR5EwubStuN1zk5mSTXVyDaW/aqwhx4dw==
X-Gm-Gg: ASbGncsSEs4LlR3Hi7agc3hItf+U0A8hLcWVHVzjpL4MFBlpOcjLEbytR0AaWSVFRvB
	NdrJ2Oyf7Z4fa+WLly7UCKRhmstUDJisv9JPjYwdQARnc8IK1Pz/6a7ZUei79QGpij6RwQnetfQ
	y36tzVQP9aucvM7nc4Ln1OvdCSp07dHscA5TK0WgNXg5gZ0wh+sz7TL3N/UB74vfR7sr+7lVrKt
	z1yycPlgCa41fCMTzLe7dln002KbkcByQVyYhwMBcGJTWmCvY5UNltMaHvvezBlW2/sKYOiCFDd
	/EoZ4WIqAS/jkwMOEoa4uv3kO9BUUKuZVOPiGgVBD7VhQBmVEQfQaXhx1cg1FDk5s0YtO2OeYJn
	WMtawPNmcXxUp+B/saJzcTHNv
X-Received: by 2002:a05:600c:34cb:b0:46e:326e:4501 with SMTP id 5b1f17b1804b1-46e6127b7b9mr63995075e9.10.1759416227457;
        Thu, 02 Oct 2025 07:43:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQwjbzn6VOKRY7t/tOjMmWvzmIr0L9u5dvciTLh9u0+Dwy7dWLDzHNbwWrz3CWuZpP8L/sOQ==
X-Received: by 2002:a05:600c:34cb:b0:46e:326e:4501 with SMTP id 5b1f17b1804b1-46e6127b7b9mr63994945e9.10.1759416227055;
        Thu, 02 Oct 2025 07:43:47 -0700 (PDT)
Received: from debian (2a01cb058918ce00b1193b1af18e29db.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:b119:3b1a:f18e:29db])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6b77sm3953975f8f.6.2025.10.02.07.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 07:43:46 -0700 (PDT)
Date: Thu, 2 Oct 2025 16:43:44 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <aN6PoAPSQYuy-kJV@debian>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>

On Fri, Sep 19, 2025 at 12:54:01PM +0200, Guillaume Nault wrote:
> Add a brief explanation of the RTAX attributes that can be used in
> RTA_METRICS.

Hi,

I haven't got any feedback for this patch. Anything wrong with it?

> Signed-off-by: Guillaume Nault <gnault@redhat.com>
> ---
>  man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index cb9f5155f..a04edce79 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -342,7 +342,11 @@ RTA_OIF:int:Output interface index
>  RTA_GATEWAY:protocol address:The gateway of the route
>  RTA_PRIORITY:int:Priority of route
>  RTA_PREFSRC:protocol address:Preferred source address
> -RTA_METRICS:int:Route metric
> +RTA_METRICS::T{
> +Route metrics
> +.br
> +(see below).
> +T}
>  RTA_MULTIPATH::T{
>  Multipath nexthop data
>  .br
> @@ -384,6 +388,49 @@ routes (in seconds)
>  T}
>  .TE
>  .IP
> +.B RTA_METRICS
> +contains an array of
> +.I struct rtattr
> +with their corresponding attributes:
> +.IP
> +.in +4n
> +.TS
> +tab(:);
> +c s s
> +lb l l.
> +Attributes
> +rta_type:Value type:Description
> +_
> +RTAX_UNSPEC:-:unspecified
> +RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
> +RTAX_MTU:__u32:Maximum Transmission Unit for this route
> +RTAX_WINDOW:__u32:Maximum size of the receive window for this route
> +RTAX_RTT:__u32:Estimated round-trip time for this route
> +RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
> +RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
> +RTAX_CWND:__u32:Maximum size of the congestion window for this route
> +RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
> +RTAX_REORDERING:__u32:Initial reordering level of packets for this route
> +RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
> +RTAX_INITCWND:__u32:Initial congestion window to use for this route
> +RTAX_FEATURES:__u32:Features to enable for this route specifically
> +RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
> +RTAX_INITRWND:__u32:Initial size of the receive window for this route
> +RTAX_QUICKACK:__u32:Use quick ack for this route
> +RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for this route
> +RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
> +.TE
> +.IP
> +Metrics that are locked with
> +.B RTAX_LOCK
> +take precedence over the values normally used by the kernel
> +(computed or assigned by a sysctl or setsockopt(2)).
> +Therefore, some metrics, like
> +.BR RTAX_RTO_MIN ,
> +have no effect unless their bit is set in
> +.BR RTAX_LOCK .
> +.in
> +.IP
>  .B RTA_MULTIPATH
>  contains several packed instances of
>  .I struct rtnexthop
> -- 
> 2.47.3
> 


