Return-Path: <linux-man+bounces-4080-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20671BC576F
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 16:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE2D73BDAEF
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 14:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BEF2EBBA8;
	Wed,  8 Oct 2025 14:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cvhzkE1u"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7937B2EBB9E
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 14:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759934489; cv=none; b=SOxBhIdgJCgi1c3lz9/yEymvGsVLYn9LJ+W91DhE9ggHdne84hVjOLWB/MmEANOXd0gtbNKBYU7Xp1q3npqOlMcgFnSXGUtVG1n1bkWHMiykhUe35p0USk6LieGRt2UrdiO63NfFNkEuex3hLX8/AKJdOvNg0PUeS13yZfmjdEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759934489; c=relaxed/simple;
	bh=gw39v1AiHoehTDiloG3zFKeCTox6Be6Mqyc6l1LhPxg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VfHvz/Cbk8qBXYti35TuF0j0cmqPSkQCXnTnyfrjGfUdVGQq5fXNY7MC696++ssRJzaN27ve70Ha9/RIAV366EyHTicFiANsrKjyvWFFk/q981Sw2DhJSdyU/TRzet4hraLAMrcBzJXZot7/avN3Dc1WcwNtVYJ8s3x7v1KRMwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cvhzkE1u; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759934486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=89Wc9Ivif4WRL3FOjk+YsWveANwkvkWDmYkjT3g7II4=;
	b=cvhzkE1uRdDcwVvqZpSevA3gHyRnbvobs9lo+hzWt0lf/oggOQP2VxeQKi0Nua5bRsOSPj
	WcT1fezKL9PJuEmaPHgzHule8dZSddOSIIHEyee+bU3Xm2jiZEV+aWF/kXjGSpEqxj1AQb
	JWwlwLGJjNzEudCsyOeFaeiF5hDbTE8=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-iPRp2yyKOWCPktL5Ej8qvQ-1; Wed, 08 Oct 2025 10:41:25 -0400
X-MC-Unique: iPRp2yyKOWCPktL5Ej8qvQ-1
X-Mimecast-MFC-AGG-ID: iPRp2yyKOWCPktL5Ej8qvQ_1759934484
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-426c4d733c4so357648f8f.3
        for <linux-man@vger.kernel.org>; Wed, 08 Oct 2025 07:41:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759934483; x=1760539283;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=89Wc9Ivif4WRL3FOjk+YsWveANwkvkWDmYkjT3g7II4=;
        b=RBIEy8vjbX0kv5+Ch605NawUGTHFE3Gnzu0Ju+SoJWCSavtRduh9lOT7D2zgOLsYPr
         pJRRoKPE2gXATnyagxAQKloOMRUIAHU5IGizsGI0iHBDmf4WD0ek1G/jlDQI1PwyVbY/
         7rtgl99Np0ZqDjLdaxcVXJ+f93os6i0AQF7HMR9koH+vxzuq8/+0Qpg0yfCh/0OoHFpA
         zQQl7CTsmsqDwkOqN4ea0p+DJ4AfYtIHxgM+MDB+6rkpxW/phVmjY53uFSoQvFDiqOEP
         E6Hwc30v4W3di59C1svASZvFgCpHN2fVY/04yZkREvjkh6ky2BgkILFaLGu3sTOpzq72
         yAiQ==
X-Gm-Message-State: AOJu0YztAmbyUpWJDLcn60/MJgm54gsj1wf7EKDY+zYk+AnA8VJ2FFnA
	abIir1MUMSuKyCnfY/JpWMNa74ABPtPqlFhqUEBf1bZHYTqSqn5amC8tGNn6xy3BK+1TEp3jsH8
	lo9dFkN1cuVjXtwcG50WhQWz4QIiV6CNR7iaNtLBqzrZcVGnxO0ycBjBKAOHwn4mM0vsHbg==
X-Gm-Gg: ASbGncsRyGporkfDoeXmvnZ72UFx3mc3jc9L+3e7IfyAOY/YwWvVGwrSay3076HbN3I
	As3jXmpEeN//gzA7bDGf3R5izG97nNIeoNCugX465vwl0bRweTxS1Jet+XUAXGxHGqbUqMSfHcj
	uE8UxzDViYZkd/o0Tmpj6pbIazFg5g5jshMF1OZOJtloFOWfS8hXbtPInl5cZIGacHp7dabkCsw
	lP7EghUtWcn1pscWRRRUePfLaucUKh04Pvu5mXMF4Yyk3/dn7hs+8kV2W1c3UKDL8Hd+wj7dKal
	Xb4EHgqUvcI7W6e1zFILUgvOHhqu+D3b/EsJyt6eHNUqrrgroI9whIUJ04bIpxtqX2c7BwU+FGo
	1tCLpkt3gYAWOEn0RCje4Nqxc
X-Received: by 2002:a05:600c:4506:b0:45b:8a0e:cda9 with SMTP id 5b1f17b1804b1-46fa9a8638dmr28612885e9.2.1759934482674;
        Wed, 08 Oct 2025 07:41:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHspBHiNQCGH2JuQFadTTARyUePwa2tFxFsCBLCQtJJfnsJmTz4C3isey3iR7oVkXZcOML0Q==
X-Received: by 2002:a05:600c:4506:b0:45b:8a0e:cda9 with SMTP id 5b1f17b1804b1-46fa9a8638dmr28612675e9.2.1759934482172;
        Wed, 08 Oct 2025 07:41:22 -0700 (PDT)
Received: from debian (2a01cb058d23d60063f64695c7af142f.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:63f6:4695:c7af:142f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8f0392sm30710583f8f.42.2025.10.08.07.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 07:41:21 -0700 (PDT)
Date: Wed, 8 Oct 2025 16:41:19 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <aOZ4D47TGxNPWqSE@debian>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>

On Thu, Oct 02, 2025 at 11:33:09PM +0200, Alejandro Colomar wrote:
> Hi Guillaume,
> 
> On Fri, Sep 19, 2025 at 12:53:55PM +0200, Guillaume Nault wrote:
> > Add a brief explanation of the RTAX attributes that can be used in
> > RTA_METRICS.
> > 
> > Signed-off-by: Guillaume Nault <gnault@redhat.com>
> > ---
> >  man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 48 insertions(+), 1 deletion(-)
> > 
> > diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> > index cb9f5155f..a04edce79 100644
> > --- a/man/man7/rtnetlink.7
> > +++ b/man/man7/rtnetlink.7
> > @@ -342,7 +342,11 @@ RTA_OIF:int:Output interface index
> >  RTA_GATEWAY:protocol address:The gateway of the route
> >  RTA_PRIORITY:int:Priority of route
> >  RTA_PREFSRC:protocol address:Preferred source address
> > -RTA_METRICS:int:Route metric
> > +RTA_METRICS::T{
> > +Route metrics
> > +.br
> > +(see below).
> > +T}
> >  RTA_MULTIPATH::T{
> >  Multipath nexthop data
> >  .br
> > @@ -384,6 +388,49 @@ routes (in seconds)
> >  T}
> >  .TE
> >  .IP
> > +.B RTA_METRICS
> > +contains an array of
> > +.I struct rtattr
> > +with their corresponding attributes:
> > +.IP
> > +.in +4n
> 
> I would use
> 
> 	.RS
> 	.IP
> 
> and get rid of the .in +4n.

I have no preference, I was just following the commands used elsewhere
in this man page.

> > +.TS
> > +tab(:);
> > +c s s
> > +lb l l.
> > +Attributes
> > +rta_type:Value type:Description
> > +_
> > +RTAX_UNSPEC:-:unspecified
> > +RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
> > +RTAX_MTU:__u32:Maximum Transmission Unit for this route
> > +RTAX_WINDOW:__u32:Maximum size of the receive window for this route
> > +RTAX_RTT:__u32:Estimated round-trip time for this route
> > +RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
> > +RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
> > +RTAX_CWND:__u32:Maximum size of the congestion window for this route
> > +RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
> > +RTAX_REORDERING:__u32:Initial reordering level of packets for this route
> > +RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
> > +RTAX_INITCWND:__u32:Initial congestion window to use for this route
> > +RTAX_FEATURES:__u32:Features to enable for this route specifically
> > +RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
> > +RTAX_INITRWND:__u32:Initial size of the receive window for this route
> > +RTAX_QUICKACK:__u32:Use quick ack for this route
> > +RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for this route
> > +RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
> > +.TE
> 
> And here use .RE.

Okay, I'll use .RS/.RE in v2.

> > +.IP
> > +Metrics that are locked with
> > +.B RTAX_LOCK
> > +take precedence over the values normally used by the kernel
> > +(computed or assigned by a sysctl or setsockopt(2)).
> > +Therefore, some metrics, like
> > +.BR RTAX_RTO_MIN ,
> > +have no effect unless their bit is set in
> > +.BR RTAX_LOCK .
> > +.in
> 
> I find this placement of .in weird.  The preceding paragraph isn't
> indented by it.  I think I prefer using .RS/.RE, and then you'd have to
> put .RE before this paragraph to get the same indentation.
> 
> Here's how your patch looks like:
> 
> 	$ MANWIDTH=72 diffman-git HEAD 2>/dev/null
> 	--- HEAD^:man/man7/rtnetlink.7
> 	+++ HEAD:man/man7/rtnetlink.7
> 	@@ -218,7 +218,8 @@ DESCRIPTION
> 		     RTA_GATEWAY     protocol address      The gateway of the route
> 		     RTA_PRIORITY    int                   Priority of route
> 		     RTA_PREFSRC     protocol address      Preferred source address
> 	-            RTA_METRICS     int                   Route metric
> 	+            RTA_METRICS                           Route metrics
> 	+                                                  (see below).
> 		     RTA_MULTIPATH                         Multipath nexthop data
> 							   (see below).
> 		     RTA_PROTOINFO                         No longer used
> 	@@ -242,6 +243,37 @@ DESCRIPTION
> 		     RTA_EXPIRES     int                   Expire time for IPv6
> 							   routes (in seconds)
> 	 
> 	+            RTA_METRICS contains an array of struct rtattr with their
> 	+            corresponding attributes:
> 	+
> 	+                                                           Attributes
> 	+                rta_type                  Value type      Description
> 	+                ──────────────────────────────────────────────────────────────────────────────────────────────────
> 	+                RTAX_UNSPEC               ‐               unspecified
> 	+                RTAX_LOCK                 __u32           Bit field indicating which RTAX_* attributes are locked
> 	+                RTAX_MTU                  __u32           Maximum Transmission Unit for this route
> 	+                RTAX_WINDOW               __u32           Maximum size of the receive window for this route
> 	+                RTAX_RTT                  __u32           Estimated round‐trip time for this route
> 	+                RTAX_RTTVAR               __u32           Estimated round‐trip time variation for this route
> 	+                RTAX_SSTHRESH             __u32           Slow start threshold to use for this route
> 	+                RTAX_CWND                 __u32           Maximum size of the congestion window for this route
> 	+                RTAX_ADVMSS               __u32           Maximum Segment Size to advertise for this route
> 	+                RTAX_REORDERING           __u32           Initial reordering level of packets for this route
> 	+                RTAX_HOPLIMIT             __u32           Hop limit (TTL) to use for this route
> 	+                RTAX_INITCWND             __u32           Initial congestion window to use for this route
> 	+                RTAX_FEATURES             __u32           Features to enable for this route specifically
> 	+                RTAX_RTO_MIN              __u32           Minimum Retransmission TimeOut to use for this route
> 	+                RTAX_INITRWND             __u32           Initial size of the receive window for this route
> 	+                RTAX_QUICKACK             __u32           Use quick ack for this route
> 	+                RTAX_CC_ALGO              asciiz string   Congestion Control algorithm to use for this route
> 	+                RTAX_FASTOPEN_NO_COOKIE   __u32           Allow TCP Fast Open without cookie
> 	+
> 	+            Metrics that are locked with RTAX_LOCK take precedence over
> 	+            the values normally used by the kernel (computed or as‐
> 	+            signed by a sysctl or setsockopt(2)).  Therefore, some met‐
> 	+            rics, like RTAX_RTO_MIN, have no effect unless their bit is
> 	+            set in RTAX_LOCK.
> 	+
> 		     RTA_MULTIPATH contains several packed instances of struct
> 		     rtnexthop together with nested RTAs (RTA_GATEWAY):
> 	 
> Is this indentation what you intended?

Yes. Is that indentation confusing? I can change it if necessary.

> 
> Have a lovely night!
> Alex
> 
> > +.IP
> >  .B RTA_MULTIPATH
> >  contains several packed instances of
> >  .I struct rtnexthop
> > -- 
> > 2.47.3
> > 
> 
> -- 
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



