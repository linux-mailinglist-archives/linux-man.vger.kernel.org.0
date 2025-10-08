Return-Path: <linux-man+bounces-4083-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2482BC66F9
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 21:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90A414047CA
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 19:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 167362C0266;
	Wed,  8 Oct 2025 19:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JA4gdYtp"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F534BA38
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759950754; cv=none; b=KNhtKT70hOYTkjj9sqepAug/DVfNcqJqx/NUXis8O+Ha5Gh1wyoJ/fFhSlDUzQioMAQOeoBX5JCmlq2fvHGTw8pEDI0VJYkF1jPh3OngNn3Izn5FXpnw76TLZJuWesoLvePB4myINTxRN4NkT3DCWGKvEAIRNi4yRZA/gKw8vf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759950754; c=relaxed/simple;
	bh=86vKcR/r2aQKWDBULd/CaWn6ndLgdTB45tBvU4cvnZU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=e/7bkHY6rXaNAEX2GPln1+wZmKQOb13QIKOmq7f6RRBHyl8dxHXJ8MvqrmkQJGeVcN07RrKyQ2LuBHUF7vC8v2ZDR8dxymte+Eu1J63GCS0+5vsRI6jaGlW9nOsMFyy1B3AK9wIg78MPUV8tzdrvgpUAOzY9KFLJGUaZHL0IovQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JA4gdYtp; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759950752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=REnUQR6ZydwzsaMEElN5A8mPo0j6YtMRyJp3ojY9acg=;
	b=JA4gdYtpp5enGVYRAXTz+TR4TjMJHzUATM1juGZXFtouQqrCtpsboED4St8fIolHdEvS7F
	ZRIud7p5cfZ7AFj5LN3Jf7EP9ayoAhEQlShoRewkdZYjclO+MLApBZl8KGb8fwegV/CLE1
	dDFFs50A88pHNET6fSGOwX+StOVUY1U=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-rWbRjId9MAOS7FlHF3DD9Q-1; Wed, 08 Oct 2025 15:12:29 -0400
X-MC-Unique: rWbRjId9MAOS7FlHF3DD9Q-1
X-Mimecast-MFC-AGG-ID: rWbRjId9MAOS7FlHF3DD9Q_1759950747
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3f384f10762so194537f8f.3
        for <linux-man@vger.kernel.org>; Wed, 08 Oct 2025 12:12:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759950746; x=1760555546;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=REnUQR6ZydwzsaMEElN5A8mPo0j6YtMRyJp3ojY9acg=;
        b=VFXxfosvW3IcE2H4/XGd0O6d+u+R8MayoSVVeuo0LAHuz2L2JSXgoPym/3vMOK30/E
         S+nhxxU/JMdY149hMXbPjizKuwksXhYht27cFEydbRoZf0Elb+wNKjxiUsg5duRtVOej
         rwoMkf/l3GjDSGCo7rwzOIoIhrV49yX8zMp+fTLS6qYL/gVr2KiTjdxesvoL+4nxixyB
         N//lPHGbOz0RvF7BzeVfXKeXj5ZEaJr2lx6pKMzU/IPS+krKawJDG4fmro1RRLCKcvtg
         9yuISn7bOaQ4eP5fBz68a2rxjYq+qJUqtlqfcDOM7hJ/V+ChTgQAZWnZH47fLTEx4zko
         kpKQ==
X-Gm-Message-State: AOJu0YyclTWe6nldQwvjiKzqahW7iB0wIiENjRKj0RglLXlFYXgfiz7F
	AgPW7W6jqnoDLgGSjm929DmzOA4gQlS10+jfzXEpmh4yOWTwTKiHuhtPmIvwVxCHYFigqhWu+Yf
	Nd5ZBowFfwiyGszaP11X/HOatkx2DVjbYPDYWB1mE4deL9qFlA2W3ehrlDnXHKfhTnzsDtw==
X-Gm-Gg: ASbGncuOlP+HS7HWZ1oQVMlXDDi36RsE+cru+rZyiDq5tDDebGhLCjQnlBxugWweN2j
	l78AqxRjgzQmNkc0DQAYBC0b1F4KRMMt8BVv+6mxPxpnrvQR0CxnkKLoopWZCJw1a376MYICyN+
	l4dugXKTL4C9Fsw8YaBxnLAkRRR9jMejzFXAo9AVy+DtHNOto/bBah72yJz5UyYkQ68nej3X4mo
	fRgpeguxgrqdKKVdVDm8gdkikxXVx5qzh9RoFvAXD6vAMZejDFekk5Y/tzryzn2Em5OPaqIClGv
	FJQXnC6WH7XwoXvNU/5/8YrfE4W9Xd6yqw99K5Vdtim31z1pFTmAAMD4urHZpWOmpHC+1BvKudg
	nZhbmHvGVB1H1cIEC8v99QOEv
X-Received: by 2002:a05:6000:2506:b0:3e9:978e:48fd with SMTP id ffacd0b85a97d-42666ab88fbmr3009640f8f.23.1759950746587;
        Wed, 08 Oct 2025 12:12:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErQIoPIRMeEWyo+2WwDxGCHBWBstQnZhaeNRYuRXt2ZzScO6RnpLXgvX2vHhAGUWWdAQJuZw==
X-Received: by 2002:a05:6000:2506:b0:3e9:978e:48fd with SMTP id ffacd0b85a97d-42666ab88fbmr3009624f8f.23.1759950746180;
        Wed, 08 Oct 2025 12:12:26 -0700 (PDT)
Received: from debian (2a01cb058d23d60063f64695c7af142f.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:63f6:4695:c7af:142f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46faf16b169sm11945055e9.13.2025.10.08.12.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 12:12:25 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:12:23 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <67e7f52aad3d777ef1075eca902d0d235e0d3753.1759950455.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a brief explanation of the RTAX attributes that can be used in
RTA_METRICS.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
 v2: * Reset indentation right after the RTAX_* table (Alejandro).
     * Use .RS/.RE instead of .in (Alejandro).

 man/man7/rtnetlink.7 | 49 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index 78f35b47e..36b9642af 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -343,7 +343,11 @@ RTA_OIF:int:Output interface index
 RTA_GATEWAY:protocol address:The gateway of the route
 RTA_PRIORITY:int:Priority of route
 RTA_PREFSRC:protocol address:Preferred source address
-RTA_METRICS:int:Route metric
+RTA_METRICS::T{
+Route metrics
+.br
+(see below).
+T}
 RTA_MULTIPATH::T{
 Multipath nexthop data
 .br
@@ -386,6 +390,49 @@ routes (in seconds)
 T}
 .TE
 .IP
+.B RTA_METRICS
+contains an array of
+.I struct rtattr
+with their corresponding attributes:
+.RS
+.IP
+.TS
+tab(:);
+c s s
+lb l l.
+Attributes
+rta_type:Value type:Description
+_
+RTAX_UNSPEC:-:unspecified
+RTAX_LOCK:__u32:Bit field indicating which RTAX_* attributes are locked
+RTAX_MTU:__u32:Maximum Transmission Unit for this route
+RTAX_WINDOW:__u32:Maximum size of the receive window for this route
+RTAX_RTT:__u32:Estimated round-trip time for this route
+RTAX_RTTVAR:__u32:Estimated round-trip time variation for this route
+RTAX_SSTHRESH:__u32:Slow start threshold to use for this route
+RTAX_CWND:__u32:Maximum size of the congestion window for this route
+RTAX_ADVMSS:__u32:Maximum Segment Size to advertise for this route
+RTAX_REORDERING:__u32:Initial reordering level of packets for this route
+RTAX_HOPLIMIT:__u32:Hop limit (TTL) to use for this route
+RTAX_INITCWND:__u32:Initial congestion window to use for this route
+RTAX_FEATURES:__u32:Features to enable for this route specifically
+RTAX_RTO_MIN:__u32:Minimum Retransmission TimeOut to use for this route
+RTAX_INITRWND:__u32:Initial size of the receive window for this route
+RTAX_QUICKACK:__u32:Use quick ack for this route
+RTAX_CC_ALGO:asciiz string:Congestion Control algorithm to use for this route
+RTAX_FASTOPEN_NO_COOKIE:__u32:Allow TCP Fast Open without cookie
+.TE
+.RE
+.IP
+Metrics that are locked with
+.B RTAX_LOCK
+take precedence over the values normally used by the kernel
+(computed or assigned by a sysctl or setsockopt(2)).
+Therefore, some metrics, like
+.BR RTAX_RTO_MIN ,
+have no effect unless their bit is set in
+.BR RTAX_LOCK .
+.IP
 .B RTA_MULTIPATH
 contains several packed instances of
 .I struct rtnexthop
-- 
2.47.3


